// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
In GDScript, functions are not first-class objects. This means it is impossible to store them directly as variables, return them from another function, or pass them as arguments.

However, by creating a `godot.FuncRef` using the `@GDScript.funcref` function, a reference to a function in a given object can be created, passed around and called.
**/
@:libType
@:csNative
@:native("Godot.FuncRef")
@:autoBuild(godot.Godot.buildUserClass())
extern class FuncRef extends godot.Reference {
	/**		
		The name of the referenced function.
	**/
	@:native("Function")
	public var function_:std.String;

	@:native("new")
	public function new():Void;

	/**		
		Calls the referenced function previously set in `godot.FuncRef.function` or `@GDScript.funcref`.
	**/
	@:native("CallFunc")
	public function callFunc(args:HaxeArray<Dynamic>):Dynamic;

	/**		
		Calls the referenced function previously set in `godot.FuncRef.function` or `@GDScript.funcref`. Contrarily to `godot.FuncRef.callFunc`, this method does not support a variable number of arguments but expects all parameters to be passed via a single `godot.Collections_Array`.
	**/
	@:native("CallFuncv")
	public function callFuncv(argArray:godot.collections.Array):Dynamic;

	/**		
		The object containing the referenced function. This object must be of a type actually inheriting from `godot.Object`, not a built-in type such as `Int`, `godot.Vector2` or `godot.Collections_Dictionary`.
	**/
	@:native("SetInstance")
	public function setInstance(instance:godot.Object):Void;

	/**		
		Returns whether the object still exists and has the function assigned.
	**/
	@:native("IsValid")
	public function isValid():Bool;

	@:native("SetFunction")
	public function setFunction(name:std.String):Void;

	@:native("GetFunction")
	public function getFunction():std.String;
}
