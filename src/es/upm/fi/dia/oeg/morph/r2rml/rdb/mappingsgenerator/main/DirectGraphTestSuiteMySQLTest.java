package es.upm.fi.dia.oeg.morph.r2rml.rdb.mappingsgenerator.main;

import static org.junit.Assert.*;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Properties;

import org.junit.Test;

import es.upm.fi.dia.oeg.morph.r2rml.rdb.mappingsgenerator.exception.R2RMLException;

public class DirectGraphTestSuiteMySQLTest {
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

	
	@Test
	public void testDirectGraphTC0000() {
		String propertiesFile = "testcases/DirectGraphTC0000.morph.properties";
		this.run(propertiesFile);
	}
	
	@Test
	public void testDirectGraphTC0001() {
		String propertiesFile = "testcases/DirectGraphTC0001.morph.properties";
		this.run(propertiesFile);
	}
	
	@Test
	public void testDirectGraphTC0002() {
		String propertiesFile = "testcases/DirectGraphTC0002.morph.properties";
		this.run(propertiesFile);
	}

	@Test
	public void testDirectGraphTC0003() {
		String propertiesFile = "testcases/DirectGraphTC0003.morph.properties";
		this.run(propertiesFile);
	}

	@Test
	public void testDirectGraphTC0004() {
		String propertiesFile = "testcases/DirectGraphTC0004.morph.properties";
		this.run(propertiesFile);
	}

	@Test
	public void testDirectGraphTC0005() {
		String propertiesFile = "testcases/DirectGraphTC0005.morph.properties";
		this.run(propertiesFile);
	}
	
	@Test
	public void testDirectGraphTC0006() {
		String propertiesFile = "testcases/DirectGraphTC0006.morph.properties";
		this.run(propertiesFile);
	}
	
	@Test
	public void testDirectGraphTC0007() {
		String propertiesFile = "testcases/DirectGraphTC0007.morph.properties";
		this.run(propertiesFile);
	}
	
	@Test
	public void testDirectGraphTC0008() {
		String propertiesFile = "testcases/DirectGraphTC0008.morph.properties";
		this.run(propertiesFile);
	}
	
	@Test
	public void testDirectGraphTC0009() {
		String propertiesFile = "testcases/DirectGraphTC0009.morph.properties";
		this.run(propertiesFile);
	}
	
	@Test
	public void testDirectGraphTC0010() {
		String propertiesFile = "testcases/DirectGraphTC0010.morph.properties";
		this.run(propertiesFile);
	}
	
	@Test
	public void testDirectGraphTC0011() {
		String propertiesFile = "testcases/DirectGraphTC0011.morph.properties";
		this.run(propertiesFile);
	}
	
	@Test
	public void testDirectGraphTC0011b() {
		String propertiesFile = "testcases/DirectGraphTC0011b.morph.properties";
		this.run(propertiesFile);
	}
	
	@Test
	public void testDirectGraphTC0012() {
		String propertiesFile = "testcases/DirectGraphTC0012.morph.properties";
		this.run(propertiesFile);
	}
	
	@Test
	public void testDirectGraphTC0013() {
		String propertiesFile = "testcases/DirectGraphTC0013.morph.properties";
		this.run(propertiesFile);
	}

	@Test
	public void testDirectGraphTC0014() {
		String propertiesFile = "testcases/DirectGraphTC0014.morph.properties";
		this.run(propertiesFile);
	}
	
	@Test
	public void testDirectGraphTC0015() {
		String propertiesFile = "testcases/DirectGraphTC0015.morph.properties";
		this.run(propertiesFile);
	}
	
	@Test
	public void testDirectGraphTC0016() {
		String propertiesFile = "testcases/DirectGraphTC0016.morph.properties";
		this.run(propertiesFile);
	}

	@Test
	public void testDirectGraphTC0017() {
		String propertiesFile = "testcases/DirectGraphTC0017.morph.properties";
		this.run(propertiesFile);
	}
	
	@Test
	public void testDirectGraphTC0018() {
		String propertiesFile = "testcases/DirectGraphTC0018.morph.properties";
		this.run(propertiesFile);
	}

	@Test
	public void testDirectGraphTC0019() {
		String propertiesFile = "testcases/DirectGraphTC0019.morph.properties";
		this.run(propertiesFile);
	}
	
	@Test
	public void testDirectGraphTC0020() {
		String propertiesFile = "testcases/DirectGraphTC0020.morph.properties";
		this.run(propertiesFile);
	}
	
//	public void testExampleShopping() {
//		String propertiesFile = "examples/example_shopping/example_shopping.morph.properties";
//		this.run(propertiesFile);
//	}
}
