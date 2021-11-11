// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot.collections;

import cs.system.*;

#if doc_gen
@:libType
@:csNative
@:native("Godot.Collections.Array")
@:autoBuild(godot.Godot.buildUserClass())
extern class Array implements cs.system.collections.IList implements cs.system.collections.ICollection implements cs.system.collections.IEnumerable implements cs.system.IDisposable {
#else
@:forward
@:forwardStatics
extern abstract Array(Array_) from Array_ to Array_ {
#end
	#if !doc_gen
	public overload inline function new() {
		this = new Array_();
	}
	#end

	#if !doc_gen
	public overload inline function new(collection:cs.system.collections.IEnumerable) {
		this = new Array_(collection);
	}
	#end

	#if !doc_gen
	public overload inline function new(array:cs.NativeArray<Dynamic>) {
		this = new Array_(array);
	}
	#end

	/**
		Operator overload for `godot.collections.Array` + `godot.collections.Array`.
	**/
	@:op(A + B) static inline function op_Addition(left:godot.collections.Array, right:godot.collections.Array):godot.collections.Array {
		return cs.Syntax.code("{0} + {1}", left, right);
	}
#if !doc_gen
}

@:libType
@:csNative
@:native("Godot.Collections.Array")
@:autoBuild(godot.Godot.buildUserClass())
extern class Array_ implements cs.system.collections.IList implements cs.system.collections.ICollection implements cs.system.collections.IEnumerable implements cs.system.IDisposable {
#end
	inline function iterator():Iterator<Any> {
		return new godot.GodotArrayIterator(this);
	}

	@:native("Count")
	public var count(default, never):Int;

	@:native("new")
	public overload function new():Void;

	@:native("new")
	public overload function new(collection:cs.system.collections.IEnumerable):Void;

	@:native("new")
	public overload function new(array:HaxeArray<Dynamic>):Void;

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

	@:native("Shuffle")
	public function shuffle():Void;

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
