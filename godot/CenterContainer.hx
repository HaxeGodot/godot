// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
CenterContainer keeps children controls centered. This container keeps all children to their minimum size, in the center.
**/
@:libType
@:csNative
@:native("Godot.CenterContainer")
@:autoBuild(godot.Godot.buildUserClass())
extern class CenterContainer extends godot.Container {
	/**		
		If `true`, centers children relative to the `godot.CenterContainer`'s top left corner.
	**/
	@:native("UseTopLeft")
	public var useTopLeft:Bool;

	@:native("new")
	public function new():Void;

	@:native("SetUseTopLeft")
	public function setUseTopLeft(enable:Bool):Void;

	@:native("IsUsingTopLeft")
	public function isUsingTopLeft():Bool;
}
