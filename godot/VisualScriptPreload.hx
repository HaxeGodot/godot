// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Creates a new `godot.Resource` or loads one from the filesystem.

Input Ports:

none

Output Ports:

- Data (object): `res`
**/
@:libType
@:csNative
@:native("Godot.VisualScriptPreload")
@:autoBuild(godot.Godot.buildUserClass())
extern class VisualScriptPreload extends godot.VisualScriptNode {
	/**		
		The `godot.Resource` to load.
	**/
	@:native("Resource")
	public var resource:godot.Resource;

	@:native("new")
	public function new():Void;

	@:native("SetPreload")
	public function setPreload(resource:godot.Resource):Void;

	@:native("GetPreload")
	public function getPreload():godot.Resource;
}
