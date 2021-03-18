// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.LineEdit.MenuItems")
@:csNative
extern enum LineEdit_MenuItems {
	/**		
		Cuts (copies and clears) the selected text.
	**/
	Cut;

	/**		
		Copies the selected text.
	**/
	Copy;

	/**		
		Pastes the clipboard text over the selected text (or at the cursor's position).
		
		Non-printable escape characters are automatically stripped from the OS clipboard via `String.strip_escapes`.
	**/
	Paste;

	/**		
		Erases the whole `godot.LineEdit` text.
	**/
	Clear;

	/**		
		Selects the whole `godot.LineEdit` text.
	**/
	SelectAll;

	/**		
		Undoes the previous action.
	**/
	Undo;

	/**		
		Reverse the last undo action.
	**/
	Redo;

	/**		
		Represents the size of the `godot.LineEdit_MenuItems` enum.
	**/
	Max;
}
