// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.KeyModifierMask")
@:csNative
extern enum KeyModifierMask {
	/**		
		Modifier key mask.
	**/
	ModifierMask;

	/**		
		Key Code mask.
	**/
	CodeMask;

	/**		
		Shift key mask.
	**/
	MaskShift;

	/**		
		Alt key mask.
	**/
	MaskAlt;

	/**		
		Meta key mask.
	**/
	MaskMeta;

	/**		
		Ctrl key mask.
	**/
	MaskCtrl;

	/**		
		Command key mask. On macOS, this is equivalent to `KEY_MASK_META`. On other platforms, this is equivalent to `KEY_MASK_CTRL`. This mask should be preferred to `KEY_MASK_META` or `KEY_MASK_CTRL` for system shortcuts as it handles all platforms correctly.
	**/
	MaskCmd;

	/**		
		Keypad key mask.
	**/
	MaskKpad;

	/**		
		Group Switch key mask.
	**/
	MaskGroupSwitch;
}
