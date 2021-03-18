// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
The joint can rotate the bodies across an axis defined by the local x-axes of the `godot.Joint`.

The twist axis is initiated as the X axis of the `godot.Joint`.

Once the Bodies swing, the twist axis is calculated as the middle of the x-axes of the Joint in the local space of the two Bodies.
**/
@:libType
@:csNative
@:native("Godot.ConeTwistJoint")
@:autoBuild(godot.Godot.buildUserClass())
extern class ConeTwistJoint extends godot.Joint {
	/**		
		Defines, how fast the swing- and twist-speed-difference on both sides gets synced.
	**/
	@:native("Relaxation")
	public var relaxation:Single;

	/**		
		The ease with which the joint starts to twist. If it's too low, it takes more force to start twisting the joint.
	**/
	@:native("Softness")
	public var softness:Single;

	/**		
		The speed with which the swing or twist will take place.
		
		The higher, the faster.
	**/
	@:native("Bias")
	public var bias:Single;

	/**		
		Twist is the rotation around the twist axis, this value defined how far the joint can twist.
		
		Twist is locked if below 0.05.
	**/
	@:native("TwistSpan")
	public var twistSpan:Single;

	/**		
		Swing is rotation from side to side, around the axis perpendicular to the twist axis.
		
		The swing span defines, how much rotation will not get corrected along the swing axis.
		
		Could be defined as looseness in the `godot.ConeTwistJoint`.
		
		If below 0.05, this behavior is locked.
	**/
	@:native("SwingSpan")
	public var swingSpan:Single;

	@:native("new")
	public function new():Void;

	@:native("SetParam")
	public function setParam(param:godot.ConeTwistJoint_Param, value:Single):Void;

	@:native("GetParam")
	public function getParam(param:godot.ConeTwistJoint_Param):Single;
}
