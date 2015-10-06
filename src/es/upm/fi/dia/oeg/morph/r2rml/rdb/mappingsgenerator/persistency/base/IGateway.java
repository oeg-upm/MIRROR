package es.upm.fi.dia.oeg.morph.r2rml.rdb.mappingsgenerator.persistency.base;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Properties;

import es.upm.fi.dia.oeg.morph.r2rml.rdb.mappingsgenerator.exception.MIRRORException;

public interface IGateway {

	public void getViewsFromSchema(Properties properties, ArrayList<String> arq1, ArrayList<String> arq2, String schema) throws MIRRORException;
	public void getTablesViewsFromSchema(Properties properties, List<String> listTableNames
			, List<String> listTableTypes, String schema, Map<String, String> mapTableTypes) 
					throws MIRRORException;

	public long countRecordsFromRelationship(Properties properties, String dbName, String parentTable, String childTable, String parentPK, String childPK) throws MIRRORException;
    public boolean checkRelationship1x1(Properties properties, String DBName, String parentTable, String childTable, String parentPK, String childPK) throws MIRRORException;
    public boolean checkRelationshipISA(Properties properties, String schema, String parentTable, String childTable) throws MIRRORException;

    public boolean isPrimaryKey(Properties properties, String schema, String tablename, String column) throws MIRRORException;
	public boolean hasPrimaryKey(Properties properties, String schema, String tablename, ArrayList<String> columns) throws MIRRORException;
	
	public int getDatabase();
	public void setDatabase(int database);

    public void createDatabaseFromSchema(Properties properties, String DBname) throws MIRRORException;
    public void dropDatabaseFromSchema(Properties properties, String DBname) throws MIRRORException;
    public void generalCommand(Properties properties, String DBname, String command) throws MIRRORException;
    public void useDatabase(Properties properties, String DBname) throws MIRRORException;
    public int getColumnsFromSQLQuery(Properties properties, String DBname, String query, ArrayList<String> columns, ArrayList<String> type, ArrayList<String> key) throws MIRRORException;

	// R2RML
	public void getSchemaRelationshipAll(Properties properties, ArrayList<String> arq1, ArrayList<String> arq2, ArrayList<String> arq3, ArrayList<String> arq4) throws MIRRORException;
	public void getSchemaRelationshipDetail(Properties properties, ArrayList<String> arq1, ArrayList<String> arq2, ArrayList<String> arq3, ArrayList<String> arq4, String tablename) throws MIRRORException;
	public void getSchemaRelationRightAll(Properties properties, ArrayList<String> arq1) throws MIRRORException;
	public int getSchemaRelationLeftCount(Properties properties, String tablename) throws MIRRORException;
	public void getSchemaRelationLeftDetail(Properties properties, ArrayList<String> arq1, String tablename) throws MIRRORException;
	public void getSchemaColumnsName(Properties properties, ArrayList<String> arq1, String tablename) throws MIRRORException;	
	public int getSchemaColumnsNameCount(Properties properties, String tablename) throws MIRRORException;

	// Generic database schema
	public void getTablesFromSchema(Properties properties, List<String> listTableNames
			, List<String> listTableTypes, String schema) throws MIRRORException;
	public void getRelationshipsFromSchema(Properties properties
			, List<String> listColumnNames
			, List<String> listReferencedTableNames, String schema, String tablename) throws MIRRORException;
	public void getKeysFromConstraint(Properties properties, List<String> listColumnNames
			, List<String> listReferencedTableNames, ArrayList<String> arq3, String schema, String constraint) throws MIRRORException;
	public void getColumnsFromTableName(Properties properties, List<String> listColumnNames
			, List<String> listReferencedTableNames, List<String> listColumnKeys
			, String schema, String tablename) throws MIRRORException;
	public void getColumnsFromTableNameMxN(Properties properties, ArrayList<String> arq1, ArrayList<String> arq2, ArrayList<String> arq3, String schema, String tablename) throws MIRRORException;
	public void getRelationshipsFromSchemaAll(Properties properties, ArrayList<String> arq1, 
            ArrayList<String> arq2, 
            ArrayList<String> arq3, 
            ArrayList<String> arq4, 
            ArrayList<String> arq5, String schema) throws MIRRORException;

	public void getRightTablesFromSchemaAll(Properties properties, List<String> arq1, String schema) throws MIRRORException;
    public int getRelationshipsFromRightTableCount(Properties properties, String schema, String tablename) throws MIRRORException;
    
	public void getRelationshipsFromTableDetailed(Properties properties, 
			List<String> listParentTables, 
			List<String> listPK, 
			List<String> listChildTables, 
			List<String> listFK,
			List<String> listIsNullable,
			List<String> listConstraintNames,
			String schema,
			String tablename) throws MIRRORException;

		
    public int getColumnsFromTableNameCount(Properties properties, String schema, String tablename) throws MIRRORException;
	public void getConstraintsFromTableName(Properties properties
			, List<String> listColumnNames, List<String> listDataTypes
			, List<String> arq3, List<String> listReferencedColumnNames, String schema, String tablename) throws MIRRORException;

	
	
}
