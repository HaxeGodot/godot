// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
A `godot.Texture` based on an `godot.Image`. For an image to be displayed, an `godot.ImageTexture` has to be created from it using the `godot.ImageTexture.createFromImage` method:

```

var texture = ImageTexture.new()
var image = Image.new()
image.load("res://icon.png")
texture.create_from_image(image)
$Sprite.texture = texture

```

This way, textures can be created at run-time by loading images both from within the editor and externally.

Warning: Prefer to load imported textures with `@GDScript.load` over loading them from within the filesystem dynamically with `godot.Image.load`, as it may not work in exported projects:

```

var texture = load("res://icon.png")
$Sprite.texture = texture

```

This is because images have to be imported as `godot.StreamTexture` first to be loaded with `@GDScript.load`. If you'd still like to load an image file just like any other `godot.Resource`, import it as an `godot.Image` resource instead, and then load it normally using the `@GDScript.load` method.

But do note that the image data can still be retrieved from an imported texture as well using the `godot.Texture.getData` method, which returns a copy of the data:

```

var texture = load("res://icon.png")
var image : Image = texture.get_data()

```

An `godot.ImageTexture` is not meant to be operated from within the editor interface directly, and is mostly useful for rendering images on screen dynamically via code. If you need to generate images procedurally from within the editor, consider saving and importing images as custom texture resources implementing a new `Godot.EditorImportPlugin`.

Note: The maximum texture size is 16384×16384 pixels due to graphics hardware limitations.
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
		Initializes the texture by allocating and setting the data from an `godot.Image` with `flags` from `godot.Texture_FlagsEnum`. An sRGB to linear color space conversion can take place, according to `godot.Image_Format`.
	**/
	@:native("CreateFromImage")
	public function createFromImage(image:godot.Image, ?flags:UInt):Void;
	#else
	/**		
		Initializes the texture by allocating and setting the data from an `godot.Image` with `flags` from `godot.Texture_FlagsEnum`. An sRGB to linear color space conversion can take place, according to `godot.Image_Format`.
	**/
	@:native("CreateFromImage")
	public overload function createFromImage(image:godot.Image):Void;

	/**		
		Initializes the texture by allocating and setting the data from an `godot.Image` with `flags` from `godot.Texture_FlagsEnum`. An sRGB to linear color space conversion can take place, according to `godot.Image_Format`.
	**/
	@:native("CreateFromImage")
	public overload function createFromImage(image:godot.Image, flags:UInt):Void;
	#end

	/**		
		Returns the format of the texture, one of `godot.Image_Format`.
	**/
	@:native("GetFormat")
	public function getFormat():godot.Image_Format;

	/**		
		Loads an image from a file path and creates a texture from it.
		
		Note: the method is deprecated and will be removed in Godot 4.0, use `godot.Image.load` and `godot.ImageTexture.createFromImage` instead.
	**/
	@:native("Load")
	public function load(path:std.String):godot.Error;

	/**		
		Replaces the texture's data with a new `godot.Image`.
		
		Note: The texture has to be initialized first with the `godot.ImageTexture.createFromImage` method before it can be updated. The new image dimensions, format, and mipmaps configuration should match the existing texture's image configuration, otherwise it has to be re-created with the `godot.ImageTexture.createFromImage` method.
		
		Use this method over `godot.ImageTexture.createFromImage` if you need to update the texture frequently, which is faster than allocating additional memory for a new texture each time.
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
		Resizes the texture to the specified dimensions.
	**/
	@:native("SetSizeOverride")
	public function setSizeOverride(size:godot.Vector2):Void;
}
