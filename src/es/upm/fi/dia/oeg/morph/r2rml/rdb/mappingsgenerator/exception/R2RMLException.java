package es.upm.fi.dia.oeg.morph.r2rml.rdb.mappingsgenerator.exception;

public class R2RMLException extends Exception {
	
	private static final long serialVersionUID = 1L;
	
	/**
	 * @param message
	 */
	public R2RMLException(String message) {
		super(message);
		// TODO Auto-generated constructor stub
	}

	/**
	 * 
	 */
	public R2RMLException() {
		super("R2RML unknown error");
		// TODO Auto-generated constructor stub
	}
}
