// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Custom Godot Shading Language expression, with a custom amount of input and output ports.

The provided code is directly injected into the graph's matching shader function (`vertex`, `fragment`, or `light`), so it cannot be used to to declare functions, varyings, uniforms, or global constants. See `godot.VisualShaderNodeGlobalExpression` for such global definitions.
**/
@:libType
@:csNative
@:native("Godot.VisualShaderNodeExpression")
@:autoBuild(godot.Godot.buildUserClass())
extern class VisualShaderNodeExpression extends godot.VisualShaderNodeGroupBase {
	/**		
		An expression in Godot Shading Language, which will be injected at the start of the graph's matching shader function (`vertex`, `fragment`, or `light`), and thus cannot be used to declare functions, varyings, uniforms, or global constants.
	**/
	@:native("Expression")
	public var expression:std.String;

	@:native("new")
	public function new():Void;

	@:native("SetExpression")
	public function setExpression(expression:std.String):Void;

	@:native("GetExpression")
	public function getExpression():std.String;
}
