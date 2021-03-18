// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.ARVRInterface.Eyes")
@:csNative
extern enum ARVRInterface_Eyes {
	/**		
		Mono output, this is mostly used internally when retrieving positioning information for our camera node or when stereo scopic rendering is not supported.
	**/
	Mono;

	/**		
		Left eye output, this is mostly used internally when rendering the image for the left eye and obtaining positioning and projection information.
	**/
	Left;

	/**		
		Right eye output, this is mostly used internally when rendering the image for the right eye and obtaining positioning and projection information.
	**/
	Right;
}
