// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.ReflectionProbe.UpdateModeEnum")
@:csNative
extern enum ReflectionProbe_UpdateModeEnum {
	/**		
		Update the probe once on the next frame (recommended for most objects). The corresponding radiance map will be generated over the following six frames. This takes more time to update than `godot.ReflectionProbe_UpdateModeEnum.always`, but it has a lower performance cost and can result in higher-quality reflections. The ReflectionProbe is updated when its transform changes, but not when nearby geometry changes. You can force a `godot.ReflectionProbe` update by moving the `godot.ReflectionProbe` slightly in any direction.
	**/
	Once;

	/**		
		Update the probe every frame. This provides better results for fast-moving dynamic objects (such as cars). However, it has a significant performance cost. Due to the cost, it's recommended to only use one ReflectionProbe with `godot.ReflectionProbe_UpdateModeEnum.always` at most per scene. For all other use cases, use `godot.ReflectionProbe_UpdateModeEnum.once`.
	**/
	Always;
}
