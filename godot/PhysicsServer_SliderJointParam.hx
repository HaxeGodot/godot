// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.PhysicsServer.SliderJointParam")
@:csNative
extern enum PhysicsServer_SliderJointParam {
	/**		
		The maximum difference between the pivot points on their X axis before damping happens.
	**/
	LinearLimitUpper;

	/**		
		The minimum difference between the pivot points on their X axis before damping happens.
	**/
	LinearLimitLower;

	/**		
		A factor applied to the movement across the slider axis once the limits get surpassed. The lower, the slower the movement.
	**/
	LinearLimitSoftness;

	/**		
		The amount of restitution once the limits are surpassed. The lower, the more velocityenergy gets lost.
	**/
	LinearLimitRestitution;

	/**		
		The amount of damping once the slider limits are surpassed.
	**/
	LinearLimitDamping;

	/**		
		A factor applied to the movement across the slider axis as long as the slider is in the limits. The lower, the slower the movement.
	**/
	LinearMotionSoftness;

	/**		
		The amount of restitution inside the slider limits.
	**/
	LinearMotionRestitution;

	/**		
		The amount of damping inside the slider limits.
	**/
	LinearMotionDamping;

	/**		
		A factor applied to the movement across axes orthogonal to the slider.
	**/
	LinearOrthogonalSoftness;

	/**		
		The amount of restitution when movement is across axes orthogonal to the slider.
	**/
	LinearOrthogonalRestitution;

	/**		
		The amount of damping when movement is across axes orthogonal to the slider.
	**/
	LinearOrthogonalDamping;

	/**		
		The upper limit of rotation in the slider.
	**/
	AngularLimitUpper;

	/**		
		The lower limit of rotation in the slider.
	**/
	AngularLimitLower;

	/**		
		A factor applied to the all rotation once the limit is surpassed.
	**/
	AngularLimitSoftness;

	/**		
		The amount of restitution of the rotation when the limit is surpassed.
	**/
	AngularLimitRestitution;

	/**		
		The amount of damping of the rotation when the limit is surpassed.
	**/
	AngularLimitDamping;

	/**		
		A factor that gets applied to the all rotation in the limits.
	**/
	AngularMotionSoftness;

	/**		
		The amount of restitution of the rotation in the limits.
	**/
	AngularMotionRestitution;

	/**		
		The amount of damping of the rotation in the limits.
	**/
	AngularMotionDamping;

	/**		
		A factor that gets applied to the all rotation across axes orthogonal to the slider.
	**/
	AngularOrthogonalSoftness;

	/**		
		The amount of restitution of the rotation across axes orthogonal to the slider.
	**/
	AngularOrthogonalRestitution;

	/**		
		The amount of damping of the rotation across axes orthogonal to the slider.
	**/
	AngularOrthogonalDamping;

	/**		
		Represents the size of the `godot.PhysicsServer_SliderJointParam` enum.
	**/
	Max;
}
