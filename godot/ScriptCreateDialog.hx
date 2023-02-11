// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
The `godot.ScriptCreateDialog` creates script files according to a given template for a given scripting language. The standard use is to configure its fields prior to calling one of the `godot.Popup.popup_` methods.

```

func _ready():
dialog.config("Node", "res://new_node.gd") # For in-engine types
dialog.config("\"res://base_node.gd\"", "res://derived_node.gd") # For script types
dialog.popup_centered()

```
**/
@:libType
@:csNative
@:native("Godot.ScriptCreateDialog")
@:autoBuild(godot.Godot.buildUserClass())
extern class ScriptCreateDialog extends godot.ConfirmationDialog {
	/**
		`script_created` signal.
	**/
	public var onScriptCreated(get, never):Signal<(script:Script)->Void>;
	@:dox(hide) @:noCompletion inline function get_onScriptCreated():Signal<(script:Script)->Void> {
		return new Signal(this, "script_created", Signal.SignalHandlerScriptVoid.connectSignal, Signal.SignalHandlerScriptVoid.disconnectSignal, Signal.SignalHandlerScriptVoid.isSignalConnected);
	}

	@:native("new")
	public function new():Void;

	#if doc_gen
	/**		
		Prefills required fields to configure the ScriptCreateDialog for use.
	**/
	@:native("Config")
	public function config(inherits:std.String, path:std.String, ?builtInEnabled:Bool, ?loadEnabled:Bool):Void;
	#else
	/**		
		Prefills required fields to configure the ScriptCreateDialog for use.
	**/
	@:native("Config")
	public overload function config(inherits:std.String, path:std.String):Void;

	/**		
		Prefills required fields to configure the ScriptCreateDialog for use.
	**/
	@:native("Config")
	public overload function config(inherits:std.String, path:std.String, builtInEnabled:Bool):Void;

	/**		
		Prefills required fields to configure the ScriptCreateDialog for use.
	**/
	@:native("Config")
	public overload function config(inherits:std.String, path:std.String, builtInEnabled:Bool, loadEnabled:Bool):Void;
	#end
}
