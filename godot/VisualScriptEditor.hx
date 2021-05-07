// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

@:libType
@:csNative
@:native("Godot.VisualScriptEditor")
@:autoBuild(godot.Godot.buildUserClass())
extern class VisualScriptEditor {
	@:native("Singleton")
	public static var SINGLETON(default, never):godot.Object;

	/**		
		Add a custom Visual Script node to the editor. It'll be placed under "Custom Nodes" with the `category` as the parameter.
	**/
	@:native("AddCustomNode")
	public static function addCustomNode(name:std.String, category:std.String, script:godot.Script):Void;

	/**		
		Remove a custom Visual Script node from the editor. Custom nodes already placed on scripts won't be removed.
	**/
	@:native("RemoveCustomNode")
	public static function removeCustomNode(name:std.String, category:std.String):Void;
}
