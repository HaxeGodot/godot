// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
A shortcut for binding input.

Shortcuts are commonly used for interacting with a `godot.Control` element from a `godot.InputEvent`.
**/
@:libType
@:csNative
@:native("Godot.ShortCut")
@:autoBuild(godot.Godot.buildUserClass())
extern class ShortCut extends godot.Resource {
	/**		
		The shortcut's `godot.InputEvent`.
		
		Generally the `godot.InputEvent` is a keyboard key, though it can be any `godot.InputEvent`.
	**/
	@:native("Shortcut")
	public var shortcut:godot.InputEvent;

	@:native("new")
	public function new():Void;

	@:native("SetShortcut")
	public function setShortcut(event:godot.InputEvent):Void;

	@:native("GetShortcut")
	public function getShortcut():godot.InputEvent;

	/**		
		If `true`, this shortcut is valid.
	**/
	@:native("IsValid")
	public function isValid():Bool;

	/**		
		Returns `true` if the shortcut's `godot.InputEvent` equals `event`.
	**/
	@:native("IsShortcut")
	public function isShortcut(event:godot.InputEvent):Bool;

	/**		
		Returns the shortcut's `godot.InputEvent` as a `String`.
	**/
	@:native("GetAsText")
	public function getAsText():std.String;
}
