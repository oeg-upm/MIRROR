package es.upm.fi.dia.oeg.morph.r2rml.rdb.mappingsgenerator.domain;

import java.util.ArrayList;

import es.upm.fi.dia.oeg.morph.r2rml.rdb.mappingsgenerator.domain.R2RMLJoinCondition;

public class R2RMLObjectMap  {

	public String column;
	public String parentTripleMap;
	public ArrayList<R2RMLJoinCondition> joinCondition;
	public String template;
	public ArrayList<String> comments;
	public boolean hasKey; // extension for OWL 2 if the atrribute is a key

	
	/**
	 * @param column
	 * @param parentTripleMap
	 * @param joinCondition
	 */
	public R2RMLObjectMap(String column, String parentTripleMap, String template, boolean hasKey, 
			ArrayList<R2RMLJoinCondition> joinCondition, 
			ArrayList<String> comments) {
		//super();
		this.column = column;
		this.parentTripleMap = parentTripleMap;
		this.joinCondition = joinCondition;
		this.template = template;
		this.comments = comments;
		this.hasKey = hasKey;
	}
	
	/**
	 * 
	 */
	public R2RMLObjectMap() {
		//super();
		// TODO Auto-generated constructor stub
		//System.out.println("Creating: R2RMLObjectMap");
		this.joinCondition = new ArrayList<R2RMLJoinCondition>();
		this.template = "";
		this.column = "";
		this.parentTripleMap = "";
		this.comments = new ArrayList<String>();
		this.hasKey = false;
	}

	/*
	 * find - find the JoinCondition for a given fkname
	 */
	public R2RMLJoinCondition find(String fkname) {
		
		for (R2RMLJoinCondition t : this.joinCondition) {
			if(t.comments.equals(fkname)) {
				return t;
			}
		}
		return null;
	}
	
	public String getColumn() {
		return column;
	}
	public void setColumn(String column) {
		this.column = column;
	}
	public String getParentTripleMap() {
		return parentTripleMap;
	}
	public void setParentTripleMap(String parentTripleMap) {
		this.parentTripleMap = parentTripleMap;
	}
	public String getTemplate() {
		return template;
	}

	public void setTemplate(String template) {
		this.template = template;
	}

	public ArrayList<String> getComments() {
		return comments;
	}

	public void setComments(ArrayList<String> comments) {
		this.comments = comments;
	}

	public boolean getHasKey() {
		return hasKey;
	}

	public void setHasKey(boolean hasKey) {
		this.hasKey = hasKey;
	}
	
}
