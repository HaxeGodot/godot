// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot.collections;

import cs.system.*;

@:libType
@:csNative
@:native("Godot.Collections.Dictionary")
@:autoBuild(godot.Godot.buildUserClass())
extern class Dictionary implements cs.system.collections.IDictionary implements cs.system.collections.ICollection implements cs.system.collections.IEnumerable implements cs.system.IDisposable {
	@:native("Count")
	public var count(default, never):Int;

	@:native("IsSynchronized")
	public var isSynchronized(default, never):Bool;

	@:native("SyncRoot")
	public var syncRoot(default, never):Dynamic;

	@:native("IsReadOnly")
	public var isReadOnly(default, never):Bool;

	@:native("IsFixedSize")
	public var isFixedSize(default, never):Bool;

	@:native("Values")
	public var values(default, never):cs.system.collections.ICollection;

	@:native("Keys")
	public var keys(default, never):cs.system.collections.ICollection;

	@:native("new")
	public overload function new():Void;

	@:native("new")
	public overload function new(dictionary:cs.system.collections.IDictionary):Void;

	@:native("Dispose")
	public function dispose():Void;

	#if doc_gen
	@:native("Duplicate")
	public function duplicate(?deep:Bool):godot.collections.Dictionary;
	#else
	@:native("Duplicate")
	public overload function duplicate():godot.collections.Dictionary;

	@:native("Duplicate")
	public overload function duplicate(deep:Bool):godot.collections.Dictionary;
	#end

	@:native("Add")
	public function add(key:Dynamic, value:Dynamic):Void;

	@:native("Clear")
	public function clear():Void;

	@:native("Contains")
	public function contains(key:Dynamic):Bool;

	@:native("GetEnumerator") @:noCompletion @:skipReflection
	public function getEnumerator():cs.system.collections.IDictionaryEnumerator;

	@:native("Remove")
	public function remove(key:Dynamic):Void;

	@:native("CopyTo")
	public function copyTo(array:cs.system.Array, index:Int):Void;

	@:native("ToString")
	public function toString():std.String;
}
