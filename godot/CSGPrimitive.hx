// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Parent class for various CSG primitives. It contains code and functionality that is common between them. It cannot be used directly. Instead use one of the various classes that inherit from it.

Note: CSG nodes are intended to be used for level prototyping. Creating CSG nodes has a significant CPU cost compared to creating a `godot.MeshInstance` with a `godot.PrimitiveMesh`. Moving a CSG node within another CSG node also has a significant CPU cost, so it should be avoided during gameplay.
**/
@:libType
@:csNative
@:native("Godot.CSGPrimitive")
@:autoBuild(godot.Godot.buildUserClass())
extern abstract class CSGPrimitive extends godot.CSGShape {
	/**		
		Invert the faces of the mesh.
	**/
	@:native("InvertFaces")
	public var invertFaces:Bool;

	@:native("SetInvertFaces")
	public function setInvertFaces(invertFaces:Bool):Void;

	@:native("IsInvertingFaces")
	public function isInvertingFaces():Bool;
}
