package es.upm.fi.dia.oeg.morph.r2rml.rdb.mappingsgenerator.domain;

import java.util.Collection;
import java.util.List;
import java.util.Vector;

public class SQLColumn {
	private String columnName;
	private String alias;
	
	public SQLColumn (String columnName) {
		this.columnName = columnName;
	}
	
	public static List<SQLColumn> fromStringCollection(List<String> sqlColumnsInString) {
		List<SQLColumn> result = new Vector<SQLColumn>();
		
		if(sqlColumnsInString != null) {
			for(String sqlColumnInString : sqlColumnsInString) {
				SQLColumn sqlColumn = new SQLColumn(sqlColumnInString);
				result.add(sqlColumn);
			}
		}
		return result;
		
	}
	
	public String getColumnName() {
		return columnName;
	}
	public void setColumnName(String columnName) {
		this.columnName = columnName;
	}
	public String getAlias() {
		return alias;
	}
	public void setAlias(String alias) {
		this.alias = alias;
	}

	@Override
	public String toString() {
		return "SQLColumn [columnName=" + columnName + ", alias=" + alias + "]";
	}
	
	
	
	
}
