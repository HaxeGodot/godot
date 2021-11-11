// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Class representing a cylindrical `godot.PrimitiveMesh`. This class can be used to create cones by setting either the `godot.CylinderMesh.topRadius` or `godot.CylinderMesh.bottomRadius` properties to `0.0`.
**/
@:libType
@:csNative
@:native("Godot.CylinderMesh")
@:autoBuild(godot.Godot.buildUserClass())
extern class CylinderMesh extends godot.PrimitiveMesh {
	/**		
		Number of edge rings along the height of the cylinder. Changing `godot.CylinderMesh.rings` does not have any visual impact unless a shader or procedural mesh tool is used to alter the vertex data. Higher values result in more subdivisions, which can be used to create smoother-looking effects with shaders or procedural mesh tools (at the cost of performance). When not altering the vertex data using a shader or procedural mesh tool, `godot.CylinderMesh.rings` should be kept to its default value.
	**/
	@:native("Rings")
	public var rings:Int;

	/**		
		Number of radial segments on the cylinder. Higher values result in a more detailed cylinder/cone at the cost of performance.
	**/
	@:native("RadialSegments")
	public var radialSegments:Int;

	/**		
		Full height of the cylinder.
	**/
	@:native("Height")
	public var height:Single;

	/**		
		Bottom radius of the cylinder. If set to `0.0`, the bottom faces will not be generated, resulting in a conic shape.
	**/
	@:native("BottomRadius")
	public var bottomRadius:Single;

	/**		
		Top radius of the cylinder. If set to `0.0`, the top faces will not be generated, resulting in a conic shape.
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
