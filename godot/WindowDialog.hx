// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Windowdialog is the base class for all window-based dialogs. It's a by-default toplevel `godot.Control` that draws a window decoration and allows motion and resizing.
**/
@:libType
@:csNative
@:native("Godot.WindowDialog")
@:autoBuild(godot.Godot.buildUserClass())
extern class WindowDialog extends godot.Popup {
	/**		
		If `true`, the user can resize the window.
	**/
	@:native("Resizable")
	public var resizable:Bool;

	/**		
		The text displayed in the window's title bar.
	**/
	@:native("WindowTitle")
	public var windowTitle:std.String;

	@:native("new")
	public function new():Void;

	@:native("SetTitle")
	public function setTitle(title:std.String):Void;

	@:native("GetTitle")
	public function getTitle():std.String;

	@:native("SetResizable")
	public function setResizable(resizable:Bool):Void;

	@:native("GetResizable")
	public function getResizable():Bool;

	/**		
		Returns the close `godot.TextureButton`.
	**/
	@:native("GetCloseButton")
	public function getCloseButton():godot.TextureButton;
}
