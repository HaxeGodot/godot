// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.JSONRPC.ErrorCode")
@:csNative
extern enum JSONRPC_ErrorCode {
	ParseError;

	InternalError;

	InvalidParams;

	/**		
		A method call was requested but no function of that name existed in the JSONRPC subclass.
	**/
	MethodNotFound;

	InvalidRequest;
}
