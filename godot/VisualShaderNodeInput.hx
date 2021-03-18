// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Gives access to input variables (built-ins) available for the shader. See the shading reference for the list of available built-ins for each shader type (check `Tutorials` section for link).
**/
@:libType
@:csNative
@:native("Godot.VisualShaderNodeInput")
@:autoBuild(godot.Godot.buildUserClass())
extern class VisualShaderNodeInput extends godot.VisualShaderNode {
	/**		
		One of the several input constants in lower-case style like: "vertex"(`VERTEX`) or "point_size"(`POINT_SIZE`).
	**/
	@:native("InputName")
	public var inputName:std.String;

	@:native("new")
	public function new():Void;

	@:native("SetInputName")
	public function setInputName(name:std.String):Void;

	@:native("GetInputName")
	public function getInputName():std.String;

	@:native("GetInputRealName")
	public function getInputRealName():std.String;
}
