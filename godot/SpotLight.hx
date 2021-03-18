// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
A Spotlight is a type of `godot.Light` node that emits lights in a specific direction, in the shape of a cone. The light is attenuated through the distance. This attenuation can be configured by changing the energy, radius and attenuation parameters of `godot.Light`.
**/
@:libType
@:csNative
@:native("Godot.SpotLight")
@:autoBuild(godot.Godot.buildUserClass())
extern class SpotLight extends godot.Light {
	/**		
		The spotlight's angular attenuation curve.
	**/
	@:native("SpotAngleAttenuation")
	public var spotAngleAttenuation:Single;

	/**		
		The spotlight's angle in degrees.
	**/
	@:native("SpotAngle")
	public var spotAngle:Single;

	/**		
		The spotlight's light energy attenuation curve.
	**/
	@:native("SpotAttenuation")
	public var spotAttenuation:Single;

	/**		
		The maximal range that can be reached by the spotlight. Note that the effectively lit area may appear to be smaller depending on the `godot.SpotLight.spotAttenuation` in use. No matter the `godot.SpotLight.spotAttenuation` in use, the light will never reach anything outside this range.
	**/
	@:native("SpotRange")
	public var spotRange:Single;

	@:native("new")
	public function new():Void;
}
