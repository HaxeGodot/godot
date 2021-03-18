// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
A simple server that opens a UDP socket and returns connected `godot.PacketPeerUDP` upon receiving new packets. See also `godot.PacketPeerUDP.connectToHost`.

After starting the server (`godot.UDPServer.listen`), you will need to `godot.UDPServer.poll` it at regular intervals (e.g. inside `godot.Node._Process`) for it to process new packets, delivering them to the appropriate `godot.PacketPeerUDP`, and taking new connections.

Below a small example of how it can be used:

```

# server.gd
extends Node

var server := UDPServer.new()
var peers = []

func _ready():
server.listen(4242)

func _process(delta):
server.poll() # Important!
if server.is_connection_available():
var peer : PacketPeerUDP = server.take_connection()
var pkt = peer.get_packet()
print("Accepted peer: %s:%s" % [peer.get_packet_ip(), peer.get_packet_port()])
print("Received data: %s" % [pkt.get_string_from_utf8()])
# Reply so it knows we received the message.
peer.put_packet(pkt)
# Keep a reference so we can keep contacting the remote peer.
peers.append(peer)

for i in range(0, peers.size()):
pass # Do something with the connected peers.

```

```

# client.gd
extends Node

var udp := PacketPeerUDP.new()
var connected = false

func _ready():
udp.connect_to_host("127.0.0.1", 4242)

func _process(delta):
if !connected:
# Try to contact server
udp.put_packet("The answer is... 42!".to_utf8())
if udp.get_available_packet_count() &gt; 0:
print("Connected: %s" % udp.get_packet().get_string_from_utf8())
connected = true

```
**/
@:libType
@:csNative
@:native("Godot.UDPServer")
@:autoBuild(godot.Godot.buildUserClass())
extern class UDPServer extends godot.Reference {
	/**		
		Define the maximum number of pending connections, during `godot.UDPServer.poll`, any new pending connection exceeding that value will be automatically dropped. Setting this value to `0` effectively prevents any new pending connection to be accepted (e.g. when all your players have connected).
	**/
	@:native("MaxPendingConnections")
	public var maxPendingConnections:Int;

	@:native("new")
	public function new():Void;

	#if doc_gen
	/**		
		Starts the server by opening a UDP socket listening on the given port. You can optionally specify a `bind_address` to only listen for packets sent to that address. See also `godot.PacketPeerUDP.listen`.
	**/
	@:native("Listen")
	public function listen(port:cs.types.UInt16, ?bindAddress:std.String):godot.Error;
	#else
	/**		
		Starts the server by opening a UDP socket listening on the given port. You can optionally specify a `bind_address` to only listen for packets sent to that address. See also `godot.PacketPeerUDP.listen`.
	**/
	@:native("Listen")
	public overload function listen(port:cs.types.UInt16):godot.Error;

	/**		
		Starts the server by opening a UDP socket listening on the given port. You can optionally specify a `bind_address` to only listen for packets sent to that address. See also `godot.PacketPeerUDP.listen`.
	**/
	@:native("Listen")
	public overload function listen(port:cs.types.UInt16, bindAddress:std.String):godot.Error;
	#end

	/**		
		Call this method at regular intervals (e.g. inside `godot.Node._Process`) to process new packets. And packet from known address/port pair will be delivered to the appropriate `godot.PacketPeerUDP`, any packet received from an unknown address/port pair will be added as a pending connection (see `godot.UDPServer.isConnectionAvailable`, `godot.UDPServer.takeConnection`). The maximum number of pending connection is defined via `godot.UDPServer.maxPendingConnections`.
	**/
	@:native("Poll")
	public function poll():godot.Error;

	/**		
		Returns `true` if a packet with a new address/port combination was received on the socket.
	**/
	@:native("IsConnectionAvailable")
	public function isConnectionAvailable():Bool;

	/**		
		Returns `true` if the socket is open and listening on a port.
	**/
	@:native("IsListening")
	public function isListening():Bool;

	/**		
		Returns the first pending connection (connected to the appropriate address/port). Will return `null` if no new connection is available. See also `godot.UDPServer.isConnectionAvailable`, `godot.PacketPeerUDP.connectToHost`.
	**/
	@:native("TakeConnection")
	public function takeConnection():godot.PacketPeerUDP;

	/**		
		Stops the server, closing the UDP socket if open. Will close all connected `godot.PacketPeerUDP` accepted via `godot.UDPServer.takeConnection` (remote peers will not be notified).
	**/
	@:native("Stop")
	public function stop():Void;

	@:native("SetMaxPendingConnections")
	public function setMaxPendingConnections(maxPendingConnections:Int):Void;

	@:native("GetMaxPendingConnections")
	public function getMaxPendingConnections():Int;
}
