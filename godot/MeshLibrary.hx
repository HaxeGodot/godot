// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
A library of meshes. Contains a list of `godot.Mesh` resources, each with a name and ID. Each item can also include collision and navigation shapes. This resource is used in `godot.GridMap`.
**/
@:libType
@:csNative
@:native("Godot.MeshLibrary")
@:autoBuild(godot.Godot.buildUserClass())
extern class MeshLibrary extends godot.Resource {
	@:native("new")
	public function new():Void;

	/**		
		Creates a new item in the library with the given ID.
		
		You can get an unused ID from `godot.MeshLibrary.getLastUnusedItemId`.
	**/
	@:native("CreateItem")
	public function createItem(id:Int):Void;

	/**		
		Sets the item's name.
		
		This name is shown in the editor. It can also be used to look up the item later using `godot.MeshLibrary.findItemByName`.
	**/
	@:native("SetItemName")
	public function setItemName(id:Int, name:std.String):Void;

	/**		
		Sets the item's mesh.
	**/
	@:native("SetItemMesh")
	public function setItemMesh(id:Int, mesh:godot.Mesh):Void;

	/**		
		Sets the item's navigation mesh.
	**/
	@:native("SetItemNavmesh")
	public function setItemNavmesh(id:Int, navmesh:godot.NavigationMesh):Void;

	/**		
		Sets the transform to apply to the item's navigation mesh.
	**/
	@:native("SetItemNavmeshTransform")
	public function setItemNavmeshTransform(id:Int, navmesh:godot.Transform):Void;

	/**		
		Sets an item's collision shapes.
		
		The array should consist of `godot.Shape` objects, each followed by a `godot.Transform` that will be applied to it. For shapes that should not have a transform, use .
	**/
	@:native("SetItemShapes")
	public function setItemShapes(id:Int, shapes:godot.collections.Array):Void;

	/**		
		Sets a texture to use as the item's preview icon in the editor.
	**/
	@:native("SetItemPreview")
	public function setItemPreview(id:Int, texture:godot.Texture):Void;

	/**		
		Returns the item's name.
	**/
	@:native("GetItemName")
	public function getItemName(id:Int):std.String;

	/**		
		Returns the item's mesh.
	**/
	@:native("GetItemMesh")
	public function getItemMesh(id:Int):godot.Mesh;

	/**		
		Returns the item's navigation mesh.
	**/
	@:native("GetItemNavmesh")
	public function getItemNavmesh(id:Int):godot.NavigationMesh;

	/**		
		Returns the transform applied to the item's navigation mesh.
	**/
	@:native("GetItemNavmeshTransform")
	public function getItemNavmeshTransform(id:Int):godot.Transform;

	/**		
		Returns an item's collision shapes.
		
		The array consists of each `godot.Shape` followed by its `godot.Transform`.
	**/
	@:native("GetItemShapes")
	public function getItemShapes(id:Int):godot.collections.Array;

	/**		
		When running in the editor, returns a generated item preview (a 3D rendering in isometric perspective). When used in a running project, returns the manually-defined item preview which can be set using `godot.MeshLibrary.setItemPreview`. Returns an empty `godot.Texture` if no preview was manually set in a running project.
	**/
	@:native("GetItemPreview")
	public function getItemPreview(id:Int):godot.Texture;

	/**		
		Removes the item.
	**/
	@:native("RemoveItem")
	public function removeItem(id:Int):Void;

	/**		
		Returns the first item with the given name.
	**/
	@:native("FindItemByName")
	public function findItemByName(name:std.String):Int;

	/**		
		Clears the library.
	**/
	@:native("Clear")
	public function clear():Void;

	/**		
		Returns the list of item IDs in use.
	**/
	@:native("GetItemList")
	public function getItemList():cs.NativeArray<Int>;

	/**		
		Gets an unused ID for a new item.
	**/
	@:native("GetLastUnusedItemId")
	public function getLastUnusedItemId():Int;
}
