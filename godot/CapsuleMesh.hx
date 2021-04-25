// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Class representing a capsule-shaped `godot.PrimitiveMesh`.
**/
@:libType
@:csNative
@:native("Godot.CapsuleMesh")
@:autoBuild(godot.Godot.buildUserClass())
extern class CapsuleMesh extends godot.PrimitiveMesh {
	/**		
		Number of rings along the height of the capsule.
	**/
	@:native("Rings")
	public var rings:Int;

	/**		
		Number of radial segments on the capsule mesh.
	**/
	@:native("RadialSegments")
	public var radialSegments:Int;

	/**		
		Height of the middle cylindrical part of the capsule (without the hemispherical ends).
		
		Note: The capsule's total height is equal to `godot.CapsuleMesh.midHeight` + 2 * `godot.CapsuleMesh.radius`.
	**/
	@:native("MidHeight")
	public var midHeight:Single;

	/**		
		Radius of the capsule mesh.
	**/
	@:native("Radius")
	public var radius:Single;

	@:native("new")
	public function new():Void;

	@:native("SetRadius")
	public function setRadius(radius:Single):Void;

	@:native("GetRadius")
	public function getRadius():Single;

	@:native("SetMidHeight")
	public function setMidHeight(midHeight:Single):Void;

	@:native("GetMidHeight")
	public function getMidHeight():Single;

	@:native("SetRadialSegments")
	public function setRadialSegments(segments:Int):Void;

	@:native("GetRadialSegments")
	public function getRadialSegments():Int;

	@:native("SetRings")
	public function setRings(rings:Int):Void;

	@:native("GetRings")
	public function getRings():Int;
}
