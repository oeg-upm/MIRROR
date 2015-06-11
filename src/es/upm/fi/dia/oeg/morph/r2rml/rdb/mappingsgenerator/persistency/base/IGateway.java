package es.upm.fi.dia.oeg.morph.r2rml.rdb.mappingsgenerator.persistency.base;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Properties;

import es.upm.fi.dia.oeg.morph.r2rml.rdb.mappingsgenerator.exception.R2RMLException;

public interface IGateway {

	public void getViewsFromSchema(Properties properties, ArrayList<String> arq1, ArrayList<String> arq2, String schema) throws R2RMLException;
	public void getTablesViewsFromSchema(Properties properties, List<String> listTableNames
			, List<String> listTableTypes, String schema, Map<String, String> mapTableTypes) 
					throws R2RMLException;

	public long countRecordsFromRelationship(Properties properties, String dbName, String parentTable, String childTable, String parentPK, String childPK) throws R2RMLException;
    public boolean checkRelationship1x1(Properties properties, String DBName, String parentTable, String childTable, String parentPK, String childPK) throws R2RMLException;
    public boolean checkRelationshipISA(Properties properties, String schema, String parentTable, String childTable) throws R2RMLException;

    public boolean isPrimaryKey(Properties properties, String schema, String tablename, String column) throws R2RMLException;
	public boolean hasPrimaryKey(Properties properties, String schema, String tablename, ArrayList<String> columns) throws R2RMLException;
	
	public int getDatabase();
	public void setDatabase(int database);

    public void createDatabaseFromSchema(Properties properties, String DBname) throws R2RMLException;
    public void dropDatabaseFromSchema(Properties properties, String DBname) throws R2RMLException;
    public void generalCommand(Properties properties, String DBname, String command) throws R2RMLException;
    public void useDatabase(Properties properties, String DBname) throws R2RMLException;
    public int getColumnsFromSQLQuery(Properties properties, String DBname, String query, ArrayList<String> columns, ArrayList<String> type, ArrayList<String> key) throws R2RMLException;

	// R2RML
	public void getSchemaRelationshipAll(Properties properties, ArrayList<String> arq1, ArrayList<String> arq2, ArrayList<String> arq3, ArrayList<String> arq4) throws R2RMLException;
	public void getSchemaRelationshipDetail(Properties properties, ArrayList<String> arq1, ArrayList<String> arq2, ArrayList<String> arq3, ArrayList<String> arq4, String tablename) throws R2RMLException;
	public void getSchemaRelationRightAll(Properties properties, ArrayList<String> arq1) throws R2RMLException;
	public int getSchemaRelationLeftCount(Properties properties, String tablename) throws R2RMLException;
	public void getSchemaRelationLeftDetail(Properties properties, ArrayList<String> arq1, String tablename) throws R2RMLException;
	public void getSchemaColumnsName(Properties properties, ArrayList<String> arq1, String tablename) throws R2RMLException;	
	public int getSchemaColumnsNameCount(Properties properties, String tablename) throws R2RMLException;

	// Generic database schema
	public void getTablesFromSchema(Properties properties, List<String> listTableNames
			, List<String> listTableTypes, String schema) throws R2RMLException;
	public void getRelationshipsFromSchema(Properties properties
			, List<String> listColumnNames
			, List<String> listReferencedTableNames, String schema, String tablename) throws R2RMLException;
	public void getKeysFromConstraint(Properties properties, List<String> listColumnNames
			, List<String> listReferencedTableNames, ArrayList<String> arq3, String schema, String constraint) throws R2RMLException;
	public void getColumnsFromTableName(Properties properties, List<String> listColumnNames
			, List<String> listReferencedTableNames, List<String> listColumnKeys
			, String schema, String tablename) throws R2RMLException;
	public void getColumnsFromTableNameMxN(Properties properties, ArrayList<String> arq1, ArrayList<String> arq2, ArrayList<String> arq3, String schema, String tablename) throws R2RMLException;
	public void getRelationshipsFromSchemaAll(Properties properties, ArrayList<String> arq1, 
            ArrayList<String> arq2, 
            ArrayList<String> arq3, 
            ArrayList<String> arq4, 
            ArrayList<String> arq5, String schema) throws R2RMLException;

	public void getRightTablesFromSchemaAll(Properties properties, List<String> arq1, String schema) throws R2RMLException;
    public int getRelationshipsFromRightTableCount(Properties properties, String schema, String tablename) throws R2RMLException;
    
	public void getRelationshipsFromTableDetailed(Properties properties, 
			List<String> listParentTables, 
			List<String> listPK, 
			List<String> listChildTables, 
			List<String> listFK,
			List<String> listIsNullable,
			List<String> listConstraintNames,
			String schema,
			String tablename) throws R2RMLException;

		
    public int getColumnsFromTableNameCount(Properties properties, String schema, String tablename) throws R2RMLException;
	public void getConstraintsFromTableName(Properties properties
			, List<String> listColumnNames, List<String> listDataTypes
			, List<String> arq3, List<String> listReferencedColumnNames, String schema, String tablename) throws R2RMLException;

	
	
}
