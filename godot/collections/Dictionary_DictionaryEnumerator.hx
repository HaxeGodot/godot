// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot.collections;

import cs.system.*;

@:libType
@:csNative
@:native("Godot.Collections.Dictionary.DictionaryEnumerator")
@:autoBuild(godot.Godot.buildUserClass())
extern class Dictionary_DictionaryEnumerator implements cs.system.collections.IDictionaryEnumerator implements cs.system.collections.IEnumerator {
	@:native("Value")
	public var value(default, never):Dynamic;

	@:native("Key")
	public var key(default, never):Dynamic;

	@:native("Entry")
	public var entry(default, never):cs.system.collections.DictionaryEntry;

	@:native("Current")
	public var current(default, never):Dynamic;

	@:native("new")
	public function new(dictionary:godot.collections.Dictionary):Void;

	@:native("MoveNext")
	public function moveNext():Bool;

	@:native("Reset")
	public function reset():Void;
}
