package es.upm.fi.dia.oeg.morph.r2rml.rdb.mappingsgenerator.domain;

import java.util.ArrayList;
import java.util.List;

import es.upm.fi.dia.oeg.morph.r2rml.rdb.mappingsgenerator.domain.R2RMLObjectMap;

public class R2RMLPredicateObjectMap {

	public ArrayList<String> comments;
	private List<String> predicates;
	public ArrayList<R2RMLObjectMap> objectMap;
	/**
	 * @return the predicate
	 */
	public List<String> getPredicates() {
		return predicates;
	}
	

	public String getPredicate(int i) {
		if(this.predicates != null) {
			return this.predicates.get(i);
		} else {
			return null;
		}
	}
	
	public void addPredicate(String newPredicate) {
		if(this.predicates == null) {
			this.predicates = new ArrayList<String>();
		}
		
		this.predicates.add(newPredicate);
	}
	
	/**
	 * @param predicate the predicate to set
	 */
	public void setPredicate(List<String> predicates) {
		this.predicates = predicates;
	}
	/**
	 * @return the objectMap
	 */
	public ArrayList<R2RMLObjectMap> getObjectMap() {
		return objectMap;
	}
	/**
	 * @param objectMap the objectMap to set
	 */
	public void setObjectMap(ArrayList<R2RMLObjectMap> objectMap) {
		this.objectMap = objectMap;
	}
	/**
	 * @param predicate
	 * @param objectMap
	 */
	public R2RMLPredicateObjectMap(List<String> predicates,
			ArrayList<R2RMLObjectMap> objectMap) {
		//super();
		this.predicates = predicates;
		this.objectMap = objectMap;
	}
	
	/**
	 * 
	 */
	public R2RMLPredicateObjectMap() {
		//super();
		// TODO Auto-generated constructor stub
		//System.out.println("Creating: R2RMLPredicateObjectMap");
		this.objectMap = new ArrayList<R2RMLObjectMap>();
		this.predicates = new ArrayList<String>();
		this.comments = new ArrayList<String>();
		
	}
	public ArrayList<String> getComments() {
		return comments;
	}
	public void setComments(ArrayList<String> comments) {
		this.comments = comments;
	}


	@Override
	public String toString() {
		return "R2RMLPredicateObjectMap [predicates=" + predicates
				+ ", objectMap=" + objectMap + "]";
	}
	
	
	
	
}
