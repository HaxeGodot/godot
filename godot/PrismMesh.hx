// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Class representing a prism-shaped `godot.PrimitiveMesh`.
**/
@:libType
@:csNative
@:native("Godot.PrismMesh")
@:autoBuild(godot.Godot.buildUserClass())
extern class PrismMesh extends godot.PrimitiveMesh {
	/**		
		Number of added edge loops along the Z axis.
	**/
	@:native("SubdivideDepth")
	public var subdivideDepth:Int;

	/**		
		Number of added edge loops along the Y axis.
	**/
	@:native("SubdivideHeight")
	public var subdivideHeight:Int;

	/**		
		Number of added edge loops along the X axis.
	**/
	@:native("SubdivideWidth")
	public var subdivideWidth:Int;

	/**		
		Size of the prism.
	**/
	@:native("Size")
	public var size:godot.Vector3;

	/**		
		Displacement of the upper edge along the X axis. 0.0 positions edge straight above the bottom-left edge.
	**/
	@:native("LeftToRight")
	public var leftToRight:Single;

	@:native("new")
	public function new():Void;

	@:native("SetLeftToRight")
	public function setLeftToRight(leftToRight:Single):Void;

	@:native("GetLeftToRight")
	public function getLeftToRight():Single;

	@:native("SetSize")
	public function setSize(size:godot.Vector3):Void;

	@:native("GetSize")
	public function getSize():godot.Vector3;

	@:native("SetSubdivideWidth")
	public function setSubdivideWidth(segments:Int):Void;

	@:native("GetSubdivideWidth")
	public function getSubdivideWidth():Int;

	@:native("SetSubdivideHeight")
	public function setSubdivideHeight(segments:Int):Void;

	@:native("GetSubdivideHeight")
	public function getSubdivideHeight():Int;

	@:native("SetSubdivideDepth")
	public function setSubdivideDepth(segments:Int):Void;

	@:native("GetSubdivideDepth")
	public function getSubdivideDepth():Int;
}
