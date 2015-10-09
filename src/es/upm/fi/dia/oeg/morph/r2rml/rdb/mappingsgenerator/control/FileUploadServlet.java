package es.upm.fi.dia.oeg.morph.r2rml.rdb.mappingsgenerator.control;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.nio.charset.Charset;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.Iterator;
import java.util.List;
import java.util.Scanner;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 * Servlet implementation class FileUploadServlet
 */
@WebServlet("/FileUploadServlet")
public class FileUploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private static final String UPLOAD_DIRECTORY = "C:\\Users\\Moser\\workspace\\R2RMLApp\\tmp";
	private static final int THRESHOLD_SIZE     = 1024 * 1024 * 3;  // 3MB
	private static final int MAX_FILE_SIZE      = 1024 * 1024 * 40; // 40MB
	private static final int MAX_REQUEST_SIZE   = 1024 * 1024 * 50; // 50MB

	R2RMLProcess p = new R2RMLProcess();
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String targetName = "";
		String prefix = "";
		String IRI = "";
		String owner = "";
		String targetSchema = "";

		
        // checks if the request actually contains upload file
        if (!ServletFileUpload.isMultipartContent(request)) {
            PrintWriter writer = response.getWriter();
            writer.println("Request does not contain upload data");
            writer.flush();
            return;
        }
        
        // configures upload settings
        DiskFileItemFactory factory = new DiskFileItemFactory();
        factory.setSizeThreshold(THRESHOLD_SIZE);
        factory.setRepository(new File(System.getProperty("java.io.tmpdir")));
         
        ServletFileUpload upload = new ServletFileUpload(factory);
        upload.setFileSizeMax(MAX_FILE_SIZE);
        upload.setSizeMax(MAX_REQUEST_SIZE);
         
        // constructs the directory path to store upload file
        String uploadPath = request.getServletContext().getAttribute("FILES_DIR")+File.separator;
        // creates the directory if it does not exist
        File uploadDir = new File(uploadPath);
        if (!uploadDir.exists()) {
            uploadDir.mkdir();
        }
        
        String fileName = "";
        String filePath = "";
        String fileNoExt  = "";
		String fileExt = "";
         
		PrintWriter out = response.getWriter();

        try {
            // parses the request's content to extract file data
            List formItems = upload.parseRequest(request);
            Iterator iter = formItems.iterator();
             
            // iterates over form's fields
            while (iter.hasNext()) {
                FileItem item = (FileItem) iter.next();
                // processes only fields that are not form fields
                if (!item.isFormField()) {
                    fileName = new File(item.getName()).getName();
                    filePath = uploadPath + fileName;
                    fileNoExt = fileName.substring(0, fileName.indexOf('.'));
                    File storeFile = new File(filePath);
                     
                    // saves the file on disk
                    item.write(storeFile);
                } else {
                	String fieldName = item.getFieldName();
                	String fieldValue = item.getString();
                	
                	if(fieldName.compareTo("target") == 0) {
                		targetName = fieldValue;
                	}
                  	if(fieldName.compareTo("prefix") == 0) {
                   		prefix = fieldValue;
                	}
                  	if(fieldName.compareTo("IRI") == 0) {
                   		IRI = fieldValue;
                	}
                  	if(fieldName.compareTo("owner") == 0) {
                   		owner = fieldValue;
                	}
                  	if(fieldName.compareTo("targetschema") == 0) {
                   		targetSchema = fieldValue;
                	}
                  	if(fieldName.compareTo("extension") == 0) {
                   		fileExt = fieldValue;
                	}
                  	if(fieldName.compareTo("compatible") == 0) {
                  		if(fieldValue.equals("W3C")) {
                  			p.compatible = p.COMPATIBLE_W3C;
                  		} else {
                  			p.compatible = p.COMPATIBLE_VIRTUOSO;
                  		}
                	}
                }
            }
            
    		p.driver = p.DB_MYSQL;
    		//p.database = p.DB_POSTGRESQL;
    		//p.database = p.DB_SQLSERVER;
    		//p.filename = uploadPath + fileNoExt+".n3";
    		p.outputFile = uploadPath + fileNoExt + fileExt;
    		p.filelog = uploadPath + fileNoExt+".log";
    		
    		p.schema = fileNoExt; //targetName;
    		p.prefix = prefix;
    		p.IRI = IRI;
    		p.owner = owner;
    		p.qualifier = targetSchema; // for R2RML upload in Virtuoso conductor
    		p.comments = true;

			//p.schemaContent = new Scanner( new File("C:\\Users\\Moser\\Downloads\\sti3_3.sql") ).useDelimiter("\\A").next();
			//p.schemaContent = new Scanner( new File(filePath) ).useDelimiter("\\A").next();
			
			byte[] encoded = Files.readAllBytes(Paths.get(filePath));
			p.schemaContent = new String(encoded, Charset.defaultCharset());
			  
			int len = p.schemaContent.length();
			System.out.println(p.schemaContent);

			System.out.println("-------------------");
			System.out.println("Starting process...");
			System.out.println("-------------------");
			p.R2RMLCreateSchema();
			p.R2RMLClearMap();
			p.R2RMLPreprocessing();
			p.R2RMLBuild();
			p.R2RMLPrint();
			System.out.println("-------------------");
			System.out.println("End of process.");
			System.out.println("-------------------");

            //request.setAttribute("message", "Process: " + fileNoExt);
            //request.setAttribute("link", p.filename);

			response.setContentType("text/html");

			out.write("<!DOCTYPE HTML>");
			out.write("<html lang=\"en\">");
			out.write("<head>");
			out.write("	<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">");
			out.write("	<title>R2RML Map Generator</title>");
			out.write("</head>");
			out.write("<body>");
			out.write("<header>");
			out.write("	<img src=\"header.jpg\">");
			out.write("	<h1 style=\"display:none\">R2RML Map Generator</h1>");
			out.write("</header>");
			out.write("Beta v0.3 - 09/11/2014<hr><br/>");
			// out.write("<html><head></head><body>");
            out.write("<strong>R2RML mapping created: </strong>"+fileNoExt);
            out.write("<br><br>");
            //out.write("<a href=\"FileUploadServlet?fileName="+fileNoExt+".n3\">Download "+fileNoExt+".n3</a>");
            out.write("<a href=\"FileUploadServlet?fileName="+fileNoExt+fileExt+"\">Download "+fileNoExt+fileExt+"</a>");
            out.write("<br><br>");
            out.write("<a href=\"FileUploadServlet?fileName="+fileNoExt+".log\">Download "+fileNoExt+".log</a>");
            out.write("<br><br>");
            out.write("<a href=\"javascript:history.back()\">Go to main page</a>");
            out.write("<br><br>");
            out.write("</body></html>");
        } catch (Exception ex) {
            //request.setAttribute("message", "There was an error: " + ex.getMessage());
            System.out.println("Mapping generation fail: "+ex.getMessage());

            out.write("<!DOCTYPE HTML>");
			out.write("<html lang=\"en\">");
			out.write("<head>");
			out.write("	<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\">");
			out.write("	<title>R2RML Map Generator</title>");
			out.write("</head>");
			out.write("<body>");
			out.write("<header>");
			out.write("	<img src=\"header.jpg\">");
			out.write("	<h1 style=\"display:none\">R2RML Map Generator</h1>");
			out.write("</header>");
			out.write("Beta v0.3 - 09/11/2014<hr><br/>");
			// out.write("<html><head></head><body>");
            out.write("<strong>Error in mapping creation: </strong>"+fileNoExt+"("+ex.getMessage()+")");
            out.write("<br><br>");
            if(!p.commandException.equals("")) {
                out.write("Please, check the syntax near of the SQL command:<br/><br/>");
                out.write("<font size=\"2\" color=\"#FF0000\">"+p.commandException+"</font>");
                out.write("<br><br>");
            }
            out.write("<a href=\"javascript:history.back()\">Go to main page</a>");
            out.write("<br><br>");
            out.write("</body></html>");
        }
        //getServletContext().getRequestDispatcher("/message.jsp").forward(request, response);
        try {
            p.R2RMLDropSchema();
        } catch (Exception ex) {
            System.out.println("No pode excluir database");
        }
        
	}
	
	  @Override
	  public void init() throws ServletException{
	        DiskFileItemFactory fileFactory = new DiskFileItemFactory();
	        File filesDir = (File) getServletContext().getAttribute("FILES_DIR_FILE");
	        fileFactory.setRepository(filesDir);
	  }

	  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        String fileName = request.getParameter("fileName");
	        if(fileName == null || fileName.equals("")){
	            throw new ServletException("File Name can't be null or empty");
	        }
	        File file = new File(request.getServletContext().getAttribute("FILES_DIR")+File.separator+fileName);
	        if(!file.exists()){
	            throw new ServletException("File doesn't exists on server.");
	        }
	        System.out.println("File location on server::"+file.getAbsolutePath());
	        ServletContext ctx = getServletContext();
	        InputStream fis = new FileInputStream(file);
	        String mimeType = ctx.getMimeType(file.getAbsolutePath());
	        response.setContentType(mimeType != null? mimeType:"application/octet-stream");
	        response.setContentLength((int) file.length());
	        response.setHeader("Content-Disposition", "attachment; filename=\"" + fileName + "\"");
	         
	        ServletOutputStream os = response.getOutputStream();
	        byte[] bufferData = new byte[1024];
	        int read=0;
	        while((read = fis.read(bufferData))!= -1){
	            os.write(bufferData, 0, read);
	        }
	        os.flush();
	        os.close();
	        fis.close();
	        System.out.println("File downloaded at client successfully");
	    }

}
