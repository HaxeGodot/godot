// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
A `godot.Texture` based on an `godot.Image`. Can be created from an `godot.Image` with `godot.ImageTexture.createFromImage`.

Note: The maximum image size is 16384×16384 pixels due to graphics hardware limitations. Larger images will fail to import.
**/
@:libType
@:csNative
@:native("Godot.ImageTexture")
@:autoBuild(godot.Godot.buildUserClass())
extern class ImageTexture extends godot.Texture {
	/**		
		The storage quality for .
	**/
	@:native("LossyQuality")
	public var lossyQuality:Single;

	/**		
		The storage type (raw, lossy, or compressed).
	**/
	@:native("Storage")
	public var storage:godot.ImageTexture_StorageEnum;

	@:native("new")
	public function new():Void;

	#if doc_gen
	/**		
		Create a new `godot.ImageTexture` with `width` and `height`.
		
		`format` is a value from `godot.Image_Format`, `flags` is any combination of `godot.Texture_FlagsEnum`.
	**/
	@:native("Create")
	public function create(width:Int, height:Int, format:godot.Image_Format, ?flags:UInt):Void;
	#else
	/**		
		Create a new `godot.ImageTexture` with `width` and `height`.
		
		`format` is a value from `godot.Image_Format`, `flags` is any combination of `godot.Texture_FlagsEnum`.
	**/
	@:native("Create")
	public overload function create(width:Int, height:Int, format:godot.Image_Format):Void;

	/**		
		Create a new `godot.ImageTexture` with `width` and `height`.
		
		`format` is a value from `godot.Image_Format`, `flags` is any combination of `godot.Texture_FlagsEnum`.
	**/
	@:native("Create")
	public overload function create(width:Int, height:Int, format:godot.Image_Format, flags:UInt):Void;
	#end

	#if doc_gen
	/**		
		Create a new `godot.ImageTexture` from an `godot.Image` with `flags` from `godot.Texture_FlagsEnum`. An sRGB to linear color space conversion can take place, according to `godot.Image_Format`.
	**/
	@:native("CreateFromImage")
	public function createFromImage(image:godot.Image, ?flags:UInt):Void;
	#else
	/**		
		Create a new `godot.ImageTexture` from an `godot.Image` with `flags` from `godot.Texture_FlagsEnum`. An sRGB to linear color space conversion can take place, according to `godot.Image_Format`.
	**/
	@:native("CreateFromImage")
	public overload function createFromImage(image:godot.Image):Void;

	/**		
		Create a new `godot.ImageTexture` from an `godot.Image` with `flags` from `godot.Texture_FlagsEnum`. An sRGB to linear color space conversion can take place, according to `godot.Image_Format`.
	**/
	@:native("CreateFromImage")
	public overload function createFromImage(image:godot.Image, flags:UInt):Void;
	#end

	/**		
		Returns the format of the `godot.ImageTexture`, one of `godot.Image_Format`.
	**/
	@:native("GetFormat")
	public function getFormat():godot.Image_Format;

	/**		
		Load an `godot.ImageTexture` from a file path.
	**/
	@:native("Load")
	public function load(path:std.String):godot.Error;

	/**		
		Sets the `godot.Image` of this `godot.ImageTexture`.
	**/
	@:native("SetData")
	public function setData(image:godot.Image):Void;

	@:native("SetStorage")
	public function setStorage(mode:godot.ImageTexture_StorageEnum):Void;

	@:native("GetStorage")
	public function getStorage():godot.ImageTexture_StorageEnum;

	@:native("SetLossyStorageQuality")
	public function setLossyStorageQuality(quality:Single):Void;

	@:native("GetLossyStorageQuality")
	public function getLossyStorageQuality():Single;

	/**		
		Resizes the `godot.ImageTexture` to the specified dimensions.
	**/
	@:native("SetSizeOverride")
	public function setSizeOverride(size:godot.Vector2):Void;
}
