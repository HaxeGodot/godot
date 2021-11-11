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
		
		Warning: This is a required internal node, removing and freeing it may cause a crash. If you wish to hide it or any of its children, use their `godot.CanvasItem.visible` property.
	**/
	@:native("GetCloseButton")
	public function getCloseButton():godot.TextureButton;
}
