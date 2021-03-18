// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
The first 3 DOF axes are linear axes, which represent translation of Bodies, and the latter 3 DOF axes represent the angular motion. Each axis can be either locked, or limited.
**/
@:libType
@:csNative
@:native("Godot.Generic6DOFJoint")
@:autoBuild(godot.Godot.buildUserClass())
extern class Generic6DOFJoint extends godot.Joint {
	@:native("Precision")
	public var precision:Int;

	@:native("AngularSpringZ__equilibriumPoint")
	public var angularSpringZ__equilibriumPoint:Single;

	@:native("AngularSpringZ__damping")
	public var angularSpringZ__damping:Single;

	@:native("AngularSpringZ__stiffness")
	public var angularSpringZ__stiffness:Single;

	@:native("AngularSpringZ__enabled")
	public var angularSpringZ__enabled:Bool;

	/**		
		Maximum acceleration for the motor at the Z axis.
	**/
	@:native("AngularMotorZ__forceLimit")
	public var angularMotorZ__forceLimit:Single;

	/**		
		Target speed for the motor at the Z axis.
	**/
	@:native("AngularMotorZ__targetVelocity")
	public var angularMotorZ__targetVelocity:Single;

	/**		
		If `true`, a rotating motor at the Z axis is enabled.
	**/
	@:native("AngularMotorZ__enabled")
	public var angularMotorZ__enabled:Bool;

	/**		
		When rotating across the Z axis, this error tolerance factor defines how much the correction gets slowed down. The lower, the slower.
	**/
	@:native("AngularLimitZ__erp")
	public var angularLimitZ__erp:Single;

	/**		
		The maximum amount of force that can occur, when rotating around the Z axis.
	**/
	@:native("AngularLimitZ__forceLimit")
	public var angularLimitZ__forceLimit:Single;

	/**		
		The amount of rotational damping across the Z axis. The lower, the more dampening occurs.
	**/
	@:native("AngularLimitZ__damping")
	public var angularLimitZ__damping:Single;

	/**		
		The amount of rotational restitution across the Z axis. The lower, the more restitution occurs.
	**/
	@:native("AngularLimitZ__restitution")
	public var angularLimitZ__restitution:Single;

	/**		
		The speed of all rotations across the Z axis.
	**/
	@:native("AngularLimitZ__softness")
	public var angularLimitZ__softness:Single;

	/**		
		The minimum rotation in negative direction to break loose and rotate around the Z axis.
	**/
	@:native("AngularLimitZ__lowerAngle")
	public var angularLimitZ__lowerAngle:Single;

	/**		
		The minimum rotation in positive direction to break loose and rotate around the Z axis.
	**/
	@:native("AngularLimitZ__upperAngle")
	public var angularLimitZ__upperAngle:Single;

	/**		
		If `true`, rotation across the Z axis is limited.
	**/
	@:native("AngularLimitZ__enabled")
	public var angularLimitZ__enabled:Bool;

	@:native("LinearSpringZ__equilibriumPoint")
	public var linearSpringZ__equilibriumPoint:Single;

	@:native("LinearSpringZ__damping")
	public var linearSpringZ__damping:Single;

	@:native("LinearSpringZ__stiffness")
	public var linearSpringZ__stiffness:Single;

	@:native("LinearSpringZ__enabled")
	public var linearSpringZ__enabled:Bool;

	/**		
		The maximum force the linear motor can apply on the Z axis while trying to reach the target velocity.
	**/
	@:native("LinearMotorZ__forceLimit")
	public var linearMotorZ__forceLimit:Single;

	/**		
		The speed that the linear motor will attempt to reach on the Z axis.
	**/
	@:native("LinearMotorZ__targetVelocity")
	public var linearMotorZ__targetVelocity:Single;

	/**		
		If `true`, then there is a linear motor on the Z axis. It will attempt to reach the target velocity while staying within the force limits.
	**/
	@:native("LinearMotorZ__enabled")
	public var linearMotorZ__enabled:Bool;

	/**		
		The amount of damping that happens at the Z motion.
	**/
	@:native("LinearLimitZ__damping")
	public var linearLimitZ__damping:Single;

	/**		
		The amount of restitution on the Z axis movement. The lower, the more momentum gets lost.
	**/
	@:native("LinearLimitZ__restitution")
	public var linearLimitZ__restitution:Single;

	/**		
		A factor applied to the movement across the Z axis. The lower, the slower the movement.
	**/
	@:native("LinearLimitZ__softness")
	public var linearLimitZ__softness:Single;

	/**		
		The minimum difference between the pivot points' Z axis.
	**/
	@:native("LinearLimitZ__lowerDistance")
	public var linearLimitZ__lowerDistance:Single;

	/**		
		The maximum difference between the pivot points' Z axis.
	**/
	@:native("LinearLimitZ__upperDistance")
	public var linearLimitZ__upperDistance:Single;

	/**		
		If `true`, the linear motion across the Z axis is limited.
	**/
	@:native("LinearLimitZ__enabled")
	public var linearLimitZ__enabled:Bool;

	@:native("AngularSpringY__equilibriumPoint")
	public var angularSpringY__equilibriumPoint:Single;

	@:native("AngularSpringY__damping")
	public var angularSpringY__damping:Single;

	@:native("AngularSpringY__stiffness")
	public var angularSpringY__stiffness:Single;

	@:native("AngularSpringY__enabled")
	public var angularSpringY__enabled:Bool;

	/**		
		Maximum acceleration for the motor at the Y axis.
	**/
	@:native("AngularMotorY__forceLimit")
	public var angularMotorY__forceLimit:Single;

	/**		
		Target speed for the motor at the Y axis.
	**/
	@:native("AngularMotorY__targetVelocity")
	public var angularMotorY__targetVelocity:Single;

	/**		
		If `true`, a rotating motor at the Y axis is enabled.
	**/
	@:native("AngularMotorY__enabled")
	public var angularMotorY__enabled:Bool;

	/**		
		When rotating across the Y axis, this error tolerance factor defines how much the correction gets slowed down. The lower, the slower.
	**/
	@:native("AngularLimitY__erp")
	public var angularLimitY__erp:Single;

	/**		
		The maximum amount of force that can occur, when rotating around the Y axis.
	**/
	@:native("AngularLimitY__forceLimit")
	public var angularLimitY__forceLimit:Single;

	/**		
		The amount of rotational damping across the Y axis. The lower, the more dampening occurs.
	**/
	@:native("AngularLimitY__damping")
	public var angularLimitY__damping:Single;

	/**		
		The amount of rotational restitution across the Y axis. The lower, the more restitution occurs.
	**/
	@:native("AngularLimitY__restitution")
	public var angularLimitY__restitution:Single;

	/**		
		The speed of all rotations across the Y axis.
	**/
	@:native("AngularLimitY__softness")
	public var angularLimitY__softness:Single;

	/**		
		The minimum rotation in negative direction to break loose and rotate around the Y axis.
	**/
	@:native("AngularLimitY__lowerAngle")
	public var angularLimitY__lowerAngle:Single;

	/**		
		The minimum rotation in positive direction to break loose and rotate around the Y axis.
	**/
	@:native("AngularLimitY__upperAngle")
	public var angularLimitY__upperAngle:Single;

	/**		
		If `true`, rotation across the Y axis is limited.
	**/
	@:native("AngularLimitY__enabled")
	public var angularLimitY__enabled:Bool;

	@:native("LinearSpringY__equilibriumPoint")
	public var linearSpringY__equilibriumPoint:Single;

	@:native("LinearSpringY__damping")
	public var linearSpringY__damping:Single;

	@:native("LinearSpringY__stiffness")
	public var linearSpringY__stiffness:Single;

	@:native("LinearSpringY__enabled")
	public var linearSpringY__enabled:Bool;

	/**		
		The maximum force the linear motor can apply on the Y axis while trying to reach the target velocity.
	**/
	@:native("LinearMotorY__forceLimit")
	public var linearMotorY__forceLimit:Single;

	/**		
		The speed that the linear motor will attempt to reach on the Y axis.
	**/
	@:native("LinearMotorY__targetVelocity")
	public var linearMotorY__targetVelocity:Single;

	/**		
		If `true`, then there is a linear motor on the Y axis. It will attempt to reach the target velocity while staying within the force limits.
	**/
	@:native("LinearMotorY__enabled")
	public var linearMotorY__enabled:Bool;

	/**		
		The amount of damping that happens at the Y motion.
	**/
	@:native("LinearLimitY__damping")
	public var linearLimitY__damping:Single;

	/**		
		The amount of restitution on the Y axis movement. The lower, the more momentum gets lost.
	**/
	@:native("LinearLimitY__restitution")
	public var linearLimitY__restitution:Single;

	/**		
		A factor applied to the movement across the Y axis. The lower, the slower the movement.
	**/
	@:native("LinearLimitY__softness")
	public var linearLimitY__softness:Single;

	/**		
		The minimum difference between the pivot points' Y axis.
	**/
	@:native("LinearLimitY__lowerDistance")
	public var linearLimitY__lowerDistance:Single;

	/**		
		The maximum difference between the pivot points' Y axis.
	**/
	@:native("LinearLimitY__upperDistance")
	public var linearLimitY__upperDistance:Single;

	/**		
		If `true`, the linear motion across the Y axis is limited.
	**/
	@:native("LinearLimitY__enabled")
	public var linearLimitY__enabled:Bool;

	@:native("AngularSpringX__equilibriumPoint")
	public var angularSpringX__equilibriumPoint:Single;

	@:native("AngularSpringX__damping")
	public var angularSpringX__damping:Single;

	@:native("AngularSpringX__stiffness")
	public var angularSpringX__stiffness:Single;

	@:native("AngularSpringX__enabled")
	public var angularSpringX__enabled:Bool;

	/**		
		Maximum acceleration for the motor at the X axis.
	**/
	@:native("AngularMotorX__forceLimit")
	public var angularMotorX__forceLimit:Single;

	/**		
		Target speed for the motor at the X axis.
	**/
	@:native("AngularMotorX__targetVelocity")
	public var angularMotorX__targetVelocity:Single;

	/**		
		If `true`, a rotating motor at the X axis is enabled.
	**/
	@:native("AngularMotorX__enabled")
	public var angularMotorX__enabled:Bool;

	/**		
		When rotating across the X axis, this error tolerance factor defines how much the correction gets slowed down. The lower, the slower.
	**/
	@:native("AngularLimitX__erp")
	public var angularLimitX__erp:Single;

	/**		
		The maximum amount of force that can occur, when rotating around the X axis.
	**/
	@:native("AngularLimitX__forceLimit")
	public var angularLimitX__forceLimit:Single;

	/**		
		The amount of rotational damping across the X axis.
		
		The lower, the longer an impulse from one side takes to travel to the other side.
	**/
	@:native("AngularLimitX__damping")
	public var angularLimitX__damping:Single;

	/**		
		The amount of rotational restitution across the X axis. The lower, the more restitution occurs.
	**/
	@:native("AngularLimitX__restitution")
	public var angularLimitX__restitution:Single;

	/**		
		The speed of all rotations across the X axis.
	**/
	@:native("AngularLimitX__softness")
	public var angularLimitX__softness:Single;

	/**		
		The minimum rotation in negative direction to break loose and rotate around the X axis.
	**/
	@:native("AngularLimitX__lowerAngle")
	public var angularLimitX__lowerAngle:Single;

	/**		
		The minimum rotation in positive direction to break loose and rotate around the X axis.
	**/
	@:native("AngularLimitX__upperAngle")
	public var angularLimitX__upperAngle:Single;

	/**		
		If `true`, rotation across the X axis is limited.
	**/
	@:native("AngularLimitX__enabled")
	public var angularLimitX__enabled:Bool;

	@:native("LinearSpringX__equilibriumPoint")
	public var linearSpringX__equilibriumPoint:Single;

	@:native("LinearSpringX__damping")
	public var linearSpringX__damping:Single;

	@:native("LinearSpringX__stiffness")
	public var linearSpringX__stiffness:Single;

	@:native("LinearSpringX__enabled")
	public var linearSpringX__enabled:Bool;

	/**		
		The maximum force the linear motor can apply on the X axis while trying to reach the target velocity.
	**/
	@:native("LinearMotorX__forceLimit")
	public var linearMotorX__forceLimit:Single;

	/**		
		The speed that the linear motor will attempt to reach on the X axis.
	**/
	@:native("LinearMotorX__targetVelocity")
	public var linearMotorX__targetVelocity:Single;

	/**		
		If `true`, then there is a linear motor on the X axis. It will attempt to reach the target velocity while staying within the force limits.
	**/
	@:native("LinearMotorX__enabled")
	public var linearMotorX__enabled:Bool;

	/**		
		The amount of damping that happens at the X motion.
	**/
	@:native("LinearLimitX__damping")
	public var linearLimitX__damping:Single;

	/**		
		The amount of restitution on the X axis movement. The lower, the more momentum gets lost.
	**/
	@:native("LinearLimitX__restitution")
	public var linearLimitX__restitution:Single;

	/**		
		A factor applied to the movement across the X axis. The lower, the slower the movement.
	**/
	@:native("LinearLimitX__softness")
	public var linearLimitX__softness:Single;

	/**		
		The minimum difference between the pivot points' X axis.
	**/
	@:native("LinearLimitX__lowerDistance")
	public var linearLimitX__lowerDistance:Single;

	/**		
		The maximum difference between the pivot points' X axis.
	**/
	@:native("LinearLimitX__upperDistance")
	public var linearLimitX__upperDistance:Single;

	/**		
		If `true`, the linear motion across the X axis is limited.
	**/
	@:native("LinearLimitX__enabled")
	public var linearLimitX__enabled:Bool;

	@:native("new")
	public function new():Void;

	@:native("SetParamX")
	public function setParamX(param:godot.Generic6DOFJoint_Param, value:Single):Void;

	@:native("GetParamX")
	public function getParamX(param:godot.Generic6DOFJoint_Param):Single;

	@:native("SetParamY")
	public function setParamY(param:godot.Generic6DOFJoint_Param, value:Single):Void;

	@:native("GetParamY")
	public function getParamY(param:godot.Generic6DOFJoint_Param):Single;

	@:native("SetParamZ")
	public function setParamZ(param:godot.Generic6DOFJoint_Param, value:Single):Void;

	@:native("GetParamZ")
	public function getParamZ(param:godot.Generic6DOFJoint_Param):Single;

	@:native("SetFlagX")
	public function setFlagX(flag:godot.Generic6DOFJoint_Flag, value:Bool):Void;

	@:native("GetFlagX")
	public function getFlagX(flag:godot.Generic6DOFJoint_Flag):Bool;

	@:native("SetFlagY")
	public function setFlagY(flag:godot.Generic6DOFJoint_Flag, value:Bool):Void;

	@:native("GetFlagY")
	public function getFlagY(flag:godot.Generic6DOFJoint_Flag):Bool;

	@:native("SetFlagZ")
	public function setFlagZ(flag:godot.Generic6DOFJoint_Flag, value:Bool):Void;

	@:native("GetFlagZ")
	public function getFlagZ(flag:godot.Generic6DOFJoint_Flag):Bool;

	@:native("SetPrecision")
	public function setPrecision(precision:Int):Void;

	@:native("GetPrecision")
	public function getPrecision():Int;
}
