// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
The JavaScript singleton is implemented only in the HTML5 export. It's used to access the browser's JavaScript context. This allows interaction with embedding pages or calling third-party JavaScript APIs.

Note: This singleton can be disabled at build-time to improve security. By default, the JavaScript singleton is enabled. Official export templates also have the JavaScript singleton enabled. See [https://docs.godotengine.org/en/3.4/development/compiling/compiling_for_web.html](Compiling for the Web) in the documentation for more information.
**/
@:libType
@:csNative
@:native("Godot.JavaScript")
@:autoBuild(godot.Godot.buildUserClass())
extern class JavaScript {
	@:native("Singleton") @:readOnly
	public static var SINGLETON(default, never):godot.Object;

	#if doc_gen
	/**		
		Execute the string `code` as JavaScript code within the browser window. This is a call to the actual global JavaScript function `eval()`.
		
		If `use_global_execution_context` is `true`, the code will be evaluated in the global execution context. Otherwise, it is evaluated in the execution context of a function within the engine's runtime environment.
	**/
	@:native("Eval")
	public static function eval(code:std.String, ?useGlobalExecutionContext:Bool):Dynamic;
	#else
	/**		
		Execute the string `code` as JavaScript code within the browser window. This is a call to the actual global JavaScript function `eval()`.
		
		If `use_global_execution_context` is `true`, the code will be evaluated in the global execution context. Otherwise, it is evaluated in the execution context of a function within the engine's runtime environment.
	**/
	@:native("Eval")
	public static overload function eval(code:std.String):Dynamic;

	/**		
		Execute the string `code` as JavaScript code within the browser window. This is a call to the actual global JavaScript function `eval()`.
		
		If `use_global_execution_context` is `true`, the code will be evaluated in the global execution context. Otherwise, it is evaluated in the execution context of a function within the engine's runtime environment.
	**/
	@:native("Eval")
	public static overload function eval(code:std.String, useGlobalExecutionContext:Bool):Dynamic;
	#end

	/**		
		Returns an interface to a JavaScript object that can be used by scripts. The `interface` must be a valid property of the JavaScript `window`. The callback must accept a single `godot.Collections_Array` argument, which will contain the JavaScript `arguments`. See `godot.JavaScriptObject` for usage.
	**/
	@:native("GetInterface")
	public static function getInterface(interface_:std.String):godot.JavaScriptObject;

	/**		
		Creates a reference to a script function that can be used as a callback by JavaScript. The reference must be kept until the callback happens, or it won't be called at all. See `godot.JavaScriptObject` for usage.
	**/
	@:native("CreateCallback")
	public static function createCallback(object:godot.Object, method:std.String):godot.JavaScriptObject;

	/**		
		Creates a new JavaScript object using the `new` constructor. The `object` must a valid property of the JavaScript `window`. See `godot.JavaScriptObject` for usage.
	**/
	@:native("CreateObject")
	public static function createObject(object:std.String, args:HaxeArray<Dynamic>):Dynamic;

	#if doc_gen
	/**		
		Prompts the user to download a file containing the specified `buffer`. The file will have the given `name` and `mime` type.
		
		Note: The browser may override the [https://en.wikipedia.org/wiki/Media_type](MIME type) provided based on the file `name`'s extension.
		
		Note: Browsers might block the download if `godot.JavaScript.downloadBuffer` is not being called from a user interaction (e.g. button click).
		
		Note: Browsers might ask the user for permission or block the download if multiple download requests are made in a quick succession.
	**/
	@:native("DownloadBuffer")
	public static function downloadBuffer(buffer:std.Array<cs.types.UInt8>, name:std.String, ?mime:std.String):Void;
	#else
	/**		
		Prompts the user to download a file containing the specified `buffer`. The file will have the given `name` and `mime` type.
		
		Note: The browser may override the [https://en.wikipedia.org/wiki/Media_type](MIME type) provided based on the file `name`'s extension.
		
		Note: Browsers might block the download if `godot.JavaScript.downloadBuffer` is not being called from a user interaction (e.g. button click).
		
		Note: Browsers might ask the user for permission or block the download if multiple download requests are made in a quick succession.
	**/
	@:native("DownloadBuffer")
	public static overload function downloadBuffer(buffer:HaxeArray<cs.types.UInt8>, name:std.String):Void;

	/**		
		Prompts the user to download a file containing the specified `buffer`. The file will have the given `name` and `mime` type.
		
		Note: The browser may override the [https://en.wikipedia.org/wiki/Media_type](MIME type) provided based on the file `name`'s extension.
		
		Note: Browsers might block the download if `godot.JavaScript.downloadBuffer` is not being called from a user interaction (e.g. button click).
		
		Note: Browsers might ask the user for permission or block the download if multiple download requests are made in a quick succession.
	**/
	@:native("DownloadBuffer")
	public static overload function downloadBuffer(buffer:HaxeArray<cs.types.UInt8>, name:std.String, mime:std.String):Void;
	#end
}
