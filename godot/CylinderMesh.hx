// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Class representing a cylindrical `godot.PrimitiveMesh`. This class can be used to create cones by setting either the `godot.CylinderMesh.topRadius` or `godot.CylinderMesh.bottomRadius` properties to 0.0.
**/
@:libType
@:csNative
@:native("Godot.CylinderMesh")
@:autoBuild(godot.Godot.buildUserClass())
extern class CylinderMesh extends godot.PrimitiveMesh {
	/**		
		Number of edge rings along the height of the cylinder.
	**/
	@:native("Rings")
	public var rings:Int;

	/**		
		Number of radial segments on the cylinder.
	**/
	@:native("RadialSegments")
	public var radialSegments:Int;

	/**		
		Full height of the cylinder.
	**/
	@:native("Height")
	public var height:Single;

	/**		
		Bottom radius of the cylinder.
	**/
	@:native("BottomRadius")
	public var bottomRadius:Single;

	/**		
		Top radius of the cylinder.
	**/
	@:native("TopRadius")
	public var topRadius:Single;

	@:native("new")
	public function new():Void;

	@:native("SetTopRadius")
	public function setTopRadius(radius:Single):Void;

	@:native("GetTopRadius")
	public function getTopRadius():Single;

	@:native("SetBottomRadius")
	public function setBottomRadius(radius:Single):Void;

	@:native("GetBottomRadius")
	public function getBottomRadius():Single;

	@:native("SetHeight")
	public function setHeight(height:Single):Void;

	@:native("GetHeight")
	public function getHeight():Single;

	@:native("SetRadialSegments")
	public function setRadialSegments(segments:Int):Void;

	@:native("GetRadialSegments")
	public function getRadialSegments():Int;

	@:native("SetRings")
	public function setRings(rings:Int):Void;

	@:native("GetRings")
	public function getRings():Int;
}
