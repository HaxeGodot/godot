// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
A TCP server. Listens to connections on a port and returns a `godot.StreamPeerTCP` when it gets an incoming connection.
**/
@:libType
@:csNative
@:native("Godot.TCP_Server")
@:autoBuild(godot.Godot.buildUserClass())
extern class TCP_Server extends godot.Reference {
	@:native("new")
	public function new():Void;

	#if doc_gen
	/**		
		Listen on the `port` binding to `bind_address`.
		
		If `bind_address` is set as `"*"` (default), the server will listen on all available addresses (both IPv4 and IPv6).
		
		If `bind_address` is set as `"0.0.0.0"` (for IPv4) or `"::"` (for IPv6), the server will listen on all available addresses matching that IP type.
		
		If `bind_address` is set to any valid address (e.g. `"192.168.1.101"`, `"::1"`, etc), the server will only listen on the interface with that addresses (or fail if no interface with the given address exists).
	**/
	@:native("Listen")
	public function listen(port:cs.types.UInt16, ?bindAddress:std.String):godot.Error;
	#else
	/**		
		Listen on the `port` binding to `bind_address`.
		
		If `bind_address` is set as `"*"` (default), the server will listen on all available addresses (both IPv4 and IPv6).
		
		If `bind_address` is set as `"0.0.0.0"` (for IPv4) or `"::"` (for IPv6), the server will listen on all available addresses matching that IP type.
		
		If `bind_address` is set to any valid address (e.g. `"192.168.1.101"`, `"::1"`, etc), the server will only listen on the interface with that addresses (or fail if no interface with the given address exists).
	**/
	@:native("Listen")
	public overload function listen(port:cs.types.UInt16):godot.Error;

	/**		
		Listen on the `port` binding to `bind_address`.
		
		If `bind_address` is set as `"*"` (default), the server will listen on all available addresses (both IPv4 and IPv6).
		
		If `bind_address` is set as `"0.0.0.0"` (for IPv4) or `"::"` (for IPv6), the server will listen on all available addresses matching that IP type.
		
		If `bind_address` is set to any valid address (e.g. `"192.168.1.101"`, `"::1"`, etc), the server will only listen on the interface with that addresses (or fail if no interface with the given address exists).
	**/
	@:native("Listen")
	public overload function listen(port:cs.types.UInt16, bindAddress:std.String):godot.Error;
	#end

	/**		
		Returns `true` if a connection is available for taking.
	**/
	@:native("IsConnectionAvailable")
	public function isConnectionAvailable():Bool;

	/**		
		Returns `true` if the server is currently listening for connections.
	**/
	@:native("IsListening")
	public function isListening():Bool;

	/**		
		If a connection is available, returns a StreamPeerTCP with the connection.
	**/
	@:native("TakeConnection")
	public function takeConnection():godot.StreamPeerTCP;

	/**		
		Stops listening.
	**/
	@:native("Stop")
	public function stop():Void;
}
