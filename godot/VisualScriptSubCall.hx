// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
`godot.VisualScriptSubCall` will call method named `_subcall` in the current script. It will fail if the method doesn't exist or the provided arguments are wrong.
**/
@:libType
@:csNative
@:native("Godot.VisualScriptSubCall")
@:autoBuild(godot.Godot.buildUserClass())
extern class VisualScriptSubCall extends godot.VisualScriptNode {
	@:native("new")
	public function new():Void;

	/**		
		Called by this node.
	**/
	@:native("_Subcall")
	public function _Subcall(arguments:Dynamic):Dynamic;
}
