package es.upm.fi.dia.oeg.morph.r2rml.rdb.mappingsgenerator.domain;

public class R2RMLDatatype {

	public String getR2RMLDatatype(String SQLdatatype) {
		String result = "";

		SQLdatatype = SQLdatatype.toUpperCase(); 
		
		if(SQLdatatype.contains("CHARACTER") || 
			SQLdatatype.contains("CHARACTER VARYING") ||
			SQLdatatype.contains("CHARACTER LARGE OBJECT") ||
			SQLdatatype.contains("NATIONAL CHARACTER VARYING") ||
			SQLdatatype.contains("NATIONAL CHARACTER LARGE OBJECT") ||
			SQLdatatype.contains("VARCHAR") ||
			SQLdatatype.contains("TEXT") ||
			SQLdatatype.contains("CHAR")) {

			result = "xsd:string";
		}
		
		if(SQLdatatype.contains("TINYINT") || 
			SQLdatatype.contains("SMALLINT") ||
			SQLdatatype.contains("INTEGER") ||
			SQLdatatype.contains("INT") ||
			SQLdatatype.contains("BIGINT")) {

			result = "xsd:integer";
		}

		if(SQLdatatype.contains("NUMERIC") || 
			SQLdatatype.contains("DECIMAL")) {

			result = "xsd:decimal";
		}

		if(SQLdatatype.contains("FLOAT") || 
			SQLdatatype.contains("REAL") ||
			//SQLdatatype.contains("DOUBLE PRECISION")) {
			SQLdatatype.contains("DOUBLE")) {

			result = "xsd:double";
		}

		if(SQLdatatype.contains("BOOLEAN") || 
			SQLdatatype.contains("BIT")) {

			result = "xsd:boolean";
		}
		
		if(SQLdatatype.contains("DATE")) {
			result = "xsd:date";
		}
		if(SQLdatatype.contains("TIME")) {
			result = "xsd:time";
		}
		if(SQLdatatype.contains("TIMESTAMP")) {
			result = "xsd:dateTime";
		}

		if(SQLdatatype.contains("VARBINARY")) {
			result = "xsd:hexBinary";
		}

		if(result=="") {
			result = "ex:unknownDataType";
		}
		
		return result;

	}

}
