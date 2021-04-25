// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
The JavaScript singleton is implemented only in the HTML5 export. It's used to access the browser's JavaScript context. This allows interaction with embedding pages or calling third-party JavaScript APIs.

Note: This singleton can be disabled at build-time to improve security. By default, the JavaScript singleton is enabled. Official export templates also have the JavaScript singleton enabled. See [https://docs.godotengine.org/en/3.3/development/compiling/compiling_for_web.html](Compiling for the Web) in the documentation for more information.
**/
@:libType
@:csNative
@:native("Godot.JavaScript")
@:autoBuild(godot.Godot.buildUserClass())
extern class JavaScript {
	@:native("Singleton")
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
}
