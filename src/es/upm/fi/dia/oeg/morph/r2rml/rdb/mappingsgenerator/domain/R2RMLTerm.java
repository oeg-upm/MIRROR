package es.upm.fi.dia.oeg.morph.r2rml.rdb.mappingsgenerator.domain;

public class R2RMLTerm {

	public String value; // rr:constant;
	public String columnName; // rr:column
	public String termType; // rr:termType;
	public String language; // rr:language
	public String dataType; // rdfs:DataType
	public String inverseExpression; // rr:inverseExpression
	
	//public final int TT_LITERAL = 0;
	//public final int TT_IRI = 1;
	//public final int TT_BLANKNODE = 2;
	
	//public static final String[] termTypeValue = {"rr:Literal", "rr:IRI", "rr:BlankNode"}; 
	
	public String getValue() {
		return value;
	}
	public void setValue(String value) {
		this.value = value;
	}
	public String getColumnName() {
		return columnName;
	}
	public void setColumnName(String columnName) {
		this.columnName = columnName;
	}
	public String getTermType() {
		return termType;
	}
	public void setTermType(String termType) {
		this.termType = termType;
	}
	public String getLanguage() {
		return language;
	}
	public void setLanguage(String language) {
		this.language = language;
	}
	public String getDataType() {
		return dataType;
	}
	public void setDataType(String dataType) {
		this.dataType = dataType;
	}
	public String getInverseExpression() {
		return inverseExpression;
	}
	public void setInverseExpression(String inverseExpression) {
		this.inverseExpression = inverseExpression;
	}
	/**
	 * 
	 */
	public R2RMLTerm() {
		super();
		// TODO Auto-generated constructor stub
	}
	/**
	 * @param value
	 */
	public R2RMLTerm(String value) {
		super();
		this.value = value;
	}
	

	
	
}
