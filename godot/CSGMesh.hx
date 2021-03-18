// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
This CSG node allows you to use any mesh resource as a CSG shape, provided it is closed, does not self-intersect, does not contain internal faces and has no edges that connect to more then two faces.
**/
@:libType
@:csNative
@:native("Godot.CSGMesh")
@:autoBuild(godot.Godot.buildUserClass())
extern class CSGMesh extends godot.CSGPrimitive {
	/**		
		The `godot.Material` used in drawing the CSG shape.
	**/
	@:native("Material")
	public var material:godot.Material;

	/**		
		The `godot.Mesh` resource to use as a CSG shape.
	**/
	@:native("Mesh")
	public var mesh:godot.Mesh;

	@:native("new")
	public function new():Void;

	@:native("SetMesh")
	public function setMesh(mesh:godot.Mesh):Void;

	@:native("GetMesh")
	public function getMesh():godot.Mesh;

	@:native("SetMaterial")
	public function setMaterial(material:godot.Material):Void;

	@:native("GetMaterial")
	public function getMaterial():godot.Material;
}
