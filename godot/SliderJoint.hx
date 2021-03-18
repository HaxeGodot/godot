// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Slides across the X axis of the pivot object.
**/
@:libType
@:csNative
@:native("Godot.SliderJoint")
@:autoBuild(godot.Godot.buildUserClass())
extern class SliderJoint extends godot.Joint {
	/**		
		The amount of damping of the rotation across axes orthogonal to the slider.
	**/
	@:native("AngularOrtho__damping")
	public var angularOrtho__damping:Single;

	/**		
		The amount of restitution of the rotation across axes orthogonal to the slider.
	**/
	@:native("AngularOrtho__restitution")
	public var angularOrtho__restitution:Single;

	/**		
		A factor applied to the all rotation across axes orthogonal to the slider.
	**/
	@:native("AngularOrtho__softness")
	public var angularOrtho__softness:Single;

	/**		
		The amount of damping of the rotation in the limits.
	**/
	@:native("AngularMotion__damping")
	public var angularMotion__damping:Single;

	/**		
		The amount of restitution of the rotation in the limits.
	**/
	@:native("AngularMotion__restitution")
	public var angularMotion__restitution:Single;

	/**		
		A factor applied to the all rotation in the limits.
	**/
	@:native("AngularMotion__softness")
	public var angularMotion__softness:Single;

	/**		
		The amount of damping of the rotation when the limit is surpassed.
		
		A lower damping value allows a rotation initiated by body A to travel to body B slower.
	**/
	@:native("AngularLimit__damping")
	public var angularLimit__damping:Single;

	/**		
		The amount of restitution of the rotation when the limit is surpassed.
		
		Does not affect damping.
	**/
	@:native("AngularLimit__restitution")
	public var angularLimit__restitution:Single;

	/**		
		A factor applied to the all rotation once the limit is surpassed.
		
		Makes all rotation slower when between 0 and 1.
	**/
	@:native("AngularLimit__softness")
	public var angularLimit__softness:Single;

	/**		
		The lower limit of rotation in the slider.
	**/
	@:native("AngularLimit__lowerAngle")
	public var angularLimit__lowerAngle:Single;

	/**		
		The upper limit of rotation in the slider.
	**/
	@:native("AngularLimit__upperAngle")
	public var angularLimit__upperAngle:Single;

	/**		
		The amount of damping when movement is across axes orthogonal to the slider.
	**/
	@:native("LinearOrtho__damping")
	public var linearOrtho__damping:Single;

	/**		
		The amount of restitution when movement is across axes orthogonal to the slider.
	**/
	@:native("LinearOrtho__restitution")
	public var linearOrtho__restitution:Single;

	/**		
		A factor applied to the movement across axes orthogonal to the slider.
	**/
	@:native("LinearOrtho__softness")
	public var linearOrtho__softness:Single;

	/**		
		The amount of damping inside the slider limits.
	**/
	@:native("LinearMotion__damping")
	public var linearMotion__damping:Single;

	/**		
		The amount of restitution inside the slider limits.
	**/
	@:native("LinearMotion__restitution")
	public var linearMotion__restitution:Single;

	/**		
		A factor applied to the movement across the slider axis as long as the slider is in the limits. The lower, the slower the movement.
	**/
	@:native("LinearMotion__softness")
	public var linearMotion__softness:Single;

	/**		
		The amount of damping that happens once the limit defined by `godot.SliderJoint.linearLimit__lowerDistance` and `godot.SliderJoint.linearLimit__upperDistance` is surpassed.
	**/
	@:native("LinearLimit__damping")
	public var linearLimit__damping:Single;

	/**		
		The amount of restitution once the limits are surpassed. The lower, the more velocity-energy gets lost.
	**/
	@:native("LinearLimit__restitution")
	public var linearLimit__restitution:Single;

	/**		
		A factor applied to the movement across the slider axis once the limits get surpassed. The lower, the slower the movement.
	**/
	@:native("LinearLimit__softness")
	public var linearLimit__softness:Single;

	/**		
		The minimum difference between the pivot points on their X axis before damping happens.
	**/
	@:native("LinearLimit__lowerDistance")
	public var linearLimit__lowerDistance:Single;

	/**		
		The maximum difference between the pivot points on their X axis before damping happens.
	**/
	@:native("LinearLimit__upperDistance")
	public var linearLimit__upperDistance:Single;

	@:native("new")
	public function new():Void;

	@:native("SetParam")
	public function setParam(param:godot.SliderJoint_Param, value:Single):Void;

	@:native("GetParam")
	public function getParam(param:godot.SliderJoint_Param):Single;
}
