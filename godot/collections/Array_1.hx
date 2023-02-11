// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot.collections;

import cs.system.*;

#if doc_gen
@:libType
@:csNative
@:native("Godot.Collections.Array`1")
@:autoBuild(godot.Godot.buildUserClass())
extern class Array_1<T0> implements cs.system.collections.generic.IList_1<T0> implements cs.system.collections.generic.ICollection_1<T0> implements cs.system.collections.generic.IEnumerable_1<T0> implements cs.system.collections.IEnumerable {
#else
@:forward
@:forwardStatics
extern abstract Array_1<T0>(Array_1<T0>_) from Array_1<T0>_ to Array_1<T0>_ {
#end
	#if !doc_gen
	public overload inline function new() {
		this = new Array_1<T0>_();
	}
	#end

	#if !doc_gen
	public overload inline function new(collection:cs.system.collections.generic.IEnumerable_1<T0>) {
		this = new Array_1<T0>_(collection);
	}
	#end

	#if !doc_gen
	public overload inline function new(array:cs.NativeArray<T0>) {
		this = new Array_1<T0>_(array);
	}
	#end

	#if !doc_gen
	public overload inline function new(array:godot.collections.Array) {
		this = new Array_1<T0>_(array);
	}
	#end

	/**
		Operator overload for `godot.collections.Array_1<Dynamic>` + `godot.collections.Array_1<Dynamic>`.
	**/
	@:op(A + B) static inline function op_Addition(left:godot.collections.Array_1<Dynamic>, right:godot.collections.Array_1<Dynamic>):godot.collections.Array_1<Dynamic> {
		return cs.Syntax.code("{0} + {1}", left, right);
	}
#if !doc_gen
}

@:libType
@:csNative
@:native("Godot.Collections.Array`1")
@:autoBuild(godot.Godot.buildUserClass())
extern class Array_1<T0>_ implements cs.system.collections.generic.IList_1<T0> implements cs.system.collections.generic.ICollection_1<T0> implements cs.system.collections.generic.IEnumerable_1<T0> implements cs.system.collections.IEnumerable {
#end
	@:native("Count") @:readOnly
	public var count(default, never):Int;

	@:native("new")
	public overload function new():Void;

	@:native("new")
	public overload function new(collection:cs.system.collections.generic.IEnumerable_1<T0>):Void;

	@:native("new")
	public overload function new(array:HaxeArray<T0>):Void;

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

	@:native("Shuffle")
	public function shuffle():Void;

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
	public function copyTo(array:HaxeArray<T0>, arrayIndex:Int):Void;

	@:native("Remove")
	public function remove(item:T0):Bool;

	@:native("GetEnumerator") @:noCompletion @:skipReflection
	public function getEnumerator():cs.system.collections.generic.IEnumerator_1<T0>;

	@:native("ToString")
	public function toString():std.String;
}
