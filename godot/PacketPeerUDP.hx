// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
UDP packet peer. Can be used to send raw UDP packets as well as `Variant`s.
**/
@:libType
@:csNative
@:native("Godot.PacketPeerUDP")
@:autoBuild(godot.Godot.buildUserClass())
extern class PacketPeerUDP extends godot.PacketPeer {
	@:native("new")
	public function new():Void;

	#if doc_gen
	/**		
		Makes this `godot.PacketPeerUDP` listen on the `port` binding to `bind_address` with a buffer size `recv_buf_size`.
		
		If `bind_address` is set to `"*"` (default), the peer will listen on all available addresses (both IPv4 and IPv6).
		
		If `bind_address` is set to `"0.0.0.0"` (for IPv4) or `"::"` (for IPv6), the peer will listen on all available addresses matching that IP type.
		
		If `bind_address` is set to any valid address (e.g. `"192.168.1.101"`, `"::1"`, etc), the peer will only listen on the interface with that addresses (or fail if no interface with the given address exists).
	**/
	@:native("Listen")
	public function listen(port:Int, ?bindAddress:std.String, ?recvBufSize:Int):godot.Error;
	#else
	/**		
		Makes this `godot.PacketPeerUDP` listen on the `port` binding to `bind_address` with a buffer size `recv_buf_size`.
		
		If `bind_address` is set to `"*"` (default), the peer will listen on all available addresses (both IPv4 and IPv6).
		
		If `bind_address` is set to `"0.0.0.0"` (for IPv4) or `"::"` (for IPv6), the peer will listen on all available addresses matching that IP type.
		
		If `bind_address` is set to any valid address (e.g. `"192.168.1.101"`, `"::1"`, etc), the peer will only listen on the interface with that addresses (or fail if no interface with the given address exists).
	**/
	@:native("Listen")
	public overload function listen(port:Int):godot.Error;

	/**		
		Makes this `godot.PacketPeerUDP` listen on the `port` binding to `bind_address` with a buffer size `recv_buf_size`.
		
		If `bind_address` is set to `"*"` (default), the peer will listen on all available addresses (both IPv4 and IPv6).
		
		If `bind_address` is set to `"0.0.0.0"` (for IPv4) or `"::"` (for IPv6), the peer will listen on all available addresses matching that IP type.
		
		If `bind_address` is set to any valid address (e.g. `"192.168.1.101"`, `"::1"`, etc), the peer will only listen on the interface with that addresses (or fail if no interface with the given address exists).
	**/
	@:native("Listen")
	public overload function listen(port:Int, bindAddress:std.String):godot.Error;

	/**		
		Makes this `godot.PacketPeerUDP` listen on the `port` binding to `bind_address` with a buffer size `recv_buf_size`.
		
		If `bind_address` is set to `"*"` (default), the peer will listen on all available addresses (both IPv4 and IPv6).
		
		If `bind_address` is set to `"0.0.0.0"` (for IPv4) or `"::"` (for IPv6), the peer will listen on all available addresses matching that IP type.
		
		If `bind_address` is set to any valid address (e.g. `"192.168.1.101"`, `"::1"`, etc), the peer will only listen on the interface with that addresses (or fail if no interface with the given address exists).
	**/
	@:native("Listen")
	public overload function listen(port:Int, bindAddress:std.String, recvBufSize:Int):godot.Error;
	#end

	/**		
		Closes the UDP socket the `godot.PacketPeerUDP` is currently listening on.
	**/
	@:native("Close")
	public function close():Void;

	/**		
		Waits for a packet to arrive on the listening port. See `godot.PacketPeerUDP.listen`.
		
		Note: `godot.PacketPeerUDP.wait` can't be interrupted once it has been called. This can be worked around by allowing the other party to send a specific "death pill" packet like this:
		
		```
		
		# Server
		socket.set_dest_address("127.0.0.1", 789)
		socket.put_packet("Time to stop".to_ascii())
		
		# Client
		while socket.wait() == OK:
		var data = socket.get_packet().get_string_from_ascii()
		if data == "Time to stop":
		return
		
		```
	**/
	@:native("Wait")
	public function wait():godot.Error;

	/**		
		Returns whether this `godot.PacketPeerUDP` is listening.
	**/
	@:native("IsListening")
	public function isListening():Bool;

	/**		
		Calling this method connects this UDP peer to the given `host`/`port` pair. UDP is in reality connectionless, so this option only means that incoming packets from different addresses are automatically discarded, and that outgoing packets are always sent to the connected address (future calls to `godot.PacketPeerUDP.setDestAddress` are not allowed). This method does not send any data to the remote peer, to do that, use `godot.PacketPeer.putVar` or `godot.PacketPeer.putPacket` as usual. See also `godot.UDPServer`.
		
		Note: Connecting to the remote peer does not help to protect from malicious attacks like IP spoofing, etc. Think about using an encryption technique like SSL or DTLS if you feel like your application is transferring sensitive information.
	**/
	@:native("ConnectToHost")
	public function connectToHost(host:std.String, port:Int):godot.Error;

	/**		
		Returns `true` if the UDP socket is open and has been connected to a remote address. See `godot.PacketPeerUDP.connectToHost`.
	**/
	@:native("IsConnectedToHost")
	public function isConnectedToHost():Bool;

	/**		
		Returns the IP of the remote peer that sent the last packet(that was received with `godot.PacketPeer.getPacket` or `godot.PacketPeer.getVar`).
	**/
	@:native("GetPacketIp")
	public function getPacketIp():std.String;

	/**		
		Returns the port of the remote peer that sent the last packet(that was received with `godot.PacketPeer.getPacket` or `godot.PacketPeer.getVar`).
	**/
	@:native("GetPacketPort")
	public function getPacketPort():Int;

	/**		
		Sets the destination address and port for sending packets and variables. A hostname will be resolved using DNS if needed.
		
		Note: `godot.PacketPeerUDP.setBroadcastEnabled` must be enabled before sending packets to a broadcast address (e.g. `255.255.255.255`).
	**/
	@:native("SetDestAddress")
	public function setDestAddress(host:std.String, port:Int):godot.Error;

	/**		
		Enable or disable sending of broadcast packets (e.g. `set_dest_address("255.255.255.255", 4343)`. This option is disabled by default.
		
		Note: Some Android devices might require the `CHANGE_WIFI_MULTICAST_STATE` permission and this option to be enabled to receive broadcast packets too.
	**/
	@:native("SetBroadcastEnabled")
	public function setBroadcastEnabled(enabled:Bool):Void;

	/**		
		Joins the multicast group specified by `multicast_address` using the interface identified by `interface_name`.
		
		You can join the same multicast group with multiple interfaces. Use `godot.IP.getLocalInterfaces` to know which are available.
		
		Note: Some Android devices might require the `CHANGE_WIFI_MULTICAST_STATE` permission for multicast to work.
	**/
	@:native("JoinMulticastGroup")
	public function joinMulticastGroup(multicastAddress:std.String, interfaceName:std.String):godot.Error;

	/**		
		Removes the interface identified by `interface_name` from the multicast group specified by `multicast_address`.
	**/
	@:native("LeaveMulticastGroup")
	public function leaveMulticastGroup(multicastAddress:std.String, interfaceName:std.String):godot.Error;
}
