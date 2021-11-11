// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.AnimationNodeBlendSpace2D.BlendModeEnum")
@:csNative
extern enum AnimationNodeBlendSpace2D_BlendModeEnum {
	/**		
		The interpolation between animations is linear.
	**/
	Interpolated;

	/**		
		The blend space plays the animation of the node the blending position is closest to. Useful for frame-by-frame 2D animations.
	**/
	Discrete;

	/**		
		Similar to `godot.AnimationNodeBlendSpace2D_BlendModeEnum.discrete`, but starts the new animation at the last animation's playback position.
	**/
	DiscreteCarry;
}
