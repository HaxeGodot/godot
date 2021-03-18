// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
A `godot.Texture` capable of storing many smaller textures with offsets.

You can dynamically add pieces (`godot.Texture`s) to this `godot.LargeTexture` using different offsets.
**/
@:libType
@:csNative
@:native("Godot.LargeTexture")
@:autoBuild(godot.Godot.buildUserClass())
extern class LargeTexture extends godot.Texture {
	@:native("_Data")
	public var _Data:godot.collections.Array;

	@:native("new")
	public function new():Void;

	/**		
		Adds `texture` to this `godot.LargeTexture`, starting on offset `ofs`.
	**/
	@:native("AddPiece")
	public function addPiece(ofs:godot.Vector2, texture:godot.Texture):Int;

	/**		
		Sets the offset of the piece with the index `idx` to `ofs`.
	**/
	@:native("SetPieceOffset")
	public function setPieceOffset(idx:Int, ofs:godot.Vector2):Void;

	/**		
		Sets the `godot.Texture` of the piece with index `idx` to `texture`.
	**/
	@:native("SetPieceTexture")
	public function setPieceTexture(idx:Int, texture:godot.Texture):Void;

	/**		
		Sets the size of this `godot.LargeTexture`.
	**/
	@:native("SetSize")
	public function setSize(size:godot.Vector2):Void;

	/**		
		Clears the `godot.LargeTexture`.
	**/
	@:native("Clear")
	public function clear():Void;

	/**		
		Returns the number of pieces currently in this `godot.LargeTexture`.
	**/
	@:native("GetPieceCount")
	public function getPieceCount():Int;

	/**		
		Returns the offset of the piece with the index `idx`.
	**/
	@:native("GetPieceOffset")
	public function getPieceOffset(idx:Int):godot.Vector2;

	/**		
		Returns the `godot.Texture` of the piece with the index `idx`.
	**/
	@:native("GetPieceTexture")
	public function getPieceTexture(idx:Int):godot.Texture;
}
