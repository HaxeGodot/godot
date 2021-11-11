// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
`godot.VisualScriptTypeCast` will perform a type conversion to an `godot.Object`-derived type.
**/
@:libType
@:csNative
@:native("Godot.VisualScriptTypeCast")
@:autoBuild(godot.Godot.buildUserClass())
extern class VisualScriptTypeCast extends godot.VisualScriptNode {
	/**		
		The target script class to be converted to. If none, only the `godot.VisualScriptTypeCast.baseType` will be used.
	**/
	@:native("BaseScript")
	public var baseScript:std.String;

	/**		
		The target type to be converted to.
	**/
	@:native("BaseType")
	public var baseType:std.String;

	@:native("new")
	public function new():Void;

	@:native("SetBaseType")
	public function setBaseType(type:std.String):Void;

	@:native("GetBaseType")
	public function getBaseType():std.String;

	@:native("SetBaseScript")
	public function setBaseScript(path:std.String):Void;

	@:native("GetBaseScript")
	public function getBaseScript():std.String;
}
