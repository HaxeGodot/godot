// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
[https://www.jsonrpc.org/](JSON-RPC) is a standard which wraps a method call in a `godot.JSON` object. The object has a particular structure and identifies which method is called, the parameters to that function, and carries an ID to keep track of responses. This class implements that standard on top of `godot.Collections_Dictionary`; you will have to convert between a `godot.Collections_Dictionary` and `godot.JSON` with other functions.
**/
@:libType
@:csNative
@:native("Godot.JSONRPC")
@:autoBuild(godot.Godot.buildUserClass())
extern class JSONRPC extends godot.Object {
	@:native("new")
	public function new():Void;

	@:native("SetScope")
	public function setScope(scope:std.String, target:godot.Object):Void;

	#if doc_gen
	/**		
		Given a Dictionary which takes the form of a JSON-RPC request: unpack the request and run it. Methods are resolved by looking at the field called "method" and looking for an equivalently named function in the JSONRPC object. If one is found that method is called.
		
		To add new supported methods extend the JSONRPC class and call `godot.JSONRPC.processAction` on your subclass.
		
		`action`: The action to be run, as a Dictionary in the form of a JSON-RPC request or notification.
	**/
	@:native("ProcessAction")
	public function processAction(action:Dynamic, ?recurse:Bool):Dynamic;
	#else
	/**		
		Given a Dictionary which takes the form of a JSON-RPC request: unpack the request and run it. Methods are resolved by looking at the field called "method" and looking for an equivalently named function in the JSONRPC object. If one is found that method is called.
		
		To add new supported methods extend the JSONRPC class and call `godot.JSONRPC.processAction` on your subclass.
		
		`action`: The action to be run, as a Dictionary in the form of a JSON-RPC request or notification.
	**/
	@:native("ProcessAction")
	public overload function processAction(action:Dynamic):Dynamic;

	/**		
		Given a Dictionary which takes the form of a JSON-RPC request: unpack the request and run it. Methods are resolved by looking at the field called "method" and looking for an equivalently named function in the JSONRPC object. If one is found that method is called.
		
		To add new supported methods extend the JSONRPC class and call `godot.JSONRPC.processAction` on your subclass.
		
		`action`: The action to be run, as a Dictionary in the form of a JSON-RPC request or notification.
	**/
	@:native("ProcessAction")
	public overload function processAction(action:Dynamic, recurse:Bool):Dynamic;
	#end

	@:native("ProcessString")
	public function processString(action:std.String):std.String;

	/**		
		Returns a dictionary in the form of a JSON-RPC request. Requests are sent to a server with the expectation of a response. The ID field is used for the server to specify which exact request it is responding to.
		
		- `method`: Name of the method being called.
		
		- `params`: An array or dictionary of parameters being passed to the method.
		
		- `id`: Uniquely identifies this request. The server is expected to send a response with the same ID.
	**/
	@:native("MakeRequest")
	public function makeRequest(method:std.String, params:Dynamic, id:Dynamic):godot.collections.Dictionary;

	/**		
		When a server has received and processed a request, it is expected to send a response. If you did not want a response then you need to have sent a Notification instead.
		
		- `result`: The return value of the function which was called.
		
		- `id`: The ID of the request this response is targeted to.
	**/
	@:native("MakeResponse")
	public function makeResponse(result:Dynamic, id:Dynamic):godot.collections.Dictionary;

	/**		
		Returns a dictionary in the form of a JSON-RPC notification. Notifications are one-shot messages which do not expect a response.
		
		- `method`: Name of the method being called.
		
		- `params`: An array or dictionary of parameters being passed to the method.
	**/
	@:native("MakeNotification")
	public function makeNotification(method:std.String, params:Dynamic):godot.collections.Dictionary;

	#if doc_gen
	/**		
		Creates a response which indicates a previous reply has failed in some way.
		
		- `code`: The error code corresponding to what kind of error this is. See the `godot.JSONRPC_ErrorCode` constants.
		
		- `message`: A custom message about this error.
		
		- `id`: The request this error is a response to.
	**/
	@:native("MakeResponseError")
	public function makeResponseError(code:Int, message:std.String, ?id:Dynamic):godot.collections.Dictionary;
	#else
	/**		
		Creates a response which indicates a previous reply has failed in some way.
		
		- `code`: The error code corresponding to what kind of error this is. See the `godot.JSONRPC_ErrorCode` constants.
		
		- `message`: A custom message about this error.
		
		- `id`: The request this error is a response to.
	**/
	@:native("MakeResponseError")
	public overload function makeResponseError(code:Int, message:std.String):godot.collections.Dictionary;

	/**		
		Creates a response which indicates a previous reply has failed in some way.
		
		- `code`: The error code corresponding to what kind of error this is. See the `godot.JSONRPC_ErrorCode` constants.
		
		- `message`: A custom message about this error.
		
		- `id`: The request this error is a response to.
	**/
	@:native("MakeResponseError")
	public overload function makeResponseError(code:Int, message:std.String, id:Dynamic):godot.collections.Dictionary;
	#end
}
