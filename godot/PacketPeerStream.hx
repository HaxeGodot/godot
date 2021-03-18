// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
PacketStreamPeer provides a wrapper for working using packets over a stream. This allows for using packet based code with StreamPeers. PacketPeerStream implements a custom protocol over the StreamPeer, so the user should not read or write to the wrapped StreamPeer directly.
**/
@:libType
@:csNative
@:native("Godot.PacketPeerStream")
@:autoBuild(godot.Godot.buildUserClass())
extern class PacketPeerStream extends godot.PacketPeer {
	/**		
		The wrapped `godot.StreamPeer` object.
	**/
	@:native("StreamPeer")
	public var streamPeer:godot.StreamPeer;

	@:native("OutputBufferMaxSize")
	public var outputBufferMaxSize:Int;

	@:native("InputBufferMaxSize")
	public var inputBufferMaxSize:Int;

	@:native("new")
	public function new():Void;

	@:native("SetStreamPeer")
	public function setStreamPeer(peer:godot.StreamPeer):Void;

	@:native("GetStreamPeer")
	public function getStreamPeer():godot.StreamPeer;

	@:native("SetInputBufferMaxSize")
	public function setInputBufferMaxSize(maxSizeBytes:Int):Void;

	@:native("SetOutputBufferMaxSize")
	public function setOutputBufferMaxSize(maxSizeBytes:Int):Void;

	@:native("GetInputBufferMaxSize")
	public function getInputBufferMaxSize():Int;

	@:native("GetOutputBufferMaxSize")
	public function getOutputBufferMaxSize():Int;
}
