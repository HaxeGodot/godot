// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
A two-dimensional array of boolean values, can be used to efficiently store a binary matrix (every matrix element takes only one bit) and query the values using natural cartesian coordinates.
**/
@:libType
@:csNative
@:native("Godot.BitMap")
@:autoBuild(godot.Godot.buildUserClass())
extern class BitMap extends godot.Resource {
	@:native("Data")
	public var data:godot.collections.Dictionary;

	@:native("new")
	public function new():Void;

	/**		
		Creates a bitmap with the specified size, filled with `false`.
	**/
	@:native("Create")
	public function create(size:godot.Vector2):Void;

	#if doc_gen
	/**		
		Creates a bitmap that matches the given image dimensions, every element of the bitmap is set to `false` if the alpha value of the image at that position is equal to `threshold` or less, and `true` in other case.
	**/
	@:native("CreateFromImageAlpha")
	public function createFromImageAlpha(image:godot.Image, ?threshold:Single):Void;
	#else
	/**		
		Creates a bitmap that matches the given image dimensions, every element of the bitmap is set to `false` if the alpha value of the image at that position is equal to `threshold` or less, and `true` in other case.
	**/
	@:native("CreateFromImageAlpha")
	public overload function createFromImageAlpha(image:godot.Image):Void;

	/**		
		Creates a bitmap that matches the given image dimensions, every element of the bitmap is set to `false` if the alpha value of the image at that position is equal to `threshold` or less, and `true` in other case.
	**/
	@:native("CreateFromImageAlpha")
	public overload function createFromImageAlpha(image:godot.Image, threshold:Single):Void;
	#end

	/**		
		Sets the bitmap's element at the specified position, to the specified value.
	**/
	@:native("SetBit")
	public function setBit(position:godot.Vector2, bit:Bool):Void;

	/**		
		Returns bitmap's value at the specified position.
	**/
	@:native("GetBit")
	public function getBit(position:godot.Vector2):Bool;

	/**		
		Sets a rectangular portion of the bitmap to the specified value.
	**/
	@:native("SetBitRect")
	public function setBitRect(rect:godot.Rect2, bit:Bool):Void;

	/**		
		Returns the amount of bitmap elements that are set to `true`.
	**/
	@:native("GetTrueBitCount")
	public function getTrueBitCount():Int;

	/**		
		Returns bitmap's dimensions.
	**/
	@:native("GetSize")
	public function getSize():godot.Vector2;

	/**		
		Applies morphological dilation to the bitmap. The first argument is the dilation amount, Rect2 is the area where the dilation will be applied.
	**/
	@:native("GrowMask")
	public function growMask(pixels:Int, rect:godot.Rect2):Void;

	#if doc_gen
	@:native("OpaqueToPolygons")
	public function opaqueToPolygons(rect:godot.Rect2, ?epsilon:Single):godot.collections.Array;
	#else
	@:native("OpaqueToPolygons")
	public overload function opaqueToPolygons(rect:godot.Rect2):godot.collections.Array;

	@:native("OpaqueToPolygons")
	public overload function opaqueToPolygons(rect:godot.Rect2, epsilon:Single):godot.collections.Array;
	#end
}
