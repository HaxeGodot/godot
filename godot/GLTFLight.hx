// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Note: This class is only compiled in editor builds. Run-time glTF loading and saving is not available in exported projects. References to `godot.GLTFLight` within a script will cause an error in an exported project.
**/
@:libType
@:csNative
@:native("Godot.GLTFLight")
@:autoBuild(godot.Godot.buildUserClass())
extern class GLTFLight extends godot.Resource {
	/**		
		The outer angle of the cone in a spotlight. Must be greater than or equal to the inner angle.
		
		At this angle, the light drops off to zero brightness. Between the inner and outer cone angles, there is a transition from full brightness to zero brightness. If this angle is a half turn, then the spotlight emits in all directions. When creating a Godot `godot.SpotLight`, the outer cone angle is used as the angle of the spotlight.
	**/
	@:native("OuterConeAngle")
	public var outerConeAngle:Single;

	/**		
		The inner angle of the cone in a spotlight. Must be less than or equal to the outer cone angle.
		
		Within this angle, the light is at full brightness. Between the inner and outer cone angles, there is a transition from full brightness to zero brightness. When creating a Godot `godot.SpotLight`, the ratio between the inner and outer cone angles is used to calculate the attenuation of the light.
	**/
	@:native("InnerConeAngle")
	public var innerConeAngle:Single;

	/**		
		The range of the light, beyond which the light has no effect. GLTF lights with no range defined behave like physical lights (which have infinite range). When creating a Godot light, the range is clamped to 4096.
	**/
	@:native("Range")
	public var range:Single;

	/**		
		The type of the light. The values accepted by Godot are "point", "spot", and "directional", which correspond to Godot's `godot.OmniLight`, `godot.SpotLight`, and `godot.DirectionalLight` respectively.
	**/
	@:native("Type")
	public var type:std.String;

	/**		
		The intensity of the light. This is expressed in candelas (lumens per steradian) for point and spot lights, and lux (lumens per m²) for directional lights. When creating a Godot light, this value is converted to a unitless multiplier.
	**/
	@:native("Intensity")
	public var intensity:Single;

	/**		
		The `godot.Color` of the light. Defaults to white. A black color causes the light to have no effect.
	**/
	@:native("Color")
	public var color:godot.Color;

	@:native("new")
	public function new():Void;

	@:native("GetColor")
	public function getColor():godot.Color;

	@:native("SetColor")
	public function setColor(color:godot.Color):Void;

	@:native("GetIntensity")
	public function getIntensity():Single;

	@:native("SetIntensity")
	public function setIntensity(intensity:Single):Void;

	@:native("GetType")
	public function getType():std.String;

	@:native("SetType")
	public function setType(type:std.String):Void;

	@:native("GetRange")
	public function getRange():Single;

	@:native("SetRange")
	public function setRange(range:Single):Void;

	@:native("GetInnerConeAngle")
	public function getInnerConeAngle():Single;

	@:native("SetInnerConeAngle")
	public function setInnerConeAngle(innerConeAngle:Single):Void;

	@:native("GetOuterConeAngle")
	public function getOuterConeAngle():Single;

	@:native("SetOuterConeAngle")
	public function setOuterConeAngle(outerConeAngle:Single):Void;
}
