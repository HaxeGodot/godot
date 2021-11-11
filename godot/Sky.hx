// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
The base class for `godot.PanoramaSky` and `godot.ProceduralSky`.
**/
@:libType
@:csNative
@:native("Godot.Sky")
@:autoBuild(godot.Godot.buildUserClass())
extern abstract class Sky extends godot.Resource {
	/**		
		The `godot.Sky`'s radiance map size. The higher the radiance map size, the more detailed the lighting from the `godot.Sky` will be.
		
		See `godot.Sky_RadianceSizeEnum` constants for values.
		
		Note: You will only benefit from high radiance sizes if you have perfectly sharp reflective surfaces in your project and are not using `godot.ReflectionProbe`s or `godot.GIProbe`s. For most projects, keeping `godot.Sky.radianceSize` to the default value is the best compromise between visuals and performance. Be careful when using high radiance size values as these can cause crashes on low-end GPUs.
	**/
	@:native("RadianceSize")
	public var radianceSize:godot.Sky_RadianceSizeEnum;

	@:native("SetRadianceSize")
	public function setRadianceSize(size:godot.Sky_RadianceSizeEnum):Void;

	@:native("GetRadianceSize")
	public function getRadianceSize():godot.Sky_RadianceSizeEnum;
}
