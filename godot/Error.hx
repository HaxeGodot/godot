// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.Error")
@:csNative
extern enum Error {
	/**		
		Methods that return `godot.Error` return  when no error occurred. Note that many functions don't return an error code but will print error messages to standard output.
		
		Since  has value 0, and all other failure codes are positive integers, it can also be used in boolean checks, e.g.:
		
		```
		
		var err = method_that_returns_error()
		if err != OK:
		print("Failure!")
		# Or, equivalent:
		if err:
		print("Still failing!")
		
		```
	**/
	Ok;

	/**		
		Generic error.
	**/
	Failed;

	/**		
		Unavailable error.
	**/
	Unavailable;

	/**		
		Unconfigured error.
	**/
	Unconfigured;

	/**		
		Unauthorized error.
	**/
	Unauthorized;

	/**		
		Parameter range error.
	**/
	ParameterRangeError;

	/**		
		Out of memory (OOM) error.
	**/
	OutOfMemory;

	/**		
		File: Not found error.
	**/
	FileNotFound;

	/**		
		File: Bad drive error.
	**/
	FileBadDrive;

	/**		
		File: Bad path error.
	**/
	FileBadPath;

	/**		
		File: No permission error.
	**/
	FileNoPermission;

	/**		
		File: Already in use error.
	**/
	FileAlreadyInUse;

	/**		
		File: Can't open error.
	**/
	FileCantOpen;

	/**		
		File: Can't write error.
	**/
	FileCantWrite;

	/**		
		File: Can't read error.
	**/
	FileCantRead;

	/**		
		File: Unrecognized error.
	**/
	FileUnrecognized;

	/**		
		File: Corrupt error.
	**/
	FileCorrupt;

	/**		
		File: Missing dependencies error.
	**/
	FileMissingDependencies;

	/**		
		File: End of file (EOF) error.
	**/
	FileEof;

	/**		
		Can't open error.
	**/
	CantOpen;

	/**		
		Can't create error.
	**/
	CantCreate;

	/**		
		Query failed error.
	**/
	QueryFailed;

	/**		
		Already in use error.
	**/
	AlreadyInUse;

	/**		
		Locked error.
	**/
	Locked;

	/**		
		Timeout error.
	**/
	Timeout;

	/**		
		Can't connect error.
	**/
	CantConnect;

	/**		
		Can't resolve error.
	**/
	CantResolve;

	/**		
		Connection error.
	**/
	ConnectionError;

	/**		
		Can't acquire resource error.
	**/
	CantAcquireResource;

	/**		
		Can't fork process error.
	**/
	CantFork;

	/**		
		Invalid data error.
	**/
	InvalidData;

	/**		
		Invalid parameter error.
	**/
	InvalidParameter;

	/**		
		Already exists error.
	**/
	AlreadyExists;

	/**		
		Does not exist error.
	**/
	DoesNotExist;

	/**		
		Database: Read error.
	**/
	DatabaseCantRead;

	/**		
		Database: Write error.
	**/
	DatabaseCantWrite;

	/**		
		Compilation failed error.
	**/
	CompilationFailed;

	/**		
		Method not found error.
	**/
	MethodNotFound;

	/**		
		Linking failed error.
	**/
	LinkFailed;

	/**		
		Script failed error.
	**/
	ScriptFailed;

	/**		
		Cycling link (import cycle) error.
	**/
	CyclicLink;

	/**		
		Invalid declaration error.
	**/
	InvalidDeclaration;

	/**		
		Duplicate symbol error.
	**/
	DuplicateSymbol;

	/**		
		Parse error.
	**/
	ParseError;

	/**		
		Busy error.
	**/
	Busy;

	/**		
		Skip error.
	**/
	Skip;

	/**		
		Help error.
	**/
	Help;

	/**		
		Bug error.
	**/
	Bug;

	/**		
		Printer on fire error. (This is an easter egg, no engine methods return this error code.)
	**/
	PrinterOnFire;
}
