// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

@:libType
@:csNative
@:native("Godot.GDNative")
@:autoBuild(godot.Godot.buildUserClass())
extern class GDNative extends godot.Reference {
	@:native("Library")
	public var library:godot.GDNativeLibrary;

	@:native("new")
	public function new():Void;

	@:native("SetLibrary")
	public function setLibrary(library:godot.GDNativeLibrary):Void;

	@:native("GetLibrary")
	public function getLibrary():godot.GDNativeLibrary;

	@:native("Initialize")
	public function initialize():Bool;

	@:native("Terminate")
	public function terminate():Bool;

	@:native("CallNative")
	public function callNative(callingType:std.String, procedureName:std.String, arguments:godot.collections.Array):Dynamic;
}
