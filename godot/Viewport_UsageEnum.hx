// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.Viewport.UsageEnum")
@:csNative
extern enum Viewport_UsageEnum {
	/**		
		Allocates all buffers needed for drawing 2D scenes. This takes less VRAM than the 3D usage modes. Note that 3D rendering effects such as glow and HDR are not available when using this mode.
	**/
	Usage2d;

	/**		
		Allocates buffers needed for 2D scenes without allocating a buffer for screen copy. Accordingly, you cannot read from the screen. Of the `godot.Viewport_UsageEnum` types, this requires the least VRAM. Note that 3D rendering effects such as glow and HDR are not available when using this mode.
	**/
	Usage2dNoSampling;

	/**		
		Allocates full buffers for drawing 3D scenes and all 3D effects including buffers needed for 2D scenes and effects.
	**/
	Usage3d;

	/**		
		Allocates buffers needed for drawing 3D scenes. But does not allocate buffers needed for reading from the screen and post-processing effects. Saves some VRAM.
	**/
	Usage3dNoEffects;
}
