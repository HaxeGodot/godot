// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot.collections;

import cs.system.*;

@:libType
@:csNative
@:native("Godot.Collections.Dictionary`2")
@:autoBuild(godot.Godot.buildUserClass())
extern class Dictionary_2<T0, T1> implements cs.system.collections.generic.IDictionary_2<T0, T1> implements cs.system.collections.generic.ICollection_1<cs.system.collections.generic.KeyValuePair_2<T0, T1>> implements cs.system.collections.generic.IEnumerable_1<cs.system.collections.generic.KeyValuePair_2<T0, T1>> implements cs.system.collections.IEnumerable {
	@:native("Count")
	public var count(default, never):Int;

	@:native("Values")
	public var values(default, never):cs.system.collections.generic.ICollection_1<T1>;

	@:native("Keys")
	public var keys(default, never):cs.system.collections.generic.ICollection_1<T0>;

	@:native("new")
	public overload function new():Void;

	@:native("new")
	public overload function new(dictionary:cs.system.collections.generic.IDictionary_2<T0, T1>):Void;

	@:native("new")
	public overload function new(dictionary:godot.collections.Dictionary):Void;

	#if doc_gen
	@:native("Duplicate")
	public function duplicate(?deep:Bool):godot.collections.Dictionary_2<T0, T1>;
	#else
	@:native("Duplicate")
	public overload function duplicate():godot.collections.Dictionary_2<T0, T1>;

	@:native("Duplicate")
	public overload function duplicate(deep:Bool):godot.collections.Dictionary_2<T0, T1>;
	#end

	@:native("Add") @:noCompletion @:skipReflection
	public function add(key:T0, value:T1):Void;

	@:native("ContainsKey")
	public function containsKey(key:T0):Bool;

	@:native("Remove") @:noCompletion @:skipReflection
	public function remove(key:T0):Bool;

	@:native("TryGetValue")
	public function tryGetValue(key:T0, value:cs.Out<T1>):Bool;

	@:native("Clear")
	public function clear():Void;

	@:native("CopyTo")
	public function copyTo(array:HaxeArray<cs.system.collections.generic.KeyValuePair_2<T0, T1>>, arrayIndex:Int):Void;

	@:native("GetEnumerator") @:noCompletion @:skipReflection
	public function getEnumerator():cs.system.collections.generic.IEnumerator_1<cs.system.collections.generic.KeyValuePair_2<T0, T1>>;

	@:native("ToString")
	public function toString():std.String;
}
