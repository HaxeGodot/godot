// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
TCP stream peer. This object can be used to connect to TCP servers, or also is returned by a TCP server.
**/
@:libType
@:csNative
@:native("Godot.StreamPeerTCP")
@:autoBuild(godot.Godot.buildUserClass())
extern class StreamPeerTCP extends godot.StreamPeer {
	@:native("new")
	public function new():Void;

	/**		
		Connects to the specified `host:port` pair. A hostname will be resolved if valid. Returns `OK` on success or `FAILED` on failure.
	**/
	@:native("ConnectToHost")
	public function connectToHost(host:std.String, port:Int):godot.Error;

	/**		
		Returns `true` if this peer is currently connected or is connecting to a host, `false` otherwise.
	**/
	@:native("IsConnectedToHost")
	public function isConnectedToHost():Bool;

	/**		
		Returns the status of the connection, see `godot.StreamPeerTCP_Status`.
	**/
	@:native("GetStatus")
	public function getStatus():godot.StreamPeerTCP_Status;

	/**		
		Returns the IP of this peer.
	**/
	@:native("GetConnectedHost")
	public function getConnectedHost():std.String;

	/**		
		Returns the port of this peer.
	**/
	@:native("GetConnectedPort")
	public function getConnectedPort():cs.types.UInt16;

	/**		
		Disconnects from host.
	**/
	@:native("DisconnectFromHost")
	public function disconnectFromHost():Void;

	/**		
		If `enabled` is `true`, packets will be sent immediately. If `enabled` is `false` (the default), packet transfers will be delayed and combined using [https://en.wikipedia.org/wiki/Nagle%27s_algorithm](Nagle's algorithm).
		
		Note: It's recommended to leave this disabled for applications that send large packets or need to transfer a lot of data, as enabling this can decrease the total available bandwidth.
	**/
	@:native("SetNoDelay")
	public function setNoDelay(enabled:Bool):Void;
}
