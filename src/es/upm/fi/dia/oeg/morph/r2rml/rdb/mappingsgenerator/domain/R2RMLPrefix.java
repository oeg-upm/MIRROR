package es.upm.fi.dia.oeg.morph.r2rml.rdb.mappingsgenerator.domain;

import java.util.HashMap;
import java.util.Map;

public class R2RMLPrefix {
	public static Map<String, String> defaultPrefixes = new HashMap<String, String>();
	
	static {
		R2RMLPrefix.defaultPrefixes.put("rr", "http://www.w3.org/ns/r2rml#");
		R2RMLPrefix.defaultPrefixes.put("xsd", "http://www.w3.org/2001/XMLSchema#");
		R2RMLPrefix.defaultPrefixes.put("rdf", "http://www.w3.org/1999/02/22-rdf-syntax-ns#");
		R2RMLPrefix.defaultPrefixes.put("rdfs", "http://www.w3.org/2000/01/rdf-schema#");
		R2RMLPrefix.defaultPrefixes.put("owl", "http://www.w3.org/2002/07/owl#");	
	}
	
	public String prefix; // only the prefix for triples 
	public String IRI;

	/**
	 * @param prefix
	 * @param iRI
	 */
	public R2RMLPrefix(String prefix, String iRI) {
		//super();
		this.prefix = prefix;
		this.IRI = iRI;
	}

	/**
	 * 
	 */
	public R2RMLPrefix() {
		//super();
		// TODO Auto-generated constructor stub
		this.prefix = "";
		this.IRI = "";
		

		
		
	}
	
	/**
	 * @param prefix the prefix to set
	 */
	public void setPrefix(String prefix) {
		this.prefix = prefix;
	}

	/**
	 * @return the iRI
	 */
	public String getIRI() {
		return IRI;
	}

	/**
	 * @param iRI the iRI to set
	 */
	public void setIRI(String iRI) {
		IRI = iRI;
	}

	
	
}
