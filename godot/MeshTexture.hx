// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Simple texture that uses a mesh to draw itself. It's limited because flags can't be changed and region drawing is not supported.
**/
@:libType
@:csNative
@:native("Godot.MeshTexture")
@:autoBuild(godot.Godot.buildUserClass())
extern class MeshTexture extends godot.Texture {
	/**		
		Sets the size of the image, needed for reference.
	**/
	@:native("ImageSize")
	public var imageSize:godot.Vector2;

	/**		
		Sets the base texture that the Mesh will use to draw.
	**/
	@:native("BaseTexture")
	public var baseTexture:godot.Texture;

	/**		
		Sets the mesh used to draw. It must be a mesh using 2D vertices.
	**/
	@:native("Mesh")
	public var mesh:godot.Mesh;

	@:native("new")
	public function new():Void;

	@:native("SetMesh")
	public function setMesh(mesh:godot.Mesh):Void;

	@:native("GetMesh")
	public function getMesh():godot.Mesh;

	@:native("SetImageSize")
	public function setImageSize(size:godot.Vector2):Void;

	@:native("GetImageSize")
	public function getImageSize():godot.Vector2;

	@:native("SetBaseTexture")
	public function setBaseTexture(texture:godot.Texture):Void;

	@:native("GetBaseTexture")
	public function getBaseTexture():godot.Texture;
}
