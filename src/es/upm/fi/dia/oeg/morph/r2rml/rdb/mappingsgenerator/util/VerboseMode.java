package es.upm.fi.dia.oeg.morph.r2rml.rdb.mappingsgenerator.util;

public class VerboseMode {

	// Comandos verbose para server
	public static final byte VERBOSE_NONE = 0;
	public static final byte VERBOSE_COMMAND = 1;
	public static final byte VERBOSE_TEXT = 2;
	public static final byte VERBOSE_SQL = 4;

	public static byte verbose_mode = VERBOSE_TEXT;

	public VerboseMode() {

	}
	
	public static final void verbose(String message, byte vm) {

		if((verbose_mode & VERBOSE_COMMAND) == vm) {
			System.out.println("C: " + message);
		}
		if((verbose_mode & VERBOSE_TEXT) == vm) {
			System.out.println("" + message);
		}
		if((verbose_mode & VERBOSE_SQL) == vm) {
			System.out.println("SQL: " + message);
		}
	}
	
	public static final void verbose(int message, byte vm) {
		verbose(String.valueOf(message), vm);
	}

	public static final void verbose(Object message, byte vm) {
		verbose(String.valueOf(message), vm);
	}
	
	
}
