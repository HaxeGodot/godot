// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Pin Joint for 2D rigid bodies. It pins two bodies (rigid or static) together.
**/
@:libType
@:csNative
@:native("Godot.PinJoint2D")
@:autoBuild(godot.Godot.buildUserClass())
extern class PinJoint2D extends godot.Joint2D {
	/**		
		The higher this value, the more the bond to the pinned partner can flex.
	**/
	@:native("Softness")
	public var softness:Single;

	@:native("new")
	public function new():Void;

	@:native("SetSoftness")
	public function setSoftness(softness:Single):Void;

	@:native("GetSoftness")
	public function getSoftness():Single;
}
