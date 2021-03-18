// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
A HingeJoint normally uses the Z axis of body A as the hinge axis, another axis can be specified when adding it manually though.
**/
@:libType
@:csNative
@:native("Godot.HingeJoint")
@:autoBuild(godot.Godot.buildUserClass())
extern class HingeJoint extends godot.Joint {
	/**		
		Maximum acceleration for the motor.
	**/
	@:native("Motor__maxImpulse")
	public var motor__maxImpulse:Single;

	/**		
		Target speed for the motor.
	**/
	@:native("Motor__targetVelocity")
	public var motor__targetVelocity:Single;

	/**		
		When activated, a motor turns the hinge.
	**/
	@:native("Motor__enable")
	public var motor__enable:Bool;

	/**		
		The lower this value, the more the rotation gets slowed down.
	**/
	@:native("AngularLimit__relaxation")
	public var angularLimit__relaxation:Single;

	@:native("AngularLimit__softness")
	public var angularLimit__softness:Single;

	/**		
		The speed with which the rotation across the axis perpendicular to the hinge gets corrected.
	**/
	@:native("AngularLimit__bias")
	public var angularLimit__bias:Single;

	/**		
		The minimum rotation. Only active if `godot.HingeJoint.angularLimit__enable` is `true`.
	**/
	@:native("AngularLimit__lower")
	public var angularLimit__lower:Single;

	/**		
		The maximum rotation. Only active if `godot.HingeJoint.angularLimit__enable` is `true`.
	**/
	@:native("AngularLimit__upper")
	public var angularLimit__upper:Single;

	/**		
		If `true`, the hinges maximum and minimum rotation, defined by `godot.HingeJoint.angularLimit__lower` and `godot.HingeJoint.angularLimit__upper` has effects.
	**/
	@:native("AngularLimit__enable")
	public var angularLimit__enable:Bool;

	/**		
		The speed with which the two bodies get pulled together when they move in different directions.
	**/
	@:native("Params__bias")
	public var params__bias:Single;

	@:native("new")
	public function new():Void;

	/**		
		Sets the value of the specified parameter.
	**/
	@:native("SetParam")
	public function setParam(param:godot.HingeJoint_Param, value:Single):Void;

	/**		
		Returns the value of the specified parameter.
	**/
	@:native("GetParam")
	public function getParam(param:godot.HingeJoint_Param):Single;

	/**		
		If `true`, enables the specified flag.
	**/
	@:native("SetFlag")
	public function setFlag(flag:godot.HingeJoint_Flag, enabled:Bool):Void;

	/**		
		Returns the value of the specified flag.
	**/
	@:native("GetFlag")
	public function getFlag(flag:godot.HingeJoint_Flag):Bool;
}
