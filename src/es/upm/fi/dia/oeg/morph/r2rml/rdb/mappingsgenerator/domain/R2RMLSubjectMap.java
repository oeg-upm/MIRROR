package es.upm.fi.dia.oeg.morph.r2rml.rdb.mappingsgenerator.domain;

import java.util.ArrayList;

public class R2RMLSubjectMap {

	public String classSubjectMap; // rr:class <IRI>
	public String template; // template for class
	public String term; // Properties of the template
	public String constant; // In the case of existing rr:constant 
	public ArrayList<String> templateMxN; // template for binary relation
	public ArrayList<String> keys; // list of primary keys, for using with owl:hasKey 
	
	/**
	 * @return the template
	 */
	public String getTemplate() {
		return template;
	}

	/**
	 * @param template the template to set
	 */
	public void setTemplate(String template) {
		this.template = template;
	}

	public String getClassSubjectMap() {
		return classSubjectMap;
	}

	public void setClassSubjectMap(String classSubjectMap) {
		this.classSubjectMap = classSubjectMap;
	}

	/**
	 * @param classSubjectMap
	 */
	public R2RMLSubjectMap(String classSubjectMap) {
		//super();
		this.classSubjectMap = classSubjectMap;
	}

	/**
	 * 
	 */
	public R2RMLSubjectMap() {
		//super();
		// TODO Auto-generated constructor stub
		//System.out.println("Creating: R2RMLSubjectMap");
		this.templateMxN = new ArrayList<String>();
		this.keys = new ArrayList<String>();
		this.classSubjectMap = "";
		this.template = "";
		this.term = "";
		this.constant = "";
	}

	/**
	 * @return the templateMxN
	 */
	public ArrayList<String> getTemplateMxN() {
		return templateMxN;
	}

	/**
	 * @param templateMxN the templateMxN to set
	 */
	public void setTemplateMxN(ArrayList<String> templateMxN) {
		this.templateMxN = templateMxN;
	}

	public ArrayList<String> getKeys() {
		return keys;
	}

	public void setKeys(ArrayList<String> keys) {
		this.keys = keys;
	}

	/**
	 * @return the constant
	 */
	public String getConstant() {
		return constant;
	}

	/**
	 * @param constant the constant to set
	 */
	public void setConstant(String constant) {
		this.constant = constant;
	}
	
	
}
