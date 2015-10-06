package es.upm.fi.dia.oeg.morph.r2rml.rdb.mappingsgenerator.persistency.impl;

import java.io.UnsupportedEncodingException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Types;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Properties;

import es.upm.fi.dia.oeg.morph.r2rml.rdb.mappingsgenerator.exception.MIRRORException;
import es.upm.fi.dia.oeg.morph.r2rml.rdb.mappingsgenerator.persistency.base.IGateway;
import es.upm.fi.dia.oeg.morph.r2rml.rdb.mappingsgenerator.util.VerboseMode;

public class Gateway implements IGateway {

	private static int database; 
	private static byte DBTYPE_MYSQL = 0;
	private static byte DBTYPE_POSTGRESQL = 1;
	private static byte DBTYPE_MSSQLSERVER = 2;

	public static final String[] SQL_COUNTRECORDSFROMRELATIONSHIP = {
		//MYSQL
		"SELECT COUNT(*) AS N "+ "FROM `?dbName`.`?childTable` AS C JOIN `?dbName`.`?parentTable` AS P ON C.`?childPK`=P.`?parentPK`"
		//POSTGRESQL
		, "SELECT COUNT(*) AS N "+ "FROM \"?childTable\" JOIN \"?parentTable\" ON \"?childTable\".\"?childPK\"=\"?parentTable\".\"?parentPK\""
				//MSSQLServer (Not tested yet)
				, "SELECT COUNT(*) AS N "+ "FROM \"?childTable\" JOIN \"?parentTable\" ON \"?childTable\".\"?childPK\"=\"?parentTable\".\"?parentPK\""
	};

	public String generateSQLCountRecordsFromRelationship(String dbName, String childTable
			, String parentTable, String childPK, String parentPK) {
		String cmd = SQL_COUNTRECORDSFROMRELATIONSHIP[database];
		cmd = cmd.replace("?childTable", childTable);
		cmd = cmd.replace("?parentTable", parentTable);
		cmd = cmd.replace("?childPK", childPK);
		cmd = cmd.replace("?parentPK", parentPK);
		cmd = cmd.replace("?dbName", dbName);

		return cmd;
	}

	public static final String SQL_CheckRelationship1x1[] = {
			"SELECT COUNT(*) AS TOTAL "+"FROM ( ?subquery GROUP BY C.`?childPK` HAVING N>1 "+") AS internal_query;"
			,"SELECT COUNT(*) AS TOTAL "+"FROM ( ?subquery GROUP BY \"?childTable\".\"?childPK\" HAVING COUNT(*)>1 "+") AS internal_query;"
			, "SELECT COUNT(*) AS TOTAL "+"FROM ( ?subquery GROUP BY \"?childTable\".\"?childPK\" HAVING COUNT(*)>1 "+") AS internal_query;"
	};

	public String generateSQLCheckRelationship1x1(String subquery, String childTable, String childPK) {
		String cmd = SQL_CheckRelationship1x1[database];
		//System.out.println(cmd);
		cmd = cmd.replace("?subquery", subquery);
		cmd = cmd.replace("?childTable", childTable);
		cmd = cmd.replace("?childPK", childPK);
		return cmd;
	}
	
	public static final String SQL_GETSCHEMARELATIONSHIPALL = 
			"SELECT S1.table_name AS R1, S1.column_name AS FIELD, S2.table_name AS R2, S2.is_nullable AS NULLABLE "+
					"FROM INFORMATION_SCHEMA.COLUMNS AS S1, INFORMATION_SCHEMA.COLUMNS AS S2 "+
					"WHERE S1.table_schema IN ('sti2') AND S2.table_schema IN ('sti2') "+ 
					"AND S1.column_name = S2.column_name "+
					"AND S1.table_name <> S2.table_name "+
					"AND S1.column_name NOT IN ('ID','DATA','ID_USUARIO') "+
					"AND S1.table_name NOT IN ('resposta','pergunta','atributo_pergunta','log','oav','preatributo','desconhecido','conversa','preobjeto','relacao') "+
					"AND S2.table_name NOT IN ('resposta','pergunta','atributo_pergunta','log','oav','preatributo','desconhecido','conversa','preobjeto','relacao') "+
					"AND S1.column_name LIKE 'ID_%' "+
					"AND S1.column_key IN ('PRI') "+
					"AND S1.table_name = SUBSTRING(S1.column_name,4,20) "+
					/*"AND S2.is_nullable = 'NO' "+*/
					"ORDER BY S2.table_name";    

	public static final String SQL_GETSCHEMARELATIONSHIPDETAIL = 
			"SELECT S1.table_name AS R1, S1.column_name AS FIELD, S2.table_name AS R2, S2.is_nullable AS NULLABLE "+
					"FROM INFORMATION_SCHEMA.COLUMNS AS S1, INFORMATION_SCHEMA.COLUMNS AS S2 "+
					"WHERE S1.table_schema IN ('sti2') AND S2.table_schema IN ('sti2') "+ 
					"AND S1.column_name = S2.column_name "+
					"AND S1.table_name <> S2.table_name "+
					"AND S1.column_name NOT IN ('ID','DATA','ID_USUARIO') "+
					"AND S1.table_name NOT IN ('resposta','pergunta','atributo_pergunta','log','oav','preatributo','desconhecido','conversa','preobjeto','relacao') "+
					"AND S2.table_name NOT IN ('resposta','pergunta','atributo_pergunta','log','oav','preatributo','desconhecido','conversa','preobjeto','relacao') "+
					"AND S1.column_name LIKE 'ID_%' "+
					"AND S1.column_key IN ('PRI') "+
					"AND S1.table_name = SUBSTRING(S1.column_name,4,20) "+
					/*"AND S2.is_nullable = 'NO' "+*/
					"AND S2.table_name = ? "+
					"ORDER BY S2.table_name";    

	public static final String SQL_GETSCHEMARELATIONRIGHTALL =
			"SELECT DISTINCT S2.table_name AS R2 "+
					"FROM INFORMATION_SCHEMA.COLUMNS AS S1, INFORMATION_SCHEMA.COLUMNS AS S2 "+
					"WHERE S1.table_schema IN ('sti2') AND S2.table_schema IN ('sti2') "+ 
					"AND S1.column_name = S2.column_name "+
					"AND S1.table_name <> S2.table_name "+
					"AND S1.column_name NOT IN ('ID','DATA','ID_USUARIO') "+
					"AND S1.table_name NOT IN ('resposta','pergunta','atributo_pergunta','log','oav','preatributo','desconhecido','conversa','preobjeto','relacao') "+
					"AND S2.table_name NOT IN ('resposta','pergunta','atributo_pergunta','log','oav','preatributo','desconhecido','conversa','preobjeto','relacao') "+
					"AND S1.column_name LIKE 'ID_%' "+
					"AND S1.column_key IN ('PRI') "+
					"AND S1.table_name = SUBSTRING(S1.column_name,4,20) "+
					/*AND S2.is_nullable = 'NO'*/
					"ORDER BY S2.table_name";    	

	public static final String SQL_GETSCHEMARELATIONLEFTCOUNT =
			"SELECT COUNT(S4.table_name) AS N "+
					"FROM INFORMATION_SCHEMA.TABLES AS S4 "+
					"WHERE table_schema = 'sti2' "+
					"AND S4.table_name NOT IN "+
					"(SELECT S3.table_name "+
					"FROM INFORMATION_SCHEMA.TABLES AS S3 "+
					"WHERE S3.table_schema = 'sti2' "+
					"AND NOT EXISTS "+
					"(SELECT S1.table_name AS R1, S1.column_name AS FIELD, S2.table_name AS R2 "+
					"FROM INFORMATION_SCHEMA.COLUMNS AS S1, INFORMATION_SCHEMA.COLUMNS AS S2 "+
					"WHERE S1.table_schema IN ('sti2') AND S2.table_schema IN ('sti2') "+
					"AND S1.column_name = S2.column_name "+
					"AND S1.table_name <> S2.table_name "+
					"AND S3.table_name <> S2.table_name "+
					"AND S4.table_name = S1.table_name "+
					"AND S1.column_name NOT IN ('ID','DATA','ID_USUARIO') "+
					"AND S1.table_name NOT IN ('resposta','pergunta','atributo_pergunta','log','oav','preatributo','desconhecido','conversa','preobjeto','relacao') "+
					"AND S2.table_name NOT IN ('resposta','pergunta','atributo_pergunta','log','oav','preatributo','desconhecido','conversa','preobjeto','relacao') "+
					"AND S1.column_name LIKE 'ID_%' "+
					"AND S1.column_key IN ('PRI') "+
					"AND S1.table_name = SUBSTRING(S1.column_name,4,20) "+
					"AND S2.table_name = ? "+
					/*"AND S2.is_nullable = 'NO' "+*/
					/*ORDER BY S1.table_name, S1.column_name, S2.table_name*/
					"ORDER BY S2.table_name))";    

	public static final String SQL_GETSCHEMARELATIONLEFTDETAIL = 
			"SELECT S4.table_name AS R1"+
					"FROM INFORMATION_SCHEMA.TABLES AS S4 "+
					"WHERE table_schema = 'sti2' "+
					"AND S4.table_name NOT IN "+
					"(SELECT S3.table_name "+
					"FROM INFORMATION_SCHEMA.TABLES AS S3 "+
					"WHERE S3.table_schema = 'sti2' "+
					"AND NOT EXISTS "+
					"(SELECT S1.table_name AS R1, S1.column_name AS FIELD, S2.table_name AS R2 "+
					"FROM INFORMATION_SCHEMA.COLUMNS AS S1, INFORMATION_SCHEMA.COLUMNS AS S2 "+
					"WHERE S1.table_schema IN ('sti2') AND S2.table_schema IN ('sti2') "+
					"AND S1.column_name = S2.column_name "+
					"AND S1.table_name <> S2.table_name "+
					"AND S3.table_name <> S2.table_name "+
					"AND S4.table_name = S1.table_name "+
					"AND S1.column_name NOT IN ('ID','DATA','ID_USUARIO') "+
					"AND S1.table_name NOT IN ('resposta','pergunta','atributo_pergunta','log','oav','preatributo','desconhecido','conversa','preobjeto','relacao') "+
					"AND S2.table_name NOT IN ('resposta','pergunta','atributo_pergunta','log','oav','preatributo','desconhecido','conversa','preobjeto','relacao') "+
					"AND S1.column_name LIKE 'ID_%' "+
					"AND S1.column_key IN ('PRI') "+
					"AND S1.table_name = SUBSTRING(S1.column_name,4,20) "+
					"AND S2.table_name = ? "+
					/*"AND S2.is_nullable = 'NO' "+*/
					/*ORDER BY S1.table_name, S1.column_name, S2.table_name*/
					"ORDER BY S2.table_name))";    	

	public static final String SQL_GETSCHEMACOLUMNSNAME = 
			"SELECT COLUMN_NAME AS C "+
					"FROM INFORMATION_SCHEMA.COLUMNS "+
					"WHERE table_schema = 'sti2' "+
					"AND table_name = ? "+
					//"AND COLUMN_KEY <> 'PRI' "+
					"AND COLUMN_NAME NOT IN ('data','id_usuario','id_relacao')";

	public static final String SQL_GETSCHEMACOLUMNSNAMECOUNT = 
			"SELECT COUNT(COLUMN_NAME) AS N "+
					"FROM INFORMATION_SCHEMA.COLUMNS "+
					"WHERE table_schema = 'sti2' "+
					"AND table_name = ? "+
					//"AND COLUMN_KEY <> 'PRI' "+
					"AND COLUMN_NAME NOT IN ('data','id_usuario','id_relacao')";


	/* -------------------------------------------------------------- */
	// Generic MySQL Database Schemas

	public static final String[] SQL_GETTABLESFROMSCHEMA = {
		// MySQL
		"SELECT table_name, table_type "+
		"FROM INFORMATION_SCHEMA.TABLES "+
		"WHERE TABLE_SCHEMA = ? "+
		"AND TABLE_TYPE <> 'VIEW'",
		// PostgreSQL
		"SELECT table_name, table_type " +
		"FROM INFORMATION_SCHEMA.TABLES "+ 
		"WHERE table_catalog = ? "+
		"AND table_schema = 'public'",
		// SQL Server
		"SELECT table_name, table_type "+
		"FROM INFORMATION_SCHEMA.TABLES "+
		"WHERE table_catalog = ? "+
	"AND table_schema = 'guest'"};

	public static final String[] SQL_GETTABLESVIEWSFROMSCHEMA = {
		// MySQL
		"SELECT table_name, table_type "+
		"FROM INFORMATION_SCHEMA.TABLES "+
		"WHERE TABLE_SCHEMA = ? ",
		// PostgreSQL
		"SELECT table_name, table_type " +
		"FROM INFORMATION_SCHEMA.TABLES "+ 
		"WHERE table_catalog = ? "+
		"AND table_schema = 'public'",
		// SQL Server
		"SELECT table_name, table_type "+
		"FROM INFORMATION_SCHEMA.TABLES "+
		"WHERE table_catalog = ? "+
	"AND table_schema = 'guest'"};

	public static final String[] SQL_GETRELATIONSHIPSFROMSCHEMA = { 
		// MySQL
		"SELECT DISTINCT CONSTRAINT_NAME,TABLE_NAME,REFERENCED_TABLE_NAME "+
		"FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE "+
		"WHERE CONSTRAINT_NAME <> 'PRIMARY' "+
		"AND TABLE_SCHEMA = ? "+ 
		"AND TABLE_NAME = ? " +
		"AND REFERENCED_TABLE_NAME IS NOT NULL",
		// PostgreSQL
		"SELECT DISTINCT "+
		"tc.constraint_name AS constraint_name, "+ 
		"tc.table_name AS TABLE_NAME, "+
		"ccu.table_name AS REFERENCED_TABLE_NAME "+
		"FROM information_schema.table_constraints AS tc "+ 
		"JOIN information_schema.key_column_usage AS kcu "+
		"ON tc.constraint_name = kcu.constraint_name "+
		"JOIN information_schema.constraint_column_usage AS ccu "+
		"ON ccu.constraint_name = tc.constraint_name "+
		"JOIN information_schema.columns AS c "+
		"ON (c.column_name = kcu.column_name) AND (c.table_name = tc.table_name) "+
		"WHERE constraint_type = 'FOREIGN KEY'  "+
		"AND tc.table_catalog = ? "+
		"AND tc.table_schema = 'public' "+
		"AND tc.table_name = ?;",
		// SQL Server
		"SELECT "+ 
		"f.name CONSTRAINT_NAME, "+
		"OBJECT_NAME(f.parent_object_id) TABLE_NAME, "+
		"OBJECT_NAME(fc.referenced_object_id) REFERENCED_TABLE_NAME "+
		"FROM sys.foreign_keys AS f "+
		"INNER JOIN sys.foreign_key_columns AS fc ON f.OBJECT_ID = fc.constraint_object_id "+
		"INNER JOIN sys.tables t ON t.OBJECT_ID = fc.referenced_object_id "+
		"INNER JOIN information_schema.columns c  "+
		"ON ((OBJECT_NAME(fc.parent_object_id)= c.table_name) AND (COL_NAME(fc.parent_object_id,fc.parent_column_id) = c.column_name)) "+
		"WHERE DB_NAME() = ? "+
		"AND SCHEMA_NAME(f.schema_id) = 'guest' "+
	"AND OBJECT_NAME (f.parent_object_id) = ?"};

	public static final String[] SQL_GETKEYSFROMCONSTRAINT = { 
		// MySQL
		"SELECT COLUMN_NAME,REFERENCED_TABLE_NAME,REFERENCED_COLUMN_NAME "+
		"FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE "+
		"WHERE TABLE_SCHEMA = ? "+
		"AND CONSTRAINT_NAME = ?",
		// PostgreSQL
		"SELECT DISTINCT "+
		"kcu.column_name AS COLUMN_NAME, "+ 
		"ccu.table_name AS REFERENCED_TABLE_NAME, "+ 
		"ccu.column_name AS REFERENCED_COLUMN_NAME "+
		"FROM information_schema.table_constraints AS tc "+ 
		"JOIN information_schema.key_column_usage AS kcu "+
		"ON tc.constraint_name = kcu.constraint_name "+
		"JOIN information_schema.constraint_column_usage AS ccu "+
		"ON ccu.constraint_name = tc.constraint_name "+
		"JOIN information_schema.columns AS c "+
		"ON (c.column_name = kcu.column_name) AND (c.table_name = tc.table_name) "+
		"WHERE constraint_type = 'FOREIGN KEY' "+
		"AND tc.table_catalog = ? "+
		"AND tc.table_schema = 'public' "+
		"AND tc.constraint_name = ?",
		// SQL Server
		"SELECT "+ 
		"COL_NAME(fc.parent_object_id,fc.parent_column_id) column_name, "+
		"OBJECT_NAME(fc.referenced_object_id) referenced_table_name, "+
		"COL_NAME(fc.referenced_object_id,fc.referenced_column_id) referenced_column_name "+
		"FROM sys.foreign_keys AS f "+
		"INNER JOIN sys.foreign_key_columns AS fc ON f.OBJECT_ID = fc.constraint_object_id "+
		"INNER JOIN sys.tables t ON t.OBJECT_ID = fc.referenced_object_id "+
		"WHERE DB_NAME() = ? "+
		"AND SCHEMA_NAME(f.schema_id) = 'guest' "+
	"AND f.name = ?"};

	public static final String[] SQL_GETCOLUMNSFROMTABLENAME = { 
		// MySQL
		"(SELECT COLUMN_NAME, DATA_TYPE, COLUMN_KEY "+
		"FROM INFORMATION_SCHEMA.COLUMNS "+
		"WHERE TABLE_SCHEMA = ? "+
		"AND TABLE_NAME = ? "+
		"AND COLUMN_KEY = 'PRI')"+
		"UNION"+
		"(SELECT COLUMN_NAME, DATA_TYPE, COLUMN_KEY "+
		"FROM INFORMATION_SCHEMA.COLUMNS "+
		"WHERE TABLE_SCHEMA = ? "+
		"AND TABLE_NAME = ? "+
		"AND COLUMN_KEY <> 'PRI')",
		// PostgreSQL
		"SELECT c.column_name, c.data_type, ccu.constraint_name AS COLUMN_KEY "+
		"FROM information_schema.columns AS c "+
		"LEFT OUTER JOIN information_schema.constraint_column_usage AS ccu "+
		"ON (c.column_name = ccu.column_name) AND (c.table_name = ccu.table_name) "+
		"WHERE c.table_schema = 'public' "+
		"AND c.table_catalog = ? "+
		"AND (ccu.constraint_name LIKE '%pkey' OR ccu.constraint_name IS NULL) "+
		"AND c.table_name = ?",
		// SQL Server
		"SELECT c.column_name, c.data_type, ccu.constraint_name AS COLUMN_KEY "+
		"FROM information_schema.columns AS c "+
		"LEFT OUTER JOIN information_schema.constraint_column_usage AS ccu "+
		"ON (c.column_name = ccu.column_name) AND (c.table_name = ccu.table_name) "+
		"WHERE c.table_schema = 'guest' "+
		"AND c.table_catalog = ? "+
	"AND c.table_name = ?"};

	public static final String[] SQL_GETCOLUMNSFROMTABLENAMEMXN = { 
		// MySQL
		"(SELECT COLUMN_NAME, DATA_TYPE, COLUMN_KEY "+
		"FROM INFORMATION_SCHEMA.COLUMNS "+
		"WHERE TABLE_SCHEMA = ? "+
		"AND TABLE_NAME = ? "+
		"AND COLUMN_KEY <> 'PRI')"+
		"UNION"+
		"(SELECT COLUMN_NAME, DATA_TYPE, COLUMN_KEY "+
		"FROM INFORMATION_SCHEMA.COLUMNS "+
		"WHERE TABLE_SCHEMA = ? "+
		"AND TABLE_NAME = ? "+
		"AND COLUMN_KEY = 'PRI')",
		// PostgreSQL
		"SELECT c.column_name, c.data_type, ccu.constraint_name AS COLUMN_KEY "+
		"FROM information_schema.columns AS c "+
		"LEFT OUTER JOIN information_schema.constraint_column_usage AS ccu "+
		"ON (c.column_name = ccu.column_name) AND (c.table_name = ccu.table_name) "+
		"WHERE c.table_schema = 'public' "+
		"AND c.table_catalog = ? "+
		"AND (ccu.constraint_name LIKE '%pkey' OR ccu.constraint_name IS NULL) "+
		"AND c.table_name = ?",
		// SQL Server
		"SELECT c.column_name, c.data_type, ccu.constraint_name AS COLUMN_KEY "+
		"FROM information_schema.columns AS c "+
		"LEFT OUTER JOIN information_schema.constraint_column_usage AS ccu "+
		"ON (c.column_name = ccu.column_name) AND (c.table_name = ccu.table_name) "+
		"WHERE c.table_schema = 'guest' "+
		"AND c.table_catalog = ? "+
	"AND c.table_name = ?"};

	public static final String[] SQL_GETPKCOLUMNSFROMTABLENAME = { 
		// MySQL
		"SELECT COLUMN_NAME, DATA_TYPE, COLUMN_KEY "+
		"FROM INFORMATION_SCHEMA.COLUMNS "+
		"WHERE TABLE_SCHEMA = ? "+
		"AND TABLE_NAME = ? "+
		"AND COLUMN_KEY = 'PRI' ",
		// PostgreSQL
		"SELECT c.column_name, c.data_type, ccu.constraint_name AS COLUMN_KEY "+
		"FROM information_schema.columns AS c "+
		"LEFT OUTER JOIN information_schema.constraint_column_usage AS ccu "+
		"ON (c.column_name = ccu.column_name) AND (c.table_name = ccu.table_name) "+
		"WHERE c.table_schema = 'public' "+
		"AND c.table_catalog = ? "+
		"AND (ccu.constraint_name LIKE '%pkey' OR ccu.constraint_name IS NULL) "+
		"AND c.table_name = ?",
		// SQL Server
		"SELECT c.column_name, c.data_type, ccu.constraint_name AS COLUMN_KEY "+
		"FROM information_schema.columns AS c "+
		"LEFT OUTER JOIN information_schema.constraint_column_usage AS ccu "+
		"ON (c.column_name = ccu.column_name) AND (c.table_name = ccu.table_name) "+
		"WHERE c.table_schema = 'guest' "+
		"AND c.table_catalog = ? "+
	"AND c.table_name = ?"};

	public static final String[] SQL_GETRELATIONSHIPSFROMSCHEMAALL = { 
		// MySQL
		"SELECT DISTINCT CONSTRAINT_NAME,REFERENCED_TABLE_NAME,REFERENCED_COLUMN_NAME,COLUMN_NAME,TABLE_NAME "+
		"FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE "+
		"WHERE TABLE_SCHEMA = ? "+
		"AND CONSTRAINT_NAME <> 'PRIMARY' "+
		"AND REFERENCED_TABLE_NAME IS NOT NULL "+
		"ORDER BY REFERENCED_TABLE_NAME",
		// PostgreSQL
		"SELECT DISTINCT "+
		"tc.constraint_name, "+
		"ccu.table_name AS REFERENCED_TABLE_NAME, "+
		"ccu.column_name AS REFERENCED_COLUMN_NAME, "+
		"kcu.column_name AS COLUMN_NAME, "+
		"tc.table_name AS TABLE_NAME "+
		"FROM information_schema.table_constraints AS tc "+ 
		"JOIN information_schema.key_column_usage AS kcu "+
		"ON tc.constraint_name = kcu.constraint_name "+
		"JOIN information_schema.constraint_column_usage AS ccu "+
		"ON ccu.constraint_name = tc.constraint_name "+
		"JOIN information_schema.columns AS c "+
		"ON (c.column_name = kcu.column_name) AND (c.table_name = tc.table_name) "+
		"WHERE constraint_type = 'FOREIGN KEY' "+
		"AND tc.table_catalog = ? "+
		"AND tc.table_schema = 'public' "+
		"ORDER BY REFERENCED_TABLE_NAME",
		// SQL Server
		"SELECT "+
		"f.name CONSTRAINT_NAME, "+
		"OBJECT_NAME(fc.referenced_object_id) REFERENCED_TABLE_NAME, "+
		"COL_NAME(fc.referenced_object_id,fc.referenced_column_id) REFERENCED_COLUMN_NAME, "+
		"COL_NAME(fc.parent_object_id,fc.parent_column_id) COLUMN_NAME, "+
		"OBJECT_NAME(f.parent_object_id) TABLE_NAME "+
		"FROM sys.foreign_keys AS f "+
		"INNER JOIN sys.foreign_key_columns AS fc ON f.OBJECT_ID = fc.constraint_object_id "+
		"INNER JOIN sys.tables t ON t.OBJECT_ID = fc.referenced_object_id "+
		"INNER JOIN information_schema.columns c  "+
		"ON ((OBJECT_NAME(fc.parent_object_id)= c.table_name) AND (COL_NAME(fc.parent_object_id,fc.parent_column_id) = c.column_name)) "+
		"WHERE DB_NAME() = ? "+
	"AND SCHEMA_NAME(f.schema_id) = 'guest'"};

	public static final String[] SQL_GETRIGHTTABLESFROMSCHEMAALL = {
		// MySQL
		"SELECT DISTINCT R1.TABLE_NAME "+
		"FROM (INFORMATION_SCHEMA.KEY_COLUMN_USAGE AS R1 "+ 
		"JOIN INFORMATION_SCHEMA.COLUMNS AS R2 "+
		"ON (R1.TABLE_NAME = R2.TABLE_NAME "+
		"AND R1.COLUMN_NAME = R2.COLUMN_NAME "+
		"AND R1.TABLE_SCHEMA = R2.TABLE_SCHEMA "+
		"AND R2.COLUMN_KEY <> 'UNI')) "+
		"WHERE R1.TABLE_SCHEMA = ? "+
		"AND CONSTRAINT_NAME <> 'PRIMARY' "+ 
		"ORDER BY R1.TABLE_NAME",
		//"SELECT DISTINCT TABLE_NAME "+
		//"FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE "+
		//"WHERE TABLE_SCHEMA = ? "+
		//"AND CONSTRAINT_NAME <> 'PRIMARY' "+
		//"ORDER BY TABLE_NAME",
		// PostgreSQL
		"SELECT DISTINCT "+
		"tc.table_name AS TABLE_NAME "+
		"FROM information_schema.table_constraints AS tc "+ 
		"JOIN information_schema.key_column_usage AS kcu "+
		"ON tc.constraint_name = kcu.constraint_name "+
		"JOIN information_schema.constraint_column_usage AS ccu "+
		"ON ccu.constraint_name = tc.constraint_name "+
		"JOIN information_schema.columns AS c "+
		"ON (c.column_name = kcu.column_name) AND (c.table_name = tc.table_name) "+
		"WHERE constraint_type = 'FOREIGN KEY' "+
		"AND tc.table_catalog = ? "+
		"AND tc.table_schema = 'public' "+
		"ORDER BY TABLE_NAME",
		// SQL Server
		"SELECT DISTINCT "+
		"OBJECT_NAME(f.parent_object_id) TABLE_NAME "+
		"FROM sys.foreign_keys AS f "+
		"INNER JOIN sys.foreign_key_columns AS fc ON f.OBJECT_ID = fc.constraint_object_id "+
		"INNER JOIN sys.tables t ON t.OBJECT_ID = fc.referenced_object_id "+
		"INNER JOIN information_schema.columns c  "+
		"ON ((OBJECT_NAME(fc.parent_object_id)= c.table_name) AND (COL_NAME(fc.parent_object_id,fc.parent_column_id) = c.column_name)) "+
		"WHERE DB_NAME() = ? "+
		"AND SCHEMA_NAME(f.schema_id) = 'guest' "+
	"ORDER BY TABLE_NAME"};

	public static final String[] SQL_GETRELATIONSHIPSFROMRIGHTTABLECOUNT = {
		// MySQL
		"SELECT COUNT(*) AS N "+
		"FROM ( "+
		"    SELECT DISTINCT REFERENCED_TABLE_NAME,TABLE_NAME "+
		"    FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE "+
		"    WHERE TABLE_SCHEMA = ? "+
		"    AND CONSTRAINT_NAME <> 'PRIMARY' "+
		"    AND TABLE_NAME = ? "+
		"    AND REFERENCED_TABLE_NAME IS NOT NULL "+
		"    ) AS internalquery",
		// PostgreSQL
		"SELECT COUNT(*) AS N "+ 
		"FROM (SELECT DISTINCT "+
		"ccu.table_name AS REFERENCED_TABLE_NAME, "+
		"tc.table_name AS TABLE_NAME "+
		"FROM information_schema.table_constraints AS tc "+ 
		"JOIN information_schema.key_column_usage AS kcu "+
		"ON tc.constraint_name = kcu.constraint_name "+
		"JOIN information_schema.constraint_column_usage AS ccu "+
		"ON ccu.constraint_name = tc.constraint_name "+
		"JOIN information_schema.columns AS c "+
		"ON (c.column_name = kcu.column_name) AND (c.table_name = tc.table_name) "+
		"WHERE constraint_type = 'FOREIGN KEY' "+
		"AND tc.table_catalog = ? "+
		"AND tc.table_schema = 'public' "+
		"AND tc.table_name = ? ) AS internalquery",
		// SQL Server
		"SELECT COUNT(*) AS N "+
		"FROM (SELECT DISTINCT "+
		"OBJECT_NAME(fc.referenced_object_id) REFERENCED_TABLE_NAME, "+
		"OBJECT_NAME(f.parent_object_id) TABLE_NAME "+
		"FROM sys.foreign_keys AS f "+
		"INNER JOIN sys.foreign_key_columns AS fc ON f.OBJECT_ID = fc.constraint_object_id "+
		"INNER JOIN sys.tables t ON t.OBJECT_ID = fc.referenced_object_id "+
		"INNER JOIN information_schema.columns c  "+
		"ON ((OBJECT_NAME(fc.parent_object_id)= c.table_name) AND (COL_NAME(fc.parent_object_id,fc.parent_column_id) = c.column_name)) "+
		"WHERE DB_NAME() = ? "+
		"AND SCHEMA_NAME(f.schema_id) = 'guest' "+
	"AND OBJECT_NAME(f.parent_object_id) = ?) AS internalquery"};

	/*  */
	public static final String[] SQL_GETRELATIONSHIPSFROMTABLEDETAILED = {
		// MySQL
		"SELECT DISTINCT R1.REFERENCED_TABLE_NAME AS PARENT,R1.REFERENCED_COLUMN_NAME AS PK, R1.TABLE_NAME AS CHILD,R1.COLUMN_NAME AS FK, R2.IS_NULLABLE AS NULLABLE,R1.CONSTRAINT_NAME AS CONSTRAINT_NAME "+
		//"SELECT DISTINCT R1.CONSTRAINT_NAME AS C1,R1.TABLE_NAME AS R1,R1.COLUMN_NAME AS FIELD, R1.REFERENCED_TABLE_NAME AS R2,R1.REFERENCED_COLUMN_NAME AS REF_FIELD, R2.IS_NULLABLE AS NULLABLE "+
		"FROM (INFORMATION_SCHEMA.KEY_COLUMN_USAGE AS R1  "+
		"JOIN INFORMATION_SCHEMA.COLUMNS AS R2  "+
		"ON (R1.TABLE_NAME = R2.TABLE_NAME  "+
		"AND R1.COLUMN_NAME = R2.COLUMN_NAME "+
		"AND R1.TABLE_SCHEMA = R2.TABLE_SCHEMA))  "+
		"WHERE R1.TABLE_SCHEMA = ? "+
		"AND R1.CONSTRAINT_NAME <> 'PRIMARY' "+
		"AND R1.TABLE_NAME = ? "+
		"AND R1.REFERENCED_TABLE_NAME IS NOT NULL "+
		"ORDER BY PARENT, R1.ORDINAL_POSITION",
		// PostgreSQL
		"SELECT DISTINCT "+
		"ccu.table_name AS R1, "+
		"ccu.column_name AS REF_FIELD, "+ 
		"tc.table_name AS R2, "+ 
		"kcu.column_name AS FIELD, "+ 
		"c.is_nullable AS NULLABLE, "+ 
		"tc.constraint_name AS C1 "+
		"FROM information_schema.table_constraints AS tc "+ 
		"JOIN information_schema.key_column_usage AS kcu "+
		"ON tc.constraint_name = kcu.constraint_name "+
		"JOIN information_schema.constraint_column_usage AS ccu "+
		"ON ccu.constraint_name = tc.constraint_name "+
		"JOIN information_schema.columns AS c "+
		"ON (c.column_name = kcu.column_name) AND (c.table_name = tc.table_name) "+
		"WHERE constraint_type = 'FOREIGN KEY' "+ 
		"AND tc.table_catalog = ? "+
		"AND tc.table_schema = 'public' "+ 
		"AND tc.table_name = ?"+
		"ORDER BY R1",
		// SQL Server
		"SELECT  "+
		"OBJECT_NAME(fc.referenced_object_id) R1, "+
		"COL_NAME(fc.referenced_object_id,fc.referenced_column_id) REF_FIELD, "+
		"OBJECT_NAME(f.parent_object_id) R2, "+
		"COL_NAME(fc.parent_object_id,fc.parent_column_id) FIELD, "+
		"c.is_nullable AS NULLABLE, "+
		"f.name C1 "+
		"FROM sys.foreign_keys AS f "+
		"INNER JOIN sys.foreign_key_columns AS fc ON f.OBJECT_ID = fc.constraint_object_id "+
		"INNER JOIN sys.tables t ON t.OBJECT_ID = fc.referenced_object_id "+
		"INNER JOIN information_schema.columns c  "+
		"ON ((OBJECT_NAME(fc.parent_object_id)= c.table_name) AND (COL_NAME(fc.parent_object_id,fc.parent_column_id) = c.column_name)) "+
		"WHERE DB_NAME() = ? "+
		"AND SCHEMA_NAME(f.schema_id) = 'guest' "+
		"AND OBJECT_NAME (f.parent_object_id) = ?"        
	};

	/* getColumnsFromTableNameCount */    
	public static final String[] SQL_GETCOLUMNSFROMTABLENAMECOUNT = {
		// MySQL
		"SELECT COUNT(*) AS N "+
		"FROM ( "+
		"    SELECT COLUMN_NAME, DATA_TYPE, COLUMN_KEY "+
		"    FROM INFORMATION_SCHEMA.COLUMNS "+
		"    WHERE TABLE_SCHEMA = ? "+
		"    AND TABLE_NAME = ?) "+
		"    AS internalquery",
		// PostgreSQL
		"SELECT COUNT(*) AS N "+ 
		"FROM (SELECT c.column_name, c.data_type, ccu.constraint_name AS COLUMN_KEY "+
		"FROM information_schema.columns AS c "+
		"LEFT OUTER JOIN information_schema.constraint_column_usage AS ccu "+
		"ON (c.column_name = ccu.column_name) AND (c.table_name = ccu.table_name) "+
		"WHERE c.table_schema = 'public' "+
		"AND c.table_catalog = ? "+
		"AND (ccu.constraint_name LIKE '%pkey' OR ccu.constraint_name IS NULL) "+
		"AND c.table_name = ? ) AS internalquery",
		// SQL Server
		"SELECT COUNT(*) AS N "+ 
		"FROM (SELECT c.column_name, c.data_type, ccu.constraint_name AS COLUMN_KEY "+
		"FROM information_schema.columns AS c "+
		"LEFT OUTER JOIN information_schema.constraint_column_usage AS ccu "+
		"ON (c.column_name = ccu.column_name) AND (c.table_name = ccu.table_name) "+
		"WHERE c.table_schema = 'guest' "+
		"AND c.table_catalog = ? "+
	"AND c.table_name = ? ) AS internalquery"};

	/* getConstraintsFromTableName */
	public static final String[] SQL_GETCONSTRAINTSFROMTABLENAME = {
		// MySQL
		"SELECT DISTINCT REFERENCED_TABLE_NAME AS R1, TABLE_NAME AS R2, CONSTRAINT_NAME AS C1, COLUMN_NAME AS CN1 "+
		"FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE "+
		"WHERE TABLE_SCHEMA = ? "+
		"AND CONSTRAINT_NAME <> 'PRIMARY' "+
		"AND TABLE_NAME = ? "+
		"AND REFERENCED_TABLE_NAME IS NOT NULL",
		// PostgreSQL
		"SELECT DISTINCT "+
		"ccu.table_name AS R1, "+
		"tc.table_name AS R2, "+
		"tc.constraint_name AS C1 "+
		"FROM information_schema.table_constraints AS tc "+ 
		"JOIN information_schema.key_column_usage AS kcu "+
		"ON tc.constraint_name = kcu.constraint_name "+
		"JOIN information_schema.constraint_column_usage AS ccu "+
		"ON ccu.constraint_name = tc.constraint_name "+
		"JOIN information_schema.columns AS c "+
		"ON (c.column_name = kcu.column_name) AND (c.table_name = tc.table_name) "+
		"WHERE constraint_type = 'FOREIGN KEY' "+
		"AND tc.table_catalog = ? "+
		"AND tc.table_schema = 'public' "+ 
		"AND tc.table_name = ?",
		// SQL Server
		"SELECT "+
		"OBJECT_NAME(fc.referenced_object_id) R1, "+
		"OBJECT_NAME(f.parent_object_id) R2, "+
		"f.name C1 "+
		"FROM sys.foreign_keys AS f "+
		"INNER JOIN sys.foreign_key_columns AS fc ON f.OBJECT_ID = fc.constraint_object_id "+
		"INNER JOIN sys.tables t ON t.OBJECT_ID = fc.referenced_object_id "+
		"WHERE DB_NAME() = ? "+
		"AND SCHEMA_NAME(f.schema_id) = 'guest' "+
	"AND OBJECT_NAME (f.parent_object_id) = ?"};

	/* checkRelationship1x1 */
	public static final String[] SQL_CHECKRELATIONSHIP1X1 = {
		// MySQL
		"SELECT COUNT(*) AS TOTAL "+
		"FROM ( "+
		"SELECT COUNT(*) AS N "+
		"FROM ? AS C JOIN ? AS P ON C.?=P.? "+
		"GROUP BY C.? "+
		"HAVING N>1 "+
		") AS internal_query;",
		// PostgreSQL
		"SELECT COUNT(*) AS TOTAL "+
		"FROM ( "+
		"SELECT COUNT(*) AS N "+
		"FROM ? AS C JOIN ? AS P ON C.?=P.? "+
		"GROUP BY C.? "+
		"HAVING N>1 "+
		") AS internal_query;",
		// SQL Server
		"SELECT COUNT(*) AS TOTAL "+
		"FROM ( "+
		"SELECT COUNT(*) AS N "+
		"FROM ? AS C JOIN ? AS P ON C.?=P.? "+
		"GROUP BY C.? "+
		"HAVING N>1 "+
		") AS internal_query;"
	};

	public static final String[] SQL_CHECKRELATIONSHIPISA = {
		// MySQL
		"SELECT COUNT(*) AS ISA "+
		"FROM ((INFORMATION_SCHEMA.KEY_COLUMN_USAGE AS R1 JOIN INFORMATION_SCHEMA.KEY_COLUMN_USAGE AS R2 "+ 
		"ON R1.REFERENCED_TABLE_NAME=R2.TABLE_NAME "+
		"AND R1.REFERENCED_COLUMN_NAME=R2.COLUMN_NAME "+
		"AND R2.CONSTRAINT_NAME='PRIMARY' "+
		"AND R1.REFERENCED_TABLE_NAME= ? "+
		"AND R1.TABLE_NAME= ? "+
		"AND R1.TABLE_SCHEMA = ? "+
		"AND R2.TABLE_SCHEMA = ?) "+
		"JOIN INFORMATION_SCHEMA.KEY_COLUMN_USAGE AS R3 "+
		"ON R1.TABLE_NAME=R3.TABLE_NAME "+ 
		"AND R1.COLUMN_NAME=R3.COLUMN_NAME "+ 
		"AND R3.CONSTRAINT_NAME='PRIMARY' "+ 
		"AND R1.TABLE_SCHEMA = ? "+
		"AND R3.TABLE_SCHEMA = ?)",
		// PostgreSQL
		"SELECT COUNT(*) AS ISA "+
		"FROM ((INFORMATION_SCHEMA.KEY_COLUMN_USAGE AS R1 JOIN INFORMATION_SCHEMA.KEY_COLUMN_USAGE AS R2 "+ 
		"ON R1.REFERENCED_TABLE_NAME=R2.TABLE_NAME "+
		"AND R1.REFERENCED_COLUMN_NAME=R2.COLUMN_NAME "+
		"AND R2.CONSTRAINT_NAME='PRIMARY' "+
		"AND R1.REFERENCED_TABLE_NAME= ? "+
		"AND R1.TABLE_NAME= ? "+
		"AND R1.TABLE_SCHEMA = ? "+
		"AND R2.TABLE_SCHEMA = ?) "+
		"JOIN INFORMATION_SCHEMA.KEY_COLUMN_USAGE AS R3 "+
		"ON R1.TABLE_NAME=R3.TABLE_NAME "+ 
		"AND R1.COLUMN_NAME=R3.COLUMN_NAME "+ 
		"AND R3.CONSTRAINT_NAME='PRIMARY' "+ 
		"AND R1.TABLE_SCHEMA = ? "+
		"AND R3.TABLE_SCHEMA = ?)",
		// SQL Server
		"SELECT COUNT(*) AS ISA "+
		"FROM ((INFORMATION_SCHEMA.KEY_COLUMN_USAGE AS R1 JOIN INFORMATION_SCHEMA.KEY_COLUMN_USAGE AS R2 "+ 
		"ON R1.REFERENCED_TABLE_NAME=R2.TABLE_NAME "+
		"AND R1.REFERENCED_COLUMN_NAME=R2.COLUMN_NAME "+
		"AND R2.CONSTRAINT_NAME='PRIMARY' "+
		"AND R1.REFERENCED_TABLE_NAME= ? "+
		"AND R1.TABLE_NAME= ? "+
		"AND R1.TABLE_SCHEMA = ? "+
		"AND R2.TABLE_SCHEMA = ?) "+
		"JOIN INFORMATION_SCHEMA.KEY_COLUMN_USAGE AS R3 "+
		"ON R1.TABLE_NAME=R3.TABLE_NAME "+ 
		"AND R1.COLUMN_NAME=R3.COLUMN_NAME "+ 
		"AND R3.CONSTRAINT_NAME='PRIMARY' "+ 
		"AND R1.TABLE_SCHEMA = ? "+
		"AND R3.TABLE_SCHEMA = ?)",
	};


	public static final String[] SQL_GETVIEWSFROMSCHEMA = {
		// MySQL
		"SELECT table_name, view_definition "+ 
		"FROM INFORMATION_SCHEMA.VIEWS "+
		"WHERE TABLE_SCHEMA = ?",
		// PostgreSQL
		"SELECT table_name, view_definition "+ 
		"FROM INFORMATION_SCHEMA.VIEWS "+
		"WHERE table_catalog = ? "+
		"AND table_schema = 'public'",
		// SQL Server
		"SELECT table_name, view_definition "+ 
		"FROM INFORMATION_SCHEMA.VIEWS "+
		"WHERE table_catalog = ? "+
	"AND table_schema = 'guest'"};


	public void getViewsFromSchema(Properties properties
			, ArrayList<String> listTableNames, ArrayList<String> listViewDefinition
			, String schema) throws MIRRORException {
		if((listTableNames == null) || (listViewDefinition == null)) {
			String mensagem = "Lists for views not informed.";
			throw new MIRRORException(mensagem);
		}
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;

		VerboseMode.verbose("getViewsFromSchema", VerboseMode.VERBOSE_SQL);

		if(listTableNames != null) listTableNames.clear(); 
		if(listViewDefinition != null) listViewDefinition.clear(); 

		try {
			con = ConnectionManager.getConnection(database, properties);
			stmt = con.prepareStatement(SQL_GETVIEWSFROMSCHEMA[database]);
			stmt.setString(1, schema);
			VerboseMode.verbose(stmt.toString(), VerboseMode.VERBOSE_SQL);
			rs = stmt.executeQuery();

			String tableName, viewDefinition;

			if(rs != null) {
				while(rs.next()) {
					tableName = rs.getString("TABLE_NAME");
					viewDefinition = rs.getString("VIEW_DEFINITION");
					//System.out.print(n1 + " ");
					listTableNames.add(tableName);
					listViewDefinition.add(viewDefinition);
				}
			}
			//System.out.println("");

		} catch (SQLException exc) {
			StringBuffer mensagem = new StringBuffer("Could not query the tables from specified schema.");
			mensagem.append("\nReason: " + exc.getMessage());
			throw new MIRRORException(mensagem.toString());
		} finally {
			ConnectionManager.closeConnection(con, stmt, rs);
		}
	}


	public long countRecordsFromRelationship(Properties properties, String dbName, String parentTable, String childTable, String parentPK, String childPK) throws MIRRORException {
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;

		VerboseMode.verbose("countRegistersFromRelationship", VerboseMode.VERBOSE_SQL);

		long n = 0;

		try {
			con = ConnectionManager.getConnection(database, properties);
			//			String cmd = "SELECT COUNT(*) AS N "+
			//					"FROM `"+dbName+"`.`"+childTable+"` AS C JOIN `"+
			//					dbName+"`.`"+parentTable+"` AS P ON C.`"+childPK+"`=P.`"+parentPK+"`";
			//			System.out.println(cmd);
			//			stmt = con.prepareStatement(cmd);

			//			String cmd = SQL_COUNTRECORDSFROMRELATIONSHIP[database];
			//			if(database == DBTYPE_MYSQL || database == DBTYPE_MSSQLSERVER) {
			//				//stmt.setString(1, dbName);
			//				cmd = cmd.replace("?1", dbName);
			//				
			////				stmt.setString(2, childTable);
			//				cmd = cmd.replace("?2", childTable);
			//				
			////				stmt.setString(3, dbName);
			//				cmd = cmd.replace("?3", dbName);
			//				
			////				stmt.setString(4, parentTable);
			//				cmd = cmd.replace("?4", parentTable);
			//				
			////				stmt.setString(5, childPK);
			//				cmd = cmd.replace("?5", childPK);
			//				
			////				stmt.setString(6, parentPK);
			//				cmd = cmd.replace("?6", parentPK);
			//			} else if(database == DBTYPE_POSTGRESQL) {
			//				cmd = cmd.replace("?2", childTable);
			//				cmd = cmd.replace("?4", parentTable);
			//				cmd = cmd.replace("?5", childPK);
			//				cmd = cmd.replace("?6", parentPK);
			//				
			//			}

			String cmd = this.generateSQLCountRecordsFromRelationship(dbName, childTable, parentTable, childPK, parentPK);
			stmt = con.prepareStatement(cmd);
			VerboseMode.verbose(stmt.toString(), VerboseMode.VERBOSE_SQL);
			rs = stmt.executeQuery();

			if(rs != null) {
				while(rs.next()) {
					n = rs.getInt("N");
				}
			}

		} catch (SQLException exc) {
			StringBuffer mensagem = new StringBuffer("Could not account records number.");
			mensagem.append("\nMotivo: " + exc.getMessage());
			throw new MIRRORException(mensagem.toString());
		} finally {
			ConnectionManager.closeConnection(con, stmt, rs);
		}
		return n;
	}

	public boolean checkRelationship1x1(Properties properties, String dbName, String parentTable, String childTable, String parentPK, String childPK) throws MIRRORException {
		Connection con = null;
		//PreparedStatement stmt = null;
		Statement stmt = null;
		ResultSet rs = null;

		VerboseMode.verbose("checkRelationship1x1", VerboseMode.VERBOSE_SQL);

		int n = 0;

		boolean check = false;
		try {
			con = ConnectionManager.getConnection(database, properties);
			String subquery = this.generateSQLCountRecordsFromRelationship(dbName, childTable, parentTable, childPK, parentPK);

			//			String cmd = "SELECT COUNT(*) AS TOTAL "+
			//					"FROM ( "+
			//					"SELECT COUNT(*) AS N "+
			//					"FROM `"+childTable+"` AS C JOIN `"+parentTable+"` AS P ON C.`"+childPK+"`=P.`"+parentPK+"` "+
			//					"GROUP BY C.`"+childPK+"` HAVING N>1 "+
			//					") AS internal_query;";
			
			String cmd = this.generateSQLCheckRelationship1x1(subquery, childTable, childPK);

			stmt = con.createStatement();
			//stmt.executeUpdate("USE "+dbName+";");
			//stmt = con.prepareStatement(cmd);
			VerboseMode.verbose(stmt.toString(), VerboseMode.VERBOSE_SQL);
			rs = stmt.executeQuery(cmd);

			if(rs != null) {
				while(rs.next()) {
					n = rs.getInt("TOTAL");
				}
			}
			check = (n > 0 ? false : true);

		} catch (SQLException exc) {
			StringBuffer mensagem = new StringBuffer("Unable to check the cardinality.");
			mensagem.append("\nMotivo: " + exc.getMessage());
			throw new MIRRORException(mensagem.toString());
		} finally {
			//ConnectionManager.closeConnection(con, stmt, rs);
			ConnectionManager.closeConnection(con);
		}
		return check;
	}

	public boolean checkRelationshipISA(Properties properties, String schema, String parentTable, String childTable) throws MIRRORException {
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;

		VerboseMode.verbose("checkRelationshipISA", VerboseMode.VERBOSE_SQL);

		int n = 0;

		boolean check = false;
		try {
			con = ConnectionManager.getConnection(database, properties);
			stmt = con.prepareStatement(SQL_CHECKRELATIONSHIPISA[database]);
			stmt.setString(1, parentTable);
			stmt.setString(2, childTable);
			stmt.setString(3, schema);
			stmt.setString(4, schema);
			stmt.setString(5, schema);
			stmt.setString(6, schema);
			VerboseMode.verbose(stmt.toString(), VerboseMode.VERBOSE_SQL);
			rs = stmt.executeQuery();

			if(rs != null) {
				while(rs.next()) {
					n = rs.getInt("ISA");
				}
			}
			check = (n > 0 ? false : true);

		} catch (SQLException exc) {
			StringBuffer mensagem = new StringBuffer("Unable to check ISA relationship.");
			mensagem.append("\nMotive: " + exc.getMessage());
			throw new MIRRORException(mensagem.toString());
		} finally {
			ConnectionManager.closeConnection(con, stmt, rs);
		}
		return check;
	}

	public int getDatabase() {
		return database;
	}

	public void setDatabase(int database) {
		Gateway.database = database;
	}

	/* createDatabaseFromSchema */
	public static final String[] SQL_CREATEDATABASEFROMSCHEMA = {
		// MySQL
		"CREATE DATABASE ?;",
		// PostgreSQL
		"CREATE DATABASE ?;",
		// SQL Server
		"CREATE DATABASE ?;"
	};

	/* dropDatabase */
	public static final String[] SQL_DROPDATABASEFROMSCHEMA = {
		// MySQL
		"DROP DATABASE ?",
		// PostgreSQL
		"DROP DATABASE ?",
		// SQL Server
		"DROP DATABASE ?"
	};

	//
	// R2RML
	// -----------------------------------------------------------------------------------------------------------------


	public void createDatabaseFromSchema(Properties properties, String DBname) throws MIRRORException {
		Connection con = null;
		Statement stmt = null;

		VerboseMode.verbose("createDatabaseFromSchema", VerboseMode.VERBOSE_SQL);

		try {
			con = ConnectionManager.manageConnection(database, properties);
			stmt = con.createStatement();
			stmt.executeUpdate("SET FOREIGN_KEY_CHECKS=0;");
			stmt.executeUpdate("CREATE DATABASE " + DBname);

		} catch (SQLException exc) {
			StringBuffer mensagem = new StringBuffer("Unable to create the database.");
			mensagem.append("\nMotivo: " + exc.getMessage());
			throw new MIRRORException(mensagem.toString());
		} finally {
			ConnectionManager.closeConnection(con);
		}

	}

	public void dropDatabaseFromSchema(Properties properties, String DBname) throws MIRRORException {
		Connection con = null;
		Statement stmt = null;

		VerboseMode.verbose("dropDatabaseFromSchema", VerboseMode.VERBOSE_SQL);

		try {
			con = ConnectionManager.manageConnection(database, properties);
			stmt = con.createStatement();
			stmt.executeUpdate("DROP DATABASE " + DBname);

		} catch (SQLException exc) {
			StringBuffer mensagem = new StringBuffer("Unable to delete the database.");
			mensagem.append("\nMotivo: " + exc.getMessage());
			throw new MIRRORException(mensagem.toString());
		} finally {
			ConnectionManager.closeConnection(con);
		}

	}

	public void useDatabase(Properties properties, String DBname) throws MIRRORException {
		Connection con = null;
		Statement stmt = null;

		VerboseMode.verbose("useDatabase", VerboseMode.VERBOSE_SQL);

		try {
			con = ConnectionManager.manageConnection(database, properties);
			stmt = con.createStatement();
			stmt.executeUpdate("USE " + DBname + ";");

		} catch (SQLException exc) {
			StringBuffer mensagem = new StringBuffer("Can't open the database.");
			mensagem.append("\nMotivo: " + exc.getMessage());
			throw new MIRRORException(mensagem.toString());
		} finally {
			ConnectionManager.closeConnection(con);
		}

	}

	public void generalCommand(Properties properties, String DBname, String command) throws MIRRORException {
		Connection con = null;
		Statement stmt = null;

		VerboseMode.verbose("generalCommand", VerboseMode.VERBOSE_SQL);

		try {
			con = ConnectionManager.getConnectionDB(database, DBname, properties);
			stmt = con.createStatement();
			stmt.executeUpdate("SET FOREIGN_KEY_CHECKS=0;");
			stmt.executeUpdate(command);

		} catch (SQLException exc) {
			StringBuffer mensagem = new StringBuffer("Unable to execute SQL general command.");
			mensagem.append("\nMotivo: " + exc.getMessage());
			throw new MIRRORException(mensagem.toString());
		} finally {
			ConnectionManager.closeConnection(con);
		}

	}

	public int getColumnsFromSQLQuery(Properties properties, String DBname, String query, ArrayList<String> columns, ArrayList<String> type, ArrayList<String> key) throws MIRRORException {

		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		ResultSetMetaData rsmd = null;

		VerboseMode.verbose("getColumnsFromSQLQuery", VerboseMode.VERBOSE_SQL);

		if(columns != null) columns.clear(); 
		if(type != null) type.clear(); 
		if(key != null) key.clear(); 
		int countColumns = 0;

		try {
			con = ConnectionManager.getConnectionDB(database, DBname, properties);
			//con = ConnectionManager.getConnectionDB(database, DBname, properties);

			stmt = con.createStatement();
			//stmt.executeUpdate("SET FOREIGN_KEY_CHECKS=0;");
			rs = stmt.executeQuery(query);
			rsmd = rs.getMetaData();
			countColumns = rsmd.getColumnCount();
			if(countColumns > 0) {
				for(int i=0; i < countColumns; i++) {
					//columns.add(rsmd.getColumnName(i+1));
					columns.add(rsmd.getColumnLabel(i+1));
					type.add(getSQLTypeName(rsmd.getColumnType(i+1)));
					key.add("");
				}
			}


		} catch (SQLException exc) {
			StringBuffer mensagem = new StringBuffer("Unable to execute SQL query");
			mensagem.append("\nMotivo: " + exc.getMessage());
			throw new MIRRORException(mensagem.toString());
		} finally {
			ConnectionManager.closeConnection(con);
		}

		return countColumns;
	}

	public void getSchemaRelationshipAll(Properties properties, ArrayList<String> arq1, ArrayList<String> arq2, ArrayList<String> arq3, ArrayList<String> arq4) throws MIRRORException {
		if((arq1 == null) ||
				(arq2 == null) || 
				(arq3 == null) || 
				(arq4 == null)) {
			String mensagem = "List for R2RML not passed.";
			throw new MIRRORException(mensagem);
		}
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;

		VerboseMode.verbose("getSchemaRelationshipAll", VerboseMode.VERBOSE_SQL);

		if(arq1 != null) arq1.clear(); 
		if(arq2 != null) arq2.clear();
		if(arq3 != null) arq3.clear();
		if(arq4 != null) arq3.clear();

		try {
			con = ConnectionManager.getConnection(database, properties);
			stmt = con.prepareStatement(SQL_GETSCHEMARELATIONSHIPALL);
			//stmt.setLong(1, id_disc);
			VerboseMode.verbose(stmt.toString(), VerboseMode.VERBOSE_SQL);
			rs = stmt.executeQuery();

			String n1, n2, n3, n4;

			if(rs != null) {
				while(rs.next()) {
					n1 = rs.getString("R1");
					//System.out.print(n1 + " ");
					VerboseMode.verbose(n1 + " ", VerboseMode.VERBOSE_SQL);
					n2 = rs.getString("FIELD");
					//System.out.print(n2 + " ");
					VerboseMode.verbose(n2 + " ", VerboseMode.VERBOSE_SQL);
					n3 = rs.getString("R2");
					//System.out.print(n3 + " ");
					VerboseMode.verbose(n3 + " ", VerboseMode.VERBOSE_SQL);
					n4 = rs.getString("NULLABLE");
					//System.out.println(n4 + " ");
					VerboseMode.verbose(n4 + " ", VerboseMode.VERBOSE_SQL);
					arq1.add(n1);
					arq2.add(n2);
					arq3.add(n3);
					arq4.add(n4);
				}
			}

		} catch (SQLException exc) {
			StringBuffer mensagem = new StringBuffer("Unable to query the general schema.");
			mensagem.append("\nMotivo: " + exc.getMessage());
			throw new MIRRORException(mensagem.toString());
		} finally {
			ConnectionManager.closeConnection(con, stmt, rs);
		}

	}
	public void getSchemaRelationshipDetail(Properties properties, ArrayList<String> arq1, ArrayList<String> arq2, ArrayList<String> arq3, ArrayList<String> arq4, String tablename) throws MIRRORException {

		if((arq1 == null) ||
				(arq2 == null) || 
				(arq3 == null) || 
				(arq4 == null)) {
			String mensagem = "Lists for R2RML not passed.";
			throw new MIRRORException(mensagem);
		}
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;

		VerboseMode.verbose("getSchemaRelationshipDetail", VerboseMode.VERBOSE_SQL);

		if(arq1 != null) arq1.clear(); 
		if(arq2 != null) arq2.clear();
		if(arq3 != null) arq3.clear();
		if(arq4 != null) arq3.clear();

		try {
			con = ConnectionManager.getConnection(database, properties);
			stmt = con.prepareStatement(SQL_GETSCHEMARELATIONSHIPDETAIL);
			stmt.setString(1, tablename);
			VerboseMode.verbose(stmt.toString(), VerboseMode.VERBOSE_SQL);
			rs = stmt.executeQuery();

			String n1, n2, n3, n4;

			if(rs != null) {
				while(rs.next()) {
					n1 = rs.getString("R1");
					//System.out.print(n1 + " ");
					VerboseMode.verbose(n1 + " ", VerboseMode.VERBOSE_SQL);
					n2 = rs.getString("FIELD");
					//System.out.print(n2 + " ");
					VerboseMode.verbose(n2 + " ", VerboseMode.VERBOSE_SQL);
					n3 = rs.getString("R2");
					//System.out.print(n3 + " ");
					VerboseMode.verbose(n3 + " ", VerboseMode.VERBOSE_SQL);
					n4 = rs.getString("NULLABLE");
					//System.out.println(n4 + " ");
					VerboseMode.verbose(n4 + " ", VerboseMode.VERBOSE_SQL);
					arq1.add(n1);
					arq2.add(n2);
					arq3.add(n3);
				}
			}

		} catch (SQLException exc) {
			StringBuffer mensagem = new StringBuffer("Unable to query the detailed schema.");
			mensagem.append("\nMotivo: " + exc.getMessage());
			throw new MIRRORException(mensagem.toString());
		} finally {
			ConnectionManager.closeConnection(con, stmt, rs);
		}
	}

	public void getSchemaRelationRightAll(Properties properties, ArrayList<String> arq1) throws MIRRORException {
		if((arq1 == null)) {
			String mensagem = "List for R2RML not passed.";
			throw new MIRRORException(mensagem);
		}
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;

		VerboseMode.verbose("getSchemaRelationRightAll", VerboseMode.VERBOSE_SQL);

		if(arq1 != null) arq1.clear(); 

		try {
			con = ConnectionManager.getConnection(database, properties);
			stmt = con.prepareStatement(SQL_GETSCHEMARELATIONRIGHTALL);
			//stmt.setString(1, tablename);
			VerboseMode.verbose(stmt.toString(), VerboseMode.VERBOSE_SQL);
			rs = stmt.executeQuery();

			String n1;

			if(rs != null) {
				while(rs.next()) {
					n1 = rs.getString("R2");
					//System.out.println(n1 + " ");
					VerboseMode.verbose(n1 + " ", VerboseMode.VERBOSE_SQL);
					arq1.add(n1);
				}
			}

		} catch (SQLException exc) {
			StringBuffer mensagem = new StringBuffer("Unable to query all right tables.");
			mensagem.append("\nMotivo: " + exc.getMessage());
			throw new MIRRORException(mensagem.toString());
		} finally {
			ConnectionManager.closeConnection(con, stmt, rs);
		}
	}

	public int getSchemaRelationLeftCount(Properties properties, String tablename) throws MIRRORException {
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;

		VerboseMode.verbose("getSchemaRelationLeftCount", VerboseMode.VERBOSE_SQL);

		int n1 = 0;

		try {
			con = ConnectionManager.getConnection(database, properties);
			stmt = con.prepareStatement(SQL_GETSCHEMARELATIONLEFTCOUNT);
			stmt.setString(1, tablename);
			VerboseMode.verbose(stmt.toString(), VerboseMode.VERBOSE_SQL);
			rs = stmt.executeQuery();


			if(rs != null) {
				while(rs.next()) {
					n1 = rs.getInt("N");
				}
			}

		} catch (SQLException exc) {
			StringBuffer mensagem = new StringBuffer("Unable to account the left tables.");
			mensagem.append("\nMotivo: " + exc.getMessage());
			throw new MIRRORException(mensagem.toString());
		} finally {
			ConnectionManager.closeConnection(con, stmt, rs);
		}
		return n1;

	}

	public void getSchemaRelationLeftDetail(Properties properties, ArrayList<String> arq1, String tablename) throws MIRRORException {
		if((arq1 == null)) {
			String mensagem = "List for R2RML not passed.";
			throw new MIRRORException(mensagem);
		}
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;

		VerboseMode.verbose("getSchemaRelationLeftDetail", VerboseMode.VERBOSE_SQL);

		if(arq1 != null) arq1.clear(); 

		try {
			con = ConnectionManager.getConnection(database, properties);
			stmt = con.prepareStatement(SQL_GETSCHEMARELATIONLEFTDETAIL);
			stmt.setString(1, tablename);
			VerboseMode.verbose(stmt.toString(), VerboseMode.VERBOSE_SQL);
			rs = stmt.executeQuery();

			String n1;

			if(rs != null) {
				while(rs.next()) {
					n1 = rs.getString("R1");
					//System.out.println(n1 + " ");
					VerboseMode.verbose(n1 + " ", VerboseMode.VERBOSE_SQL);
					arq1.add(n1);
				}
			}

		} catch (SQLException exc) {
			StringBuffer mensagem = new StringBuffer("Unable to query the left table detailed.");
			mensagem.append("\nMotivo: " + exc.getMessage());
			throw new MIRRORException(mensagem.toString());
		} finally {
			ConnectionManager.closeConnection(con, stmt, rs);
		}
	}

	public void getSchemaColumnsName(Properties properties, ArrayList<String> arq1, String tablename) throws MIRRORException {
		if((arq1 == null)) {
			String mensagem = "List for R2RML not passed.";
			throw new MIRRORException(mensagem);
		}
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;

		VerboseMode.verbose("getSchemaColumnsName", VerboseMode.VERBOSE_SQL);

		if(arq1 != null) arq1.clear(); 

		try {
			con = ConnectionManager.getConnection(database, properties);
			stmt = con.prepareStatement(SQL_GETSCHEMACOLUMNSNAME);
			stmt.setString(1, tablename);
			VerboseMode.verbose(stmt.toString(), VerboseMode.VERBOSE_SQL);
			rs = stmt.executeQuery();

			String n1;

			if(rs != null) {
				while(rs.next()) {
					n1 = rs.getString("C");
					//System.out.print(n1 + " ");
					VerboseMode.verbose(n1 + " ", VerboseMode.VERBOSE_SQL);
					arq1.add(n1);
				}
			}
			//System.out.println("");
			VerboseMode.verbose("", VerboseMode.VERBOSE_SQL);

		} catch (SQLException exc) {
			StringBuffer mensagem = new StringBuffer("Unable to query the columns of the specified table.");
			mensagem.append("\nMotivo: " + exc.getMessage());
			throw new MIRRORException(mensagem.toString());
		} finally {
			ConnectionManager.closeConnection(con, stmt, rs);
		}
	}

	public int getSchemaColumnsNameCount(Properties properties, String tablename) throws MIRRORException {
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;

		VerboseMode.verbose("getSchemaColumnsName", VerboseMode.VERBOSE_SQL);

		int n1 = 0;

		try {
			con = ConnectionManager.getConnection(database, properties);
			stmt = con.prepareStatement(SQL_GETSCHEMACOLUMNSNAMECOUNT);
			stmt.setString(1, tablename);
			VerboseMode.verbose(stmt.toString(), VerboseMode.VERBOSE_SQL);
			rs = stmt.executeQuery();


			if(rs != null) {
				while(rs.next()) {
					n1 = rs.getInt("N");
				}
			}

		} catch (SQLException exc) {
			StringBuffer mensagem = new StringBuffer("Unable to account table columns.");
			mensagem.append("\nMotivo: " + exc.getMessage());
			throw new MIRRORException(mensagem.toString());
		} finally {
			ConnectionManager.closeConnection(con, stmt, rs);
		}
		return n1;

	}


	public void getTablesFromSchema(Properties properties
			, List<String> listTableNames, List<String> listTableTypes
			, String schema) 
					throws MIRRORException {
		if((listTableNames == null) || (listTableTypes == null)) {
			String mensagem = "Lists for tables not informed.";
			throw new MIRRORException(mensagem);
		}
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;

		VerboseMode.verbose("getTablesFromSchema", VerboseMode.VERBOSE_SQL);

		if(listTableNames != null) listTableNames.clear(); 
		if(listTableTypes != null) listTableTypes.clear(); 

		try {
			con = ConnectionManager.getConnection(database, properties);
			stmt = con.prepareStatement(SQL_GETTABLESFROMSCHEMA[database]);
			stmt.setString(1, schema);
			VerboseMode.verbose(stmt.toString(), VerboseMode.VERBOSE_SQL);
			rs = stmt.executeQuery();

			String tableName, tableType;

			if(rs != null) {
				while(rs.next()) {
					tableName = rs.getString("TABLE_NAME");
					tableType = rs.getString("TABLE_TYPE");
					//System.out.print(n1 + " ");
					listTableNames.add(tableName);
					listTableTypes.add(tableType);
				}
			}
			//System.out.println("");

		} catch (SQLException exc) {
			StringBuffer mensagem = new StringBuffer("Can't query the tables from specified schema.");
			mensagem.append("\nReason: " + exc.getMessage());
			throw new MIRRORException(mensagem.toString());
		} finally {
			ConnectionManager.closeConnection(con, stmt, rs);
		}
	}

	public void getTablesViewsFromSchema(Properties properties, List<String> arq1
			, List<String> arq2, String schema, Map<String, String> mapTableTypes) 
					throws MIRRORException {
		if((arq1 == null) || (arq2 == null)) {
			String mensagem = "Lists for tables and views not informed.";
			throw new MIRRORException(mensagem);
		}
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;

		VerboseMode.verbose("getTablesViewsFromSchema", VerboseMode.VERBOSE_SQL);

		if(arq1 != null) arq1.clear(); 
		if(arq2 != null) arq2.clear(); 
		if(mapTableTypes != null) { mapTableTypes.clear();}

		try {
			con = ConnectionManager.getConnection(database, properties);
			String preparedStatementString = SQL_GETTABLESVIEWSFROMSCHEMA[database];
			stmt = con.prepareStatement(preparedStatementString);
			stmt.setString(1, schema);
			VerboseMode.verbose(stmt.toString(), VerboseMode.VERBOSE_SQL);
			rs = stmt.executeQuery();

			String tableName, tableType;

			if(rs != null) {
				while(rs.next()) {
					tableName = rs.getString("TABLE_NAME");
					tableType = rs.getString("TABLE_TYPE");
					//System.out.print(n1 + " ");
					arq1.add(tableName);
					arq2.add(tableType);
					mapTableTypes.put(tableName, tableType);
				}
			}
			//System.out.println("");

		} catch (SQLException exc) {
			StringBuffer mensagem = new StringBuffer("Can't query the tables from specified schema.");
			mensagem.append("\nReason: " + exc.getMessage());
			throw new MIRRORException(mensagem.toString());
		} finally {
			ConnectionManager.closeConnection(con, stmt, rs);
		}
	}

	public void getRelationshipsFromSchema(Properties properties
			, List<String> listColumnNames, List<String> listReferencedTableNames
			, String schema, String tablename) throws MIRRORException {
		if((listColumnNames == null) || (listReferencedTableNames == null)) {
			String mensagem = "List for relationships not informed.";
			throw new MIRRORException(mensagem);
		}
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;

		VerboseMode.verbose("getRelationshipsFromSchema", VerboseMode.VERBOSE_SQL);

		if(listColumnNames != null) listColumnNames.clear(); 
		if(listReferencedTableNames != null) listReferencedTableNames.clear(); 

		try {
			con = ConnectionManager.getConnection(database, properties);
			String preparedStatementString = SQL_GETRELATIONSHIPSFROMSCHEMA[database];
			stmt = con.prepareStatement(preparedStatementString);
			stmt.setString(1, schema);
			stmt.setString(2, tablename);
			VerboseMode.verbose(stmt.toString(), VerboseMode.VERBOSE_SQL);
			rs = stmt.executeQuery();

			String constaintName, referencedTableName;

			if(rs != null) {
				while(rs.next()) {
					constaintName = rs.getString("CONSTRAINT_NAME");
					referencedTableName = rs.getString("REFERENCED_TABLE_NAME");
					//System.out.print(n1 + " ");
					listColumnNames.add(constaintName);
					listReferencedTableNames.add(referencedTableName);
				}
			}
			//System.out.println("");

		} catch (SQLException exc) {
			StringBuffer mensagem = new StringBuffer("Can't query the relationships from specified schema and table.");
			mensagem.append("\nReason: " + exc.getMessage());
			throw new MIRRORException(mensagem.toString());
		} finally {
			ConnectionManager.closeConnection(con, stmt, rs);
		}
	}

	public void getKeysFromConstraint(Properties properties
			, List<String> listColumnNames
			, List<String> listReferencedTableNames
			, ArrayList<String> listReferencedColumnNames, String schema, String constraint) throws MIRRORException {
		if((listColumnNames == null) || (listReferencedTableNames == null)) {
			String mensagem = "List for keys or tables not informed.";
			throw new MIRRORException(mensagem);
		}
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;

		VerboseMode.verbose("getKeyFromConstraint", VerboseMode.VERBOSE_SQL);

		if(listColumnNames != null) listColumnNames.clear(); 
		if(listReferencedTableNames != null) listReferencedTableNames.clear(); 
		if(listReferencedColumnNames != null) listReferencedColumnNames.clear(); 

		try {
			con = ConnectionManager.getConnection(database, properties);
			stmt = con.prepareStatement(SQL_GETKEYSFROMCONSTRAINT[database]);
			stmt.setString(1, schema);
			stmt.setString(2, constraint);
			VerboseMode.verbose(stmt.toString(), VerboseMode.VERBOSE_SQL);
			rs = stmt.executeQuery();

			String columnName, referencedTableName, referencedColumnName;

			if(rs != null) {
				while(rs.next()) {
					columnName = rs.getString("COLUMN_NAME");
					referencedTableName = rs.getString("REFERENCED_TABLE_NAME");
					referencedColumnName = rs.getString("REFERENCED_COLUMN_NAME");
					//System.out.print(n1 + " ");
					listColumnNames.add(columnName);
					listReferencedTableNames.add(referencedTableName);
					listReferencedColumnNames.add(referencedColumnName);
				}
			}

		} catch (SQLException exc) {
			StringBuffer mensagem = new StringBuffer("Can't query the keys of relationships from specified constraint.");
			mensagem.append("\nReason: " + exc.getMessage());
			throw new MIRRORException(mensagem.toString());
		} finally {
			ConnectionManager.closeConnection(con, stmt, rs);
		}
	}

	public boolean hasPrimaryKey(Properties properties, String schema, String tablename, ArrayList<String> columns) throws MIRRORException {
		if((columns == null)) {
			String mensagem = "List for columns not passed.";
			throw new MIRRORException(mensagem);
		}
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;

		VerboseMode.verbose("hasPrimaryKey", VerboseMode.VERBOSE_SQL);

		boolean hasPK = false;
		if(columns != null) columns .clear(); 

		try {
			con = ConnectionManager.getConnection(database, properties);
			stmt = con.prepareStatement(SQL_GETCOLUMNSFROMTABLENAME[database]);
			stmt.setString(1, schema);
			stmt.setString(2, tablename);
			stmt.setString(3, schema);
			stmt.setString(4, tablename);
			VerboseMode.verbose(stmt.toString(), VerboseMode.VERBOSE_SQL);
			rs = stmt.executeQuery();

			String n1, n2;

			if(rs != null) {
				while(rs.next()) {
					n1 = rs.getString("COLUMN_NAME");
					n2 = rs.getString("COLUMN_KEY");
					if(n2.equals("PRI") || n2.contains("pkey")) {
						hasPK = true;
						columns.add(n1);
					}
				}
			}

		} catch (SQLException exc) {
			StringBuffer mensagem = new StringBuffer("Unable to find PK.");
			mensagem.append("\nReason: " + exc.getMessage());
			throw new MIRRORException(mensagem.toString());
		} finally {
			ConnectionManager.closeConnection(con, stmt, rs);
		}

		return(hasPK);
	}

	public boolean isPrimaryKey(Properties properties, String schema, String tablename, String column) throws MIRRORException {
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;

		VerboseMode.verbose("isPrimaryKey", VerboseMode.VERBOSE_SQL);

		boolean isPK = false;

		try {
			con = ConnectionManager.getConnection(database, properties);
			stmt = con.prepareStatement(SQL_GETCOLUMNSFROMTABLENAME[database]);
			stmt.setString(1, schema);
			stmt.setString(2, tablename);
			stmt.setString(3, schema);
			stmt.setString(4, tablename);
			VerboseMode.verbose(stmt.toString(), VerboseMode.VERBOSE_SQL);
			rs = stmt.executeQuery();

			String n1, n2;

			if(rs != null) {
				while(rs.next()) {
					n1 = rs.getString("COLUMN_NAME");
					if(n1.equals(column)) {
						n2 = rs.getString("COLUMN_KEY");
						if(n2 != null) {
							if(n2.equals("PRI") || n2.contains("pkey")) {
								isPK = true;
								break;
							}
						}
					}
				}
			}

		} catch (SQLException exc) {
			StringBuffer mensagem = new StringBuffer("Unable to ask if field is PK.");
			mensagem.append("\nReason: " + exc.getMessage());
			throw new MIRRORException(mensagem.toString());
		} finally {
			ConnectionManager.closeConnection(con, stmt, rs);
		}

		return(isPK);
	}

	public void getColumnsFromTableName(Properties properties
			, List<String> listColumnNames, List<String> listReferencedTableNames
			, List<String> listColumnKeys, String schema, String tablename) throws MIRRORException {
		if((listColumnNames == null) 
				|| (listReferencedTableNames == null)
				|| (listColumnKeys == null)
				) {
			String mensagem = "List for columns not informed.";
			throw new MIRRORException(mensagem);
		}
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;

		VerboseMode.verbose("getColumnsFromTableName", VerboseMode.VERBOSE_SQL);

		if(listColumnNames != null) listColumnNames.clear(); 
		if(listReferencedTableNames != null) listReferencedTableNames.clear(); 
		if(listColumnKeys != null) listColumnKeys.clear(); 

		try {
			con = ConnectionManager.getConnection(database, properties);
			stmt = con.prepareStatement(SQL_GETCOLUMNSFROMTABLENAME[database]);
			stmt.setString(1, schema);
			stmt.setString(2, tablename);
			if(database == DBTYPE_MYSQL) {
				stmt.setString(3, schema);
				stmt.setString(4, tablename);				
			}

			VerboseMode.verbose(stmt.toString(), VerboseMode.VERBOSE_SQL);
			rs = stmt.executeQuery();

			String columnName, datatype, columnKey;

			if(rs != null) {
				while(rs.next()) {
					columnName = rs.getString("COLUMN_NAME");
					datatype = rs.getString("DATA_TYPE");
					columnKey = rs.getString("COLUMN_KEY");
					if(columnKey != null) {
						if(columnKey.equals("PRI") || columnKey.contains("pkey")) {
							columnKey = "PRIMARY KEY";
						}
					}
					else
					{
						columnKey = "";
					}
					//System.out.print(n1 + " ");
					listColumnNames.add(columnName);
					listReferencedTableNames.add(datatype);
					listColumnKeys.add(columnKey);
				}
			}

		} catch (SQLException e) {
			StringBuffer mensagem = new StringBuffer("Can't query the columns from specified tablename.");
			mensagem.append("\nReason: " + e.getMessage());
			throw new MIRRORException(mensagem.toString(), e);
		} finally {
			ConnectionManager.closeConnection(con, stmt, rs);
		}
	}

	public void getColumnsFromTableNameMxN(Properties properties, ArrayList<String> arq1, ArrayList<String> arq2, ArrayList<String> arq3, String schema, String tablename) throws MIRRORException {
		if((arq1 == null) 
				|| (arq2 == null)
				|| (arq3 == null)
				) {
			String mensagem = "List for columns not informed.";
			throw new MIRRORException(mensagem);
		}
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;

		VerboseMode.verbose("getColumnsFromTableName", VerboseMode.VERBOSE_SQL);

		if(arq1 != null) arq1.clear(); 
		if(arq2 != null) arq2.clear(); 
		if(arq3 != null) arq3.clear(); 

		try {
			con = ConnectionManager.getConnection(database, properties);
			stmt = con.prepareStatement(SQL_GETCOLUMNSFROMTABLENAMEMXN[database]);
			stmt.setString(1, schema);
			stmt.setString(2, tablename);
			stmt.setString(3, schema);
			stmt.setString(4, tablename);
			VerboseMode.verbose(stmt.toString(), VerboseMode.VERBOSE_SQL);
			rs = stmt.executeQuery();

			String n1, n2, n3;

			if(rs != null) {
				while(rs.next()) {
					n1 = rs.getString("COLUMN_NAME");
					n2 = rs.getString("DATA_TYPE");
					n3 = rs.getString("COLUMN_KEY");
					if(n3 != null) {
						if(n3.equals("PRI") || n3.contains("pkey")) {
							n3 = "PRIMARY KEY";
						}
					}
					else
					{
						n3 = "";
					}
					//System.out.print(n1 + " ");
					arq1.add(n1);
					arq2.add(n2);
					arq3.add(n3);
				}
			}

		} catch (SQLException exc) {
			StringBuffer mensagem = new StringBuffer("Can't query the columns from specified tablename.");
			mensagem.append("\nReason: " + exc.getMessage());
			throw new MIRRORException(mensagem.toString());
		} finally {
			ConnectionManager.closeConnection(con, stmt, rs);
		}
	}

	public void getPKColumnsFromTableName(Properties properties, ArrayList<String> arq1, ArrayList<String> arq2, ArrayList<String> arq3, String schema, String tablename) throws MIRRORException {
		if((arq1 == null) 
				|| (arq2 == null)
				|| (arq3 == null)
				) {
			String mensagem = "List for columns not informed.";
			throw new MIRRORException(mensagem);
		}
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;

		VerboseMode.verbose("getPKColumnsFromTableName", VerboseMode.VERBOSE_SQL);

		if(arq1 != null) arq1.clear(); 
		if(arq2 != null) arq2.clear(); 
		if(arq3 != null) arq3.clear(); 

		try {
			con = ConnectionManager.getConnection(database, properties);
			stmt = con.prepareStatement(SQL_GETPKCOLUMNSFROMTABLENAME[database]);
			stmt.setString(1, schema);
			stmt.setString(2, tablename);
			VerboseMode.verbose(stmt.toString(), VerboseMode.VERBOSE_SQL);
			rs = stmt.executeQuery();

			String n1, n2, n3;

			if(rs != null) {
				while(rs.next()) {
					n1 = rs.getString("COLUMN_NAME");
					n2 = rs.getString("DATA_TYPE");
					n3 = rs.getString("COLUMN_KEY");
					if(n3 != null) {
						if(n3.equals("PRI") || n3.contains("pkey")) {
							n3 = "PRIMARY KEY";
						}
					}
					else
					{
						n3 = "";
					}
					//System.out.print(n1 + " ");
					arq1.add(n1);
					arq2.add(n2);
					arq3.add(n3);
				}
			}

		} catch (SQLException exc) {
			StringBuffer mensagem = new StringBuffer("Can't query the PK columns from such tablename.");
			mensagem.append("\nReason: " + exc.getMessage());
			throw new MIRRORException(mensagem.toString());
		} finally {
			ConnectionManager.closeConnection(con, stmt, rs);
		}
	}

	public void getRelationshipsFromSchemaAll(Properties properties, 
			ArrayList<String> arq1, 
			ArrayList<String> arq2, 
			ArrayList<String> arq3, 
			ArrayList<String> arq4, 
			ArrayList<String> arq5, String schema) throws MIRRORException {
		if((arq1 == null) 
				|| (arq2 == null)
				|| (arq3 == null)
				|| (arq4 == null)
				|| (arq5 == null)
				) {
			String mensagem = "Lists for relationships not informed.";
			throw new MIRRORException(mensagem);
		}
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;

		VerboseMode.verbose("getRelationshipsFromSchemaAll", VerboseMode.VERBOSE_SQL);

		if(arq1 != null) arq1.clear(); 
		if(arq2 != null) arq2.clear(); 
		if(arq3 != null) arq3.clear(); 
		if(arq4 != null) arq4.clear(); 
		if(arq5 != null) arq5.clear(); 

		try {
			con = ConnectionManager.getConnection(database, properties);
			stmt = con.prepareStatement(SQL_GETRELATIONSHIPSFROMSCHEMAALL[database]);
			stmt.setString(1, schema);
			VerboseMode.verbose(stmt.toString(), VerboseMode.VERBOSE_SQL);
			rs = stmt.executeQuery();

			String n1, n2, n3, n4, n5;

			if(rs != null) {
				while(rs.next()) {
					n1 = rs.getString("CONSTRAINT_NAME");
					n2 = rs.getString("REFERENCED_TABLE_NAME");
					n3 = rs.getString("REFERENCED_COLUMN_NAME");
					n4 = rs.getString("TABLE_NAME");
					n5 = rs.getString("COLUMN_NAME");
					//System.out.print(n1 + " ");
					arq1.add(n1);
					arq2.add(n2);
					arq3.add(n3);
					arq4.add(n4);
					arq5.add(n5);
				}
			}
			//System.out.println("");

		} catch (SQLException exc) {
			StringBuffer mensagem = new StringBuffer("Can't query the relationships from specified schema.");
			mensagem.append("\nReason: " + exc.getMessage());
			throw new MIRRORException(mensagem.toString());
		} finally {
			ConnectionManager.closeConnection(con, stmt, rs);
		}
	}

	public void getRightTablesFromSchemaAll(Properties properties
			, List<String> arq1, String schema) throws MIRRORException {
		if((arq1 == null)) {
			String mensagem = "List for right tables not informed.";
			throw new MIRRORException(mensagem);
		}
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;

		VerboseMode.verbose("getRightTableFromSchemaAll", VerboseMode.VERBOSE_SQL);

		if(arq1 != null) arq1.clear(); 

		try {
			con = ConnectionManager.getConnection(database, properties);
			stmt = con.prepareStatement(SQL_GETRIGHTTABLESFROMSCHEMAALL[database]);
			stmt.setString(1, schema);
			VerboseMode.verbose(stmt.toString(), VerboseMode.VERBOSE_SQL);
			rs = stmt.executeQuery();

			String n1;

			if(rs != null) {
				while(rs.next()) {
					n1 = rs.getString("TABLE_NAME");
					//System.out.print(n1 + " ");
					arq1.add(n1);
				}
			}
			//System.out.println("");

		} catch (SQLException exc) {
			StringBuffer mensagem = new StringBuffer("Can't query the all tables from specified schema.");
			mensagem.append("\nReason: " + exc.getMessage());
			throw new MIRRORException(mensagem.toString());
		} finally {
			ConnectionManager.closeConnection(con, stmt, rs);
		}
	}

	public int getRelationshipsFromRightTableCount(Properties properties, String schema, String tablename) throws MIRRORException {
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;

		VerboseMode.verbose("getRelationshipsFromRightTableCount", VerboseMode.VERBOSE_SQL);

		int n1 = 0;

		try {
			con = ConnectionManager.getConnection(database, properties);
			String preparedStatementString = SQL_GETRELATIONSHIPSFROMRIGHTTABLECOUNT[database];
			stmt = con.prepareStatement(preparedStatementString);
			stmt.setString(1, schema);
			stmt.setString(2, tablename);
			VerboseMode.verbose(stmt.toString(), VerboseMode.VERBOSE_SQL);
			rs = stmt.executeQuery();

			if(rs != null) {
				while(rs.next()) {
					n1 = rs.getInt("N");
				}
			}

		} catch (SQLException exc) {
			StringBuffer mensagem = new StringBuffer("Can't account the relationships from right table and schema.");
			mensagem.append("\nMotivo: " + exc.getMessage());
			throw new MIRRORException(mensagem.toString());
		} finally {
			ConnectionManager.closeConnection(con, stmt, rs);
		}
		return n1;

	}

	/* getRelationshipsFromTableDetailed */


	/* R1.TABLE_NAME 				= R1
	 * R1.COLUMN_NAME				= REF_FIELD
	 * R1.REFERENCED_TABLE_NAME		= R2
	 * R1.REFERENCED_COLUMN_NAME	= FIELD
	 * R2.IS_NULLABLE 				= NULLABLE 
	 * R1.CONSTRAINT_NAME			= C1 */
	public void getRelationshipsFromTableDetailed(Properties properties, 
			List<String> listParentTables, 
			List<String> listPK, 
			List<String> listChildTables, 
			List<String> listFK,
			List<String> listIsNullable,
			List<String> listConstraintNames,
			String schema,
			String tablename) throws MIRRORException {

		if((listParentTables == null) ||
				(listPK == null) || 
				(listChildTables == null) || 
				(listFK == null) ||
				(listIsNullable == null) ||
				(listConstraintNames == null) 
				) {
			String mensagem = "Lists for relationships fields not informed.";
			throw new MIRRORException(mensagem);
		}
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;

		VerboseMode.verbose("getRelationshipsFromTableDetailed", VerboseMode.VERBOSE_SQL);

		if(listParentTables != null) listParentTables.clear(); 
		if(listPK != null) listPK.clear();
		if(listChildTables != null) listChildTables.clear();
		if(listFK != null) listFK.clear();
		if(listIsNullable != null) listIsNullable.clear();
		if(listConstraintNames != null) listConstraintNames.clear();

		try {
			con = ConnectionManager.getConnection(database, properties);
			stmt = con.prepareStatement(SQL_GETRELATIONSHIPSFROMTABLEDETAILED[database]);
			stmt.setString(1, schema);
			stmt.setString(2, tablename);
			VerboseMode.verbose(stmt.toString(), VerboseMode.VERBOSE_SQL);
			rs = stmt.executeQuery();

			String n1, n2, n3, n4, n5, n6;

			if(rs != null) {
				while(rs.next()) {
					n1 = rs.getString("PARENT");
					VerboseMode.verbose(n1 + " ", VerboseMode.VERBOSE_SQL);
					n2 = rs.getString("PK");
					VerboseMode.verbose(n2 + " ", VerboseMode.VERBOSE_SQL);
					n3 = rs.getString("CHILD");
					VerboseMode.verbose(n3 + " ", VerboseMode.VERBOSE_SQL);
					n4 = rs.getString("FK");
					VerboseMode.verbose(n4 + " ", VerboseMode.VERBOSE_SQL);
					n5 = rs.getString("NULLABLE");
					VerboseMode.verbose(n5 + " ", VerboseMode.VERBOSE_SQL);
					n6 = rs.getString("CONSTRAINT_NAME");
					VerboseMode.verbose(n6 + " ", VerboseMode.VERBOSE_SQL);
					listParentTables.add(n1);
					listPK.add(n2);
					listChildTables.add(n3);
					listFK.add(n4);
					listIsNullable.add(n5);
					listConstraintNames.add(n6);
				}
			}

		} catch (SQLException exc) {
			StringBuffer mensagem = new StringBuffer("Can't query the detailed relationships from table and schema.");
			mensagem.append("\nReason: " + exc.getMessage());
			throw new MIRRORException(mensagem.toString());
		} finally {
			ConnectionManager.closeConnection(con, stmt, rs);
		}
	}

	public int getColumnsFromTableNameCount(Properties properties, String schema, String tablename) throws MIRRORException {
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;

		VerboseMode.verbose("getColumnsFromTableNameCount", VerboseMode.VERBOSE_SQL);

		int n1 = 0;

		try {
			con = ConnectionManager.getConnection(database, properties);
			stmt = con.prepareStatement(SQL_GETCOLUMNSFROMTABLENAMECOUNT[database]);
			stmt.setString(1, schema);
			stmt.setString(2, tablename);
			VerboseMode.verbose(stmt.toString(), VerboseMode.VERBOSE_SQL);
			rs = stmt.executeQuery();


			if(rs != null) {
				while(rs.next()) {
					n1 = rs.getInt("N");
				}
			}

		} catch (SQLException exc) {
			StringBuffer mensagem = new StringBuffer("Can't account the relationships from right table and schema.");
			mensagem.append("\nMotivo: " + exc.getMessage());
			throw new MIRRORException(mensagem.toString());
		} finally {
			ConnectionManager.closeConnection(con, stmt, rs);
		}
		return n1;

	}


	/* getConstraintsFromTableName */
	public void getConstraintsFromTableName(Properties properties
			, List<String> listColumnNames, List<String> listDataTypes
			, List<String> arq3, List<String> listReferencedColumnNames, String schema, String tablename) throws MIRRORException {

		if((listColumnNames == null) || (listDataTypes == null) || (arq3 == null)) {
			String mensagem = "Lists for constraints not informed.";
			throw new MIRRORException(mensagem);
		}
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;

		VerboseMode.verbose("getConstraintsFromTableName", VerboseMode.VERBOSE_SQL);

		if(listColumnNames != null) listColumnNames.clear(); 
		if(listDataTypes != null) listDataTypes.clear(); 
		if(listReferencedColumnNames != null) listReferencedColumnNames.clear(); 
		if(arq3 != null) arq3.clear(); 

		try {
			con = ConnectionManager.getConnection(database, properties);
			stmt = con.prepareStatement(SQL_GETCONSTRAINTSFROMTABLENAME[database]);
			stmt.setString(1, schema);
			stmt.setString(2, tablename);
			VerboseMode.verbose(stmt.toString(), VerboseMode.VERBOSE_SQL);
			rs = stmt.executeQuery();

			String n1, n2, n3, n4;

			if(rs != null) {
				while(rs.next()) {
					n1 = rs.getString("R1");
					n2 = rs.getString("R2");
					n3 = rs.getString("C1");
					n4 = rs.getString("CN1");
					listColumnNames.add(n1);
					listDataTypes.add(n2);
					listReferencedColumnNames.add(n4);
					arq3.add(n3);
				}
			}

		} catch (SQLException exc) {
			StringBuffer mensagem = new StringBuffer("Can't query the relationships from specified schema and table.");
			mensagem.append("\nReason: " + exc.getMessage());
			throw new MIRRORException(mensagem.toString());
		} finally {
			ConnectionManager.closeConnection(con, stmt, rs);
		}
	}

	private static String getSQLTypeName(int type) {
		switch (type) {
		case Types.BIT:
			return "BIT";
		case Types.TINYINT:
			return "TINYINT";
		case Types.SMALLINT:
			return "SMALLINT";
		case Types.INTEGER:
			return "INTEGER";
		case Types.BIGINT:
			return "BIGINT";
		case Types.FLOAT:
			return "FLOAT";
		case Types.REAL:
			return "REAL";
		case Types.DOUBLE:
			return "DOUBLE";
		case Types.NUMERIC:
			return "NUMERIC";
		case Types.DECIMAL:
			return "DECIMAL";
		case Types.CHAR:
			return "CHAR";
		case Types.VARCHAR:
			return "VARCHAR";
		case Types.LONGVARCHAR:
			return "LONGVARCHAR";
		case Types.DATE:
			return "DATE";
		case Types.TIME:
			return "TIME";
		case Types.TIMESTAMP:
			return "TIMESTAMP";
		case Types.BINARY:
			return "BINARY";
		case Types.VARBINARY:
			return "VARBINARY";
		case Types.LONGVARBINARY:
			return "LONGVARBINARY";
		case Types.NULL:
			return "NULL";
		case Types.OTHER:
			return "OTHER";
		case Types.JAVA_OBJECT:
			return "JAVA_OBJECT";
		case Types.DISTINCT:
			return "DISTINCT";
		case Types.STRUCT:
			return "STRUCT";
		case Types.ARRAY:
			return "ARRAY";
		case Types.BLOB:
			return "BLOB";
		case Types.CLOB:
			return "CLOB";
		case Types.REF:
			return "REF";
		case Types.DATALINK:
			return "DATALINK";
		case Types.BOOLEAN:
			return "BOOLEAN";
		case Types.ROWID:
			return "ROWID";
		case Types.NCHAR:
			return "NCHAR";
		case Types.NVARCHAR:
			return "NVARCHAR";
		case Types.LONGNVARCHAR:
			return "LONGNVARCHAR";
		case Types.NCLOB:
			return "NCLOB";
		case Types.SQLXML:
			return "SQLXML";
		}

		return "?";
	}

}
