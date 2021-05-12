// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

@:libType
@:csNative
@:native("Godot.StreamPeerBuffer")
@:autoBuild(godot.Godot.buildUserClass())
extern class StreamPeerBuffer extends godot.StreamPeer {
	@:native("DataArray")
	public var dataArray:cs.NativeArray<cs.types.UInt8>;

	@:native("new")
	public function new():Void;

	@:native("Seek")
	public function seek(position:Int):Void;

	@:native("GetSize")
	public function getSize():Int;

	@:native("GetPosition")
	public function getPosition():Int;

	@:native("Resize")
	public function resize(size:Int):Void;

	@:native("SetDataArray")
	public function setDataArray(data:HaxeArray<cs.types.UInt8>):Void;

	public extern inline function getDataArray():std.Array<cs.types.UInt8> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetDataArray()", this));
	}

	@:native("Clear")
	public function clear():Void;

	@:native("Duplicate")
	public function duplicate():godot.StreamPeerBuffer;
}
