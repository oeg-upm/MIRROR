package es.upm.fi.dia.oeg.morph.r2rml.rdb.mappingsgenerator.domain;

import java.util.ArrayList;

import es.upm.fi.dia.oeg.morph.r2rml.rdb.mappingsgenerator.domain.R2RMLLogicalTable;
import es.upm.fi.dia.oeg.morph.r2rml.rdb.mappingsgenerator.domain.R2RMLMap;
import es.upm.fi.dia.oeg.morph.r2rml.rdb.mappingsgenerator.domain.R2RMLPredicateObjectMap;
import es.upm.fi.dia.oeg.morph.r2rml.rdb.mappingsgenerator.domain.R2RMLSubjectMap;

public class R2RMLTriplesMap extends R2RMLMap {

	public static byte TM_DATA = 1;
	public static byte TM_ONTO = 2;
	public static byte TM_BOTH = 3;
	
	public R2RMLLogicalTable logicalTable;
	public R2RMLSubjectMap subjectMap;
	public ArrayList<R2RMLPredicateObjectMap> predicateObjectMap;
	public ArrayList<String> comments; // comments for this tripleMap
	
	public int mode; // if TM is for generating data, ontology or both

	public int id; // id for this tripleMap

	/**
	 * @return the logicalTable
	 */
	public R2RMLLogicalTable getLogicalTable() {
		return logicalTable;
	}
	/**
	 * @param logicalTable the logicalTable to set
	 */
	public void setLogicalTable(R2RMLLogicalTable logicalTable) {
		this.logicalTable = logicalTable;
	}
	/**
	 * @return the subjectMap
	 */
	public R2RMLSubjectMap getSubjectMap() {
		return subjectMap;
	}
	/**
	 * @param subjectMap the subjectMap to set
	 */
	public void setSubjectMap(R2RMLSubjectMap subjectMap) {
		this.subjectMap = subjectMap;
	}
	/**
	 * @return the predicateObjectMap
	 */
	public ArrayList<R2RMLPredicateObjectMap> getPredicateObjectMap() {
		return predicateObjectMap;
	}
	/**
	 * @param predicateObjectMap the predicateObjectMap to set
	 */
	public void setPredicateObjectMap(
			ArrayList<R2RMLPredicateObjectMap> predicateObjectMap) {
		this.predicateObjectMap = predicateObjectMap;
	}
	/**
	 * @param logicalTable
	 * @param subjectMap
	 * @param predicateObjectMap
	 */
	public R2RMLTriplesMap(R2RMLLogicalTable logicalTable,
			R2RMLSubjectMap subjectMap,
			ArrayList<R2RMLPredicateObjectMap> predicateObjectMap) {
		//super();
		this.logicalTable = logicalTable;
		this.subjectMap = subjectMap;
		this.predicateObjectMap = new ArrayList<R2RMLPredicateObjectMap>();
		//this.predicateObjectMap = predicateObjectMap;

		//this.id = super.counterTriplesMap;
		//super.counterTriplesMap++;
		
		this.comments = new ArrayList<String>();
		
}
	/**
	 * 
	 */
	public R2RMLTriplesMap(R2RMLMap m) {
		//super();
		// TODO Auto-generated constructor stub
		//System.out.println("Creating: R2RMLTriplesMap");
		this.logicalTable = new R2RMLLogicalTable("","","");
		this.subjectMap = new R2RMLSubjectMap();
		this.predicateObjectMap = new ArrayList<R2RMLPredicateObjectMap>();
		this.comments = new ArrayList<String>();
		this.mode = TM_DATA; // by default
		
		// Increments id 
		this.id = m.counterTriplesMap;
		m.counterTriplesMap = m.counterTriplesMap + 1;
		//System.out.println(this.id);
	}

	public R2RMLTriplesMap(R2RMLMap m, int type) {
		//super();
		// TODO Auto-generated constructor stub
		//System.out.println("Creating: R2RMLTriplesMap");
		this.logicalTable = new R2RMLLogicalTable("","","");
		this.subjectMap = new R2RMLSubjectMap();
		this.predicateObjectMap = new ArrayList<R2RMLPredicateObjectMap>();
		this.comments = new ArrayList<String>();
		this.mode = type; 
		
		// Increments id 
		this.id = m.counterTriplesMap;
		m.counterTriplesMap = m.counterTriplesMap + 1;
		//System.out.println(this.id);
	}

	
}
