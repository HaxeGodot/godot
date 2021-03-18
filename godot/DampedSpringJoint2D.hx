// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Damped spring constraint for 2D physics. This resembles a spring joint that always wants to go back to a given length.
**/
@:libType
@:csNative
@:native("Godot.DampedSpringJoint2D")
@:autoBuild(godot.Godot.buildUserClass())
extern class DampedSpringJoint2D extends godot.Joint2D {
	/**		
		The spring joint's damping ratio. A value between `0` and `1`. When the two bodies move into different directions the system tries to align them to the spring axis again. A high `damping` value forces the attached bodies to align faster.
	**/
	@:native("Damping")
	public var damping:Single;

	/**		
		The higher the value, the less the bodies attached to the joint will deform it. The joint applies an opposing force to the bodies, the product of the stiffness multiplied by the size difference from its resting length.
	**/
	@:native("Stiffness")
	public var stiffness:Single;

	/**		
		When the bodies attached to the spring joint move they stretch or squash it. The joint always tries to resize towards this length.
	**/
	@:native("RestLength")
	public var restLength:Single;

	/**		
		The spring joint's maximum length. The two attached bodies cannot stretch it past this value.
	**/
	@:native("Length")
	public var length:Single;

	@:native("new")
	public function new():Void;

	@:native("SetLength")
	public function setLength(length:Single):Void;

	@:native("GetLength")
	public function getLength():Single;

	@:native("SetRestLength")
	public function setRestLength(restLength:Single):Void;

	@:native("GetRestLength")
	public function getRestLength():Single;

	@:native("SetStiffness")
	public function setStiffness(stiffness:Single):Void;

	@:native("GetStiffness")
	public function getStiffness():Single;

	@:native("SetDamping")
	public function setDamping(damping:Single):Void;

	@:native("GetDamping")
	public function getDamping():Single;
}
