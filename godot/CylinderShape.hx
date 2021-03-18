// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Cylinder shape for collisions.
**/
@:libType
@:csNative
@:native("Godot.CylinderShape")
@:autoBuild(godot.Godot.buildUserClass())
extern class CylinderShape extends godot.Shape {
	/**		
		The cylinder's height.
	**/
	@:native("Height")
	public var height:Single;

	/**		
		The cylinder's radius.
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
