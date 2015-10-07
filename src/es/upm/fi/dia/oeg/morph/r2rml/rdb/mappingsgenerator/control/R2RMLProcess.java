package es.upm.fi.dia.oeg.morph.r2rml.rdb.mappingsgenerator.control;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.StringTokenizer;
import java.util.logging.Level;
import java.util.logging.Logger;

import es.upm.fi.dia.oeg.morph.r2rml.rdb.mappingsgenerator.main.R2RMLMapper;
import es.upm.fi.dia.oeg.morph.r2rml.rdb.mappingsgenerator.persistency.base.IGateway;
import es.upm.fi.dia.oeg.morph.r2rml.rdb.mappingsgenerator.persistency.impl.Gateway;
import es.upm.fi.dia.oeg.morph.r2rml.rdb.mappingsgenerator.domain.R2RMLBase;
import es.upm.fi.dia.oeg.morph.r2rml.rdb.mappingsgenerator.domain.R2RMLDatatype;
import es.upm.fi.dia.oeg.morph.r2rml.rdb.mappingsgenerator.domain.R2RMLJoinCondition;
import es.upm.fi.dia.oeg.morph.r2rml.rdb.mappingsgenerator.domain.R2RMLLogicalTable;
import es.upm.fi.dia.oeg.morph.r2rml.rdb.mappingsgenerator.domain.R2RMLMap;
import es.upm.fi.dia.oeg.morph.r2rml.rdb.mappingsgenerator.domain.R2RMLObjectMap;
import es.upm.fi.dia.oeg.morph.r2rml.rdb.mappingsgenerator.domain.R2RMLPredicateObjectMap;
import es.upm.fi.dia.oeg.morph.r2rml.rdb.mappingsgenerator.domain.R2RMLPrefix;
import es.upm.fi.dia.oeg.morph.r2rml.rdb.mappingsgenerator.domain.R2RMLSubjectMap;
import es.upm.fi.dia.oeg.morph.r2rml.rdb.mappingsgenerator.domain.R2RMLTriplesMap;
import es.upm.fi.dia.oeg.morph.r2rml.rdb.mappingsgenerator.domain.SQLColumn;
import es.upm.fi.dia.oeg.morph.r2rml.rdb.mappingsgenerator.exception.MIRRORException;
import es.upm.fi.dia.oeg.morph.r2rml.rdb.mappingsgenerator.util.Combine;

public class R2RMLProcess {

	//public ArrayList<String> graph;
	private List<String> listTableNames;//graph1
	private Map<String, String> mapTableTypes; //Map<TableName, TableType>
	private List<String> listParentTables;//graph2
	public List<String> listDataTypes;//graph3
	public List<String> listColumnKeys;//graph4
	public List<String> listReferencedTableNames;//graph5
	public List<String> listReferencedColumnNames;
	public ArrayList<String> graph6;
	private List<String> listTableTypes;//graph7
	public ArrayList<String> graph8;
	public ArrayList<String> graph9;
	public ArrayList<String> graph10;
	public ArrayList<String> graph11;
	public ArrayList<String> graph12;
	public ArrayList<String> graph13;
	public ArrayList<String> graph14;
	public ArrayList<String> graph15;
	public ArrayList<String> triples;
	// deprecated
	public String ontoname; // filename to be saved
	// deprecated
	public String path; // file path

	public final int DB_MYSQL = 0; 
	public final int DB_POSTGRESQL = 1; 
	public final int DB_SQLSERVER = 2; 

	public final int COMPATIBLE_W3C = 0;
	public final int COMPATIBLE_VIRTUOSO = 1;

	public int compatible; // compatibility

	public boolean comments; // show comments or not
	
	public int driver; // DB driver (MySQL, PostgreSQL, ...)

	public String database; // database existent in DBMS 
	public String inputFile; // input schema file
	public String outputFile; // output R2RML file
	public String filelog; // log file having fields and relationships
	public String schema; // schema name 
	public String prefix; // prefix (to be used in R2RML mapping prefix section)
	public String IRI; // IRI (to be used in R2RML mapping prefix section)
	public String owner; // to be used with Virtuoso 
	public String qualifier; // to be used with Virtuoso 

	public String dbName; // name for temporary database

	public String schemaContent; // variable to keep the DB schema 

	public String commandException; // in case of SQL exception code, keeps the SQL command

	public int verbose = 0; // messages level: 0 - none; 1 - basic; 2 - detailed
	public boolean externalSchema = true; // using external schema file (or database existent)
	public boolean SQLInsert = false; // considering or not INSERT commands in processing external schemas 

	//public String fileProperties; // file properties for DB connections (driver, database,...)
	public Properties properties;
	
	public boolean prefixedTables; // generate prefixes for each table mapped

	public String templateSeparator; // separator for template with several PK
	
	public String joinString; // string for using with join expressions

	public boolean saturation; // triples inheritance in 1x1 relationships
	
	public byte triplesMapMode; // triples map for data, ontologies or all

	public boolean showViews; // option for showing views 

	public byte firstCharCase; // first char case (for class names)

	private static final Logger log = Logger.getLogger(R2RMLMapper.class.getName());
	
	R2RMLMap map = new R2RMLMap();

	public static String enclosed_mysql = "`";
	public static String enclosed_char = "\\" + "\"";
	
	public String tableRegex;
	
	public R2RMLProcess() {
		//this.graph = new ArrayList<String>();
		this.listTableNames = new ArrayList<String>();
		this.mapTableTypes = new HashMap<String, String>();
		this.listParentTables = new ArrayList<String>();
		this.listDataTypes = new ArrayList<String>();
		this.listColumnKeys = new ArrayList<String>();
		this.listReferencedTableNames = new ArrayList<String>();
		this.listReferencedColumnNames = new ArrayList<String>();
		this.graph6 = new ArrayList<String>();
		this.listTableTypes = new ArrayList<String>();
		this.graph8 = new ArrayList<String>();
		this.graph9 = new ArrayList<String>();
		this.graph10 = new ArrayList<String>();
		this.graph11 = new ArrayList<String>();
		this.graph12 = new ArrayList<String>();
		this.graph13 = new ArrayList<String>();
		this.graph14 = new ArrayList<String>();
		this.graph15 = new ArrayList<String>();
		this.triples = new ArrayList<String>();
		
		commandException = "";
	}
	
	// R2RMLPrint - class for printing the R2RML file
	public void R2RMLPrint() throws MIRRORException {
		
		PrintWriter output;
		try {
			output = new PrintWriter(outputFile);

			// Print the prefix namespaces
			for(R2RMLPrefix p: map.prefix) {
				output.print("@prefix ");
				output.print(p.prefix + ": <");
				output.println(p.IRI + "> .");
			}
			output.println("");

			// Print the base IRI
			for(R2RMLBase b: map.base) {
				output.print("@base <");
				output.println(b.IRI + "> .");
			}
			output.println("");
			
			// Print the comments of mapping
			if(comments) {
				for(String s: map.comments) {
					output.println(s);
				}
				output.println("");
			}
			
			// Print the triplesMap

			for(R2RMLTriplesMap t: map.triplesMap) {
				String subjectMapTemplate = t.subjectMap.template;
				
				// Print comments
				if(comments) {
					for(String c: t.comments) {
						output.println(c);
					}
					output.println("");
				}

				if((t.mode & triplesMapMode) != 0) {
					// Print the triplesMap
					output.println("<#TriplesMap" + t.id + ">");
					output.println(pTab(1) + "a rr:TriplesMap;");
					output.println("");
					output.println(pTab(1) + "rr:logicalTable [ ");
					if(compatible == COMPATIBLE_VIRTUOSO) {
						output.println(pTab(2) + "rr:tableSchema \"" + t.logicalTable.tableSchema.toUpperCase() + "\";");
						output.println(pTab(2) + "rr:tableOwner \"" + t.logicalTable.tableOwner.toUpperCase() + "\";");
					}
					String sqlQuery = t.logicalTable.getSqlQuery();
					if(sqlQuery.equals("")) {
						output.println(pTab(2) + "rr:tableName \"" + t.logicalTable.tableName + "\"; ");
						output.println(pTab(1) + "];");
					} else {
						output.println(pTab(2) + "rr:sqlQuery \"" + sqlQuery + "\" ");
						output.println(pTab(1) + "];");
					}
					output.println("");

					// subjectsMap
					//output.println(pTab(1) + "rr:subjectMap [ rr:termType rr:IRI; ");
					output.println(pTab(1) + "rr:subjectMap [");
				    // template or constant
					if(!subjectMapTemplate.equals("")) {
						if(t.subjectMap.templateMxN.size() == 0) {
							output.println(pTab(2) + "rr:template \"" + subjectMapTemplate + "\";");
						} else {
							output.println(pTab(2) + "rr:template \"" + t.subjectMap.templateMxN + "\";");
						}
						
					} else {
						String smConstant = t.subjectMap.constant;
						output.println(pTab(2) + "rr:constant <" + smConstant + ">;");
					}

				    // subjectsMap template termType
				    if(!t.subjectMap.term.equals("")) {
						output.println(pTab(2) + "rr:termType " + t.subjectMap.term + ";");
				    }

				    // template or constant
					if(!subjectMapTemplate.equals("")) {
						if(!t.subjectMap.classSubjectMap.equals(""))
							if(prefixedTables) {
								output.println(pTab(2) + "rr:class " + map.prefix.get(map.indexPrefixSchema).prefix + ":" + t.subjectMap.classSubjectMap + ";");
							} else {
								//String t = t.subjectMap.classSubjectMap;
								output.println(pTab(2) + "rr:class <" + map.template + "/" + encodeURIcomponent(t.subjectMap.classSubjectMap) + ">;");
							}
							//output.println(pTab(2) + "rr:class " + map.prefix.get(map.prefix.size()-1).prefix + ":" + t.subjectMap.classSubjectMap + ";");

						/* if(t.subjectMap.keys.size() > 0) {
							for(String k: t.subjectMap.keys) {
								output.println(pTab(2) + "owl:hasKey " + map.prefix.get(map.prefix.size()-1).prefix + ":" + k + ";");
							}
						}*/
					} else {
						output.println(pTab(2) + "rr:class " + t.subjectMap.classSubjectMap + ";");
					}

					// get the predicateObjectsMap size; if is zero, finish it.
					int size = t.predicateObjectMap.size();

					if(size > 0) {
						output.println(pTab(1) + "];");
					} else {
						output.println(pTab(1) + "].");
					}
					output.println("");

					// predicateObjectsMap
					// keep the array size for print last bracket with point
					int i = 0;
					for(R2RMLPredicateObjectMap p: t.predicateObjectMap) {
				
						String objectMapColumn = p.objectMap.get(0).column;
						String objectMapTemplate = p.objectMap.get(0).template;
						
						if(!objectMapColumn.equals("")) {
							output.println(pTab(1) + "rr:predicateObjectMap [");
							//output.println(pTab(2) + "rr:predicate " + map.prefix.get(map.prefix.size()-1).prefix + ":" + p.predicate.get(0) + ";");
							output.println(pTab(2) + "rr:predicate " + p.getPredicate(0) + ";");
							output.println(pTab(2) + "rr:objectMap " + objectMapColumn + ";");
							//if(p.objectMap.get(0).hasKey) {
							//	output.println(pTab(2) + "owl:hasKey " + map.prefix.get(map.prefix.size()-1).prefix + ":" + p.predicate.get(0) + ";");
							//}
							if(i == size-1) {
								output.println(pTab(1) + "].");
							} else {
								output.println(pTab(1) + "];");
							}
							output.println("");
						} else if(!objectMapTemplate.equals("")) {
							output.println(pTab(1) + "rr:predicateObjectMap [");
							output.println(pTab(2) + "rr:predicate " + p.getPredicate(0) + ";");
							output.println(pTab(2) + "rr:objectMap " + objectMapTemplate + ";");
							if(i == size-1) {
								output.println(pTab(1) + "].");
							} else {
								output.println(pTab(1) + "];");
							}
							output.println("");
						}
						else {
							// join conditions
							if(comments) {
								if(!p.comments.isEmpty()) {
									for(String c: p.comments) {
										output.println(pTab(1) + c);
									}
								}
							}
							output.println(pTab(1) + "rr:predicateObjectMap [");
							//output.println(pTab(2) + "rr:constant " + map.prefix.get(map.prefix.size()-1).prefix + ":" + p.predicate.get(0) + ";");
							String predicateMap = p.getPredicate(0);
							output.println(pTab(2) + "rr:predicate " + predicateMap + ";");
							output.println(pTab(2) + "rr:objectMap [");

							//String tempTable = p.predicate.get(0).substring(p.predicate.get(0).indexOf(":")+1, p.predicate.get(0).length()).toLowerCase();
							//String tempTable = p.predicate.get(0).replace(IRI, "");
							//String tempTable = p.predicate.get(0).replace(IRI + "/", "");
							//final String predicate = p.getPredicate(0); 
							//System.out.println(tempTable);
							//tempTable = tempTable.substring(1, tempTable.indexOf("#")).toLowerCase();
							//final String tempTable;
							//if(joinString.equals("")) {
							//	tempTable = predicate.substring(predicate.lastIndexOf("/")+1, predicate.indexOf("#"));
							//} else {
							//	tempTable = predicate.substring(predicate.lastIndexOf(joinString)+joinString.length(),predicate.lastIndexOf(">"));
							//}
							//System.out.println(tempTable);
							//final String tempTableLowerCase = tempTable.toLowerCase(); 
							//int fid = map.find_id(tempTableLowerCase);
							//int fid = map.find_id(tempTable);
							//p.objectMap.get(0).parentTripleMap = "<#TriplesMap" + String.valueOf(fid) + ">";
							
							String parentTriplesMap = p.objectMap.get(0).parentTripleMap;
							output.println(pTab(3) + "rr:parentTriplesMap " + parentTriplesMap + ";");
							for (R2RMLJoinCondition j: p.objectMap.get(0).joinCondition) {
								if(comments) {
									output.println(pTab(3) + "# " + j.comments);
								}
								output.println(pTab(3) + "rr:joinCondition [");
								output.println(pTab(4) + "rr:child \"" + j.child + "\";");
								output.println(pTab(4) + "rr:parent \"" + j.parent + "\";");
								output.println(pTab(3) + "];");
							}
							output.println(pTab(2) + "];");
							if(i == size-1) {
								output.println(pTab(1) + "].");
							} else {
								output.println(pTab(1) + "];");
							}
							output.println("");
						}
						i++;
					}
				}
			}
			
			// Close the file
			output.close();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
		
	}
	
	/*
	 * printTab - printing tab for indentation file
	 */	
	
	public String pTab(int n) {
		String t = "";
		for(int i=0;i<n;i++){
			t = t.concat(String.valueOf((char)9));
		}
		return(t);
	}
	
	// R2RMLPreprocessing - class for preprocessing the schema database and generates the log
	public void R2RMLPreprocessing() throws MIRRORException {

		PrintWriter output;

		int countTables = 0, countViews = 0;
		
		try {
			output = new PrintWriter(filelog);

			output.print("** Analysing DB schema: " + schema);
			if(this.driver == 0) {
				output.println(" (MySQL)");
			}
			if(this.driver == 1) {
				output.println(" (PostgreSQL)");
			} else {
				output.println();
			}
			Calendar d = Calendar.getInstance();
			output.printf("%tB %te, %tY - %tl:%tM %tp%n\n\n", d, d, d, d, d, d);

			// Get the connection with database
			IGateway gateway = new Gateway();
			gateway.setDatabase(this.driver);
			// Get the tables in the schema
			gateway.getTablesViewsFromSchema(properties, listTableNames
					, listTableTypes, schema, this.mapTableTypes);
			
			int sc = 0;
			boolean isView;
			
			for(String t: listTableNames) {
				boolean matches = false;
				
				if(this.tableRegex == null) {
						matches = true;
				} else {
					matches = t.matches(this.tableRegex);
					log.info("Table " + t + " matches with " + this.tableRegex);
				}
				
				
				log.info("Analyzing table " + t + " ...");
				//isView = graph7.get(listTableNames.indexOf(t)).contains("VIEW");
				isView = this.mapTableTypes.get(t).contains("VIEW");
				
				if(!isView) {
					output.println("Table: " + t.toUpperCase());
					countTables++;
				} else {
					output.println("View: " + t.toUpperCase());
					countViews++;
				}

				// for each table, get the possible relationships from the schema
				gateway.getRelationshipsFromSchema(properties, listParentTables, listDataTypes, schema, t);
				if((listParentTables.size() > 0) && !isView) {
					sc = sc + listParentTables.size();
					for (String c: listParentTables) {
						String t2 = listDataTypes.get(listParentTables.indexOf(c));
						output.println("    Constraint: " + c + " (referenced table: " + t2.toUpperCase() + ")");
						
						// for each constraint, get the keys connecting the tables
						gateway.getKeysFromConstraint(properties, listColumnKeys, listReferencedTableNames
								, graph6, schema, c);
						for (String k: listColumnKeys) {
							String rt = listReferencedTableNames.get(listColumnKeys.indexOf(k));
							String rk = graph6.get(listColumnKeys.indexOf(k));
							output.println("        Key: " + k + " - on table: " + rt.toUpperCase() + "(" + rk + ")");
							// Check the cardinality (1x1 or 1xN)
							//if(graph2.size() == 1) {
								String databaseName;
								if(externalSchema) {
									databaseName = dbName;
								} else {
									databaseName = schema; 
								}
								long nreg = 0;
								if(this.driver == DB_MYSQL) {
									nreg = gateway.countRecordsFromRelationship(properties, databaseName, t, t2, k.toUpperCase(), rk.toUpperCase());
								} else
								if(this.driver == DB_POSTGRESQL) {
									nreg = gateway.countRecordsFromRelationship(properties, databaseName, t, t2, k, rk);
									//nreg = gateway.countRecordsFromRelationship(properties, databaseName, t, t2, rk.toUpperCase(), k.toUpperCase());
								}
								if(nreg > 0) {
									String card = "";
									if(this.driver == DB_MYSQL) {
										card = gateway.checkRelationship1x1(properties, databaseName, t, t2, k.toUpperCase(), rk.toUpperCase()) ? "1x1" : "1xN";
									}
									if(this.driver == DB_POSTGRESQL) {
										card = gateway.checkRelationship1x1(properties, databaseName, t, t2, k, rk) ? "1x1" : "1xN";
									}
									output.println("        Cardinality: " + card + " (checked data: "+ String.valueOf(nreg) + " record(s))");
								} else {
									output.println("        Unable to define cardinality (no data)");
								}
							//}
						}
					}
				} else {
					if(!isView) {
						output.println("    (No foreign keys)");
					}
				}
				
				// for each table, get the remain columns
				gateway.getColumnsFromTableName(properties, listParentTables
						, listDataTypes, listColumnKeys, schema, t);
				if(listParentTables.size() > 0) {
					output.println("\n    Fields:");
					for (String c: listParentTables) {
						String dt = listDataTypes.get(listParentTables.indexOf(c));
						String ck = listColumnKeys.get(listParentTables.indexOf(c));
						output.println("        " + c + "  " + dt.toUpperCase() + "  " + ck);
					}
				} else {
					output.println("    (No columns)");
				}
				
					
				output.println("");
			}
			output.println("** Statistics: " + schema);
			if(countTables > 0) {
				output.println("Tables: " + countTables);		
			}
			if(countViews > 0) {
				output.println("Views: " + countViews);		
			}
			output.println("Constraints: " + sc);		
			
			output.println("");
			output.println("** End of analysis for schema: " + schema);

			// Close the file
			output.close();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}

		
	}
		

	
	// R2RMLBuild - class that performs the job
	public void R2RMLBuild() throws MIRRORException {


		// Datatype translation
		final R2RMLDatatype R2RMLdt = new R2RMLDatatype();

		// Connect with commands layer
		IGateway gateway = new Gateway();

		// Get the tables with all relationships 1-N and M-N
		//gateway.getRelationshipsFromSchemaAll(graph1, graph2, graph3, graph4, graph5, schema);
		gateway.getRightTablesFromSchemaAll(properties, listTableNames, schema);
				
		// Create R2RML structure
		//R2RMLMap map = new R2RMLMap();
		map.filename = outputFile;

		// Get the prefixes and base mapping IRI 
		map.prefix.clear();
        FileInputStream arquivoDePropriedades = null;
        try {
        	
            int i=1;
            String prop;
            Map<String, String> mapPrefixes = new HashMap<String, String>();
            while((prop=properties.getProperty("prefix"+i)) != null && i <= 100) {
            	String[] a = properties.getProperty("prefix"+i).split(",");
        		//map.prefix.add(new R2RMLPrefix(a[0], a[1]));
        		mapPrefixes.put(a[0], a[1]);
        		i++;
            }

            Map<String, String> defaultPrefixes = R2RMLPrefix.defaultPrefixes;
            for(String defaultPrefixKey : defaultPrefixes.keySet()) {
	            if(!mapPrefixes.keySet().contains(defaultPrefixKey)) {
	            	String defaultPrefixValue = defaultPrefixes.get(defaultPrefixKey);
	            	String prefixKey = defaultPrefixKey;
	            	String prefixValue = defaultPrefixValue;
	            	mapPrefixes.put(defaultPrefixKey, defaultPrefixValue);
	            	//map.prefix.add(new R2RMLPrefix(prefixKey, prefixValue));
	            }
            }
            
            for(String mapPrefixKey : mapPrefixes.keySet()) {
            	String mapPrefixValue = mapPrefixes.get(mapPrefixKey);
            	map.prefix.add(new R2RMLPrefix(mapPrefixKey, mapPrefixValue));
            }
            
            
    		// Add base 
    		if(compatible == COMPATIBLE_W3C) {
    			//map.base.add(new R2RMLBase("http://mappingpedia.org/rdb2rdf/r2rml/tc/"));
    			if((prop=properties.getProperty("base")) != null) {
        			map.base.add(new R2RMLBase(prop));
    			} else {
        			map.base.add(new R2RMLBase("http://mappingpedia.org/rdb2rdf/r2rml/tc/"));
    			}
    		}
            
        } catch(Exception e) {
            StringBuffer mensagem = new StringBuffer("Exception occured");
            mensagem.append("\nMotive: " + e.getMessage());
            throw new MIRRORException(mensagem.toString());
        }
		
		map.prefix.add(new R2RMLPrefix(prefix, IRI));
		map.indexPrefixSchema = map.prefix.size()-1;

		// Default template
		//map.template = "http://example.com/";
		map.template = IRI;
		if(map.template.lastIndexOf("/") == map.template.length()-1) {
			map.template = map.template.substring(0, map.template.lastIndexOf("/"));
		}
		
		R2RMLTriplesMap triplesMap;
		R2RMLLogicalTable logicalTable;
		R2RMLSubjectMap subjectMap;
		R2RMLSubjectMap rightSubjectMap = null;
		R2RMLPredicateObjectMap predicateObjectMap;
		R2RMLObjectMap objectMap;
		
		boolean tableSaturated = false;
		
		
		log.log(Level.INFO, "Building Triples Map for tables with relationships");	
		for (String r2 : listTableNames) {
			log.log(Level.INFO, "\tBuilding Triples Map for tables: " + r2);
			int n = gateway.getRelationshipsFromRightTableCount(properties, schema, r2);

			if(n == 0) {
				String mensagem = "Wrong child table in database schema: {0}";
				log.log(Level.WARNING, mensagem, r2);
				//throw new R2RMLException(mensagem);
			} else if (n == 1) {

				tableSaturated = false;
				// 1 x N Relationships
				// ------------------------------------------------------------------------------------------------
				// LEFT RELATION
				// ------------------------------------------------------------------------------------------------
				// Find the tripleMap that holds the left relation
				// Get the detail relationship
				gateway.getRelationshipsFromTableDetailed(properties, listParentTables
						, listDataTypes, listColumnKeys, listReferencedTableNames, graph6
						, listTableTypes, schema, r2);

				//if((triplesMap = map.find(graph2.get(0).toUpperCase())) == null) {
				if((triplesMap = map.find(listParentTables.get(0))) == null) {

					// creates a new triplesMap
					triplesMap = new R2RMLTriplesMap(map);

					triplesMap.comments.add("#");
					triplesMap.comments.add("# " + listParentTables.get(0).toUpperCase() + "(" + listDataTypes.get(0).toUpperCase() + ")");
					triplesMap.comments.add("#");

					// Triple map for left relation
					logicalTable = new R2RMLLogicalTable();
					logicalTable.tableName = map.checkSpaceInTemplate(listParentTables.get(0));

					if(compatible == COMPATIBLE_VIRTUOSO) {
						logicalTable.tableSchema = qualifier;
						logicalTable.tableOwner = owner;
					}
					triplesMap.logicalTable = logicalTable;
					
					subjectMap = new R2RMLSubjectMap();
					subjectMap.template = map.template;
					for (int i=0; i<listDataTypes.size(); i++) {
						subjectMap.template = subjectMap.template + "/" + listParentTables.get(i) + "/{" + map.checkSpaceInTemplate(listDataTypes.get(i)) + "}";
					}
					//subjectMap.template = map.template + "/" + graph2.get(0) + "/{" + graph5.get(0) + "}";
					//subjectMap.classSubjectMap = graph2.get(0);
					
					subjectMap.classSubjectMap = getFirstCharCaseName(listParentTables.get(0));
					subjectMap.term = "rr:IRI";
					/* Adding subjectMap to the triplesMap */
					triplesMap.subjectMap = subjectMap;

					// Getting the predicateObjectMaps
					gateway.getColumnsFromTableName(properties, graph8, graph9, graph10, schema, listParentTables.get(0));

					for (String c : graph8) {
						predicateObjectMap = new R2RMLPredicateObjectMap(); 
						objectMap = new R2RMLObjectMap();
						// translating datatype
						String dt = R2RMLdt.getR2RMLDatatype(graph9.get(graph8.indexOf(c))); 
						if(!dt.equals("")) {
							objectMap.column = "[ rr:column \"" + map.checkSpaceInTemplate(c) + "\"; rr:datatype " + dt + "; ]";
						} else {
							objectMap.column = "[ rr:column \"" + map.checkSpaceInTemplate(c) + "\" ]";
						}
						//objectMap.column = "[ rr:termType rr:Literal; rr:column \"" + c + "\" ]";
						//predicateObjectMap.predicate.add("name");
						// hasKey
						objectMap.hasKey = !graph10.get(graph8.indexOf(c)).equals("");
						if(objectMap.hasKey) {
							//subjectMap.keys.add(c.toLowerCase());
							subjectMap.keys.add(subjectMap.classSubjectMap + ":" + c.toLowerCase());
						}
						//predicateObjectMap.predicate.add(c.toLowerCase());
						if(prefixedTables) {
							String newPredicate = subjectMap.classSubjectMap + ":" + c.toLowerCase();
							predicateObjectMap.addPredicate(newPredicate);
						} else {
							//String newPredicate = "<" + map.template + "/" + subjectMap.classSubjectMap + "#" + c.toLowerCase() + ">";
							String newPredicate = "<" + map.template + "/" + encodeURIcomponent(subjectMap.classSubjectMap) + "#" + encodeURIcomponent(c.toLowerCase()) + ">";
							predicateObjectMap.addPredicate(newPredicate);
						}
						predicateObjectMap.objectMap.add(objectMap);
						/* Adding each predicateObjectMap to the triplesMap */
						triplesMap.predicateObjectMap.add(predicateObjectMap);
					}

					/* Adding triplesMap to the map */
					map.triplesMap.add(triplesMap);

					// -------------------------------------------------------
					// owl:DatatypeProperty (constant)
					// -------------------------------------------------------
					for (String c : graph8) {
						String tab0 = getFirstCharCaseName(listParentTables.get(0));
						map.addOwlDatatypeProperty(tab0, c, graph9.get(graph8.indexOf(c)));
					}
					
					if(compatible == COMPATIBLE_VIRTUOSO && prefixedTables) {
						map.prefix.add(new R2RMLPrefix(subjectMap.classSubjectMap, map.template + "/" + subjectMap.classSubjectMap + "#"));
					}
				}
				
				// Add comments
				triplesMap.comments.add("# 1-N: " + r2);
				
				// Retrieves id for storing next predicateObjectMap - CHANGED
				int id = triplesMap.id;

				// -------------------------------------------------------
				// owl:Class
				// -------------------------------------------------------
				//String table = Character.toString(listParentTables.get(0).charAt(0)).toUpperCase()+listParentTables.get(0).substring(1);
				String table = getFirstCharCaseName(listParentTables.get(0));
				map.addOwlClass(table);
				
				// ------------------------------------------------------------------------------------------------
				// RIGHT RELATION
				// ------------------------------------------------------------------------------------------------

				// Find the tripleMap that keeps the left relation
				//if((triplesMap = map.find(r2)) == null) {
					// creates a new triplesMap
					triplesMap = new R2RMLTriplesMap(map);

					// Triple map for right relation
					logicalTable = new R2RMLLogicalTable();
					//logicalTable.tableName = r2.toUpperCase();

					if(compatible == COMPATIBLE_VIRTUOSO) {
						logicalTable.tableSchema = qualifier;
						logicalTable.tableOwner = owner;
					}
					
					if(saturation && (compatible != COMPATIBLE_VIRTUOSO)) {
						
						String databaseName;
						if(externalSchema) {
							databaseName = dbName;
						} else {
							databaseName = schema; 
						}
						// Check if there is data in database schema
						//long nreg = gateway.countRecordsFromRelationship(properties, databaseName, listParentTables.get(0), r2, listDataTypes.get(0).toUpperCase(), listReferencedTableNames.get(0).toUpperCase());
						long nreg = gateway.countRecordsFromRelationship(properties, databaseName, listParentTables.get(0), r2, listDataTypes.get(0), listReferencedTableNames.get(0));
						//if((nreg > 0) && gateway.checkRelationship1x1(properties, databaseName, listParentTables.get(0), r2, listDataTypes.get(0).toUpperCase(), listReferencedTableNames.get(0).toUpperCase()) 
						if((nreg > 0) && gateway.checkRelationship1x1(properties, databaseName, listParentTables.get(0), r2, listDataTypes.get(0), listReferencedTableNames.get(0)) 
								|| gateway.checkRelationshipISA(properties, databaseName, listParentTables.get(0), r2)) {

								// child will be saturated
								tableSaturated = true;
								
								// -------------------------------------------------------
								// Saturation of the child table
								// -------------------------------------------------------
								String sqlQuery = map.buildSQLQuerySaturation(this, properties, schema, listParentTables.get(0), r2);

								// Assume that first field is the key (for subjectMap value)
								if(this.driver == this.DB_MYSQL) {
									gateway.getColumnsFromSQLQuery(properties, databaseName, sqlQuery, graph8, graph9, graph10);
								} 
								else
								if(this.driver == this.DB_POSTGRESQL) {
									String sqlQueryClean = sqlQuery.replace("\\", "");
									gateway.getColumnsFromSQLQuery(properties, databaseName, sqlQueryClean, graph8, graph9, graph10);
								}
								
								// Recover the information about PK
								for(int i=0; i<graph8.size(); i++) {
									if(gateway.isPrimaryKey(properties, databaseName, r2, graph8.get(i))) {
										graph10.set(i, "PRIMARY KEY");
									}
								}
								
								logicalTable.tableName = map.checkSpaceInTemplate(r2);
								logicalTable.setSqlQuery(sqlQuery, enclosed_mysql, "\\" + enclosed_char);
								triplesMap.logicalTable = logicalTable;
					
						} else {
							// Normal approach
							logicalTable.tableName = map.checkSpaceInTemplate(r2);
							logicalTable.setSqlQuery("");

							/* Adding logicalTable to the triplesMap */
							triplesMap.logicalTable = logicalTable;
							
							//gateway.getSchemaColumnsName(graph6, r2);
							gateway.getColumnsFromTableName(properties, graph8, graph9, graph10, schema, r2);
							//gateway.getColumnsFromTableName(graph8, graph9, graph10, schema, graph2.get(0));
						}

					} else {
						// Normal approach
						logicalTable.tableName = map.checkSpaceInTemplate(r2);
						logicalTable.setSqlQuery("");

						/* Adding logicalTable to the triplesMap */
						triplesMap.logicalTable = logicalTable;
						
						//gateway.getSchemaColumnsName(graph6, r2);
						gateway.getColumnsFromTableName(properties, graph8, graph9, graph10, schema, r2);
						//gateway.getColumnsFromTableName(graph8, graph9, graph10, schema, graph2.get(0));
					}

					subjectMap = new R2RMLSubjectMap();
					subjectMap.template = map.template;

					ArrayList<String> cols = new ArrayList<String>(); 
					boolean hasPK = gateway.hasPrimaryKey(properties, schema, r2, cols);
					if(hasPK) {
						for(int i=0; i<graph8.size(); i++) {
							if(graph10.get(i).equals("PRIMARY KEY") || graph10.get(i).equals("UNI")) {
								subjectMap.template = subjectMap.template + "/" + r2 + "/{" + graph8.get(i) + "}";
							}
						}
					} else { // In the case of have no PK 
						for(int i=0; i<graph8.size(); i++) {
							if(graph10.get(i).equals("MUL")) {
								subjectMap.template = subjectMap.template + "/" + r2 + "/{" + graph8.get(i) + "}";
							}
						}
					}

					subjectMap.classSubjectMap = getFirstCharCaseName(r2);
					subjectMap.term = "rr:IRI";
					
					/* Adding subjectMap to the triplesMap */
					triplesMap.subjectMap = subjectMap;

					triplesMap.comments.add("#");
					triplesMap.comments.add("# " + r2.toUpperCase() + "(" + listDataTypes.get(0).toUpperCase() + ")");
					triplesMap.comments.add("#");

					// The instances of "child" class are subclass of "parent" class
					if(tableSaturated) {
						predicateObjectMap = new R2RMLPredicateObjectMap(); 
						objectMap = new R2RMLObjectMap();
						
						R2RMLPredicateObjectMap cPredicateObjectMap = new R2RMLPredicateObjectMap();
						cPredicateObjectMap.addPredicate("rdf:type");
						
						R2RMLObjectMap cObjectMap = new R2RMLObjectMap();
						String pred = getFirstCharCaseName(listParentTables.get(0));
						cObjectMap.column = "[ rr:constant <" + map.template + "/" + encodeURIcomponent(pred) + "> ]";

						//predicateObjectMap.predicate.add(c.toLowerCase());
						cPredicateObjectMap.objectMap.add(cObjectMap);
						/* Adding each predicateObjectMap to the triplesMap */
						triplesMap.predicateObjectMap.add(cPredicateObjectMap);
					}
					
					for (String c : graph8) {
						predicateObjectMap = new R2RMLPredicateObjectMap(); 
						objectMap = new R2RMLObjectMap();
						// translating datatype
						String dt = R2RMLdt.getR2RMLDatatype(graph9.get(graph8.indexOf(c))); 
						if(!dt.equals("")) {
							objectMap.column = "[ rr:column \"" + map.checkSpaceInTemplate(c) + "\"; rr:datatype " + dt + "; ]";
						} else {
							objectMap.column = "[ rr:column \"" + map.checkSpaceInTemplate(c) + "\" ]";
						}
						//objectMap.column = "[ rr:termType rr:Literal; rr:column \"" + c + "\" ]";
						//predicateObjectMap.predicate.add("name");
						// hasKey
						objectMap.hasKey = !graph10.get(graph8.indexOf(c)).equals(""); 
						if(objectMap.hasKey) {
							//subjectMap.keys.add(c.toLowerCase());
							subjectMap.keys.add(subjectMap.classSubjectMap + ":" + c.toLowerCase());
						}
						//predicateObjectMap.predicate.add(subjectMap.classSubjectMap + ":" + c.toLowerCase());
						if(prefixedTables) {
							String newPredicate = subjectMap.classSubjectMap + ":" + c.toLowerCase();
							predicateObjectMap.addPredicate(newPredicate);
						} else {
							//String newPredicate = "<" + map.template + "/" + subjectMap.classSubjectMap + "#" + c.toLowerCase() + ">";
							String newPredicate = "<" + map.template + "/" + encodeURIcomponent(subjectMap.classSubjectMap) + "#" + encodeURIcomponent(c.toLowerCase()) + ">";
							predicateObjectMap.addPredicate(newPredicate);
						}
						//predicateObjectMap.predicate.add(c.toLowerCase());
						predicateObjectMap.objectMap.add(objectMap);
						/* Adding each predicateObjectMap to the triplesMap */
						triplesMap.predicateObjectMap.add(predicateObjectMap);
					}

					/* Adding triplesMap to the map */
					map.triplesMap.add(triplesMap);

					// -------------------------------------------------------
					// owl:DatatypeProperty (constant)
					// -------------------------------------------------------
					gateway.getColumnsFromTableName(properties, graph8, graph9, graph10, schema, listParentTables.get(0));

					for (String c : graph8) {
						String tab0 = getFirstCharCaseName(listParentTables.get(0));
						map.addOwlDatatypeProperty(tab0, c, graph9.get(graph8.indexOf(c)));
					}
					
					if(compatible == COMPATIBLE_VIRTUOSO && prefixedTables) {
						map.prefix.add(new R2RMLPrefix(subjectMap.classSubjectMap, map.template + "/" + subjectMap.classSubjectMap + "#"));
					}
					
					// -------------------------------------------------------
					// owl:Class
					// -------------------------------------------------------
					table = getFirstCharCaseName(r2);
					String superTable = getFirstCharCaseName(listParentTables.get(0));
					if(!tableSaturated) {
						map.addOwlClass(table);
					} else {
						map.addOwlClass(table, superTable);
					}

					// Get the child fields
					gateway.getColumnsFromTableName(properties, graph8, graph9, graph10, schema, r2);
					// -------------------------------------------------------
					// owl:DatatypeProperty (constant)
					// -------------------------------------------------------
					
					for (String c : graph8) {
						String tab0 = getFirstCharCaseName(r2);
						map.addOwlDatatypeProperty(tab0, c, graph9.get(graph8.indexOf(c)));
					}

				//}
				// Increase the counter for 1-N relationships
				map.counter1xN++;
				
				// Retrieves id for storing next predicateObjectMap
				//int id = triplesMap.id;
			
				// ------------------------------------------------------------------------------------------------
				// JOIN CONDITION
				// ------------------------------------------------------------------------------------------------

				if(!tableSaturated) {
					// Find tripleMap that keeps the left relation
					//triplesMap = map.find(graph2.get(0).toUpperCase());
					//triplesMap = map.find(listTableNames.get(0));
					triplesMap = map.find(r2);

					predicateObjectMap = new R2RMLPredicateObjectMap();
					//predicateObjectMap.predicate.add(graph4.get(0));
					//String pred = Character.toString(listColumnKeys.get(0).charAt(0)).toUpperCase()+listColumnKeys.get(0).substring(1);
					String pred = getFirstCharCaseName(listColumnKeys.get(0));
					//String pred = Character.toString(listTableNames.get(0).charAt(0)).toUpperCase()+listTableNames.get(0).substring(1);
					String newPredicate;
					if(joinString.equals("")) {
						newPredicate = "<" + map.template + "/" + encodeURIcomponent(pred) + "#" + encodeURIcomponent(listDataTypes.get(0).toLowerCase())  + ">";
					} else {
						//final String childColumnName = map.checkSpaceInTemplate(graph3.get(0).toLowerCase());
						final String childColumnName = listReferencedTableNames.get(0);
						newPredicate = "<" + map.template + "/" + encodeURIcomponent(pred + joinString + childColumnName)  + ">";
					}
					predicateObjectMap.addPredicate(newPredicate);
					//predicateObjectMap.predicate.add(map.prefix.get(map.indexPrefixSchema).prefix + ":" + pred);
					objectMap = new R2RMLObjectMap();
					objectMap.column = "";
					objectMap.parentTripleMap = "<#TriplesMap" + String.valueOf(id) + ">";

					/*for(String c: graph7) {
						int i = graph7.indexOf(c);
						gateway.getKeysFromConstraint(graph8, graph9, graph10, schema, c);
						objectMap.joinCondition.add(new R2RMLJoinCondition(graph8.get(i), graph10.get(i)));
					}*/

					for(String c: listTableTypes) {
						//int j = graph7.indexOf(c);
						// It must not repeat if exists equal fk names
						if(objectMap.find(c) == null) {
							gateway.getKeysFromConstraint(properties, graph8, graph9, graph10, schema, c);
							for(String kc: graph8) {
								int k = graph8.indexOf(kc);
								objectMap.joinCondition.add(new R2RMLJoinCondition(kc, graph10.get(k), c));
								//objectMap.joinCondition.add(new R2RMLJoinCondition(graph10.get(k), kc, "# " + c));
							}
						}
					}
					
					objectMap.comments.add("");
					/* Adding objectMap to predicateObjectMap */
					predicateObjectMap.objectMap.add(objectMap);
					/* Adding each predicateObjectMap to the triplesMap */
					triplesMap.predicateObjectMap.add(predicateObjectMap);
				}
				
				// -------------------------------------------------------
				// owl:ObjectProperty
				// -------------------------------------------------------
				gateway.getRelationshipsFromTableDetailed(properties, listParentTables, listDataTypes
						, listColumnKeys, listReferencedTableNames, graph6, listTableTypes, schema, r2);

				//String tab0 = Character.toString(listParentTables.get(0).charAt(0)).toUpperCase()+listParentTables.get(0).substring(1);
				String tab0 = getFirstCharCaseName(listParentTables.get(0));
				//String tab1 = Character.toString(r2.charAt(0)).toUpperCase()+r2.substring(1);
				String tab1 = getFirstCharCaseName(r2);

				// Doesn't add object property if the table is the same
				if(!tab0.equals(tab1)) {
					// -------------------------------------------------------
					// 1st TM: Object Property (constant)
					// -------------------------------------------------------
					map.addOwlObjectProperty(tab0, tab1);
						
					// -------------------------------------------------------
					// 2nd TM: Object Property content (using sqlQuery to connect)
					// -------------------------------------------------------
					String sqlQuery = map.buildSQLQueryObjectProperty1xN(listParentTables
							, listDataTypes, r2, listReferencedTableNames);
					map.addOwlObjectPropertyData(tab0, listDataTypes.get(0), tab1, "", sqlQuery);
					
					// -------------------------------------------------------
					// 3rd TM: Inverse Property (constant)
					// -------------------------------------------------------
					map.addOwlInverseProperty(tab0, tab1);
				}
		
			} else {
				// M x N Relationships
				// ------------------------------------------------------------------------------------------------
				// LEFT RELATIONS
				// ------------------------------------------------------------------------------------------------
				// Get the detail relationship
				// graph2 - left relation
				// graph3 - primary key
				// graph4 - is_nullable
				// graph5 - right relation
				//gateway.getSchemaRelationshipDetail(graph2, graph3, graph4, graph5, r2);
				gateway.getRelationshipsFromTableDetailed(properties, listParentTables, listDataTypes
						, listColumnKeys, listReferencedTableNames, graph6, listTableTypes, schema, r2);

				// subjectMap for the right relation (store for build right triplesMap)
				if(rightSubjectMap == null)
					rightSubjectMap = new R2RMLSubjectMap();
				else
					rightSubjectMap.templateMxN.clear();

				for (int i=0; i < listParentTables.size(); i++) {
					
					// Find the tripleMap that holds the left relation
					if((triplesMap = map.find(listParentTables.get(i))) == null) {
					//if((triplesMap = map.find(graph2.get(i).toUpperCase())) == null) {
						// creates a new triplesMap
						triplesMap = new R2RMLTriplesMap(map);

						//String pk = graph3.get(i);
						triplesMap.comments.add("#");
						triplesMap.comments.add("# " + listParentTables.get(i).toUpperCase() + "(" + listDataTypes.get(i).toUpperCase() + ")");
						triplesMap.comments.add("#");

						// Triple map for left relation
						logicalTable = new R2RMLLogicalTable();
						//logicalTable.tableName = graph2.get(i).toUpperCase();
						if(listParentTables.get(i).contains(" ")) {
							logicalTable.tableName = "\\\"" + listParentTables.get(i) + "\\\"";
						} else {
							logicalTable.tableName = listParentTables.get(i);
						}
						if(compatible == COMPATIBLE_VIRTUOSO) {
							logicalTable.tableSchema = qualifier;
							logicalTable.tableOwner = owner;
						}
						triplesMap.logicalTable = logicalTable;

						subjectMap = new R2RMLSubjectMap();
						subjectMap.template = map.template;
						for(int j=0; j<listParentTables.size(); j++) {
							if(listParentTables.get(i).equals(listParentTables.get(j))) {
								//subjectMap.template = subjectMap.template + "/" + listParentTables.get(j) + "/{" + map.checkSpaceInTemplate(listDataTypes.get(j)) + "}"; 
								subjectMap.template = subjectMap.template + "/" + listParentTables.get(j) + "/{" + map.checkSpaceInTemplate(listDataTypes.get(j)) + "}"; 
							}
						}
						
						//subjectMap.classSubjectMap = graph2.get(i);
						//subjectMap.classSubjectMap = Character.toString(listParentTables.get(i).charAt(0)).toUpperCase()+listParentTables.get(i).substring(1);
						subjectMap.classSubjectMap = getFirstCharCaseName(listParentTables.get(i));
						subjectMap.term = "rr:IRI";
						/* Adding subjectMap to the triplesMap */
						triplesMap.subjectMap = subjectMap;

						// subjectMap for the right relation (store for build right triplesMap) lower case
						rightSubjectMap.templateMxN.add(listParentTables.get(i));
						
						// predicateObjects
						//gateway.getSchemaColumnsName(graph6, graph2.get(i));
						// Getting the predicateObjectMaps
						gateway.getColumnsFromTableName(properties, graph8, graph9, graph10, schema, listParentTables.get(i));

						for (int j=0; j < graph8.size(); j++) {
							predicateObjectMap = new R2RMLPredicateObjectMap(); 
							objectMap = new R2RMLObjectMap();
							// translating datatype
							String dt = R2RMLdt.getR2RMLDatatype(graph9.get(j)); 
							if(!dt.equals("")) {
								objectMap.column = "[ rr:column \"" + map.checkSpaceInTemplate(graph8.get(j)) + "\"; rr:datatype " + dt + "; ]";
							} else {
								objectMap.column = "[ rr:column \"" + map.checkSpaceInTemplate(graph8.get(j)) + "\" ]";
							}
							//objectMap.column = "[ rr:column \"" + graph8.get(j) + "\" ]";
							//objectMap.column = "[ rr:termType rr:Literal; rr:column \"" + graph8.get(j) + "\" ]";
							//predicateObjectMap.predicate.add("name");
							// hasKey
							objectMap.hasKey = !graph10.get(j).equals(""); 
							if(objectMap.hasKey) {
								//subjectMap.keys.add(graph8.get(j).toLowerCase());
								subjectMap.keys.add(subjectMap.classSubjectMap + ":" + graph8.get(j).toLowerCase());
							}
							//predicateObjectMap.predicate.add(subjectMap.classSubjectMap + ":" + graph8.get(j).toLowerCase());
							if(prefixedTables) {
								String newPredicate = subjectMap.classSubjectMap + ":" + graph8.get(j).toLowerCase();
								predicateObjectMap.addPredicate(newPredicate);
							} else {
								String newPredicate = "<" + map.template + "/" + encodeURIcomponent(subjectMap.classSubjectMap) + "#" + encodeURIcomponent(graph8.get(j).toLowerCase())  + ">";
								predicateObjectMap.addPredicate(newPredicate);
							}
							//predicateObjectMap.predicate.add(graph8.get(j).toLowerCase());
							predicateObjectMap.objectMap.add(objectMap);
							/* Adding each predicateObjectMap to the triplesMap */
							triplesMap.predicateObjectMap.add(predicateObjectMap);
						}

						/* Adding triplesMap to the map */
						map.triplesMap.add(triplesMap);
						if(compatible == COMPATIBLE_VIRTUOSO && prefixedTables) {
							map.prefix.add(new R2RMLPrefix(subjectMap.classSubjectMap, map.template + "/" + subjectMap.classSubjectMap + "#"));
						}
						
						// -------------------------------------------------------
						// owl:DatatypeProperty (constant)
						// -------------------------------------------------------
						for (String c : graph8) {
							//String tab0 = Character.toString(listParentTables.get(i).charAt(0)).toUpperCase()+listParentTables.get(i).substring(1);
							String tab0 = getFirstCharCaseName(listParentTables.get(i));
							map.addOwlDatatypeProperty(tab0, c, graph9.get(graph8.indexOf(c)));
						}
						
						// -------------------------------------------------------
						// owl:Class
						// -------------------------------------------------------
						//String table = Character.toString(listParentTables.get(i).charAt(0)).toUpperCase()+listParentTables.get(i).substring(1);
						String table = getFirstCharCaseName(listParentTables.get(i));
						map.addOwlClass(table);
						
					}

					// Add the comments
					triplesMap.comments.add("# M-N: " + r2);
				}				


				// ------------------------------------------------------------------------------------------------
				// RIGHT RELATION
				// ------------------------------------------------------------------------------------------------

				// Find the tripleMap that holds the left relation
				//if((triplesMap = map.find(r2.toUpperCase())) == null) {
				if((triplesMap = map.find(r2)) == null) {
					
					// creates a new triplesMap
					triplesMap = new R2RMLTriplesMap(map);

					// Triple map for right relation
					logicalTable = new R2RMLLogicalTable();

					logicalTable.tableName = map.checkSpaceInTemplate(r2);

					if(compatible == COMPATIBLE_VIRTUOSO) {
						logicalTable.tableSchema = qualifier;
						logicalTable.tableOwner = owner;
					}
					/* Adding logicalTable to the triplesMap */
					triplesMap.logicalTable = logicalTable;
					
					subjectMap = new R2RMLSubjectMap();
					//subjectMap.template = "http://data.example.com/" + r2 + "/{" + graph3.get(0) + "};";

					String comments = "# " + r2.toUpperCase() + "(";
					//subjectMap.template = map.template;
					subjectMap.template = map.template + "/" + r2;

					ArrayList<String> cols = new ArrayList<String>(); 
					if(gateway.hasPrimaryKey(properties, schema, r2, cols)) {
						for(int j=0; j<cols.size(); j++) {
							//subjectMap.template = subjectMap.template + "/" + r2 + "/{" + map.checkSpaceInTemplate(cols.get(j)) + "}"; 
							subjectMap.template = subjectMap.template + "/{" + map.checkSpaceInTemplate(cols.get(j)) + "}"; 
						}
					} else {
						for(int i=0; i<listParentTables.size(); i++) {
							//subjectMap.template = subjectMap.template + "/" + graph2.get(i) + "/{" + graph3.get(i) + "}";
							subjectMap.template = subjectMap.template + "/" + listParentTables.get(i) + "/{" + map.checkSpaceInTemplate(listReferencedTableNames.get(i)) + "}";
							comments = comments + listDataTypes.get(i) + ",";
						}
						//subjectMap.template = subjectMap.template + ";";
						comments = comments.substring(0, comments.length()-1) + ")";
						//subjectMap.template = "http://data.example.com/" + r2 + "/{" + graph3.get(0) + "};";
					}
					//subjectMap.classSubjectMap = r2;
					//subjectMap.classSubjectMap = Character.toString(r2.charAt(0)).toUpperCase()+r2.substring(1);
					subjectMap.classSubjectMap = getFirstCharCaseName(r2);
					subjectMap.term = "rr:IRI";

					triplesMap.comments.add("#");
					triplesMap.comments.add(comments);
					triplesMap.comments.add("#");

					/* Adding subjectMap to the triplesMap */
					triplesMap.subjectMap = subjectMap;

					//if(gateway.getSchemaColumnsNameCount(r2)>0) {
					if(gateway.getColumnsFromTableNameCount(properties, schema, r2)>0) {
						//gateway.getSchemaColumnsName(graph6, r2);
						gateway.getColumnsFromTableNameMxN(properties, graph8, graph9, graph10, schema, r2);
						for (int i=0; i<graph8.size(); i++) {
							predicateObjectMap = new R2RMLPredicateObjectMap(); 
							objectMap = new R2RMLObjectMap();
							if(listDataTypes.contains(graph8.get(i))) {
								int j = listDataTypes.indexOf(graph8.get(i));
								//predicateObjectMap.predicate.add(graph2.get(j));
								if(prefixedTables) {
									//predicateObjectMap.predicate.add(subjectMap.classSubjectMap + ":" + graph2.get(j).toLowerCase());
									String newPredicate = subjectMap.classSubjectMap + ":" + listParentTables.get(j);
									predicateObjectMap.addPredicate(newPredicate);
								} else {
									//predicateObjectMap.predicate.add("<" + map.template + "/" + subjectMap.classSubjectMap + "#" + graph2.get(j).toLowerCase()  + ">");
									String newPredicate = "<" + map.template + "/" + encodeURIcomponent(subjectMap.classSubjectMap) + "#" + encodeURIcomponent(listParentTables.get(j))  + ">";
									predicateObjectMap.addPredicate(newPredicate);
								}
								objectMap.template = "[ rr:template \"" + map.template +"/" + listParentTables.get(j) + "/{" + map.checkSpaceInTemplate(listDataTypes.get(j).toUpperCase()) + "}\" ]";
							} else {
								//predicateObjectMap.predicate.add("name");
								//predicateObjectMap.predicate.add(graph8.get(i).toLowerCase());
								//predicateObjectMap.predicate.add(subjectMap.classSubjectMap + ":" + graph8.get(i).toLowerCase());
								if(prefixedTables) {
									//predicateObjectMap.predicate.add(subjectMap.classSubjectMap + ":" + map.checkSpaceInTemplate(graph8.get(i).toLowerCase()));
									String newPredicate = subjectMap.classSubjectMap + ":" + graph8.get(i);
									predicateObjectMap.addPredicate(newPredicate);
								} else {
									//predicateObjectMap.predicate.add("<" + map.template + "/" + subjectMap.classSubjectMap + "#" + map.checkSpaceInTemplate(graph8.get(i).toLowerCase())  + ">");
									String newPredicate = "<" + map.template + "/" + encodeURIcomponent(subjectMap.classSubjectMap) + "#" + encodeURIcomponent(graph8.get(i))  + ">";
									predicateObjectMap.addPredicate(newPredicate);
								}

								String dt = R2RMLdt.getR2RMLDatatype(graph9.get(i)); 
								if(!dt.equals("")) {
									objectMap.column = "[ rr:column \"" + map.checkSpaceInTemplate(graph8.get(i)) + "\"; rr:datatype " + dt + "; ]";
								} else {
									objectMap.column = "[ rr:column \"" + map.checkSpaceInTemplate(graph8.get(i)) + "\" ]";
								}
								//objectMap.column = "[ rr:column \"" + graph8.get(i) + "\" ]";
								//objectMap.column = "[ rr:termType rr:Literal; rr:column \"" + graph8.get(i) + "\" ]";
							}
							// hasKey
							objectMap.hasKey = !graph10.get(i).equals(""); 
							if(objectMap.hasKey) {
								//subjectMap.keys.add(subjectMap.classSubjectMap + ":" + graph8.get(i).toLowerCase());
								subjectMap.keys.add(subjectMap.classSubjectMap + ":" + graph8.get(i));
							}
							predicateObjectMap.objectMap.add(objectMap);
							/* Adding each predicateObjectMap to the triplesMap */
							triplesMap.predicateObjectMap.add(predicateObjectMap);
						}
						
						/* Adding triplesMap to the map */
						map.triplesMap.add(triplesMap);
						if(compatible == COMPATIBLE_VIRTUOSO && prefixedTables) {
							map.prefix.add(new R2RMLPrefix(subjectMap.classSubjectMap, map.template + "/" + subjectMap.classSubjectMap + "#"));
						}

						// -------------------------------------------------------
						// owl:DatatypeProperty (constant)
						// -------------------------------------------------------
						for (String c : graph8) {
							//String tab0 = Character.toString(r2.charAt(0)).toUpperCase()+r2.substring(1);
							String tab0 = getFirstCharCaseName(r2);
							map.addOwlDatatypeProperty(tab0, c, graph9.get(graph8.indexOf(c)));
						}
						
					} else {
						// What may be done in this case (no additional fields)?
					}

					// -------------------------------------------------------
					// owl:Class
					// -------------------------------------------------------
					//String table = Character.toString(r2.charAt(0)).toUpperCase()+r2.substring(1);
					String table = getFirstCharCaseName(r2);
					map.addOwlClass(table);
					
				}				
				// Increase the counter for M-N relationships
				map.counterMxN++;

				// Retrieves id for storing the next predicateObjectMaps
				int id; // = triplesMap.id;
			
				// ------------------------------------------------------------------------------------------------
				// JOIN CONDITIONS
				// ------------------------------------------------------------------------------------------------

				gateway.getConstraintsFromTableName(properties, listParentTables
						, listDataTypes, listColumnKeys, listReferencedColumnNames, schema, r2);
				String leftTable = "";
				for (int i=0; i < listParentTables.size(); i++) {
					//String pk = graph3.get(i);
					// doesn't consider if is the same left table (or it will place two joinconditions)  
					if(!listParentTables.get(i).equals(leftTable)) {
						leftTable = listParentTables.get(i);
						// Creates a new predicateObjectMap and objectMap
						predicateObjectMap = new R2RMLPredicateObjectMap();
						//predicateObjectMap.predicate.add(graph3.get(i));
						//String pred = Character.toString(graph3.get(i).charAt(0)).toUpperCase()+graph3.get(i).substring(1);
						//String pred = Character.toString(listParentTables.get(i).charAt(0)).toUpperCase()+listParentTables.get(i).substring(1);
						//String pred = Character.toString(listDataTypes.get(0).charAt(0)).toUpperCase()+listDataTypes.get(0).substring(1);
						String pred = getFirstCharCaseName(listDataTypes.get(0));
						if(joinString.equals("")) {
							//predicateObjectMap.predicate.add("<" + map.template + "/" + pred + "#" + map.checkSpaceInTemplate(graph3.get(i).toLowerCase())  + ">");
							String newPredicate = "<" + map.template + "/" + encodeURIcomponent(pred) + "#" + encodeURIcomponent(listReferencedColumnNames.get(i))  + ">";
							predicateObjectMap.addPredicate(newPredicate);
						} else {
							//predicateObjectMap.predicate.add("<" + map.template + "/" + pred + joinString + map.checkSpaceInTemplate(graph3.get(i).toLowerCase()) + ">");
							String newPredicate = "<" + map.template + "/" + encodeURIcomponent(pred + joinString + listReferencedColumnNames.get(i)) + ">";
							predicateObjectMap.addPredicate(newPredicate);
						}
						//predicateObjectMap.predicate.add(map.prefix.get(map.indexPrefixSchema).prefix + ":" + pred);
						//predicateObjectMap.predicate.add(map.prefix.get(map.indexPrefixSchema).prefix + ":" + graph3.get(i));
						objectMap = new R2RMLObjectMap();
						objectMap.column = "";
						
						// the join condition must be placed on the left table - NOT USED HERE, but in print
						id = map.find_id(listParentTables.get(i));
						objectMap.parentTripleMap = "<#TriplesMap" + String.valueOf(id) + ">";
						
						gateway.getKeysFromConstraint(properties, graph8, graph9, graph10, schema, listColumnKeys.get(i));
						for(String kc: graph8) {
							int k = graph8.indexOf(kc);
							objectMap.joinCondition.add(new R2RMLJoinCondition(kc, graph10.get(k), "# " + listColumnKeys.get(i))); // It was changed for 1xN, just following the wave...
							//objectMap.joinCondition.add(new R2RMLJoinCondition(graph10.get(k), kc, "# " + graph4.get(i))); 
						}
						
						//objectMap.joinCondition = new R2RMLJoinCondition(graph3.get(i), graph3.get(i));
						/* Adding objectMap to predicateObjectMap */
						predicateObjectMap.objectMap.add(objectMap);
						predicateObjectMap.comments.add("# " + listParentTables.get(i));
						
						// Find the tripleMap that holds the left relation
						//triplesMap = map.find(graph2.get(i).toUpperCase());
						//triplesMap = map.find(graph2.get(i));
						// Join conditions must be placed on the right table
						triplesMap = map.find(r2);
						
						/* Adding each predicateObjectMap to the triplesMap */
						if(triplesMap == null) {
							log.log(Level.WARNING, "No Triples Map found for: " + r2);
						} else {
							triplesMap.predicateObjectMap.add(predicateObjectMap);	
						}
						
						
					}
				}
				
				// -------------------------------------------------------
				// OBJECT PROPERTIES
				// Work with combinations of tables of a given relationship
				// -------------------------------------------------------
				gateway.getRelationshipsFromTableDetailed(properties, listParentTables, listDataTypes
						, listColumnKeys, listReferencedTableNames, graph6, listTableTypes, schema, r2);
				
				ArrayList<String> comb = new ArrayList<String>();  
				//Combine.getCombinations(comb, graph2, graph2.size());
				Combine.getPairsCombination(listParentTables, comb, listParentTables.size());

				// Execute for all pairs of tables
				for(int i=0; i < comb.size(); i++) {

					// Get the tokens
					StringTokenizer st = new StringTokenizer(comb.get(i), ",");
					ArrayList<String> tables = new ArrayList<String>(); 
					while(st.hasMoreTokens()) {
						tables.add(st.nextToken());
					}
					
					//String tab0 = Character.toString(tables.get(0).charAt(0)).toUpperCase()+tables.get(0).substring(1);
					String tab0 = getFirstCharCaseName(tables.get(0));
					//String tab1 = Character.toString(tables.get(1).charAt(0)).toUpperCase()+tables.get(1).substring(1);
					String tab1 = getFirstCharCaseName(tables.get(1));

					// Doesn't add object property if the table is the same
					if(!tab0.equals(tab1)) {
						// -------------------------------------------------------
						// 1st TM: Object Property (constant)
						// -------------------------------------------------------
						map.addOwlObjectProperty(tab0, tab1);

						// -------------------------------------------------------
						// 2nd TM: Object Property content (using sqlQuery to connect)
						// -------------------------------------------------------
						List<SQLColumn> graph3AsSQLColumn = SQLColumn.fromStringCollection(listDataTypes);
						List<SQLColumn> graph5AsSQLColumn = SQLColumn.fromStringCollection(listReferencedTableNames);
						String sqlQuery = map.buildSQLQueryObjectPropertyMxN(listParentTables, graph3AsSQLColumn, r2, graph5AsSQLColumn, tables);
						
						int indexDomain = listParentTables.indexOf(tables.get(0));
						int indexRange = listParentTables.indexOf(tables.get(1));
						//tab0 = Character.toString(tables.get(0).charAt(0)).toUpperCase()+tables.get(0).substring(1);
						tab0 = getFirstCharCaseName(tables.get(0));
	 					//tab1 = Character.toString(tables.get(1).charAt(0)).toUpperCase()+tables.get(1).substring(1);
	 					tab1 = getFirstCharCaseName(tables.get(1));

	 					//addOwlObjectPropertyData(String tableDomain, String columnDomain, String tableRange, String columnRange, String sqlQuery) {
	 					String tableDomain = tab0;
	 					String columnDomain = graph5AsSQLColumn.get(indexDomain).getColumnName();
	 					String tableRange = tab1;
	 					//String columnRange = graph3.get(indexRange);
	 					String columnRange = graph5AsSQLColumn.get(indexRange).getColumnName();
						map.addOwlObjectPropertyData(tableDomain, columnDomain, tableRange, columnRange, sqlQuery);
						
						// -------------------------------------------------------
						// 3rd TM: Inverse Property (constant)
						// -------------------------------------------------------
						map.addOwlInverseProperty(tab0, tab1);
					}

				}
			}
		}

		// -------------------------------------------------------
		// TABLES WITHOUT RELATIONSHIPS
		// -------------------------------------------------------
		log.log(Level.INFO, "Building Triples Map for tables without relationship ...");
		gateway.getTablesFromSchema(properties, graph11, graph15, schema);
		
		for(String t: graph11) {
			log.log(Level.INFO, "\tBuilding Triples Map for table: " + t);
			if((triplesMap = map.find(t)) == null) {
				if(verbose >= 2) {
					System.out.println("Table without relationship: " + t);
				}
				
				// Getting the predicateObjectMaps
				// graph12 - column name
				// graph13 - data type
				// graph14 - column key
				gateway.getColumnsFromTableName(properties, graph12, graph13, graph14, schema, t);

				// creates a new triplesMap
				triplesMap = new R2RMLTriplesMap(map);

				// Placing comments if is the case
				triplesMap.comments.add("#");
				String fieldComment = "# " + t.toUpperCase() + "(" ;
				for(String field : graph12) {
					int k = graph12.indexOf(field);
					if(graph14.get(k).equals("PRIMARY KEY") || graph14.get(k).equals("UNI")) {
						fieldComment = fieldComment + field;
						if(k < graph12.size()-1) {
							fieldComment = fieldComment + ";";
						}
					}
				}
				fieldComment = fieldComment + ")";
				triplesMap.comments.add(fieldComment);
				triplesMap.comments.add("#");

				// Triple map for left relation
				logicalTable = new R2RMLLogicalTable();
				//logicalTable.tableName = graph2.get(0).toUpperCase();

				logicalTable.tableName = map.checkSpaceInTemplate(t);
				
				if(compatible == COMPATIBLE_VIRTUOSO) {
					logicalTable.tableSchema = qualifier;
					logicalTable.tableOwner = owner;
				}
				triplesMap.logicalTable = logicalTable;
				
				subjectMap = new R2RMLSubjectMap();
				//subjectMap.template = map.template + "/" + graph2.get(0) + "/{" + graph3.get(0) + "}";
				
				//if(graph14.indexOf("PRIMARY KEY") > 0) {
				if(graph14.contains("PRIMARY KEY") || graph14.contains("UNI")) {
					//subjectMap.template = map.template + "/" + map.checkSpaceInTemplate(t);
					subjectMap.template = map.template + "/" + t;
					for(int i=0; i < graph14.size(); i++) {
						if(graph14.get(i).equals("PRIMARY KEY") || graph14.get(i).equals("UNI")) {
							subjectMap.template = subjectMap.template + "/{" + map.checkSpaceInTemplate(graph12.get(i)) + "}";
						}
					}
					subjectMap.term = "rr:IRI";
				} else {
					//subjectMap.template = "_:" + IRI.replaceFirst("http://", "") + "/" + t + "/" + graph12.get(0) +"={" + graph12.get(0) + "}";
					subjectMap.template = IRI.replaceFirst("http://", "") + "/" + t + "/" + graph12.get(0) +"={" + map.checkSpaceInTemplate(graph12.get(0)) + "}";
					for(int i=1; i < graph12.size(); i++) {
						subjectMap.template = subjectMap.template + templateSeparator + graph12.get(i) +"={" + map.checkSpaceInTemplate(graph12.get(i)) + "}";
					}
					subjectMap.term = "rr:BlankNode";
				}
				
				//subjectMap.template = map.template + "/" + t + "/{" + graph12.get(0) + "}";
				//subjectMap.classSubjectMap = graph2.get(0);
				//subjectMap.classSubjectMap = map.checkSpaceInTemplate(Character.toString(t.charAt(0)).toUpperCase()+t.substring(1));
				//subjectMap.classSubjectMap = Character.toString(t.charAt(0)).toUpperCase()+t.substring(1);
				subjectMap.classSubjectMap = getFirstCharCaseName(t);
				/* Adding subjectMap to the triplesMap */
				triplesMap.subjectMap = subjectMap;

				for (String c : graph12) {
					predicateObjectMap = new R2RMLPredicateObjectMap(); 
					objectMap = new R2RMLObjectMap();
					// translating datatype
					String dt = R2RMLdt.getR2RMLDatatype(graph13.get(graph12.indexOf(c))); 
					if(!dt.equals("")) {
						objectMap.column = "[ rr:column \"" + map.checkSpaceInTemplate(c) + "\"; rr:datatype " + dt + "; ]";
					} else {
						objectMap.column = "[ rr:column \"" + map.checkSpaceInTemplate(c) + "\" ]";
					}
					//objectMap.column = "[ rr:termType rr:Literal; rr:column \"" + c + "\" ]";
					//predicateObjectMap.predicate.add("name");
					// hasKey
					objectMap.hasKey = !graph14.get(graph12.indexOf(c)).equals("");
					if(objectMap.hasKey) {
						//subjectMap.keys.add(c.toLowerCase());
						subjectMap.keys.add(subjectMap.classSubjectMap + ":" + c.toLowerCase());
					}
					//predicateObjectMap.predicate.add(c.toLowerCase());
					//predicateObjectMap.predicate.add(subjectMap.classSubjectMap + ":" + c.toLowerCase());
					if(prefixedTables) {
						String newPredicate = subjectMap.classSubjectMap + ":" + c.toLowerCase();
						predicateObjectMap.addPredicate(newPredicate);
					} else {
						String newPredicate = "<" + map.template + "/" + encodeURIcomponent(subjectMap.classSubjectMap) + "#" + encodeURIcomponent(c.toLowerCase()) + ">";
						predicateObjectMap.addPredicate(newPredicate);
					}
					predicateObjectMap.objectMap.add(objectMap);
					/* Adding each predicateObjectMap to the triplesMap */
					triplesMap.predicateObjectMap.add(predicateObjectMap);
				}

				/* Adding triplesMap to the map */
				map.triplesMap.add(triplesMap);
				if(compatible == COMPATIBLE_VIRTUOSO && prefixedTables) {
					map.prefix.add(new R2RMLPrefix(subjectMap.classSubjectMap, map.template + "/" + subjectMap.classSubjectMap + "#"));
				}
				
				// -------------------------------------------------------
				// owl:Class
				// -------------------------------------------------------
				//String table = Character.toString(t.charAt(0)).toUpperCase()+t.substring(1);
				String table = getFirstCharCaseName(t);
				map.addOwlClass(table);
				
				// -------------------------------------------------------
				// owl:DatatypeProperty (constant)
				// -------------------------------------------------------
				for (String c : graph12) {
					//String tab0 = Character.toString(t.charAt(0)).toUpperCase()+t.substring(1);
					String tab0 = getFirstCharCaseName(t);
					map.addOwlDatatypeProperty(tab0, c, graph13.get(graph12.indexOf(c)));
				}	
			}
		}

		// -------------------------------------------------------
		// VIEWS
		// -------------------------------------------------------
		// Virtuoso doesn't implement rr:sqlQuery
		if((compatible != COMPATIBLE_VIRTUOSO) && showViews) {

			gateway.getViewsFromSchema(properties, graph11, graph15, schema);
			
			for(String t: graph11) {
				if((triplesMap = map.find(t)) == null) {
					if(verbose >= 2) {
						System.out.println("Table without relationship: " + t);
					}
					
					// Getting the predicateObjectMaps
					// graph12 - column name
					// graph13 - data type
					// graph14 - column key
					gateway.getColumnsFromTableName(properties, graph12, graph13, graph14, schema, t);

					// creates a new triplesMap
					triplesMap = new R2RMLTriplesMap(map);

					// Placing comments if is the case
					triplesMap.comments.add("#");
					
					// The first field is taken as the index
					String fieldComment = "# " + t.toUpperCase() + "(" + graph12.get(0) + ")";
					triplesMap.comments.add(fieldComment);
					triplesMap.comments.add("#");

					// Triple map for left relation
					logicalTable = new R2RMLLogicalTable();
					//logicalTable.tableName = graph2.get(0).toUpperCase();
					logicalTable.tableName = "";
					String sqlQuery = graph15.get(graph11.indexOf(t)).replace("`"+dbName+"`.", "");
					logicalTable.setSqlQuery(sqlQuery);
					triplesMap.logicalTable = logicalTable;
					
					subjectMap = new R2RMLSubjectMap();
					//subjectMap.template = map.template + "/" + graph2.get(0) + "/{" + graph3.get(0) + "}";
					
					subjectMap.template = map.template + "/" + t + "/{" + map.checkSpaceInTemplate(graph12.get(0)) + "}";
					subjectMap.term = "rr:IRI";
					
					//subjectMap.template = map.template + "/" + t + "/{" + graph12.get(0) + "}";
					//subjectMap.classSubjectMap = graph2.get(0);
					//subjectMap.classSubjectMap = Character.toString(t.charAt(0)).toUpperCase()+t.substring(1);
					subjectMap.classSubjectMap = getFirstCharCaseName(t);
					/* Adding subjectMap to the triplesMap */
					triplesMap.subjectMap = subjectMap;

					for (String c : graph12) {
						predicateObjectMap = new R2RMLPredicateObjectMap(); 
						objectMap = new R2RMLObjectMap();
						// translating datatype
						String dt = R2RMLdt.getR2RMLDatatype(graph13.get(graph12.indexOf(c))); 
						if(!dt.equals("")) {
							objectMap.column = "[ rr:column \"" + map.checkSpaceInTemplate(c) + "\"; rr:datatype " + dt + "; ]";
						} else {
							objectMap.column = "[ rr:column \"" + map.checkSpaceInTemplate(c) + "\" ]";
						}
						//objectMap.column = "[ rr:termType rr:Literal; rr:column \"" + c + "\" ]";
						if(prefixedTables) {
							String newPredicate = subjectMap.classSubjectMap + ":" + c.toLowerCase();
							predicateObjectMap.addPredicate(newPredicate);
						} else {
							String newPredicate = "<" + map.template + "/" + encodeURIcomponent(subjectMap.classSubjectMap) + "#" + encodeURIcomponent(c.toLowerCase()) + ">";
							predicateObjectMap.addPredicate(newPredicate);
						}
						predicateObjectMap.objectMap.add(objectMap);
						/* Adding each predicateObjectMap to the triplesMap */
						triplesMap.predicateObjectMap.add(predicateObjectMap);
					}

					/* Adding triplesMap to the map */
					map.triplesMap.add(triplesMap);
					if(prefixedTables) {
						map.prefix.add(new R2RMLPrefix(subjectMap.classSubjectMap, map.template + "/" + subjectMap.classSubjectMap + "#"));
					}
					
					// -------------------------------------------------------
					// owl:Class
					// -------------------------------------------------------
					//String table = Character.toString(t.charAt(0)).toUpperCase()+t.substring(1);
					String table = getFirstCharCaseName(t);
					map.addOwlClass(table);
				}
			}
			
		}
		
		map.comments.clear();
		map.comments.add("#");
		map.comments.add("# Filename: " + map.filename);
		map.comments.add("# Summary: ");
		map.comments.add("#   TriplesMap: " + String.valueOf(map.counterTriplesMap-1));
		map.comments.add("#   Relationships 1-N: " + String.valueOf(map.counter1xN));
		map.comments.add("#   Relationships M-N: " + String.valueOf(map.counterMxN));
		map.comments.add("#");
		
	}
	
	// R2RMLCreateSchema - install the database schema in the DBMS
	public void R2RMLCreateSchema() throws MIRRORException {

		// Connect with commands layer
		IGateway gateway = new Gateway();
		
		// Generates random munber
		int r = (int) (Math.random()*1000000);

		// Creates temporary name for the database
		dbName = "db" + String.format("%06d", r);
		
		commandException = "CREATE DATABASE "+dbName;
		// Creates the database
		gateway.createDatabaseFromSchema(properties, dbName);
		commandException = "";

		// Preliminar commands
		if(properties.getProperty("driver").equals("MySQL")) {
			gateway.generalCommand(properties, dbName, "SET NAMES utf8;");
			gateway.generalCommand(properties, dbName, "SET SQL_MODE='NO_AUTO_VALUE_ON_ZERO';");
			gateway.generalCommand(properties, dbName, "SET FOREIGN_KEY_CHECKS=0;");
		}
		if(properties.getProperty("driver").equals("PostgreSQL")) {
			gateway.generalCommand(properties, dbName, "BEGIN;");
			
		}
		
		// Execute commands from schema
		String newcontent = extractComments(schemaContent);
		
		//StringTokenizer st = new StringTokenizer(schemaContent, ";");
		StringTokenizer st = new StringTokenizer(newcontent, ";");
		//StringTokenizer st = new StringTokenizer(schemaContent, "\r\n");
		List<String> tokens = new ArrayList<String>();
		
		// taking each token  
		while (st.hasMoreTokens()) {  
		    tokens.add(st.nextToken());  
		}  
		  
		// print list
		for (String t : tokens) {
			if(verbose >= 2) {
				System.out.println(t);
			}
	    	if((t.contains("CREATE") && t.contains("TABLE")) || 
	    			(t.contains("ALTER") && t.contains("TABLE")) || 
	    			(t.contains("CREATE") && t.contains("VIEW")) || 
	    			t.contains("FOREIGN_KEY_CHECKS") ||
	    			(t.contains("INSERT INTO") && SQLInsert) ||  // Watch out!!!
	    			t.contains("SET NAMES")
	    		) {
	    		commandException = t.trim();

	    		gateway.generalCommand(properties, dbName, t + ";");

	    	}
		}
		// it's possible to there's no SQL exceptions
		commandException = "";

		// Postliminar commands
		if(properties.getProperty("driver").equals("MySQL")) {
			
		}
		if(properties.getProperty("driver").equals("PostgreSQL")) {
			gateway.generalCommand(properties, dbName, "END;");
		}
		
		
	}
	
	// R2RMLDropSchema - delete the database schema from DBMS
	public void R2RMLDropSchema() throws MIRRORException {

		// Connect with commands layer
		IGateway gateway = new Gateway();

		// Delete database
		gateway.dropDatabaseFromSchema(properties, dbName);
		
	}

	// R2RMLClearMap - class for cleaning the buffers
	public void R2RMLClearMap() throws MIRRORException {
		map.clear();
	}
	
	public String extractComments(String content) {
		String newcontent = "";
		
		//StringTokenizer st = new StringTokenizer(schemaContent, ";");
		String partialFiltered = schemaContent.replaceAll("(?://.*)|(?:--.*)|(?:#.*)|(/\\*(?:.|[\\n\\r])*?\\*/)", "");
		StringTokenizer st = new StringTokenizer(partialFiltered, "\r\n");
		
		// pega cada token
		String temp = "";
		while (st.hasMoreTokens()) {
			temp = st.nextToken();
			if(temp.length() >= 2) {
				if(!temp.substring(0, 2).equals("--") && 
						!temp.substring(0, 2).equals("/*") && 
						!temp.substring(0, 1).equals("#")
						) {
						newcontent = newcontent + temp;
					}
			} else {
				if(!temp.equals("#")) {
						newcontent = newcontent + temp;
					}
			}
		}  
		return newcontent;
	}

	public static String encodeURIcomponent(String s)
	{
	    StringBuilder o = new StringBuilder();
	    for (char ch : s.toCharArray()) {
	        //if (isUnsafe(ch)) {
		    if (ch == ' ') {
 	            o.append('%');
	            o.append(toHex(ch / 16));
	            o.append(toHex(ch % 16));
	        }
	        else o.append(ch);
	    }
	    return o.toString();
	}

	private static char toHex(int ch)
	{
	    return (char)(ch < 10 ? '0' + ch : 'A' + ch - 10);
	}

	private static boolean isUnsafe(char ch)
	{
	    if (ch > 128 || ch < 0)
	        return true;
	    //return " %$&+,/:;=?@<>#%".indexOf(ch) >= 0;
	    return " %$&+,/:;=?@<>%".indexOf(ch) >= 0;
	}
	
	private String getFirstCharCaseName(String oldName) {
		String newName = "";
		switch(firstCharCase) {
			case 0:
				newName = oldName;
				break;
			case 1:
				newName = Character.toString(oldName.charAt(0)).toUpperCase()+oldName.substring(1);
				break;
		}
		return newName; 
	}
	
	
	
}
