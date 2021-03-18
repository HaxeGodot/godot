// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot.collections;

import cs.system.*;

@:libType
@:csNative
@:native("Godot.Collections.Array")
@:autoBuild(godot.Godot.buildUserClass())
extern class Array implements cs.system.collections.IList implements cs.system.collections.ICollection implements cs.system.collections.IEnumerable implements cs.system.IDisposable {
	@:native("IsSynchronized")
	public var isSynchronized(default, never):Bool;

	@:native("SyncRoot")
	public var syncRoot(default, never):Dynamic;

	@:native("Count")
	public var count(default, never):Int;

	@:native("IsFixedSize")
	public var isFixedSize(default, never):Bool;

	@:native("IsReadOnly")
	public var isReadOnly(default, never):Bool;

	@:native("new")
	public overload function new():Void;

	@:native("new")
	public overload function new(collection:cs.system.collections.IEnumerable):Void;

	#if doc_gen
	@:native("Duplicate")
	public function duplicate(?deep:Bool):godot.collections.Array;
	#else
	@:native("Duplicate")
	public overload function duplicate():godot.collections.Array;

	@:native("Duplicate")
	public overload function duplicate(deep:Bool):godot.collections.Array;
	#end

	@:native("Resize")
	public function resize(newSize:Int):godot.Error;

	@:native("Dispose")
	public function dispose():Void;

	@:native("Add")
	public function add(value:Dynamic):Int;

	@:native("Contains")
	public function contains(value:Dynamic):Bool;

	@:native("Clear")
	public function clear():Void;

	@:native("IndexOf")
	public function indexOf(value:Dynamic):Int;

	@:native("Insert")
	public function insert(index:Int, value:Dynamic):Void;

	@:native("Remove")
	public function remove(value:Dynamic):Void;

	@:native("RemoveAt")
	public function removeAt(index:Int):Void;

	@:native("CopyTo")
	public function copyTo(array:cs.system.Array, index:Int):Void;

	@:native("GetEnumerator")
	public function getEnumerator():cs.system.collections.IEnumerator;

	@:native("ToString")
	public function toString():std.String;
}
