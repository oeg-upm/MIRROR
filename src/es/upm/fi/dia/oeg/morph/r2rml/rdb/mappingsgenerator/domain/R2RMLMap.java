package es.upm.fi.dia.oeg.morph.r2rml.rdb.mappingsgenerator.domain;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Properties;
import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;

import es.upm.fi.dia.oeg.morph.r2rml.rdb.mappingsgenerator.control.R2RMLProcess;
import es.upm.fi.dia.oeg.morph.r2rml.rdb.mappingsgenerator.domain.R2RMLBase;
import es.upm.fi.dia.oeg.morph.r2rml.rdb.mappingsgenerator.domain.R2RMLPrefix;
import es.upm.fi.dia.oeg.morph.r2rml.rdb.mappingsgenerator.domain.R2RMLTriplesMap;
import es.upm.fi.dia.oeg.morph.r2rml.rdb.mappingsgenerator.exception.MIRRORException;
import es.upm.fi.dia.oeg.morph.r2rml.rdb.mappingsgenerator.main.R2RMLMapper;
import es.upm.fi.dia.oeg.morph.r2rml.rdb.mappingsgenerator.persistency.base.IGateway;
import es.upm.fi.dia.oeg.morph.r2rml.rdb.mappingsgenerator.persistency.impl.Gateway;


public class R2RMLMap {

	public String filename; 
	public ArrayList<R2RMLPrefix> prefix;
	public ArrayList<R2RMLTriplesMap> triplesMap;
	public ArrayList<String> comments;
	public ArrayList<R2RMLBase> base;
	public String template; // default template for subjectMaps
	
	public int counterTriplesMap; // internal id for generates the number of respective tripleMap
	public int counter1xN;    // internal counter for 1-N relationships
	public int counterMxN;    // internal counter for M-N relationships

	public int indexPrefixSchema; // index for ex:

	public static String enclosed_char = "\\" + "\"";

	private static final Logger log = Logger.getLogger(R2RMLMap.class.getName());

	/**
	 * @return the filename
	 */
	public String getFilename() {
		return filename;
	}
	/**
	 * @param filename the filename to set
	 */
	public void setFilename(String filename) {
		this.filename = filename;
	}
	
	/**
	 * @return the prefix
	 */
	public ArrayList<R2RMLPrefix> getPrefix() {
		return prefix;
	}
	/**
	 * @param prefix the prefix to set
	 */
	public void setPrefix(ArrayList<R2RMLPrefix> prefix) {
		this.prefix = prefix;
	}
	
	public ArrayList<String> getComments() {
		return comments;
	}
	public void setComments(ArrayList<String> comments) {
		this.comments = comments;
	}
	public int getCounter1xN() {
		return counter1xN;
	}
	public void setCounter1xN(int counter1xN) {
		this.counter1xN = counter1xN;
	}
	public int getCounterMxN() {
		return counterMxN;
	}
	public void setCounterMxN(int counterMxN) {
		this.counterMxN = counterMxN;
	}
	
	/**
	 * @param filename
	 * @param prefix
	 * @param triplesMap
	 */
	public R2RMLMap(String filename, ArrayList<R2RMLPrefix> prefix,
			ArrayList<R2RMLTriplesMap> triplesMap, ArrayList<R2RMLBase> base, String template) {
		super();
		this.filename = filename;
		this.prefix = prefix;
		this.addDefaultPrefixes();
		this.triplesMap = triplesMap;
		this.base = base;
	}
	/**
	 * 
	 */
	public R2RMLMap() {
		//super();
		// TODO Auto-generated constructor stub
		this.triplesMap = new ArrayList<R2RMLTriplesMap>();
		this.prefix = new ArrayList<R2RMLPrefix>();
		this.addDefaultPrefixes();
		this.comments = new ArrayList<String>();
		this.base = new ArrayList<R2RMLBase>();
		this.template = ""; 
		counterTriplesMap = 1; // initialize triplesMap id
		counter1xN = 0;
		counterMxN = 0;
	}

	public void clear() {
		this.triplesMap.clear();;
		this.prefix.clear();
		this.comments.clear();
		this.base.clear();
		this.template = ""; 
		counterTriplesMap = 1; // initialize triplesMap id
		counter1xN = 0;
		counterMxN = 0;
	}
	
	/*
	 * find_id() - find the triplesMap id for a given tablename
	 */
	public int find_id(String tablename) {
		
		for (R2RMLTriplesMap t : this.triplesMap) {
			if(t.logicalTable.tableName.equals(tablename)) {
				return t.id;
			}
		}
		return 0;
		
	}

	/*
	 * find - find the triplesMap for a given tablename
	 */
	public R2RMLTriplesMap find(String tablename) {
		Collection<R2RMLTriplesMap> results = new Vector<R2RMLTriplesMap>();
		Collection<String> logicalTables = new Vector<String>();
		
		for (R2RMLTriplesMap t : this.triplesMap) {
			String logicalTableTableName =  t.logicalTable.tableName;
			logicalTables.add(logicalTableTableName);
			if(logicalTableTableName.equals(tablename)) {
				results.add(t);
			}
		}

		R2RMLTriplesMap result = null;
		if(results.size() == 0) {
//			log.log(Level.WARNING, "no Triples Map found table: " + tablename);
//			log.log(Level.WARNING, "logicalTables: " + Arrays.toString(logicalTables.toArray()));
			result = null;
		} else if(results.size() == 1) {
			result = results.iterator().next();
		} else if(results.size() > 1) {
//			log.log(Level.WARNING, "Multiple Triples Map found table: " + tablename);
//			log.log(Level.WARNING, "results: " + Arrays.toString(results.toArray()));
			result = results.iterator().next();
		}
		
		return result;
	}

	/*
	 * findClass - find the triplesMap for a given table (used for classes of the ontology)
	 */
	public R2RMLTriplesMap findSubjectMap(String tablename) {
		
		for (R2RMLTriplesMap t : this.triplesMap) {
			if(t.subjectMap.constant.indexOf(tablename) > 0) {
				return t;
			}
		}
		return null;
	}

	public R2RMLTriplesMap findClass(String tablename) {
		
		for (R2RMLTriplesMap t : this.triplesMap) {
			if(t.subjectMap.classSubjectMap.indexOf(tablename) > 0) {
				return t;
			}
		}
		return null;
	}

	
	public ArrayList<R2RMLBase> getBase() {
		return base;
	}
	public void setBase(ArrayList<R2RMLBase> base) {
		this.base = base;
	}
	public String getTemplate() {
		return template;
	}
	public void setTemplate(String template) {
		this.template = template;
	}
	
	private void addDefaultPrefixes() {
		this.prefix.add(new R2RMLPrefix("rr", "http://www.w3.org/ns/r2rml#"));
		this.prefix.add(new R2RMLPrefix("xsd", "http://www.w3.org/2001/XMLSchema#"));
		this.prefix.add(new R2RMLPrefix("foaf", "http://xmlns.com/foaf/0.1#"));
		this.prefix.add(new R2RMLPrefix("rdf", "http://www.w3.org/1999/02/22-rdf-syntax-ns#"));
		this.prefix.add(new R2RMLPrefix("rdfs", "http://www.w3.org/2000/01/rdf-schema#"));
		this.prefix.add(new R2RMLPrefix("owl", "http://www.w3.org/2002/07/owl#"));
		this.prefix.add(new R2RMLPrefix("dc", "http://purl.org/dc/elements/1.1#"));
		this.prefix.add(new R2RMLPrefix("rev", "http://purl.org/stuff/rev#"));
		this.prefix.add(new R2RMLPrefix("foaf", "http://xmlns.com/foaf/0.1#"));
	}
	
	public String checkSpaceInTemplate(String template) {
		// note: quotes are also needed for special characters, but also
		// if schema is case-sensitive:
		return "\\\""+template+"\\\"";
	}
	
	public void addOwlClass(String table) {
		
		R2RMLTriplesMap triplesMap;
		
		if((triplesMap = this.findClass(table)) == null) {
			triplesMap = new R2RMLTriplesMap(this, R2RMLTriplesMap.TM_ONTO);

			triplesMap.comments.add("#");
			triplesMap.comments.add("# owl:Class: " + table);
			triplesMap.comments.add("#");

			R2RMLLogicalTable cLogicalTable = new R2RMLLogicalTable();
			cLogicalTable.tableName = "dummy";
			String sqlQuery = "SELECT 1 FROM INFORMATION_SCHEMA.TABLES LIMIT 1";;
			cLogicalTable.setSqlQuery(sqlQuery);
			triplesMap.logicalTable = cLogicalTable;
			
			R2RMLSubjectMap cSubjectMap = new R2RMLSubjectMap();
			String className = table;
			cSubjectMap.constant = this.template + "/" + R2RMLProcess.encodeURIcomponent(className);
			cSubjectMap.term = "rr:IRI";
			cSubjectMap.classSubjectMap = "owl:Class";
			triplesMap.subjectMap = cSubjectMap;

			// subclass of "Thing"
			R2RMLPredicateObjectMap cPredicateObjectMap = new R2RMLPredicateObjectMap();
			cPredicateObjectMap.addPredicate("rdfs:subClassOf");
			
			R2RMLObjectMap cObjectMap = new R2RMLObjectMap();
			cObjectMap.column = "[ rr:constant owl:Thing ]";

			cPredicateObjectMap.objectMap.add(cObjectMap);
			triplesMap.predicateObjectMap.add(cPredicateObjectMap);

			// Add triples map to the list
			this.triplesMap.add(triplesMap);
		}
	}

	public void addOwlClass(String table, String superTable) {
		
		R2RMLTriplesMap triplesMap;
		
		if((triplesMap = this.findClass(table)) == null) {
			triplesMap = new R2RMLTriplesMap(this, R2RMLTriplesMap.TM_ONTO);

			triplesMap.comments.add("#");
			triplesMap.comments.add("# owl:Class: " + table);
			triplesMap.comments.add("#");

			R2RMLLogicalTable cLogicalTable = new R2RMLLogicalTable();
			cLogicalTable.tableName = "dummy";
			String sqlQuery = "SELECT 1 FROM INFORMATION_SCHEMA.TABLES LIMIT 1";
			cLogicalTable.setSqlQuery(sqlQuery);
			triplesMap.logicalTable = cLogicalTable;
			
			R2RMLSubjectMap cSubjectMap = new R2RMLSubjectMap();
			cSubjectMap.constant = this.template + "/" + R2RMLProcess.encodeURIcomponent(table);
			cSubjectMap.term = "rr:IRI";
			cSubjectMap.classSubjectMap = "owl:Class";
			triplesMap.subjectMap = cSubjectMap;

			// subclass of "Thing"
			R2RMLPredicateObjectMap cPredicateObjectMap = new R2RMLPredicateObjectMap();
			cPredicateObjectMap.addPredicate("rdfs:subClassOf");
			
			R2RMLObjectMap cObjectMap = new R2RMLObjectMap();
			String pred = superTable;
			//String pred = Character.toString(graph2.get(0).charAt(0)).toUpperCase()+graph2.get(0).substring(1);
			cObjectMap.column = "[ rr:constant <"+ this.template + "/" + R2RMLProcess.encodeURIcomponent(pred) +"> ]";

			cPredicateObjectMap.objectMap.add(cObjectMap);
			triplesMap.predicateObjectMap.add(cPredicateObjectMap);

			// Add triples map to the list
			this.triplesMap.add(triplesMap);
		}
	}

	
	public void addOwlDatatypeProperty(String table, String column, String type) {

		R2RMLTriplesMap triplesMap;
		final R2RMLDatatype R2RMLdt = new R2RMLDatatype();
		
		String datatypePropertyName = table + "#" + column.toLowerCase();

		if((triplesMap = this.findSubjectMap(datatypePropertyName)) == null) {
			triplesMap = new R2RMLTriplesMap(this, R2RMLTriplesMap.TM_ONTO);

			triplesMap.comments.add("#");
			triplesMap.comments.add("# DatatypeProperty ");
			triplesMap.comments.add("#");

			R2RMLLogicalTable cLogicalTable = new R2RMLLogicalTable();
			cLogicalTable.tableName = "dummy";
			String sqlQuery = "SELECT 1 FROM INFORMATION_SCHEMA.TABLES LIMIT 1";
			cLogicalTable.setSqlQuery(sqlQuery);
			triplesMap.logicalTable = cLogicalTable;
			
			R2RMLSubjectMap cSubjectMap = new R2RMLSubjectMap();
			cSubjectMap.constant = this.template + "/" + R2RMLProcess.encodeURIcomponent(datatypePropertyName);
			cSubjectMap.term = "rr:IRI";
			cSubjectMap.classSubjectMap = "owl:DatatypeProperty";
			triplesMap.subjectMap = cSubjectMap;

			// domain
			R2RMLPredicateObjectMap cPredicateObjectMap = new R2RMLPredicateObjectMap();
			cPredicateObjectMap.addPredicate("rdfs:domain");
			
			R2RMLObjectMap cObjectMap = new R2RMLObjectMap();
			//String pred = Character.toString(tables.get(0).charAt(0)).toUpperCase()+tables.get(0).substring(1);
			cObjectMap.column = "[ rr:constant <" + this.template + "/" + R2RMLProcess.encodeURIcomponent(table) + "> ]";

			cPredicateObjectMap.objectMap.add(cObjectMap);
			triplesMap.predicateObjectMap.add(cPredicateObjectMap);

			// range
			cPredicateObjectMap = new R2RMLPredicateObjectMap();
			cPredicateObjectMap.addPredicate("rdfs:range");
			
			cObjectMap = new R2RMLObjectMap();
			//cObjectMap.column = "[ rr:constant " + R2RMLdt.getR2RMLDatatype(graph9.get(graph8.indexOf(column))) + " ]";
			String r2rmlDatatype = R2RMLdt.getR2RMLDatatype(type);
			cObjectMap.column = "[ rr:constant " + r2rmlDatatype + " ]";
			cPredicateObjectMap.objectMap.add(cObjectMap);
			triplesMap.predicateObjectMap.add(cPredicateObjectMap);

			// Add triples map to the list
			this.triplesMap.add(triplesMap);
		}

	}
	
	public void addOwlObjectProperty(String tableDomain, String tableRange) {

		R2RMLTriplesMap triplesMap;

		triplesMap = new R2RMLTriplesMap(this, R2RMLTriplesMap.TM_ONTO);

		triplesMap.comments.add("#");
		triplesMap.comments.add("# ObjectProperty ");
		triplesMap.comments.add("#");

		R2RMLLogicalTable cLogicalTable = new R2RMLLogicalTable();
		cLogicalTable.tableName = "dummy";
		String sqlQuery = "SELECT 1 FROM INFORMATION_SCHEMA.TABLES LIMIT 1";
		cLogicalTable.setSqlQuery(sqlQuery);
		triplesMap.logicalTable = cLogicalTable;
		
		R2RMLSubjectMap cSubjectMap = new R2RMLSubjectMap();
		String objectPropertyName = tableDomain+ "Has" + tableRange;
		cSubjectMap.constant = this.template + "/" + R2RMLProcess.encodeURIcomponent(objectPropertyName);
		cSubjectMap.term = "rr:IRI";
		cSubjectMap.classSubjectMap = "owl:ObjectProperty";
		triplesMap.subjectMap = cSubjectMap;

		// domain
		R2RMLPredicateObjectMap cPredicateObjectMap = new R2RMLPredicateObjectMap();
		cPredicateObjectMap.addPredicate("rdfs:domain");
		
		R2RMLObjectMap cObjectMap = new R2RMLObjectMap();
		//String pred = Character.toString(tables.get(0).charAt(0)).toUpperCase()+tables.get(0).substring(1);
		cObjectMap.column = "[ rr:constant <" + this.template + "/" + R2RMLProcess.encodeURIcomponent(tableDomain) + "> ]";

		cPredicateObjectMap.objectMap.add(cObjectMap);
		triplesMap.predicateObjectMap.add(cPredicateObjectMap);

		// range
		cPredicateObjectMap = new R2RMLPredicateObjectMap();
		cPredicateObjectMap.addPredicate("rdfs:range");
		
		cObjectMap = new R2RMLObjectMap();
		//pred = Character.toString(tables.get(1).charAt(0)).toUpperCase()+tables.get(1).substring(1);
		cObjectMap.column = "[ rr:constant <" + this.template + "/" + R2RMLProcess.encodeURIcomponent(tableRange) + "> ]";

		cPredicateObjectMap.objectMap.add(cObjectMap);
		triplesMap.predicateObjectMap.add(cPredicateObjectMap);

		// inverseOf
		cPredicateObjectMap = new R2RMLPredicateObjectMap();
		cPredicateObjectMap.addPredicate("owl:inverseOf");
		
		cObjectMap = new R2RMLObjectMap();
		//pred = Character.toString(tables.get(1).charAt(0)).toUpperCase()+tables.get(1).substring(1) + "BelongsTo" +
		//	   Character.toString(tables.get(0).charAt(0)).toUpperCase()+tables.get(0).substring(1);
		String pred = tableRange + "Has" + tableDomain;
		//pred = tab1 + "BelongsTo" + tab0;
		cObjectMap.column = "[ rr:constant <" + this.template + "/" + R2RMLProcess.encodeURIcomponent(pred) + "> ]";

		cPredicateObjectMap.objectMap.add(cObjectMap);
		triplesMap.predicateObjectMap.add(cPredicateObjectMap);
		
		// Add triples map to the list
		this.triplesMap.add(triplesMap);
	}
	
	public void addOwlInverseProperty(String tableDomain, String tableRange) {
		
		R2RMLTriplesMap triplesMap;
		
		triplesMap = new R2RMLTriplesMap(this, R2RMLTriplesMap.TM_ONTO);
		String objectPropertyName = tableRange + "Has" + tableDomain;

		triplesMap.comments.add("#");
		triplesMap.comments.add("# inverseOf: " + objectPropertyName);
		triplesMap.comments.add("#");

		R2RMLLogicalTable cLogicalTable = new R2RMLLogicalTable();
		cLogicalTable.tableName = "dummy";
		String sqlQuery = "SELECT 1 FROM INFORMATION_SCHEMA.TABLES LIMIT 1";
		cLogicalTable.setSqlQuery(sqlQuery);
		triplesMap.logicalTable = cLogicalTable;
		
		R2RMLSubjectMap cSubjectMap = new R2RMLSubjectMap();
		cSubjectMap.constant = this.template + "/" + R2RMLProcess.encodeURIcomponent(objectPropertyName);
		cSubjectMap.term = "rr:IRI";
		cSubjectMap.classSubjectMap = "owl:ObjectProperty";
		triplesMap.subjectMap = cSubjectMap;

		// domain
		R2RMLPredicateObjectMap cPredicateObjectMap = new R2RMLPredicateObjectMap();
		cPredicateObjectMap.addPredicate("rdfs:domain");
		
		R2RMLObjectMap cObjectMap = new R2RMLObjectMap();
		cObjectMap.column = "[ rr:constant <" + this.template + "/" + R2RMLProcess.encodeURIcomponent(tableRange) + "> ]";

		cPredicateObjectMap.objectMap.add(cObjectMap);
		triplesMap.predicateObjectMap.add(cPredicateObjectMap);

		// range
		cPredicateObjectMap = new R2RMLPredicateObjectMap();
		cPredicateObjectMap.addPredicate("rdfs:range");
		
		cObjectMap = new R2RMLObjectMap();
		cObjectMap.column = "[ rr:constant <" + this.template + "/" + R2RMLProcess.encodeURIcomponent(tableDomain) + "> ]";

		cPredicateObjectMap.objectMap.add(cObjectMap);
		triplesMap.predicateObjectMap.add(cPredicateObjectMap);

		// Add triples map to the list
		this.triplesMap.add(triplesMap);
	}
	
	public void addOwlObjectPropertyData(String tableDomain, String columnDomain
			, String tableRange, String columnRange, String sqlQuery) {

		R2RMLTriplesMap triplesMap;

		triplesMap = new R2RMLTriplesMap(this, R2RMLTriplesMap.TM_ONTO);

		String objectPropertyName = tableDomain + "Has" + tableRange;
		
		triplesMap.comments.add("#");
		triplesMap.comments.add("# ObjectProperty: " + objectPropertyName);
		triplesMap.comments.add("#");

		R2RMLLogicalTable cLogicalTable = new R2RMLLogicalTable();
		cLogicalTable.tableName = "dummy";
		cLogicalTable.setSqlQuery(sqlQuery);
		triplesMap.logicalTable = cLogicalTable;
		
		R2RMLSubjectMap cSubjectMap = new R2RMLSubjectMap();
		//String pred = Character.toString(r2.charAt(0)).toUpperCase()+r2.substring(1);
		//k = graph2.indexOf(tables.get(0));
		cSubjectMap.template = this.template + "/" + tableDomain + "/{" + this.checkSpaceInTemplate(columnDomain) + "}";

		cSubjectMap.term = "rr:IRI";
		triplesMap.subjectMap = cSubjectMap;

		R2RMLPredicateObjectMap cPredicateObjectMap = new R2RMLPredicateObjectMap();
		String newPredicate = "<" + this.template + "/" + R2RMLProcess.encodeURIcomponent(objectPropertyName) + ">"; 
		cPredicateObjectMap.addPredicate(newPredicate);
		R2RMLObjectMap cObjectMap = new R2RMLObjectMap();
		//String pred = Character.toString(tableDomain.charAt(0)).toUpperCase()+tableDomain.substring(1);
		if(columnRange.equals("")) {
			cObjectMap.template = "[ rr:template \"" + this.template + "/" + tableRange + "/{" + this.checkSpaceInTemplate(columnDomain) + "}\" ]";
		} else {
			cObjectMap.template = "[ rr:template \"" + this.template + "/" + tableRange + "/{" + this.checkSpaceInTemplate(columnRange) + "}\" ]";
		}
		cPredicateObjectMap.objectMap.add(cObjectMap);
		triplesMap.predicateObjectMap.add(cPredicateObjectMap);
		
		// Add triples map to the list
		this.triplesMap.add(triplesMap);
	}
	
	public String buildSQLQueryObjectProperty1xN(List<String> tableDomain
			, List<String> columnDomain, String tableRange, List<String> columnRange) {
		
		// Get the parent fields
		String sqlQuery = "";
		String sqlFields = "";
		String sqlJoin = "";
		ArrayList<String> joinParentPK = new ArrayList<String>();
		ArrayList<String> joinChildPK = new ArrayList<String>();
		
		int r = (int) (Math.random() * 100000);
		String aliasChild = "t_" + String.format("%05d", r);
		String aliasParent = "";
		
		// Get the parent fields
		for(int k=0; k<tableDomain.size(); k++) {
			r = (int) (Math.random() * 100000);
			aliasParent = "t_" + String.format("%05d", r);

			//sqlFields = ", "  + graph2.get(k) + "." + graph3.get(k) + sqlFields;
			sqlFields = ", "  + aliasParent + "." + enclosed_char + columnDomain.get(k) + enclosed_char + sqlFields;
			//if(graph2.get(k).equals(graph4.get(k))) {  // Self-relationship
				joinParentPK.add(aliasParent + "." + enclosed_char + columnDomain.get(k) + enclosed_char);
				joinChildPK.add(aliasChild  + "." + enclosed_char + columnRange.get(k) + enclosed_char);
			//} else {
				//joinParentPK.add(graph2.get(k) + "." + graph3.get(k));
				//joinChildPK.add(graph4.get(k)  + "." + graph5.get(k));
			//}
		}
		sqlFields = sqlFields.substring(2);
		
		// Build the join string
		sqlJoin = enclosed_char + tableDomain.get(0) + enclosed_char + " AS " + aliasParent;
		//if(graph2.get(0).equals(graph4.get(0))) {
		//	sqlJoin = "(" + sqlJoin + " JOIN " + r2 + " AS " + r2 + "2 ON ("; // Self-relationship
		//} else {
			sqlJoin = "(" + sqlJoin + " JOIN " + enclosed_char + tableRange + enclosed_char + " AS " + aliasChild + " ON (";
		//}
		for(int k=0; k < joinParentPK.size(); k++) {
			sqlJoin = sqlJoin + "(" + joinParentPK.get(k) + "=" + joinChildPK.get(k) + ")";
			if(k < joinParentPK.size()-1) {
				if(joinParentPK.get(k).substring(0, joinParentPK.get(k).indexOf(".")).equals(joinParentPK.get(k+1).substring(0, joinParentPK.get(k+1).indexOf(".")))) {
					sqlJoin = sqlJoin + " AND ";
				} else {
					break;
				}
			}
		}
		sqlJoin = sqlJoin + "))"; 

		// Build SQL Command
		sqlQuery = "SELECT DISTINCT " + sqlFields + " FROM " + sqlJoin;
		//System.out.println(sqlQuery);
		
		return sqlQuery;
	}
	
	public String buildSQLQueryObjectPropertyMxN(List<String> tableDomain, 
			List<SQLColumn> columnsDomain, String tableRange,List<SQLColumn> columnsRange
			,List<String> tables) {
		// Get the parent fields
		String sqlQuery = "";
		String sqlFields = "";
		String sqlJoin = "";
		List<String> joinParentPK = new ArrayList<String>();
		List<String> joinChildPK = new ArrayList<String>();
		List<String> aliasParent = new ArrayList<String>();

		int r = (int) (Math.random() * 100000);
		String aliasChild = "t_" + String.format("%05d", r);
		
		// Get the parent fields
		for(int j=0; j<2; j++) {
			for(int k=0; k<tableDomain.size(); k++) {
				if(tableDomain.get(k).equals(tables.get(j))) {
					r = (int) (Math.random() * 100000);
					String alias = "t_" + String.format("%05d", r);
					aliasParent.add(alias);

					//sqlFields = ", "  + graph2.get(k) + "." + graph3.get(k) + sqlFields;
					//sqlFields = ", "  + alias + "." + columnDomain.get(k) + sqlFields;
					sqlFields = ", "  + aliasChild + "." + enclosed_char + columnsRange.get(k).getColumnName() + enclosed_char + " AS " + columnsRange.get(k).getColumnName() + sqlFields;

					//joinParentPK.add(graph2.get(k) + "." + graph3.get(k));
					//joinChildPK.add(graph4.get(k)  + "." + graph5.get(k)); 
					joinParentPK.add(alias + "." + enclosed_char + columnsDomain.get(k).getColumnName() + enclosed_char);
					joinChildPK.add(aliasChild  + "." + enclosed_char + columnsRange.get(k).getColumnName() + enclosed_char); 
				}
			}
		}
		sqlFields = sqlFields.substring(2);
		
		// Build the join string
		sqlJoin = enclosed_char + tables.get(0) + enclosed_char + " AS " + aliasParent.get(0);
		sqlJoin = "(" + sqlJoin + " JOIN " + enclosed_char + tableRange + enclosed_char + " AS " + aliasChild + " ON (";
		int k;
		for(k=0; k < joinParentPK.size(); k++) {
			sqlJoin = sqlJoin + "(" + joinParentPK.get(k) + "=" + joinChildPK.get(k) + ")";
			if(k < joinParentPK.size()-1) {
				if(joinParentPK.get(k).substring(0, joinParentPK.get(k).indexOf(".")).equals(joinParentPK.get(k+1).substring(0, joinParentPK.get(k+1).indexOf(".")))) {
					sqlJoin = sqlJoin + " AND ";
				} else {
					break;
				}
			}
		}
		sqlJoin = sqlJoin + "))"; 
		int m = ++k;
		
		sqlJoin = sqlJoin + " JOIN " + enclosed_char + tables.get(1) + enclosed_char + " AS " + aliasParent.get(1) + " ON (";
		for(k=m; k < joinParentPK.size(); k++) {
			sqlJoin = sqlJoin + "(" + joinParentPK.get(k) + "=" + joinChildPK.get(k) + ")";
			if(k < joinParentPK.size()-1) {
				if(joinParentPK.get(k).substring(0, joinParentPK.get(k).indexOf(".")).equals(joinParentPK.get(k+1).substring(0, joinParentPK.get(k+1).indexOf(".")))) {
					sqlJoin = sqlJoin + " AND ";
				} else {
					break;
				}
			}
		}
		
		// Add tables
		sqlJoin = sqlJoin + ")"; 

		// Build SQL Command
		sqlQuery = "SELECT DISTINCT " + sqlFields + " FROM " + sqlJoin;
		//System.out.println(sqlQuery);

		return sqlQuery;
	}
	
	public String buildSQLQuerySaturation(R2RMLProcess p, Properties fileProperties, String schema, String tableParent, String tableChild) {

		// Conex�o � camada de dados
		IGateway gateway = new Gateway();
		
		// Get the parent fields
		String sqlQuery = "";
		String sqlFields = "";
		String sqlJoin = "";
		ArrayList<String> joinParentPK = new ArrayList<String>();
		ArrayList<String> joinChildPK = new ArrayList<String>();

		ArrayList<String> columnName = new ArrayList<String>();
		ArrayList<String> dataType = new ArrayList<String>();
		ArrayList<String> columnKey = new ArrayList<String>();
		
		String escape = "";
		if(p.driver == p.DB_MYSQL) {
			escape = "`";
		} else
		if(p.driver == p.DB_POSTGRESQL) {
			escape = '\\' + Character.toString((char)34);
			//escape = enclosed_char;
		}
			
		
		int r = (int) (Math.random() * 100000);
		String aliasChild = "t_" + String.format("%05d", r);
		r = (int) (Math.random() * 100000);
		String aliasParent = "t_" + String.format("%05d", r);

		// Get the child fields
		try {
			gateway.getColumnsFromTableName(fileProperties, columnName, dataType, columnKey, schema, tableChild);
		} catch (MIRRORException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		for(int k=0; k < columnName.size(); k++) {
			// Add all fields of child
			//sqlFields = sqlFields + r2 + "." + graph8.get(k) + ", " ;
			//sqlFields = sqlFields + aliasChild + ".`" + columnName.get(k) + "`, " ;
			sqlFields = sqlFields + aliasChild + "." + escape + columnName.get(k) + escape + ", " ;
			if(columnKey.get(k).equals("MUL")) {
				// Add field join to the list
				//joinChildPK.add(r2 + "." + graph8.get(k)); 
				//joinChildPK.add(aliasChild+ ".`" + columnName.get(k) + "`"); 
				joinChildPK.add(aliasChild+ "." + escape + columnName.get(k) + escape); 
			}
		}

		// For the case of PK = FK (graph10 isn't "MUL")
		if(joinChildPK.isEmpty()) {
			for(int k=columnName.size()-1; k>=0; k--) {
				if(columnKey.get(k).equals("PRIMARY KEY")) {
					// Add field join to the list
					//joinChildPK.add(r2 + "." + graph8.get(k));
					//joinChildPK.add(aliasChild + ".`" + columnName.get(k) + "`");
					joinChildPK.add(aliasChild + "." + escape + columnName.get(k) + escape);
				}
			}
		}

		// Get the parent fields
		try {
			gateway.getColumnsFromTableName(fileProperties, columnName, dataType, columnKey, schema, tableParent);
		} catch (MIRRORException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		for(int k=0; k < columnName.size(); k++) {
			if(!columnKey.get(k).equals("PRIMARY KEY")) {
				//if(sqlFields.indexOf(r2 + "." + graph8.get(k)) > 0) {
				//if(sqlFields.indexOf(aliasChild + ".`" + columnName.get(k) + "`") > 0) {
				if(sqlFields.indexOf(aliasChild + "." + escape + columnName.get(k) + escape) > 0) {
					//sqlFields = sqlFields + graph2.get(0) + "." + graph8.get(k) + " AS " + graph2.get(0) + "_" + graph8.get(k) + ", ";
					//sqlFields = sqlFields + aliasParent + ".`" + columnName.get(k) + "` AS `" + tableParent + "_" + columnName.get(k) + "`, ";
					sqlFields = sqlFields + aliasParent + "." + escape + columnName.get(k) + escape + " AS " + escape + tableParent + "_" + columnName.get(k) + escape +", ";
					//columnName.set(k, "`" + tableParent + "_" + columnName.get(k) + "`");
					columnName.set(k, escape + tableParent + "_" + columnName.get(k) + escape);
				} else {
					//sqlFields = sqlFields + graph2.get(0) + "." + graph8.get(k) + ", ";
					//sqlFields = sqlFields + aliasParent + ".`" + columnName.get(k) + "`, ";
					sqlFields = sqlFields + aliasParent + "." + escape + columnName.get(k) + escape + ", ";
				}
			} else {
				// Add field join to the list
				//joinParentPK.add(graph2.get(0) + "." + graph8.get(k)); 
				//joinParentPK.add(aliasParent + ".`" + columnName.get(k) + "`"); 
				joinParentPK.add(aliasParent + "." + escape + columnName.get(k) + escape); 
			}
		}
		sqlFields = sqlFields.substring(0, sqlFields.length()-2);

		// Build the join string
		for(int k=0; k < joinParentPK.size(); k++) {
			sqlJoin = "(" + sqlJoin + joinParentPK.get(k) + "=" + joinChildPK.get(k) + ")";
			if(k < joinParentPK.size()-1) {
				sqlJoin = sqlJoin + " AND ";
			}
		}
		// Add tables
		//sqlJoin = "`" + tableParent + "` AS " + aliasParent + " JOIN `" + tableChild + "` AS " + aliasChild + " ON " + sqlJoin; 
		sqlJoin = escape + tableParent + escape + " AS " + aliasParent + " JOIN " + escape + tableChild + escape + " AS " + aliasChild + " ON " + sqlJoin; 

		// Build SQL Command
		sqlQuery = "SELECT " + sqlFields + " FROM " + sqlJoin;

		return sqlQuery;
	}
	
}
