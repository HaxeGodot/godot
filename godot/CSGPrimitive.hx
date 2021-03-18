// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Parent class for various CSG primitives. It contains code and functionality that is common between them. It cannot be used directly. Instead use one of the various classes that inherit from it.
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
