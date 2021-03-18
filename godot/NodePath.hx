// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

#if doc_gen
@:libType
@:csNative
@:native("Godot.NodePath")
@:autoBuild(godot.Godot.buildUserClass())
extern class NodePath implements cs.system.IDisposable {
#else
@:forward
@:forwardStatics
extern abstract NodePath(NodePath_) from NodePath_ to NodePath_ {
#end
	#if !doc_gen
	public overload inline function new() {
		this = new NodePath_();
	}
	#end

	#if !doc_gen
	public overload inline function new(path:std.String) {
		this = new NodePath_(path);
	}
	#end

	/**
		Implicit cast.
	**/
	@:from static inline function fromString(obj:std.String):godot.NodePath {
		return cs.Syntax.code("{0}", obj);
	}

	/**
		Implicit cast.
	**/
	@:to static inline function toString(obj:godot.NodePath):std.String {
		return cs.Syntax.code("{0}", obj);
	}
#if !doc_gen
}

@:libType
@:csNative
@:native("Godot.NodePath")
@:autoBuild(godot.Godot.buildUserClass())
extern class NodePath_ implements cs.system.IDisposable {
#end
	@:native("NativeInstance")
	public var nativeInstance(default, never):cs.system.IntPtr;

	@:native("Dispose")
	public function dispose():Void;

	@:native("new")
	public overload function new():Void;

	@:native("new")
	public overload function new(path:std.String):Void;

	@:native("ToString")
	public function toString():std.String;

	@:native("GetAsPropertyPath")
	public function getAsPropertyPath():godot.NodePath;

	@:native("GetConcatenatedSubnames")
	public function getConcatenatedSubnames():std.String;

	@:native("GetName")
	public function getName(idx:Int):std.String;

	@:native("GetNameCount")
	public function getNameCount():Int;

	@:native("GetSubname")
	public function getSubname(idx:Int):std.String;

	@:native("GetSubnameCount")
	public function getSubnameCount():Int;

	@:native("IsAbsolute")
	public function isAbsolute():Bool;

	@:native("IsEmpty")
	public function isEmpty():Bool;
}
