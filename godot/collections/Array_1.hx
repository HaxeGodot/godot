// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot.collections;

import cs.system.*;

@:libType
@:csNative
@:native("Godot.Collections.Array`1")
@:autoBuild(godot.Godot.buildUserClass())
extern class Array_1<T0> implements cs.system.collections.generic.IList_1<T0> implements cs.system.collections.generic.ICollection_1<T0> implements cs.system.collections.generic.IEnumerable_1<T0> implements cs.system.collections.IEnumerable {
	@:native("IsReadOnly")
	public var isReadOnly(default, never):Bool;

	@:native("Count")
	public var count(default, never):Int;

	@:native("new")
	public overload function new():Void;

	@:native("new")
	public overload function new(collection:cs.system.collections.generic.IEnumerable_1<T0>):Void;

	@:native("new")
	public overload function new(array:godot.collections.Array):Void;

	#if doc_gen
	@:native("Duplicate")
	public function duplicate(?deep:Bool):godot.collections.Array_1<T0>;
	#else
	@:native("Duplicate")
	public overload function duplicate():godot.collections.Array_1<T0>;

	@:native("Duplicate")
	public overload function duplicate(deep:Bool):godot.collections.Array_1<T0>;
	#end

	@:native("Resize")
	public function resize(newSize:Int):godot.Error;

	@:native("IndexOf")
	public function indexOf(item:T0):Int;

	@:native("Insert")
	public function insert(index:Int, item:T0):Void;

	@:native("RemoveAt")
	public function removeAt(index:Int):Void;

	@:native("Add")
	public function add(item:T0):Void;

	@:native("Clear")
	public function clear():Void;

	@:native("Contains")
	public function contains(item:T0):Bool;

	@:native("CopyTo")
	public function copyTo(array:cs.NativeArray<T0>, arrayIndex:Int):Void;

	@:native("Remove")
	public function remove(item:T0):Bool;

	@:native("GetEnumerator") @:noCompletion @:skipReflection
	public function getEnumerator():cs.system.collections.generic.IEnumerator_1<T0>;

	@:native("ToString")
	public function toString():std.String;
}
