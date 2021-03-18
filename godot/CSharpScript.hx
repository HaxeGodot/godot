// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
This class represents a C# script. It is the C# equivalent of the `godot.GDScript` class and is only available in Mono-enabled Godot builds.

See also `godot.GodotSharp`.
**/
@:libType
@:csNative
@:native("Godot.CSharpScript")
@:autoBuild(godot.Godot.buildUserClass())
extern class CSharpScript extends godot.Script {
	@:native("new")
	public function new():Void;

	/**		
		Returns a new instance of the script.
	**/
	@:native("New")
	public function new_(args:haxe.Rest<Dynamic>):Dynamic;
}
