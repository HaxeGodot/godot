// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
StreamPeer is an abstraction and base class for stream-based protocols (such as TCP or UNIX sockets). It provides an API for sending and receiving data through streams as raw data or strings.
**/
@:libType
@:csNative
@:native("Godot.StreamPeer")
@:autoBuild(godot.Godot.buildUserClass())
extern abstract class StreamPeer extends godot.Reference {
	/**		
		If `true`, this `godot.StreamPeer` will using big-endian format for encoding and decoding.
	**/
	@:native("BigEndian")
	public var bigEndian:Bool;

	/**		
		Sends a chunk of data through the connection, blocking if necessary until the data is done sending. This function returns an `godot.Error` code.
	**/
	@:native("PutData")
	public function putData(data:HaxeArray<cs.types.UInt8>):godot.Error;

	/**		
		Sends a chunk of data through the connection. If all the data could not be sent at once, only part of it will. This function returns two values, an `godot.Error` code and an integer, describing how much data was actually sent.
	**/
	@:native("PutPartialData")
	public function putPartialData(data:HaxeArray<cs.types.UInt8>):godot.collections.Array;

	/**		
		Returns a chunk data with the received bytes. The amount of bytes to be received can be requested in the `bytes` argument. If not enough bytes are available, the function will block until the desired amount is received. This function returns two values, an `godot.Error` code and a data array.
	**/
	@:native("GetData")
	public function getData(bytes:Int):godot.collections.Array;

	/**		
		Returns a chunk data with the received bytes. The amount of bytes to be received can be requested in the "bytes" argument. If not enough bytes are available, the function will return how many were actually received. This function returns two values, an `godot.Error` code, and a data array.
	**/
	@:native("GetPartialData")
	public function getPartialData(bytes:Int):godot.collections.Array;

	/**		
		Returns the amount of bytes this `godot.StreamPeer` has available.
	**/
	@:native("GetAvailableBytes")
	public function getAvailableBytes():Int;

	@:native("SetBigEndian")
	public function setBigEndian(enable:Bool):Void;

	@:native("IsBigEndianEnabled")
	public function isBigEndianEnabled():Bool;

	/**		
		Puts a signed byte into the stream.
	**/
	@:native("Put8")
	public function put8(value:cs.types.Int8):Void;

	/**		
		Puts an unsigned byte into the stream.
	**/
	@:native("PutU8")
	public function putU8(value:cs.types.UInt8):Void;

	/**		
		Puts a signed 16-bit value into the stream.
	**/
	@:native("Put16")
	public function put16(value:cs.types.Int16):Void;

	/**		
		Puts an unsigned 16-bit value into the stream.
	**/
	@:native("PutU16")
	public function putU16(value:cs.types.UInt16):Void;

	/**		
		Puts a signed 32-bit value into the stream.
	**/
	@:native("Put32")
	public function put32(value:Int):Void;

	/**		
		Puts an unsigned 32-bit value into the stream.
	**/
	@:native("PutU32")
	public function putU32(value:UInt):Void;

	/**		
		Puts a signed 64-bit value into the stream.
	**/
	@:native("Put64")
	public function put64(value:haxe.Int64):Void;

	/**		
		Puts an unsigned 64-bit value into the stream.
	**/
	@:native("PutU64")
	public function putU64(value:cs.types.UInt64):Void;

	/**		
		Puts a single-precision float into the stream.
	**/
	@:native("PutFloat")
	public function putFloat(value:Single):Void;

	/**		
		Puts a double-precision float into the stream.
	**/
	@:native("PutDouble")
	public function putDouble(value:Float):Void;

	/**		
		Puts a zero-terminated ASCII string into the stream prepended by a 32-bit unsigned integer representing its size.
		
		Note: To put an ASCII string without prepending its size, you can use `godot.StreamPeer.putData`:
		
		```
		
		put_data("Hello world".to_ascii())
		
		```
	**/
	@:native("PutString")
	public function putString(value:std.String):Void;

	/**		
		Puts a zero-terminated UTF-8 string into the stream prepended by a 32 bits unsigned integer representing its size.
		
		Note: To put an UTF-8 string without prepending its size, you can use `godot.StreamPeer.putData`:
		
		```
		
		put_data("Hello world".to_utf8())
		
		```
	**/
	@:native("PutUtf8String")
	public function putUtf8String(value:std.String):Void;

	#if doc_gen
	/**		
		Puts a Variant into the stream. If `full_objects` is `true` encoding objects is allowed (and can potentially include code).
	**/
	@:native("PutVar")
	public function putVar(value:Dynamic, ?fullObjects:Bool):Void;
	#else
	/**		
		Puts a Variant into the stream. If `full_objects` is `true` encoding objects is allowed (and can potentially include code).
	**/
	@:native("PutVar")
	public overload function putVar(value:Dynamic):Void;

	/**		
		Puts a Variant into the stream. If `full_objects` is `true` encoding objects is allowed (and can potentially include code).
	**/
	@:native("PutVar")
	public overload function putVar(value:Dynamic, fullObjects:Bool):Void;
	#end

	/**		
		Gets a signed byte from the stream.
	**/
	@:native("Get8")
	public function get8():cs.types.Int8;

	/**		
		Gets an unsigned byte from the stream.
	**/
	@:native("GetU8")
	public function getU8():cs.types.UInt8;

	/**		
		Gets a signed 16-bit value from the stream.
	**/
	@:native("Get16")
	public function get16():cs.types.Int16;

	/**		
		Gets an unsigned 16-bit value from the stream.
	**/
	@:native("GetU16")
	public function getU16():cs.types.UInt16;

	/**		
		Gets a signed 32-bit value from the stream.
	**/
	@:native("Get32")
	public function get32():Int;

	/**		
		Gets an unsigned 32-bit value from the stream.
	**/
	@:native("GetU32")
	public function getU32():UInt;

	/**		
		Gets a signed 64-bit value from the stream.
	**/
	@:native("Get64")
	public function get64():haxe.Int64;

	/**		
		Gets an unsigned 64-bit value from the stream.
	**/
	@:native("GetU64")
	public function getU64():cs.types.UInt64;

	/**		
		Gets a single-precision float from the stream.
	**/
	@:native("GetFloat")
	public function getFloat():Single;

	/**		
		Gets a double-precision float from the stream.
	**/
	@:native("GetDouble")
	public function getDouble():Float;

	#if doc_gen
	/**		
		Gets a string with byte-length `bytes` from the stream. If `bytes` is negative (default) the length will be read from the stream using the reverse process of `godot.StreamPeer.putString`.
	**/
	@:native("GetString")
	public function getString(?bytes:Int):std.String;
	#else
	/**		
		Gets a string with byte-length `bytes` from the stream. If `bytes` is negative (default) the length will be read from the stream using the reverse process of `godot.StreamPeer.putString`.
	**/
	@:native("GetString")
	public overload function getString():std.String;

	/**		
		Gets a string with byte-length `bytes` from the stream. If `bytes` is negative (default) the length will be read from the stream using the reverse process of `godot.StreamPeer.putString`.
	**/
	@:native("GetString")
	public overload function getString(bytes:Int):std.String;
	#end

	#if doc_gen
	/**		
		Gets an UTF-8 string with byte-length `bytes` from the stream (this decodes the string sent as UTF-8). If `bytes` is negative (default) the length will be read from the stream using the reverse process of `godot.StreamPeer.putUtf8String`.
	**/
	@:native("GetUtf8String")
	public function getUtf8String(?bytes:Int):std.String;
	#else
	/**		
		Gets an UTF-8 string with byte-length `bytes` from the stream (this decodes the string sent as UTF-8). If `bytes` is negative (default) the length will be read from the stream using the reverse process of `godot.StreamPeer.putUtf8String`.
	**/
	@:native("GetUtf8String")
	public overload function getUtf8String():std.String;

	/**		
		Gets an UTF-8 string with byte-length `bytes` from the stream (this decodes the string sent as UTF-8). If `bytes` is negative (default) the length will be read from the stream using the reverse process of `godot.StreamPeer.putUtf8String`.
	**/
	@:native("GetUtf8String")
	public overload function getUtf8String(bytes:Int):std.String;
	#end

	#if doc_gen
	/**		
		Gets a Variant from the stream. If `allow_objects` is `true`, decoding objects is allowed.
		
		Warning: Deserialized objects can contain code which gets executed. Do not use this option if the serialized object comes from untrusted sources to avoid potential security threats such as remote code execution.
	**/
	@:native("GetVar")
	public function getVar(?allowObjects:Bool):Dynamic;
	#else
	/**		
		Gets a Variant from the stream. If `allow_objects` is `true`, decoding objects is allowed.
		
		Warning: Deserialized objects can contain code which gets executed. Do not use this option if the serialized object comes from untrusted sources to avoid potential security threats such as remote code execution.
	**/
	@:native("GetVar")
	public overload function getVar():Dynamic;

	/**		
		Gets a Variant from the stream. If `allow_objects` is `true`, decoding objects is allowed.
		
		Warning: Deserialized objects can contain code which gets executed. Do not use this option if the serialized object comes from untrusted sources to avoid potential security threats such as remote code execution.
	**/
	@:native("GetVar")
	public overload function getVar(allowObjects:Bool):Dynamic;
	#end
}
