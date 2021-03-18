// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Capsule shape for collisions.
**/
@:libType
@:csNative
@:native("Godot.CapsuleShape")
@:autoBuild(godot.Godot.buildUserClass())
extern class CapsuleShape extends godot.Shape {
	/**		
		The capsule's height.
	**/
	@:native("Height")
	public var height:Single;

	/**		
		The capsule's radius.
	**/
	@:native("Radius")
	public var radius:Single;

	@:native("new")
	public function new():Void;

	@:native("SetRadius")
	public function setRadius(radius:Single):Void;

	@:native("GetRadius")
	public function getRadius():Single;

	@:native("SetHeight")
	public function setHeight(height:Single):Void;

	@:native("GetHeight")
	public function getHeight():Single;
}
