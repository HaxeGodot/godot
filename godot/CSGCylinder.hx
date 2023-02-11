// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
This node allows you to create a cylinder (or cone) for use with the CSG system.

Note: CSG nodes are intended to be used for level prototyping. Creating CSG nodes has a significant CPU cost compared to creating a `godot.MeshInstance` with a `godot.PrimitiveMesh`. Moving a CSG node within another CSG node also has a significant CPU cost, so it should be avoided during gameplay.
**/
@:libType
@:csNative
@:native("Godot.CSGCylinder")
@:autoBuild(godot.Godot.buildUserClass())
extern class CSGCylinder extends godot.CSGPrimitive {
	/**		
		The material used to render the cylinder.
	**/
	@:native("Material")
	public var material:godot.Material;

	/**		
		If `true` the normals of the cylinder are set to give a smooth effect making the cylinder seem rounded. If `false` the cylinder will have a flat shaded look.
	**/
	@:native("SmoothFaces")
	public var smoothFaces:Bool;

	/**		
		If `true` a cone is created, the `godot.CSGCylinder.radius` will only apply to one side.
	**/
	@:native("Cone")
	public var cone:Bool;

	/**		
		The number of sides of the cylinder, the higher this number the more detail there will be in the cylinder.
	**/
	@:native("Sides")
	public var sides:Int;

	/**		
		The height of the cylinder.
	**/
	@:native("Height")
	public var height:Single;

	/**		
		The radius of the cylinder.
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

	@:native("SetSides")
	public function setSides(sides:Int):Void;

	@:native("GetSides")
	public function getSides():Int;

	@:native("SetCone")
	public function setCone(cone:Bool):Void;

	@:native("IsCone")
	public function isCone():Bool;

	@:native("SetMaterial")
	public function setMaterial(material:godot.Material):Void;

	@:native("GetMaterial")
	public function getMaterial():godot.Material;

	@:native("SetSmoothFaces")
	public function setSmoothFaces(smoothFaces:Bool):Void;

	@:native("GetSmoothFaces")
	public function getSmoothFaces():Bool;
}
