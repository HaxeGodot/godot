// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
An array of 2D points is extruded to quickly and easily create a variety of 3D meshes.
**/
@:libType
@:csNative
@:native("Godot.CSGPolygon")
@:autoBuild(godot.Godot.buildUserClass())
extern class CSGPolygon extends godot.CSGPrimitive {
	/**		
		Material to use for the resulting mesh. The UV maps the top half of the material to the extruded shape (U along the the length of the extrusions and V around the outline of the `godot.CSGPolygon.polygon`), the bottom-left quarter to the front end face, and the bottom-right quarter to the back end face.
	**/
	@:native("Material")
	public var material:godot.Material;

	/**		
		If `true`, applies smooth shading to the extrusions.
	**/
	@:native("SmoothFaces")
	public var smoothFaces:Bool;

	/**		
		When `godot.CSGPolygon.mode` is `godot.CSGPolygon_ModeEnum.path`, if `true` the ends of the path are joined, by adding an extrusion between the last and first points of the path.
	**/
	@:native("PathJoined")
	public var pathJoined:Bool;

	/**		
		When `godot.CSGPolygon.mode` is `godot.CSGPolygon_ModeEnum.path`, this is the distance along the path, in meters, the texture coordinates will tile. When set to 0, texture coordinates will match geometry exactly with no tiling.
	**/
	@:native("PathUDistance")
	public var pathUDistance:Single;

	/**		
		When `godot.CSGPolygon.mode` is `godot.CSGPolygon_ModeEnum.path`, by default, the top half of the `godot.CSGPolygon.material` is stretched along the entire length of the extruded shape. If `false` the top half of the material is repeated every step of the extrusion.
	**/
	@:native("PathContinuousU")
	public var pathContinuousU:Bool;

	/**		
		When `godot.CSGPolygon.mode` is `godot.CSGPolygon_ModeEnum.path`, if `true` the `godot.Transform` of the `godot.CSGPolygon` is used as the starting point for the extrusions, not the `godot.Transform` of the `godot.CSGPolygon.pathNode`.
	**/
	@:native("PathLocal")
	public var pathLocal:Bool;

	/**		
		When `godot.CSGPolygon.mode` is `godot.CSGPolygon_ModeEnum.path`, the `godot.CSGPolygon_PathRotationEnum` method used to rotate the `godot.CSGPolygon.polygon` as it is extruded.
	**/
	@:native("PathRotation")
	public var pathRotation:godot.CSGPolygon_PathRotationEnum;

	/**		
		When `godot.CSGPolygon.mode` is `godot.CSGPolygon_ModeEnum.path`, extrusions that are less than this angle, will be merged together to reduce polygon count.
	**/
	@:native("PathSimplifyAngle")
	public var pathSimplifyAngle:Single;

	/**		
		When `godot.CSGPolygon.mode` is `godot.CSGPolygon_ModeEnum.path`, the path interval or ratio of path points to extrusions.
	**/
	@:native("PathInterval")
	public var pathInterval:Single;

	/**		
		When `godot.CSGPolygon.mode` is `godot.CSGPolygon_ModeEnum.path`, this will determine if the interval should be by distance (`godot.CSGPolygon_PathIntervalTypeEnum.distance`) or subdivision fractions (`godot.CSGPolygon_PathIntervalTypeEnum.subdivide`).
	**/
	@:native("PathIntervalType")
	public var pathIntervalType:godot.CSGPolygon_PathIntervalTypeEnum;

	/**		
		When `godot.CSGPolygon.mode` is `godot.CSGPolygon_ModeEnum.path`, the location of the `godot.Path` object used to extrude the `godot.CSGPolygon.polygon`.
	**/
	@:native("PathNode")
	public var pathNode:godot.NodePath;

	/**		
		When `godot.CSGPolygon.mode` is `godot.CSGPolygon_ModeEnum.spin`, the number of extrusions made.
	**/
	@:native("SpinSides")
	public var spinSides:Int;

	/**		
		When `godot.CSGPolygon.mode` is `godot.CSGPolygon_ModeEnum.spin`, the total number of degrees the `godot.CSGPolygon.polygon` is rotated when extruding.
	**/
	@:native("SpinDegrees")
	public var spinDegrees:Single;

	/**		
		When `godot.CSGPolygon.mode` is `godot.CSGPolygon_ModeEnum.depth`, the depth of the extrusion.
	**/
	@:native("Depth")
	public var depth:Single;

	/**		
		The `godot.CSGPolygon.mode` used to extrude the `godot.CSGPolygon.polygon`.
	**/
	@:native("Mode")
	public var mode:godot.CSGPolygon_ModeEnum;

	/**		
		The point array that defines the 2D polygon that is extruded.
	**/
	@:native("Polygon")
	public var polygon:cs.NativeArray<godot.Vector2>;

	@:native("new")
	public function new():Void;

	@:native("SetPolygon")
	public function setPolygon(polygon:HaxeArray<godot.Vector2>):Void;

	public extern inline function getPolygon():std.Array<godot.Vector2> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetPolygon()", this));
	}

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

	@:native("SetPathIntervalType")
	public function setPathIntervalType(intervalType:godot.CSGPolygon_PathIntervalTypeEnum):Void;

	@:native("GetPathIntervalType")
	public function getPathIntervalType():godot.CSGPolygon_PathIntervalTypeEnum;

	@:native("SetPathInterval")
	public function setPathInterval(pathInterval:Single):Void;

	@:native("GetPathInterval")
	public function getPathInterval():Single;

	@:native("SetPathSimplifyAngle")
	public function setPathSimplifyAngle(degrees:Single):Void;

	@:native("GetPathSimplifyAngle")
	public function getPathSimplifyAngle():Single;

	@:native("SetPathRotation")
	public function setPathRotation(pathRotation:godot.CSGPolygon_PathRotationEnum):Void;

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

	@:native("SetPathUDistance")
	public function setPathUDistance(distance:Single):Void;

	@:native("GetPathUDistance")
	public function getPathUDistance():Single;

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
