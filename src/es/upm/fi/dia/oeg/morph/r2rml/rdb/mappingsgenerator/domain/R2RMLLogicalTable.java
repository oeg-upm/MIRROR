package es.upm.fi.dia.oeg.morph.r2rml.rdb.mappingsgenerator.domain;

public class R2RMLLogicalTable {
	
	public String tableSchema; // rr:tableSchema
	public String tableOwner; // rr:tableOwner
	public String tableName; // rr:tableName
	private String sqlQuery; // rr:sqlQuery
	public String sqlVersion; // rr:sqlVersion
	/**
	 * @return the tableName
	 */
	public String getTableName() {
		return tableName;
	}
	/**
	 * @param tableName the tableName to set
	 */
	public void setTableName(String tableName) {
		this.tableName = tableName;
	}
	/**
	 * @return the sqlQuery
	 */
	public String getSqlQuery() {
		return sqlQuery;
	}
	/**
	 * @param sqlQuery the sqlQuery to set
	 */
	public void setSqlQuery(String sqlQuery) {
		this.sqlQuery = sqlQuery;
	}
	/**
	 * @return the sqlVersion
	 */
	public String getSqlVersion() {
		return sqlVersion;
	}
	/**
	 * @param sqlVersion the sqlVersion to set
	 */
	public void setSqlVersion(String sqlVersion) {
		this.sqlVersion = sqlVersion;
	}
	/**
	 * @param tableName
	 * @param sqlQuery
	 * @param sqlVersion
	 */
	public R2RMLLogicalTable(String tableName, String sqlQuery,
			String sqlVersion) {
		//super();
		this.tableName = tableName;
		this.sqlQuery = sqlQuery;
		this.sqlVersion = sqlVersion;
	}
	/**
	 * 
	 */
	public R2RMLLogicalTable() {
		//super();
		// TODO Auto-generated constructor stub
		//System.out.println("Creating: R2RMLLogicalTable");
		this.tableName = "";
		this.sqlQuery = "";
		this.sqlVersion = "";
	}
	public String getTableSchema() {
		return tableSchema;
	}
	public void setTableSchema(String tableSchema) {
		this.tableSchema = tableSchema;
	}
	public String getTableOwner() {
		return tableOwner;
	}
	public void setTableOwner(String tableOwner) {
		this.tableOwner = tableOwner;
	}

}
