// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
A node with the ability to send HTTP requests. Uses `godot.HTTPClient` internally.

Can be used to make HTTP requests, i.e. download or upload files or web content via HTTP.

Example of contacting a REST API and printing one of its returned fields:

```

func _ready():
# Create an HTTP request node and connect its completion signal.
var http_request = HTTPRequest.new()
add_child(http_request)
http_request.connect("request_completed", self, "_http_request_completed")

# Perform a GET request. The URL below returns JSON as of writing.
var error = http_request.request("https://httpbin.org/get")
if error != OK:
push_error("An error occurred in the HTTP request.")

# Perform a POST request. The URL below returns JSON as of writing.
# Note: Don't make simultaneous requests using a single HTTPRequest node.
# The snippet below is provided for reference only.
var body = {"name": "Godette"}
var error = http_request.request("https://httpbin.org/post", [], true, HTTPClient.METHOD_POST, body)
if error != OK:
push_error("An error occurred in the HTTP request.")

# Called when the HTTP request is completed.
func _http_request_completed(result, response_code, headers, body):
var response = parse_json(body.get_string_from_utf8())

# Will print the user agent string used by the HTTPRequest node (as recognized by httpbin.org).
print(response.headers["User-Agent"])

```

Example of loading and displaying an image using HTTPRequest:

```

func _ready():
# Create an HTTP request node and connect its completion signal.
var http_request = HTTPRequest.new()
add_child(http_request)
http_request.connect("request_completed", self, "_http_request_completed")

# Perform the HTTP request. The URL below returns a PNG image as of writing.
var error = http_request.request("https://via.placeholder.com/512")
if error != OK:
push_error("An error occurred in the HTTP request.")

# Called when the HTTP request is completed.
func _http_request_completed(result, response_code, headers, body):
var image = Image.new()
var error = image.load_png_from_buffer(body)
if error != OK:
push_error("Couldn't load the image.")

var texture = ImageTexture.new()
texture.create_from_image(image)

# Display the image in a TextureRect node.
var texture_rect = TextureRect.new()
add_child(texture_rect)
texture_rect.texture = texture

```

Note: When performing HTTP requests from a project exported to HTML5, keep in mind the remote server may not allow requests from foreign origins due to [https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS](CORS). If you host the server in question, you should modify its backend to allow requests from foreign origins by adding the `Access-Control-Allow-Origin: *` HTTP header.
**/
@:libType
@:csNative
@:native("Godot.HTTPRequest")
@:autoBuild(godot.Godot.buildUserClass())
extern class HTTPRequest extends godot.Node {
	@:native("Timeout")
	public var timeout:Int;

	/**		
		Maximum number of allowed redirects.
	**/
	@:native("MaxRedirects")
	public var maxRedirects:Int;

	/**		
		Maximum allowed size for response bodies.
	**/
	@:native("BodySizeLimit")
	public var bodySizeLimit:Int;

	/**		
		If `true`, multithreading is used to improve performance.
	**/
	@:native("UseThreads")
	public var useThreads:Bool;

	/**		
		The size of the buffer used and maximum bytes to read per iteration. See `godot.HTTPClient.readChunkSize`.
		
		Set this to a higher value (e.g. 65536 for 64 KiB) when downloading large files to achieve better speeds at the cost of memory.
	**/
	@:native("DownloadChunkSize")
	public var downloadChunkSize:Int;

	/**		
		The file to download into. Will output any received file into it.
	**/
	@:native("DownloadFile")
	public var downloadFile:std.String;

	@:native("new")
	public function new():Void;

	#if doc_gen
	/**		
		Creates request on the underlying `godot.HTTPClient`. If there is no configuration errors, it tries to connect using `godot.HTTPClient.connectToHost` and passes parameters onto `godot.HTTPClient.request`.
		
		Returns  if request is successfully created. (Does not imply that the server has responded),  if not in the tree,  if still processing previous request,  if given string is not a valid URL format, or  if not using thread and the `godot.HTTPClient` cannot connect to host.
		
		Note: The `request_data` parameter is ignored if `method` is . This is because GET methods can't contain request data. As a workaround, you can pass request data as a query string in the URL. See `String.http_escape` for an example.
		
		@param customHeaders If the parameter is null, then the default value is new string[] {}
	**/
	@:native("Request")
	public function request(url:std.String, ?customHeaders:cs.NativeArray<std.String>, ?sslValidateDomain:Bool, ?method:godot.HTTPClient_Method, ?requestData:std.String):godot.Error;
	#else
	/**		
		Creates request on the underlying `godot.HTTPClient`. If there is no configuration errors, it tries to connect using `godot.HTTPClient.connectToHost` and passes parameters onto `godot.HTTPClient.request`.
		
		Returns  if request is successfully created. (Does not imply that the server has responded),  if not in the tree,  if still processing previous request,  if given string is not a valid URL format, or  if not using thread and the `godot.HTTPClient` cannot connect to host.
		
		Note: The `request_data` parameter is ignored if `method` is . This is because GET methods can't contain request data. As a workaround, you can pass request data as a query string in the URL. See `String.http_escape` for an example.
		
		@param customHeaders If the parameter is null, then the default value is new string[] {}
	**/
	@:native("Request")
	public overload function request(url:std.String):godot.Error;

	/**		
		Creates request on the underlying `godot.HTTPClient`. If there is no configuration errors, it tries to connect using `godot.HTTPClient.connectToHost` and passes parameters onto `godot.HTTPClient.request`.
		
		Returns  if request is successfully created. (Does not imply that the server has responded),  if not in the tree,  if still processing previous request,  if given string is not a valid URL format, or  if not using thread and the `godot.HTTPClient` cannot connect to host.
		
		Note: The `request_data` parameter is ignored if `method` is . This is because GET methods can't contain request data. As a workaround, you can pass request data as a query string in the URL. See `String.http_escape` for an example.
		
		@param customHeaders If the parameter is null, then the default value is new string[] {}
	**/
	@:native("Request")
	public overload function request(url:std.String, customHeaders:cs.NativeArray<std.String>):godot.Error;

	/**		
		Creates request on the underlying `godot.HTTPClient`. If there is no configuration errors, it tries to connect using `godot.HTTPClient.connectToHost` and passes parameters onto `godot.HTTPClient.request`.
		
		Returns  if request is successfully created. (Does not imply that the server has responded),  if not in the tree,  if still processing previous request,  if given string is not a valid URL format, or  if not using thread and the `godot.HTTPClient` cannot connect to host.
		
		Note: The `request_data` parameter is ignored if `method` is . This is because GET methods can't contain request data. As a workaround, you can pass request data as a query string in the URL. See `String.http_escape` for an example.
		
		@param customHeaders If the parameter is null, then the default value is new string[] {}
	**/
	@:native("Request")
	public overload function request(url:std.String, customHeaders:cs.NativeArray<std.String>, sslValidateDomain:Bool):godot.Error;

	/**		
		Creates request on the underlying `godot.HTTPClient`. If there is no configuration errors, it tries to connect using `godot.HTTPClient.connectToHost` and passes parameters onto `godot.HTTPClient.request`.
		
		Returns  if request is successfully created. (Does not imply that the server has responded),  if not in the tree,  if still processing previous request,  if given string is not a valid URL format, or  if not using thread and the `godot.HTTPClient` cannot connect to host.
		
		Note: The `request_data` parameter is ignored if `method` is . This is because GET methods can't contain request data. As a workaround, you can pass request data as a query string in the URL. See `String.http_escape` for an example.
		
		@param customHeaders If the parameter is null, then the default value is new string[] {}
	**/
	@:native("Request")
	public overload function request(url:std.String, customHeaders:cs.NativeArray<std.String>, sslValidateDomain:Bool, method:godot.HTTPClient_Method):godot.Error;

	/**		
		Creates request on the underlying `godot.HTTPClient`. If there is no configuration errors, it tries to connect using `godot.HTTPClient.connectToHost` and passes parameters onto `godot.HTTPClient.request`.
		
		Returns  if request is successfully created. (Does not imply that the server has responded),  if not in the tree,  if still processing previous request,  if given string is not a valid URL format, or  if not using thread and the `godot.HTTPClient` cannot connect to host.
		
		Note: The `request_data` parameter is ignored if `method` is . This is because GET methods can't contain request data. As a workaround, you can pass request data as a query string in the URL. See `String.http_escape` for an example.
		
		@param customHeaders If the parameter is null, then the default value is new string[] {}
	**/
	@:native("Request")
	public overload function request(url:std.String, customHeaders:cs.NativeArray<std.String>, sslValidateDomain:Bool, method:godot.HTTPClient_Method, requestData:std.String):godot.Error;
	#end

	/**		
		Cancels the current request.
	**/
	@:native("CancelRequest")
	public function cancelRequest():Void;

	/**		
		Returns the current status of the underlying `godot.HTTPClient`. See `godot.HTTPClient_Status`.
	**/
	@:native("GetHttpClientStatus")
	public function getHttpClientStatus():godot.HTTPClient_Status;

	@:native("SetUseThreads")
	public function setUseThreads(enable:Bool):Void;

	@:native("IsUsingThreads")
	public function isUsingThreads():Bool;

	@:native("SetBodySizeLimit")
	public function setBodySizeLimit(bytes:Int):Void;

	@:native("GetBodySizeLimit")
	public function getBodySizeLimit():Int;

	@:native("SetMaxRedirects")
	public function setMaxRedirects(amount:Int):Void;

	@:native("GetMaxRedirects")
	public function getMaxRedirects():Int;

	@:native("SetDownloadFile")
	public function setDownloadFile(path:std.String):Void;

	@:native("GetDownloadFile")
	public function getDownloadFile():std.String;

	/**		
		Returns the amount of bytes this HTTPRequest downloaded.
	**/
	@:native("GetDownloadedBytes")
	public function getDownloadedBytes():Int;

	/**		
		Returns the response body length.
		
		Note: Some Web servers may not send a body length. In this case, the value returned will be `-1`. If using chunked transfer encoding, the body length will also be `-1`.
	**/
	@:native("GetBodySize")
	public function getBodySize():Int;

	@:native("SetTimeout")
	public function setTimeout(timeout:Int):Void;

	@:native("GetTimeout")
	public function getTimeout():Int;

	@:native("SetDownloadChunkSize")
	public function setDownloadChunkSize(arg0:Int):Void;

	@:native("GetDownloadChunkSize")
	public function getDownloadChunkSize():Int;
}
