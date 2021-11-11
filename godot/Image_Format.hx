// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.Image.Format")
@:csNative
extern enum Image_Format {
	/**		
		Texture format with a single 8-bit depth representing luminance.
	**/
	L8;

	/**		
		OpenGL texture format with two values, luminance and alpha each stored with 8 bits.
	**/
	La8;

	/**		
		OpenGL texture format `RED` with a single component and a bitdepth of 8.
		
		Note: When using the GLES2 backend, this uses the alpha channel instead of the red channel for storage.
	**/
	R8;

	/**		
		OpenGL texture format `RG` with two components and a bitdepth of 8 for each.
	**/
	Rg8;

	/**		
		OpenGL texture format `RGB` with three components, each with a bitdepth of 8.
		
		Note: When creating an `godot.ImageTexture`, an sRGB to linear color space conversion is performed.
	**/
	Rgb8;

	/**		
		OpenGL texture format `RGBA` with four components, each with a bitdepth of 8.
		
		Note: When creating an `godot.ImageTexture`, an sRGB to linear color space conversion is performed.
	**/
	Rgba8;

	/**		
		OpenGL texture format `RGBA` with four components, each with a bitdepth of 4.
	**/
	Rgba4444;

	/**		
		OpenGL texture format `GL_RGB5_A1` where 5 bits of depth for each component of RGB and one bit for alpha.
	**/
	Rgba5551;

	/**		
		OpenGL texture format `GL_R32F` where there's one component, a 32-bit floating-point value.
	**/
	Rf;

	/**		
		OpenGL texture format `GL_RG32F` where there are two components, each a 32-bit floating-point values.
	**/
	Rgf;

	/**		
		OpenGL texture format `GL_RGB32F` where there are three components, each a 32-bit floating-point values.
	**/
	Rgbf;

	/**		
		OpenGL texture format `GL_RGBA32F` where there are four components, each a 32-bit floating-point values.
	**/
	Rgbaf;

	/**		
		OpenGL texture format `GL_R32F` where there's one component, a 16-bit "half-precision" floating-point value.
	**/
	Rh;

	/**		
		OpenGL texture format `GL_RG32F` where there are two components, each a 16-bit "half-precision" floating-point value.
	**/
	Rgh;

	/**		
		OpenGL texture format `GL_RGB32F` where there are three components, each a 16-bit "half-precision" floating-point value.
	**/
	Rgbh;

	/**		
		OpenGL texture format `GL_RGBA32F` where there are four components, each a 16-bit "half-precision" floating-point value.
	**/
	Rgbah;

	/**		
		A special OpenGL texture format where the three color components have 9 bits of precision and all three share a single 5-bit exponent.
	**/
	Rgbe9995;

	/**		
		The [https://en.wikipedia.org/wiki/S3_Texture_Compression](S3TC) texture format that uses Block Compression 1, and is the smallest variation of S3TC, only providing 1 bit of alpha and color data being premultiplied with alpha.
		
		Note: When creating an `godot.ImageTexture`, an sRGB to linear color space conversion is performed.
	**/
	Dxt1;

	/**		
		The [https://en.wikipedia.org/wiki/S3_Texture_Compression](S3TC) texture format that uses Block Compression 2, and color data is interpreted as not having been premultiplied by alpha. Well suited for images with sharp alpha transitions between translucent and opaque areas.
		
		Note: When creating an `godot.ImageTexture`, an sRGB to linear color space conversion is performed.
	**/
	Dxt3;

	/**		
		The [https://en.wikipedia.org/wiki/S3_Texture_Compression](S3TC) texture format also known as Block Compression 3 or BC3 that contains 64 bits of alpha channel data followed by 64 bits of DXT1-encoded color data. Color data is not premultiplied by alpha, same as DXT3. DXT5 generally produces superior results for transparent gradients compared to DXT3.
		
		Note: When creating an `godot.ImageTexture`, an sRGB to linear color space conversion is performed.
	**/
	Dxt5;

	/**		
		Texture format that uses [https://www.khronos.org/opengl/wiki/Red_Green_Texture_Compression](Red Green Texture Compression), normalizing the red channel data using the same compression algorithm that DXT5 uses for the alpha channel.
	**/
	RgtcR;

	/**		
		Texture format that uses [https://www.khronos.org/opengl/wiki/Red_Green_Texture_Compression](Red Green Texture Compression), normalizing the red and green channel data using the same compression algorithm that DXT5 uses for the alpha channel.
	**/
	RgtcRg;

	/**		
		Texture format that uses [https://www.khronos.org/opengl/wiki/BPTC_Texture_Compression](BPTC) compression with unsigned normalized RGBA components.
		
		Note: When creating an `godot.ImageTexture`, an sRGB to linear color space conversion is performed.
	**/
	BptcRgba;

	/**		
		Texture format that uses [https://www.khronos.org/opengl/wiki/BPTC_Texture_Compression](BPTC) compression with signed floating-point RGB components.
	**/
	BptcRgbf;

	/**		
		Texture format that uses [https://www.khronos.org/opengl/wiki/BPTC_Texture_Compression](BPTC) compression with unsigned floating-point RGB components.
	**/
	BptcRgbfu;

	/**		
		Texture format used on PowerVR-supported mobile platforms, uses 2-bit color depth with no alpha. More information can be found [https://en.wikipedia.org/wiki/PVRTC](here).
		
		Note: When creating an `godot.ImageTexture`, an sRGB to linear color space conversion is performed.
	**/
	Pvrtc2;

	/**		
		Same as [https://en.wikipedia.org/wiki/PVRTC](PVRTC2), but with an alpha component.
	**/
	Pvrtc2a;

	/**		
		Similar to [https://en.wikipedia.org/wiki/PVRTC](PVRTC2), but with 4-bit color depth and no alpha.
	**/
	Pvrtc4;

	/**		
		Same as [https://en.wikipedia.org/wiki/PVRTC](PVRTC4), but with an alpha component.
	**/
	Pvrtc4a;

	/**		
		[https://en.wikipedia.org/wiki/Ericsson_Texture_Compression#ETC1](Ericsson Texture Compression format 1), also referred to as "ETC1", and is part of the OpenGL ES graphics standard. This format cannot store an alpha channel.
	**/
	Etc;

	/**		
		[https://en.wikipedia.org/wiki/Ericsson_Texture_Compression#ETC2_and_EAC](Ericsson Texture Compression format 2) (`R11_EAC` variant), which provides one channel of unsigned data.
	**/
	Etc2R11;

	/**		
		[https://en.wikipedia.org/wiki/Ericsson_Texture_Compression#ETC2_and_EAC](Ericsson Texture Compression format 2) (`SIGNED_R11_EAC` variant), which provides one channel of signed data.
	**/
	Etc2R11s;

	/**		
		[https://en.wikipedia.org/wiki/Ericsson_Texture_Compression#ETC2_and_EAC](Ericsson Texture Compression format 2) (`RG11_EAC` variant), which provides two channels of unsigned data.
	**/
	Etc2Rg11;

	/**		
		[https://en.wikipedia.org/wiki/Ericsson_Texture_Compression#ETC2_and_EAC](Ericsson Texture Compression format 2) (`SIGNED_RG11_EAC` variant), which provides two channels of signed data.
	**/
	Etc2Rg11s;

	/**		
		[https://en.wikipedia.org/wiki/Ericsson_Texture_Compression#ETC2_and_EAC](Ericsson Texture Compression format 2) (`RGB8` variant), which is a follow-up of ETC1 and compresses RGB888 data.
		
		Note: When creating an `godot.ImageTexture`, an sRGB to linear color space conversion is performed.
	**/
	Etc2Rgb8;

	/**		
		[https://en.wikipedia.org/wiki/Ericsson_Texture_Compression#ETC2_and_EAC](Ericsson Texture Compression format 2) (`RGBA8`variant), which compresses RGBA8888 data with full alpha support.
		
		Note: When creating an `godot.ImageTexture`, an sRGB to linear color space conversion is performed.
	**/
	Etc2Rgba8;

	/**		
		[https://en.wikipedia.org/wiki/Ericsson_Texture_Compression#ETC2_and_EAC](Ericsson Texture Compression format 2) (`RGB8_PUNCHTHROUGH_ALPHA1` variant), which compresses RGBA data to make alpha either fully transparent or fully opaque.
		
		Note: When creating an `godot.ImageTexture`, an sRGB to linear color space conversion is performed.
	**/
	Etc2Rgb8a1;

	/**		
		Represents the size of the `godot.Image_Format` enum.
	**/
	Max;
}
