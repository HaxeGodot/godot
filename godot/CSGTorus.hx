// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
This node allows you to create a torus for use with the CSG system.
**/
@:libType
@:csNative
@:native("Godot.CSGTorus")
@:autoBuild(godot.Godot.buildUserClass())
extern class CSGTorus extends godot.CSGPrimitive {
	/**		
		The material used to render the torus.
	**/
	@:native("Material")
	public var material:godot.Material;

	/**		
		If `true` the normals of the torus are set to give a smooth effect making the torus seem rounded. If `false` the torus will have a flat shaded look.
	**/
	@:native("SmoothFaces")
	public var smoothFaces:Bool;

	/**		
		The number of edges each ring of the torus is constructed of.
	**/
	@:native("RingSides")
	public var ringSides:Int;

	/**		
		The number of slices the torus is constructed of.
	**/
	@:native("Sides")
	public var sides:Int;

	/**		
		The outer radius of the torus.
	**/
	@:native("OuterRadius")
	public var outerRadius:Single;

	/**		
		The inner radius of the torus.
	**/
	@:native("InnerRadius")
	public var innerRadius:Single;

	@:native("new")
	public function new():Void;

	@:native("SetInnerRadius")
	public function setInnerRadius(radius:Single):Void;

	@:native("GetInnerRadius")
	public function getInnerRadius():Single;

	@:native("SetOuterRadius")
	public function setOuterRadius(radius:Single):Void;

	@:native("GetOuterRadius")
	public function getOuterRadius():Single;

	@:native("SetSides")
	public function setSides(sides:Int):Void;

	@:native("GetSides")
	public function getSides():Int;

	@:native("SetRingSides")
	public function setRingSides(sides:Int):Void;

	@:native("GetRingSides")
	public function getRingSides():Int;

	@:native("SetMaterial")
	public function setMaterial(material:godot.Material):Void;

	@:native("GetMaterial")
	public function getMaterial():godot.Material;

	@:native("SetSmoothFaces")
	public function setSmoothFaces(smoothFaces:Bool):Void;

	@:native("GetSmoothFaces")
	public function getSmoothFaces():Bool;
}
