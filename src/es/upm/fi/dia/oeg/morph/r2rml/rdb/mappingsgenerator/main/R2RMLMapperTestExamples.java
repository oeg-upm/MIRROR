package es.upm.fi.dia.oeg.morph.r2rml.rdb.mappingsgenerator.main;

import static org.junit.Assert.*;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Properties;

import org.junit.Test;

public class R2RMLMapperTestExamples {

	private static String path = "./examples/postgresql/"; 
	//private static String path = "./examples/mysql/"; 
	
	private void run(String propertiesFile) {
		Properties properties = new Properties();
		FileInputStream arquivoDePropriedades = null;
		try {
			arquivoDePropriedades = new FileInputStream(propertiesFile);
			properties.load(arquivoDePropriedades);
			R2RMLMapper mapper = new R2RMLMapper();
			mapper.run(properties);
		} catch (FileNotFoundException exc) {
			StringBuffer mensagem = new StringBuffer("R2RML file properties not found");
			mensagem.append("\nMotive: " + exc.getMessage());
			fail(mensagem.toString());
		} catch(IOException exc) {
			StringBuffer mensagem = new StringBuffer("I/O error in loading properties");
			mensagem.append("\nMotive: " + exc.getMessage());
			fail(mensagem.toString());
		}
	}

	@Test // 1 
	public void testSingle() {
		String propertiesFile = path + "single.r2rml.properties";
		this.run(propertiesFile);
	}

	@Test // 2
	public void testDouble() {
		String propertiesFile = path + "double.r2rml.properties";
		this.run(propertiesFile);
	}

	@Test // 3
	public void testTriple() {
		String propertiesFile = path + "triple.r2rml.properties";
		this.run(propertiesFile);
	}

	@Test // 4
	public void testInverted() {
		String propertiesFile = path + "inverted.r2rml.properties";
		this.run(propertiesFile);
	}

	@Test // 5
	public void testUniversity() {
		String propertiesFile = path + "university.r2rml.properties";
		this.run(propertiesFile);
	}

	@Test // 6
	public void testExampleOffer() {
		String propertiesFile = path + "example_offer.r2rml.properties";
		this.run(propertiesFile);
	}

	@Test // 7
	public void testExample2() {
		String propertiesFile = path + "example2.r2rml.properties";
		this.run(propertiesFile);
	}

	@Test // 8
	public void testExample3() {
		String propertiesFile = path + "example3.r2rml.properties";
		this.run(propertiesFile);
	}

	@Test // 9
	public void testExample4() {
		String propertiesFile = path + "example4.r2rml.properties";
		this.run(propertiesFile);
	}

	@Test // 10
	public void testExample5() {
		String propertiesFile = path + "example5.r2rml.properties";
		this.run(propertiesFile);
	}

	@Test // 11
	public void testCmtNaiveCi() {
		String propertiesFile = path + "cmt_naive_ci.r2rml.properties";
		this.run(propertiesFile);
	}

	@Test // 12
	public void testHl7() {
		String propertiesFile = path + "hl7.r2rml.properties";
		this.run(propertiesFile);
	}
	
	@Test // 13
	public void testExampleShopping() {
		String propertiesFile = path + "example_shopping.r2rml.properties";
		this.run(propertiesFile);
	}

	@Test // 14
	public void testExampleUniversity() {
		String propertiesFile = path + "example_university.r2rml.properties";
		this.run(propertiesFile);
	}
	
	@Test // 15
	public void testTest() {
		String propertiesFile = path + "test.r2rml.properties";
		this.run(propertiesFile);
	}

	@Test // 16
	public void testTeste() {
		String propertiesFile = path + "teste.r2rml.properties";
		this.run(propertiesFile);
	}

	@Test // 17
	public void testMorphExample() {
		String propertiesFile = path + "morph_example.r2rml.properties";
		this.run(propertiesFile);
	}

	@Test // 18
	public void testSti() {
		String propertiesFile = path + "sti.r2rml.properties";
		this.run(propertiesFile);
	}

	@Test // 19
	public void testBiobi() {
		String propertiesFile = ".." + "/biobi.morph.properties";
		this.run(propertiesFile);
	}
	
}
