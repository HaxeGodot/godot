// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Stores key presses on the keyboard. Supports key presses, key releases and `godot.InputEventKey.echo` events.
**/
@:libType
@:csNative
@:native("Godot.InputEventKey")
@:autoBuild(godot.Godot.buildUserClass())
extern class InputEventKey extends godot.InputEventWithModifiers {
	/**		
		If `true`, the key was already pressed before this event. It means the user is holding the key down.
	**/
	@:native("Echo")
	public var echo:Bool;

	/**		
		The key Unicode identifier (when relevant). Unicode identifiers for the composite characters and complex scripts may not be available unless IME input mode is active. See `godot.OS.setImeActive` for more information.
	**/
	@:native("Unicode")
	public var unicode:UInt;

	/**		
		Key physical scancode, which corresponds to one of the `godot.KeyList` constants. Represent the physical location of a key on the 101/102-key US QWERTY keyboard.
		
		To get a human-readable representation of the `godot.InputEventKey`, use `OS.get_scancode_string(event.physical_scancode)` where `event` is the `godot.InputEventKey`.
	**/
	@:native("PhysicalScancode")
	public var physicalScancode:UInt;

	/**		
		The key scancode, which corresponds to one of the `godot.KeyList` constants. Represent key in the current keyboard layout.
		
		To get a human-readable representation of the `godot.InputEventKey`, use `OS.get_scancode_string(event.scancode)` where `event` is the `godot.InputEventKey`.
	**/
	@:native("Scancode")
	public var scancode:UInt;

	/**		
		If `true`, the key's state is pressed. If `false`, the key's state is released.
	**/
	@:native("Pressed")
	public var pressed:Bool;

	@:native("new")
	public function new():Void;

	@:native("SetPressed")
	public function setPressed(pressed:Bool):Void;

	@:native("SetScancode")
	public function setScancode(scancode:UInt):Void;

	@:native("GetScancode")
	public function getScancode():UInt;

	@:native("SetPhysicalScancode")
	public function setPhysicalScancode(scancode:UInt):Void;

	@:native("GetPhysicalScancode")
	public function getPhysicalScancode():UInt;

	@:native("SetUnicode")
	public function setUnicode(unicode:UInt):Void;

	@:native("GetUnicode")
	public function getUnicode():UInt;

	@:native("SetEcho")
	public function setEcho(echo:Bool):Void;

	/**		
		Returns the scancode combined with modifier keys such as `Shift` or `Alt`. See also `godot.InputEventWithModifiers`.
		
		To get a human-readable representation of the `godot.InputEventKey` with modifiers, use `OS.get_scancode_string(event.get_scancode_with_modifiers())` where `event` is the `godot.InputEventKey`.
	**/
	@:native("GetScancodeWithModifiers")
	public function getScancodeWithModifiers():UInt;

	/**		
		Returns the physical scancode combined with modifier keys such as `Shift` or `Alt`. See also `godot.InputEventWithModifiers`.
		
		To get a human-readable representation of the `godot.InputEventKey` with modifiers, use `OS.get_scancode_string(event.get_physical_scancode_with_modifiers())` where `event` is the `godot.InputEventKey`.
	**/
	@:native("GetPhysicalScancodeWithModifiers")
	public function getPhysicalScancodeWithModifiers():UInt;
}
