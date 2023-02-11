// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot.collections;

import cs.system.*;

@:libType
@:csNative
@:native("Godot.Collections.Dictionary.DictionaryEnumerator")
@:autoBuild(godot.Godot.buildUserClass())
extern class Dictionary_DictionaryEnumerator implements cs.system.collections.IDictionaryEnumerator implements cs.system.collections.IEnumerator {
	@:native("Value") @:readOnly
	public var value(default, never):Dynamic;

	@:native("Key") @:readOnly
	public var key(default, never):Dynamic;

	@:native("Entry") @:readOnly
	public var entry(default, never):cs.system.collections.DictionaryEntry;

	@:native("Current") @:readOnly
	public var current(default, never):Dynamic;

	@:native("new")
	public function new(dictionary:godot.collections.Dictionary):Void;

	@:native("MoveNext")
	public function moveNext():Bool;

	@:native("Reset")
	public function reset():Void;
}
