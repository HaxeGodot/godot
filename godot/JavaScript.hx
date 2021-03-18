// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
The JavaScript singleton is implemented only in the HTML5 export. It's used to access the browser's JavaScript context. This allows interaction with embedding pages or calling third-party JavaScript APIs.
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
