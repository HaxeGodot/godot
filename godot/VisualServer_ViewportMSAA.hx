// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.VisualServer.ViewportMSAA")
@:csNative
extern enum VisualServer_ViewportMSAA {
	/**		
		Multisample antialiasing is disabled.
	**/
	Disabled;

	/**		
		Multisample antialiasing is set to 2×.
	**/
	Msaa2x;

	/**		
		Multisample antialiasing is set to 4×.
	**/
	Msaa4x;

	/**		
		Multisample antialiasing is set to 8×.
	**/
	Msaa8x;

	/**		
		Multisample antialiasing is set to 16×.
	**/
	Msaa16x;

	/**		
		Multisample antialiasing is set to 2× on external texture. Special mode for GLES2 Android VR (Oculus Quest and Go).
	**/
	Ext2x;

	/**		
		Multisample antialiasing is set to 4× on external texture. Special mode for GLES2 Android VR (Oculus Quest and Go).
	**/
	Ext4x;
}
