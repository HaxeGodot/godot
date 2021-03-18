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
		
		Note: Some hardware will have trouble with higher radiance sizes, especially  and above. Only use such high values on high-end hardware.
	**/
	@:native("RadianceSize")
	public var radianceSize:godot.Sky_RadianceSizeEnum;

	@:native("SetRadianceSize")
	public function setRadianceSize(size:godot.Sky_RadianceSizeEnum):Void;

	@:native("GetRadianceSize")
	public function getRadianceSize():godot.Sky_RadianceSizeEnum;
}
