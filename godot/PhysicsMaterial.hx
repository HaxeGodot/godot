// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Provides a means of modifying the collision properties of a `godot.PhysicsBody`.
**/
@:libType
@:csNative
@:native("Godot.PhysicsMaterial")
@:autoBuild(godot.Godot.buildUserClass())
extern class PhysicsMaterial extends godot.Resource {
	/**		
		If `true`, subtracts the bounciness from the colliding object's bounciness instead of adding it.
	**/
	@:native("Absorbent")
	public var absorbent:Bool;

	/**		
		The body's bounciness. Values range from `0` (no bounce) to `1` (full bounciness).
	**/
	@:native("Bounce")
	public var bounce:Single;

	/**		
		If `true`, the physics engine will use the friction of the object marked as "rough" when two objects collide. If `false`, the physics engine will use the lowest friction of all colliding objects instead. If `true` for both colliding objects, the physics engine will use the highest friction.
	**/
	@:native("Rough")
	public var rough:Bool;

	/**		
		The body's friction. Values range from `0` (frictionless) to `1` (maximum friction).
	**/
	@:native("Friction")
	public var friction:Single;

	@:native("new")
	public function new():Void;

	@:native("SetFriction")
	public function setFriction(friction:Single):Void;

	@:native("GetFriction")
	public function getFriction():Single;

	@:native("SetRough")
	public function setRough(rough:Bool):Void;

	@:native("IsRough")
	public function isRough():Bool;

	@:native("SetBounce")
	public function setBounce(bounce:Single):Void;

	@:native("GetBounce")
	public function getBounce():Single;

	@:native("SetAbsorbent")
	public function setAbsorbent(absorbent:Bool):Void;

	@:native("IsAbsorbent")
	public function isAbsorbent():Bool;
}
