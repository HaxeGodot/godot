// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Calling `@GDScript.yield` within a function will cause that function to yield and return its current state as an object of this type. The yielded function call can then be resumed later by calling `godot.GDScriptFunctionState.resume` on this state object.
**/
@:libType
@:csNative
@:native("Godot.GDScriptFunctionState")
@:autoBuild(godot.Godot.buildUserClass())
extern abstract class GDScriptFunctionState extends godot.Reference {
	#if doc_gen
	/**		
		Resume execution of the yielded function call.
		
		If handed an argument, return the argument from the `@GDScript.yield` call in the yielded function call. You can pass e.g. an `godot.Collections_Array` to hand multiple arguments.
		
		This function returns what the resumed function call returns, possibly another function state if yielded again.
	**/
	@:native("Resume")
	public function resume(?arg:Dynamic):Dynamic;
	#else
	/**		
		Resume execution of the yielded function call.
		
		If handed an argument, return the argument from the `@GDScript.yield` call in the yielded function call. You can pass e.g. an `godot.Collections_Array` to hand multiple arguments.
		
		This function returns what the resumed function call returns, possibly another function state if yielded again.
	**/
	@:native("Resume")
	public overload function resume():Dynamic;

	/**		
		Resume execution of the yielded function call.
		
		If handed an argument, return the argument from the `@GDScript.yield` call in the yielded function call. You can pass e.g. an `godot.Collections_Array` to hand multiple arguments.
		
		This function returns what the resumed function call returns, possibly another function state if yielded again.
	**/
	@:native("Resume")
	public overload function resume(arg:Dynamic):Dynamic;
	#end

	#if doc_gen
	/**		
		Check whether the function call may be resumed. This is not the case if the function state was already resumed.
		
		If `extended_check` is enabled, it also checks if the associated script and object still exist. The extended check is done in debug mode as part of `godot.GDScriptFunctionState.resume`, but you can use this if you know you may be trying to resume without knowing for sure the object and/or script have survived up to that point.
	**/
	@:native("IsValid")
	public function isValid(?extendedCheck:Bool):Bool;
	#else
	/**		
		Check whether the function call may be resumed. This is not the case if the function state was already resumed.
		
		If `extended_check` is enabled, it also checks if the associated script and object still exist. The extended check is done in debug mode as part of `godot.GDScriptFunctionState.resume`, but you can use this if you know you may be trying to resume without knowing for sure the object and/or script have survived up to that point.
	**/
	@:native("IsValid")
	public overload function isValid():Bool;

	/**		
		Check whether the function call may be resumed. This is not the case if the function state was already resumed.
		
		If `extended_check` is enabled, it also checks if the associated script and object still exist. The extended check is done in debug mode as part of `godot.GDScriptFunctionState.resume`, but you can use this if you know you may be trying to resume without knowing for sure the object and/or script have survived up to that point.
	**/
	@:native("IsValid")
	public overload function isValid(extendedCheck:Bool):Bool;
	#end
}
