// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Similar to `godot.EditorResourcePicker` this `godot.Control` node is used in the editor's Inspector dock, but only to edit the `script` property of a `godot.Node`. Default options for creating new resources of all possible subtypes are replaced with dedicated buttons that open the "Attach Node Script" dialog. Can be used with `godot.EditorInspectorPlugin` to recreate the same behavior.

Note: You must set the `godot.EditorScriptPicker.scriptOwner` for the custom context menu items to work.
**/
@:libType
@:csNative
@:native("Godot.EditorScriptPicker")
@:autoBuild(godot.Godot.buildUserClass())
extern class EditorScriptPicker extends godot.EditorResourcePicker {
	/**		
		The owner `godot.Node` of the script property that holds the edited resource.
	**/
	@:native("ScriptOwner")
	public var scriptOwner:godot.Node;

	@:native("new")
	public function new():Void;

	@:native("SetScriptOwner")
	public function setScriptOwner(ownerNode:godot.Node):Void;

	@:native("GetScriptOwner")
	public function getScriptOwner():godot.Node;
}
