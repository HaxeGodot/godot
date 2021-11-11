// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.ReflectionProbe.UpdateModeEnum")
@:csNative
extern enum ReflectionProbe_UpdateModeEnum {
	/**		
		Update the probe once on the next frame.
	**/
	Once;

	/**		
		Update the probe every frame. This is needed when you want to capture dynamic objects. However, it results in an increased render time. Use `godot.ReflectionProbe_UpdateModeEnum.once` whenever possible.
	**/
	Always;
}
