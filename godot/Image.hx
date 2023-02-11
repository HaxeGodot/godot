// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Native image datatype. Contains image data which can be converted to an `godot.ImageTexture` and provides commonly used image processing methods. The maximum width and height for an `godot.Image` are `godot.Image.maxWidth` and `godot.Image.maxHeight`.

An `godot.Image` cannot be assigned to a `texture` property of an object directly (such as `godot.Sprite`), and has to be converted manually to an `godot.ImageTexture` first.

Note: The maximum image size is 16384×16384 pixels due to graphics hardware limitations. Larger images may fail to import.
**/
@:libType
@:csNative
@:native("Godot.Image")
@:autoBuild(godot.Godot.buildUserClass())
extern class Image extends godot.Resource {
	/**		
		Holds all the image's color data in a given format. See `godot.Image_Format` constants.
	**/
	@:native("Data")
	public var data:godot.collections.Dictionary;

	/**		
		The maximal height allowed for `godot.Image` resources.
	**/
	@:native("MaxHeight")
	public static var MAX_HEIGHT(default, never):Int;

	/**		
		The maximal width allowed for `godot.Image` resources.
	**/
	@:native("MaxWidth")
	public static var MAX_WIDTH(default, never):Int;

	@:native("new")
	public function new():Void;

	/**		
		Returns the image's width.
	**/
	@:native("GetWidth")
	public function getWidth():Int;

	/**		
		Returns the image's height.
	**/
	@:native("GetHeight")
	public function getHeight():Int;

	/**		
		Returns the image's size (width and height).
	**/
	@:native("GetSize")
	public function getSize():godot.Vector2;

	/**		
		Returns `true` if the image has generated mipmaps.
	**/
	@:native("HasMipmaps")
	public function hasMipmaps():Bool;

	/**		
		Returns the image's format. See `godot.Image_Format` constants.
	**/
	@:native("GetFormat")
	public function getFormat():godot.Image_Format;

	/**		
		Returns a copy of the image's raw data.
	**/
	public extern inline function getData():std.Array<cs.types.UInt8> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetData()", this));
	}

	/**		
		Converts the image's format. See `godot.Image_Format` constants.
	**/
	@:native("Convert")
	public function convert(format:godot.Image_Format):Void;

	/**		
		Returns the offset where the image's mipmap with index `mipmap` is stored in the `data` dictionary.
	**/
	@:native("GetMipmapOffset")
	public function getMipmapOffset(mipmap:Int):Int;

	#if doc_gen
	/**		
		Resizes the image to the nearest power of 2 for the width and height. If `square` is `true` then set width and height to be the same. New pixels are calculated using the `interpolation` mode defined via `godot.Image_Interpolation` constants.
	**/
	@:native("ResizeToPo2")
	public function resizeToPo2(?square:Bool, ?interpolation:godot.Image_Interpolation):Void;
	#else
	/**		
		Resizes the image to the nearest power of 2 for the width and height. If `square` is `true` then set width and height to be the same. New pixels are calculated using the `interpolation` mode defined via `godot.Image_Interpolation` constants.
	**/
	@:native("ResizeToPo2")
	public overload function resizeToPo2():Void;

	/**		
		Resizes the image to the nearest power of 2 for the width and height. If `square` is `true` then set width and height to be the same. New pixels are calculated using the `interpolation` mode defined via `godot.Image_Interpolation` constants.
	**/
	@:native("ResizeToPo2")
	public overload function resizeToPo2(square:Bool):Void;

	/**		
		Resizes the image to the nearest power of 2 for the width and height. If `square` is `true` then set width and height to be the same. New pixels are calculated using the `interpolation` mode defined via `godot.Image_Interpolation` constants.
	**/
	@:native("ResizeToPo2")
	public overload function resizeToPo2(square:Bool, interpolation:godot.Image_Interpolation):Void;
	#end

	#if doc_gen
	/**		
		Resizes the image to the given `width` and `height`. New pixels are calculated using the `interpolation` mode defined via `godot.Image_Interpolation` constants.
	**/
	@:native("Resize")
	public function resize(width:Int, height:Int, ?interpolation:godot.Image_Interpolation):Void;
	#else
	/**		
		Resizes the image to the given `width` and `height`. New pixels are calculated using the `interpolation` mode defined via `godot.Image_Interpolation` constants.
	**/
	@:native("Resize")
	public overload function resize(width:Int, height:Int):Void;

	/**		
		Resizes the image to the given `width` and `height`. New pixels are calculated using the `interpolation` mode defined via `godot.Image_Interpolation` constants.
	**/
	@:native("Resize")
	public overload function resize(width:Int, height:Int, interpolation:godot.Image_Interpolation):Void;
	#end

	/**		
		Shrinks the image by a factor of 2.
	**/
	@:native("ShrinkX2")
	public function shrinkX2():Void;

	/**		
		Stretches the image and enlarges it by a factor of 2. No interpolation is done.
	**/
	@:native("ExpandX2Hq2x")
	public function expandX2Hq2x():Void;

	/**		
		Crops the image to the given `width` and `height`. If the specified size is larger than the current size, the extra area is filled with black pixels.
	**/
	@:native("Crop")
	public function crop(width:Int, height:Int):Void;

	/**		
		Flips the image horizontally.
	**/
	@:native("FlipX")
	public function flipX():Void;

	/**		
		Flips the image vertically.
	**/
	@:native("FlipY")
	public function flipY():Void;

	#if doc_gen
	/**		
		Generates mipmaps for the image. Mipmaps are precalculated lower-resolution copies of the image that are automatically used if the image needs to be scaled down when rendered. They help improve image quality and performance when rendering. This method returns an error if the image is compressed, in a custom format, or if the image's width/height is `0`.
		
		Note: Mipmap generation is done on the CPU, is single-threaded and is always done on the main thread. This means generating mipmaps will result in noticeable stuttering during gameplay, even if `godot.Image.generateMipmaps` is called from a `godot.Thread`.
	**/
	@:native("GenerateMipmaps")
	public function generateMipmaps(?renormalize:Bool):godot.Error;
	#else
	/**		
		Generates mipmaps for the image. Mipmaps are precalculated lower-resolution copies of the image that are automatically used if the image needs to be scaled down when rendered. They help improve image quality and performance when rendering. This method returns an error if the image is compressed, in a custom format, or if the image's width/height is `0`.
		
		Note: Mipmap generation is done on the CPU, is single-threaded and is always done on the main thread. This means generating mipmaps will result in noticeable stuttering during gameplay, even if `godot.Image.generateMipmaps` is called from a `godot.Thread`.
	**/
	@:native("GenerateMipmaps")
	public overload function generateMipmaps():godot.Error;

	/**		
		Generates mipmaps for the image. Mipmaps are precalculated lower-resolution copies of the image that are automatically used if the image needs to be scaled down when rendered. They help improve image quality and performance when rendering. This method returns an error if the image is compressed, in a custom format, or if the image's width/height is `0`.
		
		Note: Mipmap generation is done on the CPU, is single-threaded and is always done on the main thread. This means generating mipmaps will result in noticeable stuttering during gameplay, even if `godot.Image.generateMipmaps` is called from a `godot.Thread`.
	**/
	@:native("GenerateMipmaps")
	public overload function generateMipmaps(renormalize:Bool):godot.Error;
	#end

	/**		
		Removes the image's mipmaps.
	**/
	@:native("ClearMipmaps")
	public function clearMipmaps():Void;

	/**		
		Creates an empty image of given size and format. See `godot.Image_Format` constants. If `use_mipmaps` is `true` then generate mipmaps for this image. See the `godot.Image.generateMipmaps`.
	**/
	@:native("Create")
	public function create(width:Int, height:Int, useMipmaps:Bool, format:godot.Image_Format):Void;

	/**		
		Creates a new image of given size and format. See `godot.Image_Format` constants. Fills the image with the given raw data. If `use_mipmaps` is `true` then loads mipmaps for this image from `data`. See `godot.Image.generateMipmaps`.
	**/
	@:native("CreateFromData")
	public function createFromData(width:Int, height:Int, useMipmaps:Bool, format:godot.Image_Format, data:HaxeArray<cs.types.UInt8>):Void;

	/**		
		Returns `true` if the image has no data.
	**/
	@:native("IsEmpty")
	public function isEmpty():Bool;

	/**		
		Loads an image from file `path`. See [https://docs.godotengine.org/en/3.4/tutorials/assets_pipeline/importing_images.html#supported-image-formats](Supported image formats) for a list of supported image formats and limitations.
		
		Warning: This method should only be used in the editor or in cases when you need to load external images at run-time, such as images located at the `user://` directory, and may not work in exported projects.
		
		See also `godot.ImageTexture` description for usage examples.
	**/
	@:native("Load")
	public function load(path:std.String):godot.Error;

	/**		
		Saves the image as a PNG file to `path`.
	**/
	@:native("SavePng")
	public function savePng(path:std.String):godot.Error;

	public extern inline function savePngToBuffer():std.Array<cs.types.UInt8> {
		return cs.Lib.array(cs.Syntax.code("{0}.SavePngToBuffer()", this));
	}

	#if doc_gen
	/**		
		Saves the image as an EXR file to `path`. If `grayscale` is `true` and the image has only one channel, it will be saved explicitly as monochrome rather than one red channel. This function will return `ERR_UNAVAILABLE` if Godot was compiled without the TinyEXR module.
		
		Note: The TinyEXR module is disabled in non-editor builds, which means `godot.Image.saveExr` will return `ERR_UNAVAILABLE` when it is called from an exported project.
	**/
	@:native("SaveExr")
	public function saveExr(path:std.String, ?grayscale:Bool):godot.Error;
	#else
	/**		
		Saves the image as an EXR file to `path`. If `grayscale` is `true` and the image has only one channel, it will be saved explicitly as monochrome rather than one red channel. This function will return `ERR_UNAVAILABLE` if Godot was compiled without the TinyEXR module.
		
		Note: The TinyEXR module is disabled in non-editor builds, which means `godot.Image.saveExr` will return `ERR_UNAVAILABLE` when it is called from an exported project.
	**/
	@:native("SaveExr")
	public overload function saveExr(path:std.String):godot.Error;

	/**		
		Saves the image as an EXR file to `path`. If `grayscale` is `true` and the image has only one channel, it will be saved explicitly as monochrome rather than one red channel. This function will return `ERR_UNAVAILABLE` if Godot was compiled without the TinyEXR module.
		
		Note: The TinyEXR module is disabled in non-editor builds, which means `godot.Image.saveExr` will return `ERR_UNAVAILABLE` when it is called from an exported project.
	**/
	@:native("SaveExr")
	public overload function saveExr(path:std.String, grayscale:Bool):godot.Error;
	#end

	/**		
		Returns `godot.Image_AlphaMode.blend` if the image has data for alpha values. Returns `godot.Image_AlphaMode.bit` if all the alpha values are stored in a single bit. Returns `godot.Image_AlphaMode.none` if no data for alpha values is found.
	**/
	@:native("DetectAlpha")
	public function detectAlpha():godot.Image_AlphaMode;

	/**		
		Returns `true` if all the image's pixels have an alpha value of 0. Returns `false` if any pixel has an alpha value higher than 0.
	**/
	@:native("IsInvisible")
	public function isInvisible():Bool;

	/**		
		Compresses the image to use less memory. Can not directly access pixel data while the image is compressed. Returns error if the chosen compression mode is not available. See `godot.Image_CompressMode` and `godot.Image_CompressSource` constants.
	**/
	@:native("Compress")
	public function compress(mode:godot.Image_CompressMode, source:godot.Image_CompressSource, lossyQuality:Single):godot.Error;

	/**		
		Decompresses the image if it is compressed. Returns an error if decompress function is not available.
	**/
	@:native("Decompress")
	public function decompress():godot.Error;

	/**		
		Returns `true` if the image is compressed.
	**/
	@:native("IsCompressed")
	public function isCompressed():Bool;

	/**		
		Blends low-alpha pixels with nearby pixels.
	**/
	@:native("FixAlphaEdges")
	public function fixAlphaEdges():Void;

	/**		
		Multiplies color values with alpha values. Resulting color values for a pixel are `(color * alpha)/256`.
	**/
	@:native("PremultiplyAlpha")
	public function premultiplyAlpha():Void;

	/**		
		Converts the raw data from the sRGB colorspace to a linear scale.
	**/
	@:native("SrgbToLinear")
	public function srgbToLinear():Void;

	/**		
		Converts the image's data to represent coordinates on a 3D plane. This is used when the image represents a normalmap. A normalmap can add lots of detail to a 3D surface without increasing the polygon count.
	**/
	@:native("NormalmapToXy")
	public function normalmapToXy():Void;

	/**		
		Converts a standard RGBE (Red Green Blue Exponent) image to an sRGB image.
	**/
	@:native("RgbeToSrgb")
	public function rgbeToSrgb():godot.Image;

	#if doc_gen
	/**		
		Converts a bumpmap to a normalmap. A bumpmap provides a height offset per-pixel, while a normalmap provides a normal direction per pixel.
	**/
	@:native("BumpmapToNormalmap")
	public function bumpmapToNormalmap(?bumpScale:Single):Void;
	#else
	/**		
		Converts a bumpmap to a normalmap. A bumpmap provides a height offset per-pixel, while a normalmap provides a normal direction per pixel.
	**/
	@:native("BumpmapToNormalmap")
	public overload function bumpmapToNormalmap():Void;

	/**		
		Converts a bumpmap to a normalmap. A bumpmap provides a height offset per-pixel, while a normalmap provides a normal direction per pixel.
	**/
	@:native("BumpmapToNormalmap")
	public overload function bumpmapToNormalmap(bumpScale:Single):Void;
	#end

	/**		
		Copies `src_rect` from `src` image to this image at coordinates `dst`.
	**/
	@:native("BlitRect")
	public function blitRect(src:godot.Image, srcRect:godot.Rect2, dst:godot.Vector2):Void;

	/**		
		Blits `src_rect` area from `src` image to this image at the coordinates given by `dst`. `src` pixel is copied onto `dst` if the corresponding `mask` pixel's alpha value is not 0. `src` image and `mask` image must have the same size (width and height) but they can have different formats.
	**/
	@:native("BlitRectMask")
	public function blitRectMask(src:godot.Image, mask:godot.Image, srcRect:godot.Rect2, dst:godot.Vector2):Void;

	/**		
		Alpha-blends `src_rect` from `src` image to this image at coordinates `dest`.
	**/
	@:native("BlendRect")
	public function blendRect(src:godot.Image, srcRect:godot.Rect2, dst:godot.Vector2):Void;

	/**		
		Alpha-blends `src_rect` from `src` image to this image using `mask` image at coordinates `dst`. Alpha channels are required for both `src` and `mask`. `dst` pixels and `src` pixels will blend if the corresponding mask pixel's alpha value is not 0. `src` image and `mask` image must have the same size (width and height) but they can have different formats.
	**/
	@:native("BlendRectMask")
	public function blendRectMask(src:godot.Image, mask:godot.Image, srcRect:godot.Rect2, dst:godot.Vector2):Void;

	/**		
		Fills the image with a given `godot.Color`.
	**/
	@:native("Fill")
	public function fill(color:godot.Color):Void;

	/**		
		Returns a `godot.Rect2` enclosing the visible portion of the image, considering each pixel with a non-zero alpha channel as visible.
	**/
	@:native("GetUsedRect")
	public function getUsedRect():godot.Rect2;

	/**		
		Returns a new image that is a copy of the image's area specified with `rect`.
	**/
	@:native("GetRect")
	public function getRect(rect:godot.Rect2):godot.Image;

	/**		
		Copies `src` image to this image.
	**/
	@:native("CopyFrom")
	public function copyFrom(src:godot.Image):Void;

	/**		
		Locks the data for reading and writing access. Sends an error to the console if the image is not locked when reading or writing a pixel.
	**/
	@:native("Lock")
	public function lock():Void;

	/**		
		Unlocks the data and prevents changes.
	**/
	@:native("Unlock")
	public function unlock():Void;

	/**		
		Returns the color of the pixel at `src` if the image is locked. If the image is unlocked, it always returns a `godot.Color` with the value `(0, 0, 0, 1.0)`. This is the same as `godot.Image.getPixel`, but with a Vector2 argument instead of two integer arguments.
	**/
	@:native("GetPixelv")
	public function getPixelv(src:godot.Vector2):godot.Color;

	/**		
		Returns the color of the pixel at `(x, y)` if the image is locked. If the image is unlocked, it always returns a `godot.Color` with the value `(0, 0, 0, 1.0)`. This is the same as `godot.Image.getPixelv`, but two integer arguments instead of a Vector2 argument.
	**/
	@:native("GetPixel")
	public function getPixel(x:Int, y:Int):godot.Color;

	/**		
		Sets the `godot.Color` of the pixel at `(dst.x, dst.y)` if the image is locked. Note that the `dst` values must be integers. Example:
		
		```
		
		var img = Image.new()
		img.create(img_width, img_height, false, Image.FORMAT_RGBA8)
		img.lock()
		img.set_pixelv(Vector2(x, y), color) # Works
		img.unlock()
		img.set_pixelv(Vector2(x, y), color) # Does not have an effect
		
		```
	**/
	@:native("SetPixelv")
	public function setPixelv(dst:godot.Vector2, color:godot.Color):Void;

	/**		
		Sets the `godot.Color` of the pixel at `(x, y)` if the image is locked. Example:
		
		```
		
		var img = Image.new()
		img.create(img_width, img_height, false, Image.FORMAT_RGBA8)
		img.lock()
		img.set_pixel(x, y, color) # Works
		img.unlock()
		img.set_pixel(x, y, color) # Does not have an effect
		
		```
	**/
	@:native("SetPixel")
	public function setPixel(x:Int, y:Int, color:godot.Color):Void;

	/**		
		Loads an image from the binary contents of a PNG file.
	**/
	@:native("LoadPngFromBuffer")
	public function loadPngFromBuffer(buffer:HaxeArray<cs.types.UInt8>):godot.Error;

	/**		
		Loads an image from the binary contents of a JPEG file.
	**/
	@:native("LoadJpgFromBuffer")
	public function loadJpgFromBuffer(buffer:HaxeArray<cs.types.UInt8>):godot.Error;

	/**		
		Loads an image from the binary contents of a WebP file.
	**/
	@:native("LoadWebpFromBuffer")
	public function loadWebpFromBuffer(buffer:HaxeArray<cs.types.UInt8>):godot.Error;

	/**		
		Loads an image from the binary contents of a TGA file.
	**/
	@:native("LoadTgaFromBuffer")
	public function loadTgaFromBuffer(buffer:HaxeArray<cs.types.UInt8>):godot.Error;

	/**		
		Loads an image from the binary contents of a BMP file.
		
		Note: Godot's BMP module doesn't support 16-bit per pixel images. Only 1-bit, 4-bit, 8-bit, 24-bit, and 32-bit per pixel images are supported.
	**/
	@:native("LoadBmpFromBuffer")
	public function loadBmpFromBuffer(buffer:HaxeArray<cs.types.UInt8>):godot.Error;
}
