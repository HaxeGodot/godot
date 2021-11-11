// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
PacketPeer is an abstraction and base class for packet-based protocols (such as UDP). It provides an API for sending and receiving packets both as raw data or variables. This makes it easy to transfer data over a protocol, without having to encode data as low-level bytes or having to worry about network ordering.
**/
@:libType
@:csNative
@:native("Godot.PacketPeer")
@:autoBuild(godot.Godot.buildUserClass())
extern abstract class PacketPeer extends godot.Reference {
	/**		
		Deprecated. Use `get_var` and `put_var` parameters instead.
		
		If `true`, the PacketPeer will allow encoding and decoding of object via `godot.PacketPeer.getVar` and `godot.PacketPeer.putVar`.
		
		Warning: Deserialized objects can contain code which gets executed. Do not use this option if the serialized object comes from untrusted sources to avoid potential security threats such as remote code execution.
	**/
	@:native("AllowObjectDecoding")
	public var allowObjectDecoding:Bool;

	/**		
		Maximum buffer size allowed when encoding `Variant`s. Raise this value to support heavier memory allocations.
		
		The `godot.PacketPeer.putVar` method allocates memory on the stack, and the buffer used will grow automatically to the closest power of two to match the size of the `Variant`. If the `Variant` is bigger than `encode_buffer_max_size`, the method will error out with `ERR_OUT_OF_MEMORY`.
	**/
	@:native("EncodeBufferMaxSize")
	public var encodeBufferMaxSize:Int;

	#if doc_gen
	/**		
		Gets a Variant. If `allow_objects` (or `godot.PacketPeer.allowObjectDecoding`) is `true`, decoding objects is allowed.
		
		Warning: Deserialized objects can contain code which gets executed. Do not use this option if the serialized object comes from untrusted sources to avoid potential security threats such as remote code execution.
	**/
	@:native("GetVar")
	public function getVar(?allowObjects:Bool):Dynamic;
	#else
	/**		
		Gets a Variant. If `allow_objects` (or `godot.PacketPeer.allowObjectDecoding`) is `true`, decoding objects is allowed.
		
		Warning: Deserialized objects can contain code which gets executed. Do not use this option if the serialized object comes from untrusted sources to avoid potential security threats such as remote code execution.
	**/
	@:native("GetVar")
	public overload function getVar():Dynamic;

	/**		
		Gets a Variant. If `allow_objects` (or `godot.PacketPeer.allowObjectDecoding`) is `true`, decoding objects is allowed.
		
		Warning: Deserialized objects can contain code which gets executed. Do not use this option if the serialized object comes from untrusted sources to avoid potential security threats such as remote code execution.
	**/
	@:native("GetVar")
	public overload function getVar(allowObjects:Bool):Dynamic;
	#end

	#if doc_gen
	/**		
		Sends a `Variant` as a packet. If `full_objects` (or `godot.PacketPeer.allowObjectDecoding`) is `true`, encoding objects is allowed (and can potentially include code).
	**/
	@:native("PutVar")
	public function putVar(var_:Dynamic, ?fullObjects:Bool):godot.Error;
	#else
	/**		
		Sends a `Variant` as a packet. If `full_objects` (or `godot.PacketPeer.allowObjectDecoding`) is `true`, encoding objects is allowed (and can potentially include code).
	**/
	@:native("PutVar")
	public overload function putVar(var_:Dynamic):godot.Error;

	/**		
		Sends a `Variant` as a packet. If `full_objects` (or `godot.PacketPeer.allowObjectDecoding`) is `true`, encoding objects is allowed (and can potentially include code).
	**/
	@:native("PutVar")
	public overload function putVar(var_:Dynamic, fullObjects:Bool):godot.Error;
	#end

	/**		
		Gets a raw packet.
	**/
	public extern inline function getPacket():std.Array<cs.types.UInt8> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetPacket()", this));
	}

	/**		
		Sends a raw packet.
	**/
	@:native("PutPacket")
	public function putPacket(buffer:HaxeArray<cs.types.UInt8>):godot.Error;

	/**		
		Returns the error state of the last packet received (via `godot.PacketPeer.getPacket` and `godot.PacketPeer.getVar`).
	**/
	@:native("GetPacketError")
	public function getPacketError():godot.Error;

	/**		
		Returns the number of packets currently available in the ring-buffer.
	**/
	@:native("GetAvailablePacketCount")
	public function getAvailablePacketCount():Int;

	@:native("SetAllowObjectDecoding")
	public function setAllowObjectDecoding(enable:Bool):Void;

	@:native("IsObjectDecodingAllowed")
	public function isObjectDecodingAllowed():Bool;

	@:native("GetEncodeBufferMaxSize")
	public function getEncodeBufferMaxSize():Int;

	@:native("SetEncodeBufferMaxSize")
	public function setEncodeBufferMaxSize(maxSize:Int):Void;
}
