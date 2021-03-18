// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

@:libType
@:csNative
@:native("Godot.VisualScriptResourcePath")
@:autoBuild(godot.Godot.buildUserClass())
extern class VisualScriptResourcePath extends godot.VisualScriptNode {
	@:native("Path")
	public var path:std.String;

	@:native("new")
	public function new():Void;

	@:native("SetResourcePath")
	public function setResourcePath(path:std.String):Void;

	@:native("GetResourcePath")
	public function getResourcePath():std.String;
}
