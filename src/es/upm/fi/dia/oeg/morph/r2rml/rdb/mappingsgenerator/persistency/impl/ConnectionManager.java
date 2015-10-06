package es.upm.fi.dia.oeg.morph.r2rml.rdb.mappingsgenerator.persistency.impl;


import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import es.upm.fi.dia.oeg.morph.r2rml.rdb.mappingsgenerator.exception.MIRRORException;

/**
 *
 * @author XP
 */
public class ConnectionManager {

	private static String driver;
	private static String url;
	private static String database;
	private static String usuario;
	private static String senha;
	private static String characterencoding;
	//private static Connection cachedConnection = null;


	public static void init(int DBindex, Properties properties) throws MIRRORException {
		try {
			//if(DBindex == 0) {
			//arquivoDePropriedades = new FileInputStream("C:\\Users\\Moser\\workspace\\R2RMLApp\\mysql.cfg");
			//arquivoDePropriedades = new FileInputStream(fileProperties);
			//} 
			//else if(DBindex == 1) {
			//	arquivoDePropriedades = new FileInputStream("C:\\Users\\Moser\\workspace\\R2RMLApp\\postgresql.cfg");
			//}
			//else if(DBindex == 2) {
			//	arquivoDePropriedades = new FileInputStream("C:\\Users\\Moser\\workspace\\R2RMLApp\\sqlserver.cfg");
			//}
			driver = properties.getProperty("jdbc.driver");
			if(driver == null) { driver = properties.getProperty("database.driver[0]"); }

			url = properties.getProperty("jdbc.url");
			if(url == null) { url = properties.getProperty("database.url[0]"); }

			database = properties.getProperty("jdbc.database");
			if(database == null) { database = properties.getProperty("database.name[0]"); }

			usuario = properties.getProperty("jdbc.username");
			if(usuario == null) { usuario = properties.getProperty("database.user[0]"); }

			senha = properties.getProperty("jdbc.password");
			if(senha == null) { senha = properties.getProperty("database.pwd[0]"); }

			characterencoding = properties.getProperty("jdbc.characterencoding");
			if(characterencoding == null) { characterencoding = "UTF-8"; }

			Class.forName(driver);
		} catch(ClassNotFoundException exc) {
			exc.printStackTrace();
			StringBuffer mensagem = new StringBuffer("Não foi possível conectar com banco de dados");
			mensagem.append("\nMotivo: " + exc.getMessage());
			throw new MIRRORException(mensagem.toString());
		}

	}

	public static Connection manageConnection(int DBindex, Properties properties) throws MIRRORException {
		try {
			init(DBindex, properties);

			if(DBindex != 2)
				return DriverManager.getConnection(url, usuario, senha);
			else
				return DriverManager.getConnection(url);

		} catch (SQLException exc) {
			StringBuffer mensagem = new StringBuffer("Não foi possível estabelecer conexão para criação de BD");
			mensagem.append("\nMotivo: " + exc.getMessage());
			throw new MIRRORException(mensagem.toString());
		}
	}



	public static Connection getConnection(int DBindex, Properties properties) throws MIRRORException {
		Connection connection = null;
		try {
			init(DBindex, properties);
			String[] urlSplit = url.split("/");
			String dbNameInferred = urlSplit[urlSplit.length-1]; 
			String fullURL = url;
			if(database.equals(dbNameInferred)) {
				fullURL = url;
			}
			else { 
				if(url.endsWith("/")) { fullURL = url + database; } 
				else { fullURL = url + "/" + database;}
			}

			Properties props = new Properties();
			props.put("user", usuario);
			props.put("password", senha);
			props.put("characterEncoding", characterencoding);
			props.put("characterSetResults", "UTF-8");
			props.put("useUnicode", "yes");

			if(DBindex != 2) {
				//               return DriverManager.getConnection(fullURL, usuario, senha);
				connection= DriverManager.getConnection(fullURL, props);	            	
			}
			else {
				connection = DriverManager.getConnection(fullURL);
			}
			return connection;
		} catch (SQLException exc) {
			StringBuffer mensagem = new StringBuffer("Didn't possible to establish connection!");
			mensagem.append("\nError Message: " + exc.getMessage());
			throw new MIRRORException(mensagem.toString());
		}


}

public static Connection getConnectionDB(int DBindex, String DBname, Properties properties) throws MIRRORException {
		Connection connection = null;
		try {
			init(DBindex, properties);
			String[] urlSplit = url.split("/");
			String dbNameInferred = urlSplit[urlSplit.length-1]; 
			String fullURL = url;
			if(DBname.equals(dbNameInferred)) {
				fullURL = url;
			}
			else { 
				if(url.endsWith("/")) { fullURL = url + database; } 
				else { fullURL = url + "/" + database;}
			}

			if(DBindex != 2) {
				connection = DriverManager.getConnection(fullURL, usuario, senha);
			}
			else {
				connection = DriverManager.getConnection(fullURL);
			}
			
			return connection;
		} catch (SQLException exc) {
			StringBuffer mensagem = new StringBuffer("Não foi possível estabelecer conexão nomeada com banco de dados");
			mensagem.append("\nMotivo: " + exc.getMessage());
			throw new MIRRORException(mensagem.toString());
		}

}


public static void closeConnection(Connection con) throws MIRRORException {
	closeConnection(con, null, null);
}

public static void closeConnection(Connection con, PreparedStatement stmt) throws MIRRORException {
	closeConnection(con, stmt, null);
}

public static void closeConnection(Connection con, PreparedStatement stmt, ResultSet rs) throws MIRRORException {
	try {
		if (rs != null){
			rs.close();
		}

		if (stmt != null){
			stmt.close();
		}

		if (con != null){
			con.close();
		}
		
		//System.out.println("Connection closed");
	} catch(SQLException exc){
		StringBuffer mensagem = new StringBuffer("Não foi possível finalizar a conexão com banco de dados");
		mensagem.append("\nMotivo: " + exc.getMessage());
		throw new MIRRORException(mensagem.toString());
	}
}

}
