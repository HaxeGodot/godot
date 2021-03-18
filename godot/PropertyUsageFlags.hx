// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.PropertyUsageFlags")
@:csNative
extern enum PropertyUsageFlags {
	/**		
		The property is serialized and saved in the scene file (default).
	**/
	Storage;

	/**		
		The property is shown in the editor inspector (default).
	**/
	Editor;

	/**		
		Deprecated usage flag, unused.
	**/
	Network;

	/**		
		Default usage but without showing the property in the editor (storage, network).
	**/
	Noeditor;

	/**		
		Default usage (storage, editor and network).
	**/
	Default;

	/**		
		Deprecated usage flag, unused.
	**/
	EditorHelper;

	/**		
		The property can be checked in the editor inspector.
	**/
	Checkable;

	/**		
		The property is checked in the editor inspector.
	**/
	Checked;

	/**		
		The property is a translatable string.
	**/
	Internationalized;

	/**		
		Default usage for translatable strings (storage, editor, network and internationalized).
	**/
	DefaultIntl;

	/**		
		Used to group properties together in the editor.
	**/
	Group;

	/**		
		Used to categorize properties together in the editor.
	**/
	Category;

	/**		
		The property does not save its state in `godot.PackedScene`.
	**/
	NoInstanceState;

	/**		
		Editing the property prompts the user for restarting the editor.
	**/
	RestartIfChanged;

	/**		
		The property is a script variable which should be serialized and saved in the scene file.
	**/
	ScriptVariable;
}
