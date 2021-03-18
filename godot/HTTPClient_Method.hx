// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.HTTPClient.Method")
@:csNative
extern enum HTTPClient_Method {
	/**		
		HTTP GET method. The GET method requests a representation of the specified resource. Requests using GET should only retrieve data.
	**/
	Get;

	/**		
		HTTP HEAD method. The HEAD method asks for a response identical to that of a GET request, but without the response body. This is useful to request metadata like HTTP headers or to check if a resource exists.
	**/
	Head;

	/**		
		HTTP POST method. The POST method is used to submit an entity to the specified resource, often causing a change in state or side effects on the server. This is often used for forms and submitting data or uploading files.
	**/
	Post;

	/**		
		HTTP PUT method. The PUT method asks to replace all current representations of the target resource with the request payload. (You can think of POST as "create or update" and PUT as "update", although many services tend to not make a clear distinction or change their meaning).
	**/
	Put;

	/**		
		HTTP DELETE method. The DELETE method requests to delete the specified resource.
	**/
	Delete;

	/**		
		HTTP OPTIONS method. The OPTIONS method asks for a description of the communication options for the target resource. Rarely used.
	**/
	Options;

	/**		
		HTTP TRACE method. The TRACE method performs a message loop-back test along the path to the target resource. Returns the entire HTTP request received in the response body. Rarely used.
	**/
	Trace;

	/**		
		HTTP CONNECT method. The CONNECT method establishes a tunnel to the server identified by the target resource. Rarely used.
	**/
	Connect;

	/**		
		HTTP PATCH method. The PATCH method is used to apply partial modifications to a resource.
	**/
	Patch;

	/**		
		Represents the size of the `godot.HTTPClient_Method` enum.
	**/
	Max;
}
