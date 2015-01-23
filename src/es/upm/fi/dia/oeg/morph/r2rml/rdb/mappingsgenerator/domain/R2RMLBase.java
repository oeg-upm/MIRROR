package es.upm.fi.dia.oeg.morph.r2rml.rdb.mappingsgenerator.domain;

public class R2RMLBase {

	public String IRI;

	/**
	 * @param iRI
	 */
	public R2RMLBase(String IRI) {
		//super();
		this.IRI = IRI;
	}

	public String getIRI() {
		return IRI;
	}

	public void setIRI(String IRI) {
		this.IRI = IRI;
	}
}
