package es.upm.fi.dia.oeg.morph.r2rml.rdb.mappingsgenerator.domain;

public class R2RMLJoinCondition {

	public String child;
	public String parent;
	public String comments;
	/**
	 * 
	 */
	public R2RMLJoinCondition() {
		// TODO Auto-generated constructor stub
	}
	public String getChild() {
		return child;
	}
	public void setChild(String child) {
		this.child = child;
	}
	public String getParent() {
		return parent;
	}
	public void setParent(String parent) {
		this.parent = parent;
	}

	/**
	 * @param child
	 * @param parent
	 */
	public R2RMLJoinCondition(String child, String parent, String comments) {
		//super();
		//System.out.println("Creating: R2RMLJoinCondition");
		this.child = child;
		this.parent = parent;
		this.comments = comments;
	}
	public String getComments() {
		return comments;
	}
	public void setComments(String comments) {
		this.comments = comments;
	}
	
	
	
}
