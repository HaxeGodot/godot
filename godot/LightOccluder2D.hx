// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Occludes light cast by a Light2D, casting shadows. The LightOccluder2D must be provided with an `godot.OccluderPolygon2D` in order for the shadow to be computed.
**/
@:libType
@:csNative
@:native("Godot.LightOccluder2D")
@:autoBuild(godot.Godot.buildUserClass())
extern class LightOccluder2D extends godot.Node2D {
	/**		
		The LightOccluder2D's light mask. The LightOccluder2D will cast shadows only from Light2D(s) that have the same light mask(s).
	**/
	@:native("LightMask")
	public var lightMask:Int;

	/**		
		The `godot.OccluderPolygon2D` used to compute the shadow.
	**/
	@:native("Occluder")
	public var occluder:godot.OccluderPolygon2D;

	@:native("new")
	public function new():Void;

	@:native("SetOccluderPolygon")
	public function setOccluderPolygon(polygon:godot.OccluderPolygon2D):Void;

	@:native("GetOccluderPolygon")
	public function getOccluderPolygon():godot.OccluderPolygon2D;

	@:native("SetOccluderLightMask")
	public function setOccluderLightMask(mask:Int):Void;

	@:native("GetOccluderLightMask")
	public function getOccluderLightMask():Int;
}
