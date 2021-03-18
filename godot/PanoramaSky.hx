// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
A resource referenced in an `godot.Environment` that is used to draw a background. The Panorama sky functions similar to skyboxes in other engines, except it uses an equirectangular sky map instead of a cube map.

Using an HDR panorama is strongly recommended for accurate, high-quality reflections. Godot supports the Radiance HDR (`.hdr`) and OpenEXR (`.exr`) image formats for this purpose.

You can use [https://danilw.github.io/GLSL-howto/cubemap_to_panorama_js/cubemap_to_panorama.html](this tool) to convert a cube map to an equirectangular sky map.
**/
@:libType
@:csNative
@:native("Godot.PanoramaSky")
@:autoBuild(godot.Godot.buildUserClass())
extern class PanoramaSky extends godot.Sky {
	/**		
		`godot.Texture` to be applied to the PanoramaSky.
	**/
	@:native("Panorama")
	public var panorama:godot.Texture;

	@:native("new")
	public function new():Void;

	@:native("SetPanorama")
	public function setPanorama(texture:godot.Texture):Void;

	@:native("GetPanorama")
	public function getPanorama():godot.Texture;
}
