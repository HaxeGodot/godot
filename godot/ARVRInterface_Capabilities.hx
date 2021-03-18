// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.ARVRInterface.Capabilities")
@:csNative
extern enum ARVRInterface_Capabilities {
	/**		
		No ARVR capabilities.
	**/
	None;

	/**		
		This interface can work with normal rendering output (non-HMD based AR).
	**/
	Mono;

	/**		
		This interface supports stereoscopic rendering.
	**/
	Stereo;

	/**		
		This interface supports AR (video background and real world tracking).
	**/
	Ar;

	/**		
		This interface outputs to an external device. If the main viewport is used, the on screen output is an unmodified buffer of either the left or right eye (stretched if the viewport size is not changed to the same aspect ratio of `godot.ARVRInterface.getRenderTargetsize`). Using a separate viewport node frees up the main viewport for other purposes.
	**/
	External;
}
