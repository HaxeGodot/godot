// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Base class for `godot.Texture3D` and `godot.TextureArray`. Cannot be used directly, but contains all the functions necessary for accessing and using `godot.Texture3D` and `godot.TextureArray`. Data is set on a per-layer basis. For `godot.Texture3D`s, the layer sepcifies the depth or Z-index, they can be treated as a bunch of 2D slices. Similarly, for `godot.TextureArray`s, the layer specifies the array layer.
**/
@:libType
@:csNative
@:native("Godot.TextureLayered")
@:autoBuild(godot.Godot.buildUserClass())
extern abstract class TextureLayered extends godot.Resource {
	/**		
		Returns a dictionary with all the data used by this texture.
	**/
	@:native("Data")
	public var data:godot.collections.Dictionary;

	/**		
		Specifies which `godot.TextureLayered_FlagsEnum` apply to this texture.
	**/
	@:native("Flags")
	public var flags:UInt;

	@:native("SetFlags")
	public function setFlags(flags:UInt):Void;

	@:native("GetFlags")
	public function getFlags():UInt;

	/**		
		Returns the current format being used by this texture. See `godot.Image_Format` for details.
	**/
	@:native("GetFormat")
	public function getFormat():godot.Image_Format;

	/**		
		Returns the width of the texture. Width is typically represented by the X-axis.
	**/
	@:native("GetWidth")
	public function getWidth():UInt;

	/**		
		Returns the height of the texture. Height is typically represented by the Y-axis.
	**/
	@:native("GetHeight")
	public function getHeight():UInt;

	/**		
		Returns the depth of the texture. Depth is the 3rd dimension (typically Z-axis).
	**/
	@:native("GetDepth")
	public function getDepth():UInt;

	#if doc_gen
	/**		
		Creates the `godot.Texture3D` or `godot.TextureArray` with specified `width`, `height`, and `depth`. See `godot.Image_Format` for `format` options. See `godot.TextureLayered_FlagsEnum` enumerator for `flags` options.
	**/
	@:native("Create")
	public function create(width:UInt, height:UInt, depth:UInt, format:godot.Image_Format, ?flags:UInt):Void;
	#else
	/**		
		Creates the `godot.Texture3D` or `godot.TextureArray` with specified `width`, `height`, and `depth`. See `godot.Image_Format` for `format` options. See `godot.TextureLayered_FlagsEnum` enumerator for `flags` options.
	**/
	@:native("Create")
	public overload function create(width:UInt, height:UInt, depth:UInt, format:godot.Image_Format):Void;

	/**		
		Creates the `godot.Texture3D` or `godot.TextureArray` with specified `width`, `height`, and `depth`. See `godot.Image_Format` for `format` options. See `godot.TextureLayered_FlagsEnum` enumerator for `flags` options.
	**/
	@:native("Create")
	public overload function create(width:UInt, height:UInt, depth:UInt, format:godot.Image_Format, flags:UInt):Void;
	#end

	/**		
		Sets the data for the specified layer. Data takes the form of a 2-dimensional `godot.Image` resource.
	**/
	@:native("SetLayerData")
	public function setLayerData(image:godot.Image, layer:Int):Void;

	/**		
		Returns an `godot.Image` resource with the data from specified `layer`.
	**/
	@:native("GetLayerData")
	public function getLayerData(layer:Int):godot.Image;

	#if doc_gen
	/**		
		Partially sets the data for a specified `layer` by overwriting using the data of the specified `image`. `x_offset` and `y_offset` determine where the `godot.Image` is "stamped" over the texture. The `image` must fit within the texture.
	**/
	@:native("SetDataPartial")
	public function setDataPartial(image:godot.Image, xOffset:Int, yOffset:Int, layer:Int, ?mipmap:Int):Void;
	#else
	/**		
		Partially sets the data for a specified `layer` by overwriting using the data of the specified `image`. `x_offset` and `y_offset` determine where the `godot.Image` is "stamped" over the texture. The `image` must fit within the texture.
	**/
	@:native("SetDataPartial")
	public overload function setDataPartial(image:godot.Image, xOffset:Int, yOffset:Int, layer:Int):Void;

	/**		
		Partially sets the data for a specified `layer` by overwriting using the data of the specified `image`. `x_offset` and `y_offset` determine where the `godot.Image` is "stamped" over the texture. The `image` must fit within the texture.
	**/
	@:native("SetDataPartial")
	public overload function setDataPartial(image:godot.Image, xOffset:Int, yOffset:Int, layer:Int, mipmap:Int):Void;
	#end
}
