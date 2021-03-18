// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Class representing a spherical `godot.PrimitiveMesh`.
**/
@:libType
@:csNative
@:native("Godot.SphereMesh")
@:autoBuild(godot.Godot.buildUserClass())
extern class SphereMesh extends godot.PrimitiveMesh {
	/**		
		If `true`, a hemisphere is created rather than a full sphere.
		
		Note: To get a regular hemisphere, the height and radius of the sphere must be equal.
	**/
	@:native("IsHemisphere")
	public var isHemisphere:Bool;

	/**		
		Number of segments along the height of the sphere.
	**/
	@:native("Rings")
	public var rings:Int;

	/**		
		Number of radial segments on the sphere.
	**/
	@:native("RadialSegments")
	public var radialSegments:Int;

	/**		
		Full height of the sphere.
	**/
	@:native("Height")
	public var height:Single;

	/**		
		Radius of sphere.
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

	@:native("SetRadialSegments")
	public function setRadialSegments(radialSegments:Int):Void;

	@:native("GetRadialSegments")
	public function getRadialSegments():Int;

	@:native("SetRings")
	public function setRings(rings:Int):Void;

	@:native("GetRings")
	public function getRings():Int;

	@:native("SetIsHemisphere")
	public function setIsHemisphere(isHemisphere:Bool):Void;

	@:native("GetIsHemisphere")
	public function getIsHemisphere():Bool;
}
