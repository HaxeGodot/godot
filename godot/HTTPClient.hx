// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Hyper-text transfer protocol client (sometimes called "User Agent"). Used to make HTTP requests to download web content, upload files and other data or to communicate with various services, among other use cases. See the `godot.HTTPRequest` node for an higher-level alternative.

Note: This client only needs to connect to a host once (see `godot.HTTPClient.connectToHost`) to send multiple requests. Because of this, methods that take URLs usually take just the part after the host instead of the full URL, as the client is already connected to a host. See `godot.HTTPClient.request` for a full example and to get started.

A `godot.HTTPClient` should be reused between multiple requests or to connect to different hosts instead of creating one client per request. Supports SSL and SSL server certificate verification. HTTP status codes in the 2xx range indicate success, 3xx redirection (i.e. "try again, but over here"), 4xx something was wrong with the request, and 5xx something went wrong on the server's side.

For more information on HTTP, see https://developer.mozilla.org/en-US/docs/Web/HTTP (or read RFC 2616 to get it straight from the source: https://tools.ietf.org/html/rfc2616).

Note: When performing HTTP requests from a project exported to HTML5, keep in mind the remote server may not allow requests from foreign origins due to [https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS](CORS). If you host the server in question, you should modify its backend to allow requests from foreign origins by adding the `Access-Control-Allow-Origin: *` HTTP header.
**/
@:libType
@:csNative
@:native("Godot.HTTPClient")
@:autoBuild(godot.Godot.buildUserClass())
extern class HTTPClient extends godot.Reference {
	/**		
		The size of the buffer used and maximum bytes to read per iteration. See `godot.HTTPClient.readResponseBodyChunk`.
	**/
	@:native("ReadChunkSize")
	public var readChunkSize:Int;

	/**		
		The connection to use for this client.
	**/
	@:native("Connection")
	public var connection:godot.StreamPeer;

	/**		
		If `true`, execution will block until all data is read from the response.
	**/
	@:native("BlockingModeEnabled")
	public var blockingModeEnabled:Bool;

	@:native("new")
	public function new():Void;

	#if doc_gen
	/**		
		Connects to a host. This needs to be done before any requests are sent.
		
		The host should not have http:// prepended but will strip the protocol identifier if provided.
		
		If no `port` is specified (or `-1` is used), it is automatically set to 80 for HTTP and 443 for HTTPS (if `use_ssl` is enabled).
		
		`verify_host` will check the SSL identity of the host if set to `true`.
	**/
	@:native("ConnectToHost")
	public function connectToHost(host:std.String, ?port:Int, ?useSsl:Bool, ?verifyHost:Bool):godot.Error;
	#else
	/**		
		Connects to a host. This needs to be done before any requests are sent.
		
		The host should not have http:// prepended but will strip the protocol identifier if provided.
		
		If no `port` is specified (or `-1` is used), it is automatically set to 80 for HTTP and 443 for HTTPS (if `use_ssl` is enabled).
		
		`verify_host` will check the SSL identity of the host if set to `true`.
	**/
	@:native("ConnectToHost")
	public overload function connectToHost(host:std.String):godot.Error;

	/**		
		Connects to a host. This needs to be done before any requests are sent.
		
		The host should not have http:// prepended but will strip the protocol identifier if provided.
		
		If no `port` is specified (or `-1` is used), it is automatically set to 80 for HTTP and 443 for HTTPS (if `use_ssl` is enabled).
		
		`verify_host` will check the SSL identity of the host if set to `true`.
	**/
	@:native("ConnectToHost")
	public overload function connectToHost(host:std.String, port:Int):godot.Error;

	/**		
		Connects to a host. This needs to be done before any requests are sent.
		
		The host should not have http:// prepended but will strip the protocol identifier if provided.
		
		If no `port` is specified (or `-1` is used), it is automatically set to 80 for HTTP and 443 for HTTPS (if `use_ssl` is enabled).
		
		`verify_host` will check the SSL identity of the host if set to `true`.
	**/
	@:native("ConnectToHost")
	public overload function connectToHost(host:std.String, port:Int, useSsl:Bool):godot.Error;

	/**		
		Connects to a host. This needs to be done before any requests are sent.
		
		The host should not have http:// prepended but will strip the protocol identifier if provided.
		
		If no `port` is specified (or `-1` is used), it is automatically set to 80 for HTTP and 443 for HTTPS (if `use_ssl` is enabled).
		
		`verify_host` will check the SSL identity of the host if set to `true`.
	**/
	@:native("ConnectToHost")
	public overload function connectToHost(host:std.String, port:Int, useSsl:Bool, verifyHost:Bool):godot.Error;
	#end

	@:native("SetConnection")
	public function setConnection(connection:godot.StreamPeer):Void;

	@:native("GetConnection")
	public function getConnection():godot.StreamPeer;

	/**		
		Sends a raw request to the connected host. The URL parameter is just the part after the host, so for `http://somehost.com/index.php`, it is `index.php`.
		
		Headers are HTTP request headers. For available HTTP methods, see `godot.HTTPClient_Method`.
		
		Sends the body data raw, as a byte array and does not encode it in any way.
	**/
	@:native("RequestRaw")
	public function requestRaw(method:godot.HTTPClient_Method, url:std.String, headers:cs.NativeArray<std.String>, body:haxe.Rest<cs.types.UInt8>):godot.Error;

	#if doc_gen
	/**		
		Sends a request to the connected host. The URL parameter is just the part after the host, so for `http://somehost.com/index.php`, it is `index.php`.
		
		Headers are HTTP request headers. For available HTTP methods, see `godot.HTTPClient_Method`.
		
		To create a POST request with query strings to push to the server, do:
		
		```
		
		var fields = {"username" : "user", "password" : "pass"}
		var query_string = http_client.query_string_from_dict(fields)
		var headers = ["Content-Type: application/x-www-form-urlencoded", "Content-Length: " + str(query_string.length())]
		var result = http_client.request(http_client.METHOD_POST, "index.php", headers, query_string)
		
		```
		
		Note: The `request_data` parameter is ignored if `method` is . This is because GET methods can't contain request data. As a workaround, you can pass request data as a query string in the URL. See `String.http_escape` for an example.
	**/
	@:native("Request")
	public function request(method:godot.HTTPClient_Method, url:std.String, headers:cs.NativeArray<std.String>, ?body:std.String):godot.Error;
	#else
	/**		
		Sends a request to the connected host. The URL parameter is just the part after the host, so for `http://somehost.com/index.php`, it is `index.php`.
		
		Headers are HTTP request headers. For available HTTP methods, see `godot.HTTPClient_Method`.
		
		To create a POST request with query strings to push to the server, do:
		
		```
		
		var fields = {"username" : "user", "password" : "pass"}
		var query_string = http_client.query_string_from_dict(fields)
		var headers = ["Content-Type: application/x-www-form-urlencoded", "Content-Length: " + str(query_string.length())]
		var result = http_client.request(http_client.METHOD_POST, "index.php", headers, query_string)
		
		```
		
		Note: The `request_data` parameter is ignored if `method` is . This is because GET methods can't contain request data. As a workaround, you can pass request data as a query string in the URL. See `String.http_escape` for an example.
	**/
	@:native("Request")
	public overload function request(method:godot.HTTPClient_Method, url:std.String, headers:cs.NativeArray<std.String>):godot.Error;

	/**		
		Sends a request to the connected host. The URL parameter is just the part after the host, so for `http://somehost.com/index.php`, it is `index.php`.
		
		Headers are HTTP request headers. For available HTTP methods, see `godot.HTTPClient_Method`.
		
		To create a POST request with query strings to push to the server, do:
		
		```
		
		var fields = {"username" : "user", "password" : "pass"}
		var query_string = http_client.query_string_from_dict(fields)
		var headers = ["Content-Type: application/x-www-form-urlencoded", "Content-Length: " + str(query_string.length())]
		var result = http_client.request(http_client.METHOD_POST, "index.php", headers, query_string)
		
		```
		
		Note: The `request_data` parameter is ignored if `method` is . This is because GET methods can't contain request data. As a workaround, you can pass request data as a query string in the URL. See `String.http_escape` for an example.
	**/
	@:native("Request")
	public overload function request(method:godot.HTTPClient_Method, url:std.String, headers:cs.NativeArray<std.String>, body:std.String):godot.Error;
	#end

	/**		
		Closes the current connection, allowing reuse of this `godot.HTTPClient`.
	**/
	@:native("Close")
	public function close():Void;

	/**		
		If `true`, this `godot.HTTPClient` has a response available.
	**/
	@:native("HasResponse")
	public function hasResponse():Bool;

	/**		
		If `true`, this `godot.HTTPClient` has a response that is chunked.
	**/
	@:native("IsResponseChunked")
	public function isResponseChunked():Bool;

	/**		
		Returns the response's HTTP status code.
	**/
	@:native("GetResponseCode")
	public function getResponseCode():Int;

	/**		
		Returns the response headers.
	**/
	@:native("GetResponseHeaders")
	public function getResponseHeaders():cs.NativeArray<std.String>;

	/**		
		Returns all response headers as a Dictionary of structure `{ "key": "value1; value2" }` where the case-sensitivity of the keys and values is kept like the server delivers it. A value is a simple String, this string can have more than one value where "; " is used as separator.
		
		Example:
		
		```
		
		{
		"content-length": 12,
		"Content-Type": "application/json; charset=UTF-8",
		}
		
		```
	**/
	@:native("GetResponseHeadersAsDictionary")
	public function getResponseHeadersAsDictionary():godot.collections.Dictionary;

	/**		
		Returns the response's body length.
		
		Note: Some Web servers may not send a body length. In this case, the value returned will be `-1`. If using chunked transfer encoding, the body length will also be `-1`.
	**/
	@:native("GetResponseBodyLength")
	public function getResponseBodyLength():Int;

	/**		
		Reads one chunk from the response.
	**/
	@:native("ReadResponseBodyChunk")
	public function readResponseBodyChunk():cs.NativeArray<cs.types.UInt8>;

	@:native("SetReadChunkSize")
	public function setReadChunkSize(bytes:Int):Void;

	@:native("GetReadChunkSize")
	public function getReadChunkSize():Int;

	@:native("SetBlockingMode")
	public function setBlockingMode(enabled:Bool):Void;

	@:native("IsBlockingModeEnabled")
	public function isBlockingModeEnabled():Bool;

	/**		
		Returns a `godot.HTTPClient_Status` constant. Need to call `godot.HTTPClient.poll` in order to get status updates.
	**/
	@:native("GetStatus")
	public function getStatus():godot.HTTPClient_Status;

	/**		
		This needs to be called in order to have any request processed. Check results with `godot.HTTPClient.getStatus`.
	**/
	@:native("Poll")
	public function poll():godot.Error;

	/**		
		Generates a GET/POST application/x-www-form-urlencoded style query string from a provided dictionary, e.g.:
		
		```
		
		var fields = {"username": "user", "password": "pass"}
		var query_string = http_client.query_string_from_dict(fields)
		# Returns "username=user&amp;password=pass"
		
		```
		
		Furthermore, if a key has a `null` value, only the key itself is added, without equal sign and value. If the value is an array, for each value in it a pair with the same key is added.
		
		```
		
		var fields = {"single": 123, "not_valued": null, "multiple": [22, 33, 44]}
		var query_string = http_client.query_string_from_dict(fields)
		# Returns "single=123&amp;not_valued&amp;multiple=22&amp;multiple=33&amp;multiple=44"
		
		```
	**/
	@:native("QueryStringFromDict")
	public function queryStringFromDict(fields:godot.collections.Dictionary):std.String;
}
