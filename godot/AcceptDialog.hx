// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
This dialog is useful for small notifications to the user about an event. It can only be accepted or closed, with the same result.
**/
@:libType
@:csNative
@:native("Godot.AcceptDialog")
@:autoBuild(godot.Godot.buildUserClass())
extern class AcceptDialog extends godot.WindowDialog {
	/**
		`confirmed` signal.
	**/
	public var onConfirmed(get, never):Signal<Void->Void>;
	@:dox(hide) @:noCompletion inline function get_onConfirmed():Signal<Void->Void> {
		return new Signal(this, "confirmed", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	/**
		`custom_action` signal.
	**/
	public var onCustomAction(get, never):Signal<(action:std.String)->Void>;
	@:dox(hide) @:noCompletion inline function get_onCustomAction():Signal<(action:std.String)->Void> {
		return new Signal(this, "custom_action", Signal.SignalHandlerStringVoid.connectSignal, Signal.SignalHandlerStringVoid.disconnectSignal, Signal.SignalHandlerStringVoid.isSignalConnected);
	}

	/**		
		Sets autowrapping for the text in the dialog.
	**/
	@:native("DialogAutowrap")
	public var dialogAutowrap:Bool;

	/**		
		If `true`, the dialog is hidden when the OK button is pressed. You can set it to `false` if you want to do e.g. input validation when receiving the `confirmed` signal, and handle hiding the dialog in your own logic.
		
		Note: Some nodes derived from this class can have a different default value, and potentially their own built-in logic overriding this setting. For example `godot.FileDialog` defaults to `false`, and has its own input validation code that is called when you press OK, which eventually hides the dialog if the input is valid. As such, this property can't be used in `godot.FileDialog` to disable hiding the dialog when pressing OK.
	**/
	@:native("DialogHideOnOk")
	public var dialogHideOnOk:Bool;

	/**		
		The text displayed by the dialog.
	**/
	@:native("DialogText")
	public var dialogText:std.String;

	@:native("new")
	public function new():Void;

	/**		
		Returns the OK `godot.Button` instance.
		
		Warning: This is a required internal node, removing and freeing it may cause a crash. If you wish to hide it or any of its children, use their `godot.CanvasItem.visible` property.
	**/
	@:native("GetOk")
	public function getOk():godot.Button;

	/**		
		Returns the label used for built-in text.
		
		Warning: This is a required internal node, removing and freeing it may cause a crash. If you wish to hide it or any of its children, use their `godot.CanvasItem.visible` property.
	**/
	@:native("GetLabel")
	public function getLabel():godot.Label;

	@:native("SetHideOnOk")
	public function setHideOnOk(enabled:Bool):Void;

	@:native("GetHideOnOk")
	public function getHideOnOk():Bool;

	#if doc_gen
	/**		
		Adds a button with label `text` and a custom `action` to the dialog and returns the created button. `action` will be passed to the `custom_action` signal when pressed.
		
		If `true`, `right` will place the button to the right of any sibling buttons.
		
		You can use `godot.AcceptDialog.removeButton` method to remove a button created with this method from the dialog.
	**/
	@:native("AddButton")
	public function addButton(text:std.String, ?right:Bool, ?action:std.String):godot.Button;
	#else
	/**		
		Adds a button with label `text` and a custom `action` to the dialog and returns the created button. `action` will be passed to the `custom_action` signal when pressed.
		
		If `true`, `right` will place the button to the right of any sibling buttons.
		
		You can use `godot.AcceptDialog.removeButton` method to remove a button created with this method from the dialog.
	**/
	@:native("AddButton")
	public overload function addButton(text:std.String):godot.Button;

	/**		
		Adds a button with label `text` and a custom `action` to the dialog and returns the created button. `action` will be passed to the `custom_action` signal when pressed.
		
		If `true`, `right` will place the button to the right of any sibling buttons.
		
		You can use `godot.AcceptDialog.removeButton` method to remove a button created with this method from the dialog.
	**/
	@:native("AddButton")
	public overload function addButton(text:std.String, right:Bool):godot.Button;

	/**		
		Adds a button with label `text` and a custom `action` to the dialog and returns the created button. `action` will be passed to the `custom_action` signal when pressed.
		
		If `true`, `right` will place the button to the right of any sibling buttons.
		
		You can use `godot.AcceptDialog.removeButton` method to remove a button created with this method from the dialog.
	**/
	@:native("AddButton")
	public overload function addButton(text:std.String, right:Bool, action:std.String):godot.Button;
	#end

	/**		
		Adds a button with label `name` and a cancel action to the dialog and returns the created button.
		
		You can use `godot.AcceptDialog.removeButton` method to remove a button created with this method from the dialog.
	**/
	@:native("AddCancel")
	public function addCancel(name:std.String):godot.Button;

	/**		
		Removes the `button` from the dialog. Does NOT free the `button`. The `button` must be a `godot.Button` added with `godot.AcceptDialog.addButton` or `godot.AcceptDialog.addCancel` method. After removal, pressing the `button` will no longer emit this dialog's `custom_action` signal or cancel this dialog.
	**/
	@:native("RemoveButton")
	public function removeButton(button:godot.Control):Void;

	/**		
		Registers a `godot.LineEdit` in the dialog. When the enter key is pressed, the dialog will be accepted.
	**/
	@:native("RegisterTextEnter")
	public function registerTextEnter(lineEdit:godot.Node):Void;

	@:native("SetText")
	public function setText(text:std.String):Void;

	@:native("GetText")
	public function getText():std.String;

	@:native("SetAutowrap")
	public function setAutowrap(autowrap:Bool):Void;

	@:native("HasAutowrap")
	public function hasAutowrap():Bool;
}
