// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
This node allows you to create a box for use with the CSG system.
**/
@:libType
@:csNative
@:native("Godot.CSGBox")
@:autoBuild(godot.Godot.buildUserClass())
extern class CSGBox extends godot.CSGPrimitive {
	/**		
		The material used to render the box.
	**/
	@:native("Material")
	public var material:godot.Material;

	/**		
		Depth of the box measured from the center of the box.
	**/
	@:native("Depth")
	public var depth:Single;

	/**		
		Height of the box measured from the center of the box.
	**/
	@:native("Height")
	public var height:Single;

	/**		
		Width of the box measured from the center of the box.
	**/
	@:native("Width")
	public var width:Single;

	@:native("new")
	public function new():Void;

	@:native("SetWidth")
	public function setWidth(width:Single):Void;

	@:native("GetWidth")
	public function getWidth():Single;

	@:native("SetHeight")
	public function setHeight(height:Single):Void;

	@:native("GetHeight")
	public function getHeight():Single;

	@:native("SetDepth")
	public function setDepth(depth:Single):Void;

	@:native("GetDepth")
	public function getDepth():Single;

	@:native("SetMaterial")
	public function setMaterial(material:godot.Material):Void;

	@:native("GetMaterial")
	public function getMaterial():godot.Material;
}
