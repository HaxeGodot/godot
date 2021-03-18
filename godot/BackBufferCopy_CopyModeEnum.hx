// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.BackBufferCopy.CopyModeEnum")
@:csNative
extern enum BackBufferCopy_CopyModeEnum {
	/**		
		Disables the buffering mode. This means the BackBufferCopy node will directly use the portion of screen it covers.
	**/
	Disabled;

	/**		
		BackBufferCopy buffers a rectangular region.
	**/
	Rect;

	/**		
		BackBufferCopy buffers the entire screen.
	**/
	Viewport;
}
