// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Generate an axis-aligned cuboid `godot.PrimitiveMesh`.

The cube's UV layout is arranged in a 3×2 layout that allows texturing each face individually. To apply the same texture on all faces, change the material's UV property to `Vector3(3, 2, 1)`.

Note: When using a large textured `godot.CubeMesh` (e.g. as a floor), you may stumble upon UV jittering issues depending on the camera angle. To solve this, increase `godot.CubeMesh.subdivideDepth`, `godot.CubeMesh.subdivideHeight` and `godot.CubeMesh.subdivideWidth` until you no longer notice UV jittering.
**/
@:libType
@:csNative
@:native("Godot.CubeMesh")
@:autoBuild(godot.Godot.buildUserClass())
extern class CubeMesh extends godot.PrimitiveMesh {
	/**		
		Number of extra edge loops inserted along the Z axis.
	**/
	@:native("SubdivideDepth")
	public var subdivideDepth:Int;

	/**		
		Number of extra edge loops inserted along the Y axis.
	**/
	@:native("SubdivideHeight")
	public var subdivideHeight:Int;

	/**		
		Number of extra edge loops inserted along the X axis.
	**/
	@:native("SubdivideWidth")
	public var subdivideWidth:Int;

	/**		
		Size of the cuboid mesh.
	**/
	@:native("Size")
	public var size:godot.Vector3;

	@:native("new")
	public function new():Void;

	@:native("SetSize")
	public function setSize(size:godot.Vector3):Void;

	@:native("GetSize")
	public function getSize():godot.Vector3;

	@:native("SetSubdivideWidth")
	public function setSubdivideWidth(subdivide:Int):Void;

	@:native("GetSubdivideWidth")
	public function getSubdivideWidth():Int;

	@:native("SetSubdivideHeight")
	public function setSubdivideHeight(divisions:Int):Void;

	@:native("GetSubdivideHeight")
	public function getSubdivideHeight():Int;

	@:native("SetSubdivideDepth")
	public function setSubdivideDepth(divisions:Int):Void;

	@:native("GetSubdivideDepth")
	public function getSubdivideDepth():Int;
}
