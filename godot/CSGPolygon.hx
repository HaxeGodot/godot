// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
This node takes a 2D polygon shape and extrudes it to create a 3D mesh.
**/
@:libType
@:csNative
@:native("Godot.CSGPolygon")
@:autoBuild(godot.Godot.buildUserClass())
extern class CSGPolygon extends godot.CSGPrimitive {
	/**		
		Material to use for the resulting mesh.
	**/
	@:native("Material")
	public var material:godot.Material;

	/**		
		Generates smooth normals so smooth shading is applied to our mesh.
	**/
	@:native("SmoothFaces")
	public var smoothFaces:Bool;

	/**		
		If `true` the start and end of our path are joined together ensuring there is no seam when `godot.CSGPolygon.mode` is .
	**/
	@:native("PathJoined")
	public var pathJoined:Bool;

	/**		
		If `true` the u component of our uv will continuously increase in unison with the distance traveled along our path when `godot.CSGPolygon.mode` is .
	**/
	@:native("PathContinuousU")
	public var pathContinuousU:Bool;

	/**		
		If `false` we extrude centered on our path, if `true` we extrude in relation to the position of our CSGPolygon when `godot.CSGPolygon.mode` is .
	**/
	@:native("PathLocal")
	public var pathLocal:Bool;

	/**		
		The method by which each slice is rotated along the path when `godot.CSGPolygon.mode` is .
	**/
	@:native("PathRotation")
	public var pathRotation:godot.CSGPolygon_PathRotationEnum;

	/**		
		Interval at which a new extrusion slice is added along the path when `godot.CSGPolygon.mode` is .
	**/
	@:native("PathInterval")
	public var pathInterval:Single;

	/**		
		The `godot.Shape` object containing the path along which we extrude when `godot.CSGPolygon.mode` is .
	**/
	@:native("PathNode")
	public var pathNode:godot.NodePath;

	/**		
		Number of extrusion when `godot.CSGPolygon.mode` is .
	**/
	@:native("SpinSides")
	public var spinSides:Int;

	/**		
		Degrees to rotate our extrusion for each slice when `godot.CSGPolygon.mode` is .
	**/
	@:native("SpinDegrees")
	public var spinDegrees:Single;

	/**		
		Extrusion depth when `godot.CSGPolygon.mode` is .
	**/
	@:native("Depth")
	public var depth:Single;

	/**		
		Extrusion mode.
	**/
	@:native("Mode")
	public var mode:godot.CSGPolygon_ModeEnum;

	/**		
		Point array that defines the shape that we'll extrude.
	**/
	@:native("Polygon")
	public var polygon:cs.NativeArray<godot.Vector2>;

	@:native("new")
	public function new():Void;

	@:native("SetPolygon")
	public function setPolygon(polygon:haxe.Rest<godot.Vector2>):Void;

	@:native("GetPolygon")
	public function getPolygon():cs.NativeArray<godot.Vector2>;

	@:native("SetMode")
	public function setMode(mode:godot.CSGPolygon_ModeEnum):Void;

	@:native("GetMode")
	public function getMode():godot.CSGPolygon_ModeEnum;

	@:native("SetDepth")
	public function setDepth(depth:Single):Void;

	@:native("GetDepth")
	public function getDepth():Single;

	@:native("SetSpinDegrees")
	public function setSpinDegrees(degrees:Single):Void;

	@:native("GetSpinDegrees")
	public function getSpinDegrees():Single;

	@:native("SetSpinSides")
	public function setSpinSides(spinSides:Int):Void;

	@:native("GetSpinSides")
	public function getSpinSides():Int;

	@:native("SetPathNode")
	public function setPathNode(path:godot.NodePath):Void;

	@:native("GetPathNode")
	public function getPathNode():godot.NodePath;

	@:native("SetPathInterval")
	public function setPathInterval(distance:Single):Void;

	@:native("GetPathInterval")
	public function getPathInterval():Single;

	@:native("SetPathRotation")
	public function setPathRotation(mode:godot.CSGPolygon_PathRotationEnum):Void;

	@:native("GetPathRotation")
	public function getPathRotation():godot.CSGPolygon_PathRotationEnum;

	@:native("SetPathLocal")
	public function setPathLocal(enable:Bool):Void;

	@:native("IsPathLocal")
	public function isPathLocal():Bool;

	@:native("SetPathContinuousU")
	public function setPathContinuousU(enable:Bool):Void;

	@:native("IsPathContinuousU")
	public function isPathContinuousU():Bool;

	@:native("SetPathJoined")
	public function setPathJoined(enable:Bool):Void;

	@:native("IsPathJoined")
	public function isPathJoined():Bool;

	@:native("SetMaterial")
	public function setMaterial(material:godot.Material):Void;

	@:native("GetMaterial")
	public function getMaterial():godot.Material;

	@:native("SetSmoothFaces")
	public function setSmoothFaces(smoothFaces:Bool):Void;

	@:native("GetSmoothFaces")
	public function getSmoothFaces():Bool;
}
