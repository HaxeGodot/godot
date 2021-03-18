// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Node used for displaying a `godot.Mesh` in 2D. Can be constructed from an existing `godot.Sprite` via a tool in the editor toolbar. Select "Sprite" then "Convert to Mesh2D", select settings in popup and press "Create Mesh2D".
**/
@:libType
@:csNative
@:native("Godot.MeshInstance2D")
@:autoBuild(godot.Godot.buildUserClass())
extern class MeshInstance2D extends godot.Node2D {
	/**		
		The normal map that will be used if using the default `godot.CanvasItemMaterial`.
		
		Note: Godot expects the normal map to use X+, Y-, and Z+ coordinates. See [http://wiki.polycount.com/wiki/Normal_Map_Technical_Details#Common_Swizzle_Coordinates](this page) for a comparison of normal map coordinates expected by popular engines.
	**/
	@:native("NormalMap")
	public var normalMap:godot.Texture;

	/**		
		The `godot.Texture` that will be used if using the default `godot.CanvasItemMaterial`. Can be accessed as `TEXTURE` in CanvasItem shader.
	**/
	@:native("Texture")
	public var texture:godot.Texture;

	/**		
		The `godot.Mesh` that will be drawn by the `godot.MeshInstance2D`.
	**/
	@:native("Mesh")
	public var mesh:godot.Mesh;

	@:native("new")
	public function new():Void;

	@:native("SetMesh")
	public function setMesh(mesh:godot.Mesh):Void;

	@:native("GetMesh")
	public function getMesh():godot.Mesh;

	@:native("SetTexture")
	public function setTexture(texture:godot.Texture):Void;

	@:native("GetTexture")
	public function getTexture():godot.Texture;

	@:native("SetNormalMap")
	public function setNormalMap(normalMap:godot.Texture):Void;

	@:native("GetNormalMap")
	public function getNormalMap():godot.Texture;
}
