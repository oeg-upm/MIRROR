/**
 * 
 */
package es.upm.fi.dia.oeg.morph.r2rml.rdb.mappingsgenerator.main;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Properties;
import java.util.Scanner;

import es.upm.fi.dia.oeg.morph.r2rml.rdb.mappingsgenerator.control.R2RMLProcess;
import es.upm.fi.dia.oeg.morph.r2rml.rdb.mappingsgenerator.exception.R2RMLException;
import es.upm.fi.dia.oeg.morph.r2rml.rdb.mappingsgenerator.util.VerboseMode;

/**
 * @author Luciano Frontino de Medeiros
 *
 */
public class R2RMLMapper {
	private R2RMLProcess p = new R2RMLProcess();
	
	/**
	 * @param args
	 * @throws R2RMLException 
	 */
	public static void main(String[] args) throws R2RMLException {
		// TODO Auto-generated method stub
		Properties properties = new Properties();
		FileInputStream arquivoDePropriedades = null;
		try {
			arquivoDePropriedades = new FileInputStream(args[0]);
			properties.load(arquivoDePropriedades);
			R2RMLMapper mapper = new R2RMLMapper();
			mapper.run(properties);
		} catch (FileNotFoundException exc) {
			StringBuffer mensagem = new StringBuffer("R2RML file properties not found");
			mensagem.append("\nMotive: " + exc.getMessage());
			throw new R2RMLException(mensagem.toString());
		} catch(IOException exc) {
			StringBuffer mensagem = new StringBuffer("I/O error in loading properties");
			mensagem.append("\nMotive: " + exc.getMessage());
			throw new R2RMLException(mensagem.toString());
		}



	}

	public void run(Properties properties) {
		System.out.println("Generating R2RML Mappings ...");
		VerboseMode vm = new VerboseMode(); 
		

		String db = properties.getProperty("driver");
		if(db == null) {
			db = properties.getProperty("database.type[0]");
		}
		if(db.toLowerCase().equals("mysql")) {
			p.driver = p.DB_MYSQL;
		} 
		else if(db.toLowerCase().equals("postgresql")) {
			p.driver = p.DB_POSTGRESQL;
		}

		//System.setProperty("file.encoding", "UTF-8");
		
		//p.fileProperties = args[0];
		p.properties = properties;
		p.database = properties.getProperty("database");
		p.inputFile = properties.getProperty("inputfile");

		p.schema = properties.getProperty("schema");
		if(p.schema == null) { p.schema = properties.getProperty("database.name[0]"); }

		p.outputFile = properties.getProperty("outputfile");
		if(p.outputFile == null) { p.outputFile = p.schema + "-mappings.ttl"; }
		
		p.filelog = properties.getProperty("logfile");
		if(p.filelog == null) { p.filelog = p.schema + ".log"; }
		
		
		p.prefix = properties.getProperty("prefix");
		if(p.prefix == null) { p.prefix = "ex"; }
		
		p.IRI = properties.getProperty("IRI");
		if(p.IRI == null) { p.IRI = "http://example.com"; }
		
		p.owner = properties.getProperty("owner");
		if(p.owner == null) { p.owner = "TEST"; }
		
		p.qualifier = properties.getProperty("qualifier");
		if(p.qualifier == null) { p.qualifier = "R2RML"; }
		
		p.comments = Boolean.valueOf(properties.getProperty("comments"));
		p.externalSchema = Boolean.valueOf(properties.getProperty("externalschema"));
		p.prefixedTables = Boolean.valueOf(properties.getProperty("prefixedtables"));

		String compatible = properties.getProperty("compatible");
		if(compatible == null) {
			p.compatible = p.COMPATIBLE_W3C; // W3C compatible
		} 
		else if(compatible.toLowerCase().equals("virtuoso")) {
			p.compatible = p.COMPATIBLE_VIRTUOSO; // Virtuoso compatible
		} 
		else if(compatible.toLowerCase().equals("w3c")) {
			p.compatible = p.COMPATIBLE_W3C; // W3C compatible
		} 
		else {
			p.compatible = p.COMPATIBLE_W3C; // W3C compatible
		}

		// Verbose mode
		String verbose = properties.getProperty("verbose");
		if(verbose == null) {
			verbose = "0";
		}
		try {
			p.verbose = Integer.valueOf(verbose);
		} 
		catch (Exception e) { p.verbose = 1; }		
		
		if(p.verbose == 0) {
			vm.verbose_mode = (byte) (vm.VERBOSE_COMMAND);
		}
		if(p.verbose == 1) {
			vm.verbose_mode = (byte) (vm.VERBOSE_COMMAND + vm.VERBOSE_TEXT);
		}
		if(p.verbose == 2) {
			vm.verbose_mode = (byte) (vm.VERBOSE_COMMAND + vm.VERBOSE_TEXT + vm.VERBOSE_SQL);
		}

		// Optional parameters
		String templateSeparator = properties.getProperty("templateseparator");
		if(templateSeparator == null) {
			templateSeparator = ".";
		}
		p.templateSeparator = templateSeparator;
		
		String joinString = properties.getProperty("joinstring");
		if(joinString == null) { joinString = "#ref-"; }
		p.joinString = joinString;
		
		if(properties.getProperty("saturation") != null) {
			p.saturation = Boolean.valueOf(properties.getProperty("saturation"));
		}
		if(properties.getProperty("triplesmapmode") != null) {
			p.triplesMapMode = Byte.valueOf(properties.getProperty("triplesmapmode"));
		} else { 
			// default is all (data + onto)
			p.triplesMapMode = 3;
		}
		if(properties.getProperty("showviews") != null) {
			p.showViews = Boolean.valueOf(properties.getProperty("showviews"));
		} else { 
			// default is all (data + onto)
			p.showViews = false;
		}





		int len;

		try {
			if(p.verbose >= 1) {
				System.out.println("");
				System.out.println("AutoMapping: R2RML Default Mapping Generator - v.0.2 beta");
				System.out.println("---------------------------------------------------------");
				System.out.println("");
			}
			if(p.externalSchema) {
				byte[] encoded = Files.readAllBytes(Paths.get(p.inputFile));
				//byte[] encoded = Files.readAllBytes(Paths.get("examples\\sti3_5.sql"));
				p.schemaContent = new String(encoded, Charset.defaultCharset());
				len = p.schemaContent.length();
				if(p.verbose >= 1) {
					System.out.println("Processing schema: " + p.schema + " (" + len + " bytes)");
				}
				if(p.verbose >= 2) {
					System.out.println(p.schemaContent);
				}
			}

		} catch (FileNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			if(p.externalSchema) {
				if(p.verbose >= 1) {
					System.out.println("Starting generation...");
				}
				if(p.verbose >= 1) {
					System.out.println("Creating schema "+ p.schema +" in DB (" + db + ") ...");
				}
				p.R2RMLCreateSchema();
				if(p.verbose >= 1) {
					System.out.println("Temporary schema created "+ p.dbName +" in DB (" + db + ") ...");
				}

				if(p.verbose >= 1) {
					System.out.println("Preprocessing: " + p.inputFile + "...");
				}
				p.R2RMLPreprocessing();

				if(p.verbose >= 1) {
					System.out.println("Building R2RML mapping: " + p.outputFile + "...");
				}
				p.R2RMLBuild();
				p.R2RMLPrint();

				if(p.verbose >= 1) {
					System.out.println("Dropping temporary schema " + p.dbName + "...");
				}
				p.R2RMLDropSchema();
				if(p.verbose >= 1) {
					System.out.println("End of generation.");
				}
			} else {
				if(p.verbose >= 1) {
					System.out.println("Starting generation...");
					System.out.println("Using schema "+ p.schema +" in DB (" + db + ") ...");
					System.out.println("Preprocessing: " + p.inputFile + "...");
				}
				p.R2RMLPreprocessing();

				if(p.verbose >= 1) {
					System.out.println("Building R2RML mapping: " + p.outputFile + "...");
				}
				p.R2RMLBuild();
				p.R2RMLPrint();

				if(p.verbose >= 1) {
					System.out.println("End of generation.");
				}
			}
		} catch (R2RMLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println("Mappings generated.");
	}
	
	public String getGeneratedMappingsFile() {
		if(this.p != null) {
			return this.p.outputFile;
		} 
		else { return null; }
	}
}
