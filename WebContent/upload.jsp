<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!--  <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> -->
<!DOCTYPE HTML>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>R2RML Map Generator</title>
</head>
<body>
<header>
	<img src="header.jpg">
	<h1 style="display:none">R2RML Mapping Generator</h1>
</header>
	beta v0.3 - 09/11/2014<hr><br/> 
        <form method="post" action="FileUploadServlet" enctype="multipart/form-data">
            <div><strong>Select the DB schema file: </strong><input type="file" name="uploadFile" size="30" /><br/><br/></div><hr>
        <table>
            <tr><td colspan="2"><strong>MAPPING PARAMETERS:</strong>(details explained below)</td></tr>
            <tr><td colspan="2">&nbsp;</td></tr>
        	<tr>
        	<td>Target file name</td><td><input type="text" name="target" size="30" value="sti3" /></td>
        	<td>&nbsp;&nbsp;</td>
        	<td>File extension</td>
        	<td>
        	<input type="radio" name="extension" value=".ttl">.ttl
        	<input type="radio" name="extension" value=".n3" checked>.n3
        	</td>
        	</tr>
        	<tr>
        	<td>Prefix</td><td><input type="text" name="prefix" size="30" value="ex" /></td>
        	<td>&nbsp;&nbsp;</td>
        	<td>Compatibility</td>
        	<td>
        	<input type="radio" name="compatible" value="W3C">W3C
        	<input type="radio" name="compatible" value="Virtuoso" checked>OpenLink Virtuoso
        	</td>
        	</tr>
            <tr>
            <td>IRI</td><td><input type="text" name="IRI" size="30" value="http://example.com/ex#" /></td>
        	<td>&nbsp;&nbsp;</td>
            <td colspan="3"><input type="checkbox" name="logfile" value="logfile" checked>Create log file</td>
            </tr>
            <tr>
            <td>Table Owner</td><td><input type="text" name="owner" size="30" /></td>
        	<td>&nbsp;&nbsp;</td>
            <td colspan="3"><input type="checkbox" name="sparqlfile" value="sparqlfile" checked>Create SPARQL standard commands</td>
            </tr>
            <tr><td>Table Qualifier</td><td><input type="text" name="targetschema" size="30" /></td></tr>
            <tr><td colspan="2">&nbsp;</td></tr>
            <tr><td><input type="submit" value="Generate" /></td><td>&nbsp;</td></tr>
            </table>
        </form>
        <br/><hr>
        <article>
        <h1>Guidelines</h1>
        <h3>Introduction</h3>
        The R2RML Mapping Generator is an experimental tool that uses database schemas as input, having SQL-DDL commands for creation of a R2RML triples map file,
        which can be used in mapping databases records to RDF triples, turning them available in a triple store.<br/><br/>
        This tool processes the information present in the DB schema, as well as the relationships between tables, needed 
        to create triples maps having 1-N or M-N relationships. A preprocessing step is done at the start, in order to identify how the tables are 
        structured and connected, saving it in a log file.<br/><br/>
        In this experimental version, the internal database schema is created from the uploaded file into a MySQL server. So, it's highly recommended that the schema file must 
        be properly written in MySQL DDL syntax.<br/><br/>       
        R2RML Mapping Generator is compliant with W3C Recommendation of dec 27, 2012, <a href="http://www.w3.org/TR/r2rml/" target="_blank">R2RML: RDB to RDF Mapping Language</a>.
        This kind of mapping is known as a <a href="http://www.w3.org/TR/r2rml/#dfn-default-mapping">default mapping</a>. Then, the generator is
        a facility that introspects the schema of the input database, generating a R2RML mapping. See item <a href="http://www.w3.org/TR/r2rml/#dfn-r2rml-processor">4.4</a> for more information.<br/><br/>   
        This generator has some specific features to use with linked data at <a href="http://virtuoso.openlinksw.com/" target="_blank">OpenLink Virtuoso</a>.
        <br/><br/>  
        </article>
        <hr>
        <article>
        <h3>Schema File</h3>
        The schema file to be uploaded must contains only CREATE TABLE and ALTER TABLE commands, MySQL 5.5 (or upper) compatible, needed for building the tables and foreign keys. Each 
        command must be properly separated by ";". Other kind of SQL command will be ignored. If any command has syntax errors in your content, an exception page will be presented.    
        </article>
        <br/>
        <hr>
        <article>
        <h3>Parameters</h3>
        <aside>Target File Name</aside>
        <aside>Prefix</aside>
        <aside>IRI</aside>
        <aside>Table Owner</aside>
        <aside>Table Qualifier</aside>
        <aside>File Extension</aside>
        </article>
        <br/>
        <hr>
        <article>
        <h3>R2RML W3C Compatibility</h3>
        The following R2RML classes are implemented in this generator:
        <ul>
        <li>rr:TriplesMap
        <li>rr:LogicalTable
        <li>rr:TermMap
        <ul>
        <li>rr:SubjectMap
        <li>rr:PredicateMap
        <li>rr:ObjectMap
        </ul>
        <li>rr:PredicateObjectMap
        <li>rr:RefObjectMap
        <li>rr:Join
        </ul>
        The following R2RML classes are not implemented in this generator:
        <ul>
        <li>rr:GraphMap
        <li>rr:sqlQuery
        <li>rr:R2RMLView
        <li>rr:BaseTableOrView
        </ul>
        </article>
        <br/>
        <hr>
        <i>Page maintained by </i><br/>
        <i>Copyright 2013-2014 by XXX. All rights reserved.</i>

</body>
</html>