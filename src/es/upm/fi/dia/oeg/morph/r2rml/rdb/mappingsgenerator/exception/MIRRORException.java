package es.upm.fi.dia.oeg.morph.r2rml.rdb.mappingsgenerator.exception;

public class MIRRORException extends Exception {
	
	private static final long serialVersionUID = 1L;
	
	public MIRRORException(String arg0, Throwable arg1) {
		super(arg0, arg1);
		// TODO Auto-generated constructor stub
	}

	/**
	 * @param message
	 */
	public MIRRORException(String message) {
		super(message);
		// TODO Auto-generated constructor stub
	}

	/**
	 * 
	 */
	public MIRRORException() {
		super("R2RML unknown error");
		// TODO Auto-generated constructor stub
	}
}
