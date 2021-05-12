// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
A script implemented in the GDScript programming language. The script extends the functionality of all objects that instance it.

`godot.GDScript.new` creates a new instance of the script. `godot.Object.setScript` extends an existing object, if that object's class matches one of the script's base classes.
**/
@:libType
@:csNative
@:native("Godot.GDScript")
@:autoBuild(godot.Godot.buildUserClass())
extern class GDScript extends godot.Script {
	@:native("new")
	public function new():Void;

	/**		
		Returns a new instance of the script.
		
		For example:
		
		```
		
		var MyClass = load("myclass.gd")
		var instance = MyClass.new()
		assert(instance.get_script() == MyClass)
		
		```
	**/
	@:native("New")
	public function new_(args:HaxeArray<Dynamic>):Dynamic;

	/**		
		Returns byte code for the script source code.
	**/
	public extern inline function getAsByteCode():std.Array<cs.types.UInt8> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetAsByteCode()", this));
	}
}
