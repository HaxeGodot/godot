// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
This node allows you to create a sphere for use with the CSG system.
**/
@:libType
@:csNative
@:native("Godot.CSGSphere")
@:autoBuild(godot.Godot.buildUserClass())
extern class CSGSphere extends godot.CSGPrimitive {
	/**		
		The material used to render the sphere.
	**/
	@:native("Material")
	public var material:godot.Material;

	/**		
		If `true` the normals of the sphere are set to give a smooth effect making the sphere seem rounded. If `false` the sphere will have a flat shaded look.
	**/
	@:native("SmoothFaces")
	public var smoothFaces:Bool;

	/**		
		Number of horizontal slices for the sphere.
	**/
	@:native("Rings")
	public var rings:Int;

	/**		
		Number of vertical slices for the sphere.
	**/
	@:native("RadialSegments")
	public var radialSegments:Int;

	/**		
		Radius of the sphere.
	**/
	@:native("Radius")
	public var radius:Single;

	@:native("new")
	public function new():Void;

	@:native("SetRadius")
	public function setRadius(radius:Single):Void;

	@:native("GetRadius")
	public function getRadius():Single;

	@:native("SetRadialSegments")
	public function setRadialSegments(radialSegments:Int):Void;

	@:native("GetRadialSegments")
	public function getRadialSegments():Int;

	@:native("SetRings")
	public function setRings(rings:Int):Void;

	@:native("GetRings")
	public function getRings():Int;

	@:native("SetSmoothFaces")
	public function setSmoothFaces(smoothFaces:Bool):Void;

	@:native("GetSmoothFaces")
	public function getSmoothFaces():Bool;

	@:native("SetMaterial")
	public function setMaterial(material:godot.Material):Void;

	@:native("GetMaterial")
	public function getMaterial():godot.Material;
}
