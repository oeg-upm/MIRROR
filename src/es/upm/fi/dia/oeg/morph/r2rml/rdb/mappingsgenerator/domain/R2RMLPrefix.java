package es.upm.fi.dia.oeg.morph.r2rml.rdb.mappingsgenerator.domain;

public class R2RMLPrefix {

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
