package es.upm.fi.dia.oeg.morph.r2rml.rdb.mappingsgenerator.main;

import static org.junit.Assert.*;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Properties;

import org.junit.Test;

import es.upm.fi.dia.oeg.morph.r2rml.rdb.mappingsgenerator.exception.MIRRORException;

public class DirectGraphTestSuiteMySQLTest {
	String testDirectory = "testcases/mysql/";
	
	private void run(String propertiesDirectory, String propertiesFile) {
		Properties properties = new Properties();
		FileInputStream arquivoDePropriedades = null;
		try {
			arquivoDePropriedades = new FileInputStream(propertiesDirectory + propertiesFile);
			properties.load(arquivoDePropriedades);
			R2RMLMapper mapper = new R2RMLMapper();
			mapper.setOutputDirectory(propertiesDirectory);
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

	
	@Test
	public void testDirectGraphTC0000() {
		String propertiesFile = "DirectGraphTC0000.morph.properties";
		this.run(testDirectory, propertiesFile);
	}
	
	@Test
	public void testDirectGraphTC0001() {
		String propertiesFile = "DirectGraphTC0001.morph.properties";
		this.run(testDirectory, propertiesFile);
	}
	
	@Test
	public void testDirectGraphTC0002() {
		String propertiesFile = "DirectGraphTC0002.morph.properties";
		this.run(testDirectory, propertiesFile);
	}

	@Test
	public void testDirectGraphTC0003() {
		String propertiesFile = "DirectGraphTC0003.morph.properties";
		this.run(testDirectory, propertiesFile);
	}

	@Test
	public void testDirectGraphTC0004() {
		String propertiesFile = "DirectGraphTC0004.morph.properties";
		this.run(testDirectory, propertiesFile);
	}

	@Test
	public void testDirectGraphTC0005() {
		String propertiesFile = "DirectGraphTC0005.morph.properties";
		this.run(testDirectory, propertiesFile);
	}
	
	@Test
	public void testDirectGraphTC0006() {
		String propertiesFile = "DirectGraphTC0006.morph.properties";
		this.run(testDirectory, propertiesFile);
	}
	
	@Test
	public void testDirectGraphTC0007() {
		String propertiesFile = "DirectGraphTC0007.morph.properties";
		this.run(testDirectory, propertiesFile);
	}
	
	@Test
	public void testDirectGraphTC0008() {
		String propertiesFile = "DirectGraphTC0008.morph.properties";
		this.run(testDirectory, propertiesFile);
	}
	
	@Test
	public void testDirectGraphTC0009() {
		String propertiesFile = "DirectGraphTC0009.morph.properties";
		this.run(testDirectory, propertiesFile);
	}
	
	@Test
	public void testDirectGraphTC0010() {
		String propertiesFile = "DirectGraphTC0010.morph.properties";
		this.run(testDirectory, propertiesFile);
	}
	
	@Test
	public void testDirectGraphTC0011() {
		String propertiesFile = "DirectGraphTC0011.morph.properties";
		this.run(testDirectory, propertiesFile);
	}
	
	@Test
	public void testDirectGraphTC0011b() {
		String propertiesFile = "DirectGraphTC0011b.morph.properties";
		this.run(testDirectory, propertiesFile);
	}
	
	@Test
	public void testDirectGraphTC0012() {
		String propertiesFile = "DirectGraphTC0012.morph.properties";
		this.run(testDirectory, propertiesFile);
	}
	
	@Test
	public void testDirectGraphTC0013() {
		String propertiesFile = "DirectGraphTC0013.morph.properties";
		this.run(testDirectory, propertiesFile);
	}

	@Test
	public void testDirectGraphTC0014() {
		String propertiesFile = "DirectGraphTC0014.morph.properties";
		this.run(testDirectory, propertiesFile);
	}
	
	@Test
	public void testDirectGraphTC0015() {
		String propertiesFile = "DirectGraphTC0015.morph.properties";
		this.run(testDirectory, propertiesFile);
	}
	
	@Test
	public void testDirectGraphTC0016() {
		String propertiesFile = "DirectGraphTC0016.morph.properties";
		this.run(testDirectory, propertiesFile);
	}

	@Test
	public void testDirectGraphTC0017() {
		String propertiesFile = "DirectGraphTC0017.morph.properties";
		this.run(testDirectory, propertiesFile);
	}
	
	@Test
	public void testDirectGraphTC0018() {
		String propertiesFile = "DirectGraphTC0018.morph.properties";
		this.run(testDirectory, propertiesFile);
	}

	@Test
	public void testDirectGraphTC0019() {
		String propertiesFile = "DirectGraphTC0019.morph.properties";
		this.run(testDirectory, propertiesFile);
	}
	
	@Test
	public void testDirectGraphTC0020() {
		String propertiesFile = "DirectGraphTC0020.morph.properties";
		this.run(testDirectory, propertiesFile);
	}
	
//	public void testExampleShopping() {
//		String propertiesFile = "examples/example_shopping/example_shopping.morph.properties";
//		this.run(propertiesFile);
//	}
}
