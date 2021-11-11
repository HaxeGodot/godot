// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
A PacketPeer implementation that should be passed to `godot.SceneTree.networkPeer` after being initialized as either a client or server. Events can then be handled by connecting to `godot.SceneTree` signals.

ENet's purpose is to provide a relatively thin, simple and robust network communication layer on top of UDP (User Datagram Protocol).

Note: ENet only uses UDP, not TCP. When forwarding the server port to make your server accessible on the public Internet, you only need to forward the server port in UDP. You can use the `godot.UPNP` class to try to forward the server port automatically when starting the server.
**/
@:libType
@:csNative
@:native("Godot.NetworkedMultiplayerENet")
@:autoBuild(godot.Godot.buildUserClass())
extern class NetworkedMultiplayerENet extends godot.NetworkedMultiplayerPeer {
	/**		
		When enabled, the client or server created by this peer, will use `godot.PacketPeerDTLS` instead of raw UDP sockets for communicating with the remote peer. This will make the communication encrypted with DTLS at the cost of higher resource usage and potentially larger packet size.
		
		Note: When creating a DTLS server, make sure you setup the key/certificate pair via `godot.NetworkedMultiplayerENet.setDtlsKey` and `godot.NetworkedMultiplayerENet.setDtlsCertificate`. For DTLS clients, have a look at the `godot.NetworkedMultiplayerENet.dtlsVerify` option, and configure the certificate accordingly via `godot.NetworkedMultiplayerENet.setDtlsCertificate`.
	**/
	@:native("UseDtls")
	public var useDtls:Bool;

	/**		
		The hostname used for DTLS verification, to be compared against the "CN" value in the certificate provided by the server.
		
		When set to an empty string, the `address` parameter passed to `godot.NetworkedMultiplayerENet.createClient` is used instead.
	**/
	@:native("DtlsHostname")
	public var dtlsHostname:std.String;

	/**		
		Enable or disable certificate verification when `godot.NetworkedMultiplayerENet.useDtls` `true`.
	**/
	@:native("DtlsVerify")
	public var dtlsVerify:Bool;

	/**		
		Enable or disable the server feature that notifies clients of other peers' connection/disconnection, and relays messages between them. When this option is `false`, clients won't be automatically notified of other peers and won't be able to send them packets through the server.
	**/
	@:native("ServerRelay")
	public var serverRelay:Bool;

	/**		
		Enforce ordered packets when using `godot.NetworkedMultiplayerPeer_TransferModeEnum.unreliable` (thus behaving similarly to `godot.NetworkedMultiplayerPeer_TransferModeEnum.unreliableOrdered`). This is the only way to use ordering with the RPC system.
	**/
	@:native("AlwaysOrdered")
	public var alwaysOrdered:Bool;

	/**		
		The number of channels to be used by ENet. Channels are used to separate different kinds of data. In reliable or ordered mode, for example, the packet delivery order is ensured on a per-channel basis. This is done to combat latency and reduces ordering restrictions on packets. The delivery status of a packet in one channel won't stall the delivery of other packets in another channel.
	**/
	@:native("ChannelCount")
	public var channelCount:Int;

	/**		
		Set the default channel to be used to transfer data. By default, this value is `-1` which means that ENet will only use 2 channels: one for reliable packets, and one for unreliable packets. The channel `0` is reserved and cannot be used. Setting this member to any value between `0` and `godot.NetworkedMultiplayerENet.channelCount` (excluded) will force ENet to use that channel for sending data. See `godot.NetworkedMultiplayerENet.channelCount` for more information about ENet channels.
	**/
	@:native("TransferChannel")
	public var transferChannel:Int;

	/**		
		The compression method used for network packets. These have different tradeoffs of compression speed versus bandwidth, you may need to test which one works best for your use case if you use compression at all.
		
		Note: Most games' network design involve sending many small packets frequently (smaller than 4 KB each). If in doubt, it is recommended to keep the default compression algorithm as it works best on these small packets.
		
		Note: `godot.NetworkedMultiplayerENet.compressionMode` must be set to the same value on both the server and all its clients. Clients will fail to connect if the `godot.NetworkedMultiplayerENet.compressionMode` set on the client differs from the one set on the server. Prior to Godot 3.4, the default `godot.NetworkedMultiplayerENet.compressionMode` was `godot.NetworkedMultiplayerENet_CompressionModeEnum.none`. Nonetheless, mixing engine versions between clients and server is not recommended and not officially supported.
	**/
	@:native("CompressionMode")
	public var compressionMode:godot.NetworkedMultiplayerENet_CompressionModeEnum;

	@:native("new")
	public function new():Void;

	#if doc_gen
	/**		
		Create server that listens to connections via `port`. The port needs to be an available, unused port between 0 and 65535. Note that ports below 1024 are privileged and may require elevated permissions depending on the platform. To change the interface the server listens on, use `godot.NetworkedMultiplayerENet.setBindIp`. The default IP is the wildcard `"*"`, which listens on all available interfaces. `max_clients` is the maximum number of clients that are allowed at once, any number up to 4095 may be used, although the achievable number of simultaneous clients may be far lower and depends on the application. For additional details on the bandwidth parameters, see `godot.NetworkedMultiplayerENet.createClient`. Returns `OK` if a server was created, `ERR_ALREADY_IN_USE` if this NetworkedMultiplayerENet instance already has an open connection (in which case you need to call `godot.NetworkedMultiplayerENet.closeConnection` first) or `ERR_CANT_CREATE` if the server could not be created.
	**/
	@:native("CreateServer")
	public function createServer(port:Int, ?maxClients:Int, ?inBandwidth:Int, ?outBandwidth:Int):godot.Error;
	#else
	/**		
		Create server that listens to connections via `port`. The port needs to be an available, unused port between 0 and 65535. Note that ports below 1024 are privileged and may require elevated permissions depending on the platform. To change the interface the server listens on, use `godot.NetworkedMultiplayerENet.setBindIp`. The default IP is the wildcard `"*"`, which listens on all available interfaces. `max_clients` is the maximum number of clients that are allowed at once, any number up to 4095 may be used, although the achievable number of simultaneous clients may be far lower and depends on the application. For additional details on the bandwidth parameters, see `godot.NetworkedMultiplayerENet.createClient`. Returns `OK` if a server was created, `ERR_ALREADY_IN_USE` if this NetworkedMultiplayerENet instance already has an open connection (in which case you need to call `godot.NetworkedMultiplayerENet.closeConnection` first) or `ERR_CANT_CREATE` if the server could not be created.
	**/
	@:native("CreateServer")
	public overload function createServer(port:Int):godot.Error;

	/**		
		Create server that listens to connections via `port`. The port needs to be an available, unused port between 0 and 65535. Note that ports below 1024 are privileged and may require elevated permissions depending on the platform. To change the interface the server listens on, use `godot.NetworkedMultiplayerENet.setBindIp`. The default IP is the wildcard `"*"`, which listens on all available interfaces. `max_clients` is the maximum number of clients that are allowed at once, any number up to 4095 may be used, although the achievable number of simultaneous clients may be far lower and depends on the application. For additional details on the bandwidth parameters, see `godot.NetworkedMultiplayerENet.createClient`. Returns `OK` if a server was created, `ERR_ALREADY_IN_USE` if this NetworkedMultiplayerENet instance already has an open connection (in which case you need to call `godot.NetworkedMultiplayerENet.closeConnection` first) or `ERR_CANT_CREATE` if the server could not be created.
	**/
	@:native("CreateServer")
	public overload function createServer(port:Int, maxClients:Int):godot.Error;

	/**		
		Create server that listens to connections via `port`. The port needs to be an available, unused port between 0 and 65535. Note that ports below 1024 are privileged and may require elevated permissions depending on the platform. To change the interface the server listens on, use `godot.NetworkedMultiplayerENet.setBindIp`. The default IP is the wildcard `"*"`, which listens on all available interfaces. `max_clients` is the maximum number of clients that are allowed at once, any number up to 4095 may be used, although the achievable number of simultaneous clients may be far lower and depends on the application. For additional details on the bandwidth parameters, see `godot.NetworkedMultiplayerENet.createClient`. Returns `OK` if a server was created, `ERR_ALREADY_IN_USE` if this NetworkedMultiplayerENet instance already has an open connection (in which case you need to call `godot.NetworkedMultiplayerENet.closeConnection` first) or `ERR_CANT_CREATE` if the server could not be created.
	**/
	@:native("CreateServer")
	public overload function createServer(port:Int, maxClients:Int, inBandwidth:Int):godot.Error;

	/**		
		Create server that listens to connections via `port`. The port needs to be an available, unused port between 0 and 65535. Note that ports below 1024 are privileged and may require elevated permissions depending on the platform. To change the interface the server listens on, use `godot.NetworkedMultiplayerENet.setBindIp`. The default IP is the wildcard `"*"`, which listens on all available interfaces. `max_clients` is the maximum number of clients that are allowed at once, any number up to 4095 may be used, although the achievable number of simultaneous clients may be far lower and depends on the application. For additional details on the bandwidth parameters, see `godot.NetworkedMultiplayerENet.createClient`. Returns `OK` if a server was created, `ERR_ALREADY_IN_USE` if this NetworkedMultiplayerENet instance already has an open connection (in which case you need to call `godot.NetworkedMultiplayerENet.closeConnection` first) or `ERR_CANT_CREATE` if the server could not be created.
	**/
	@:native("CreateServer")
	public overload function createServer(port:Int, maxClients:Int, inBandwidth:Int, outBandwidth:Int):godot.Error;
	#end

	#if doc_gen
	/**		
		Create client that connects to a server at `address` using specified `port`. The given address needs to be either a fully qualified domain name (e.g. `"www.example.com"`) or an IP address in IPv4 or IPv6 format (e.g. `"192.168.1.1"`). The `port` is the port the server is listening on. The `in_bandwidth` and `out_bandwidth` parameters can be used to limit the incoming and outgoing bandwidth to the given number of bytes per second. The default of 0 means unlimited bandwidth. Note that ENet will strategically drop packets on specific sides of a connection between peers to ensure the peer's bandwidth is not overwhelmed. The bandwidth parameters also determine the window size of a connection which limits the amount of reliable packets that may be in transit at any given time. Returns `OK` if a client was created, `ERR_ALREADY_IN_USE` if this NetworkedMultiplayerENet instance already has an open connection (in which case you need to call `godot.NetworkedMultiplayerENet.closeConnection` first) or `ERR_CANT_CREATE` if the client could not be created. If `client_port` is specified, the client will also listen to the given port; this is useful for some NAT traversal techniques.
	**/
	@:native("CreateClient")
	public function createClient(address:std.String, port:Int, ?inBandwidth:Int, ?outBandwidth:Int, ?clientPort:Int):godot.Error;
	#else
	/**		
		Create client that connects to a server at `address` using specified `port`. The given address needs to be either a fully qualified domain name (e.g. `"www.example.com"`) or an IP address in IPv4 or IPv6 format (e.g. `"192.168.1.1"`). The `port` is the port the server is listening on. The `in_bandwidth` and `out_bandwidth` parameters can be used to limit the incoming and outgoing bandwidth to the given number of bytes per second. The default of 0 means unlimited bandwidth. Note that ENet will strategically drop packets on specific sides of a connection between peers to ensure the peer's bandwidth is not overwhelmed. The bandwidth parameters also determine the window size of a connection which limits the amount of reliable packets that may be in transit at any given time. Returns `OK` if a client was created, `ERR_ALREADY_IN_USE` if this NetworkedMultiplayerENet instance already has an open connection (in which case you need to call `godot.NetworkedMultiplayerENet.closeConnection` first) or `ERR_CANT_CREATE` if the client could not be created. If `client_port` is specified, the client will also listen to the given port; this is useful for some NAT traversal techniques.
	**/
	@:native("CreateClient")
	public overload function createClient(address:std.String, port:Int):godot.Error;

	/**		
		Create client that connects to a server at `address` using specified `port`. The given address needs to be either a fully qualified domain name (e.g. `"www.example.com"`) or an IP address in IPv4 or IPv6 format (e.g. `"192.168.1.1"`). The `port` is the port the server is listening on. The `in_bandwidth` and `out_bandwidth` parameters can be used to limit the incoming and outgoing bandwidth to the given number of bytes per second. The default of 0 means unlimited bandwidth. Note that ENet will strategically drop packets on specific sides of a connection between peers to ensure the peer's bandwidth is not overwhelmed. The bandwidth parameters also determine the window size of a connection which limits the amount of reliable packets that may be in transit at any given time. Returns `OK` if a client was created, `ERR_ALREADY_IN_USE` if this NetworkedMultiplayerENet instance already has an open connection (in which case you need to call `godot.NetworkedMultiplayerENet.closeConnection` first) or `ERR_CANT_CREATE` if the client could not be created. If `client_port` is specified, the client will also listen to the given port; this is useful for some NAT traversal techniques.
	**/
	@:native("CreateClient")
	public overload function createClient(address:std.String, port:Int, inBandwidth:Int):godot.Error;

	/**		
		Create client that connects to a server at `address` using specified `port`. The given address needs to be either a fully qualified domain name (e.g. `"www.example.com"`) or an IP address in IPv4 or IPv6 format (e.g. `"192.168.1.1"`). The `port` is the port the server is listening on. The `in_bandwidth` and `out_bandwidth` parameters can be used to limit the incoming and outgoing bandwidth to the given number of bytes per second. The default of 0 means unlimited bandwidth. Note that ENet will strategically drop packets on specific sides of a connection between peers to ensure the peer's bandwidth is not overwhelmed. The bandwidth parameters also determine the window size of a connection which limits the amount of reliable packets that may be in transit at any given time. Returns `OK` if a client was created, `ERR_ALREADY_IN_USE` if this NetworkedMultiplayerENet instance already has an open connection (in which case you need to call `godot.NetworkedMultiplayerENet.closeConnection` first) or `ERR_CANT_CREATE` if the client could not be created. If `client_port` is specified, the client will also listen to the given port; this is useful for some NAT traversal techniques.
	**/
	@:native("CreateClient")
	public overload function createClient(address:std.String, port:Int, inBandwidth:Int, outBandwidth:Int):godot.Error;

	/**		
		Create client that connects to a server at `address` using specified `port`. The given address needs to be either a fully qualified domain name (e.g. `"www.example.com"`) or an IP address in IPv4 or IPv6 format (e.g. `"192.168.1.1"`). The `port` is the port the server is listening on. The `in_bandwidth` and `out_bandwidth` parameters can be used to limit the incoming and outgoing bandwidth to the given number of bytes per second. The default of 0 means unlimited bandwidth. Note that ENet will strategically drop packets on specific sides of a connection between peers to ensure the peer's bandwidth is not overwhelmed. The bandwidth parameters also determine the window size of a connection which limits the amount of reliable packets that may be in transit at any given time. Returns `OK` if a client was created, `ERR_ALREADY_IN_USE` if this NetworkedMultiplayerENet instance already has an open connection (in which case you need to call `godot.NetworkedMultiplayerENet.closeConnection` first) or `ERR_CANT_CREATE` if the client could not be created. If `client_port` is specified, the client will also listen to the given port; this is useful for some NAT traversal techniques.
	**/
	@:native("CreateClient")
	public overload function createClient(address:std.String, port:Int, inBandwidth:Int, outBandwidth:Int, clientPort:Int):godot.Error;
	#end

	#if doc_gen
	/**		
		Closes the connection. Ignored if no connection is currently established. If this is a server it tries to notify all clients before forcibly disconnecting them. If this is a client it simply closes the connection to the server.
	**/
	@:native("CloseConnection")
	public function closeConnection(?waitUsec:UInt):Void;
	#else
	/**		
		Closes the connection. Ignored if no connection is currently established. If this is a server it tries to notify all clients before forcibly disconnecting them. If this is a client it simply closes the connection to the server.
	**/
	@:native("CloseConnection")
	public overload function closeConnection():Void;

	/**		
		Closes the connection. Ignored if no connection is currently established. If this is a server it tries to notify all clients before forcibly disconnecting them. If this is a client it simply closes the connection to the server.
	**/
	@:native("CloseConnection")
	public overload function closeConnection(waitUsec:UInt):Void;
	#end

	#if doc_gen
	/**		
		Disconnect the given peer. If "now" is set to `true`, the connection will be closed immediately without flushing queued messages.
	**/
	@:native("DisconnectPeer")
	public function disconnectPeer(id:Int, ?now:Bool):Void;
	#else
	/**		
		Disconnect the given peer. If "now" is set to `true`, the connection will be closed immediately without flushing queued messages.
	**/
	@:native("DisconnectPeer")
	public overload function disconnectPeer(id:Int):Void;

	/**		
		Disconnect the given peer. If "now" is set to `true`, the connection will be closed immediately without flushing queued messages.
	**/
	@:native("DisconnectPeer")
	public overload function disconnectPeer(id:Int, now:Bool):Void;
	#end

	@:native("SetCompressionMode")
	public function setCompressionMode(mode:godot.NetworkedMultiplayerENet_CompressionModeEnum):Void;

	@:native("GetCompressionMode")
	public function getCompressionMode():godot.NetworkedMultiplayerENet_CompressionModeEnum;

	/**		
		The IP used when creating a server. This is set to the wildcard `"*"` by default, which binds to all available interfaces. The given IP needs to be in IPv4 or IPv6 address format, for example: `"192.168.1.1"`.
	**/
	@:native("SetBindIp")
	public function setBindIp(ip:std.String):Void;

	@:native("SetDtlsEnabled")
	public function setDtlsEnabled(enabled:Bool):Void;

	@:native("IsDtlsEnabled")
	public function isDtlsEnabled():Bool;

	/**		
		Configure the `godot.CryptoKey` to use when `godot.NetworkedMultiplayerENet.useDtls` is `true`. Remember to also call `godot.NetworkedMultiplayerENet.setDtlsCertificate` to setup your `godot.X509Certificate`.
	**/
	@:native("SetDtlsKey")
	public function setDtlsKey(key:godot.CryptoKey):Void;

	/**		
		Configure the `godot.X509Certificate` to use when `godot.NetworkedMultiplayerENet.useDtls` is `true`. For servers, you must also setup the `godot.CryptoKey` via `godot.NetworkedMultiplayerENet.setDtlsKey`.
	**/
	@:native("SetDtlsCertificate")
	public function setDtlsCertificate(certificate:godot.X509Certificate):Void;

	@:native("SetDtlsVerifyEnabled")
	public function setDtlsVerifyEnabled(enabled:Bool):Void;

	@:native("IsDtlsVerifyEnabled")
	public function isDtlsVerifyEnabled():Bool;

	@:native("SetDtlsHostname")
	public function setDtlsHostname(hostname:std.String):Void;

	@:native("GetDtlsHostname")
	public function getDtlsHostname():std.String;

	/**		
		Returns the IP address of the given peer.
	**/
	@:native("GetPeerAddress")
	public function getPeerAddress(id:Int):std.String;

	/**		
		Returns the remote port of the given peer.
	**/
	@:native("GetPeerPort")
	public function getPeerPort(id:Int):Int;

	/**		
		Sets the timeout parameters for a peer.The timeout parameters control how and when a peer will timeout from a failure to acknowledge reliable traffic. Timeout values are expressed in milliseconds.
		
		The `timeout_limit` is a factor that, multiplied by a value based on the average round trip time, will determine the timeout limit for a reliable packet. When that limit is reached, the timeout will be doubled, and the peer will be disconnected if that limit has reached `timeout_min`. The `timeout_max` parameter, on the other hand, defines a fixed timeout for which any packet must be acknowledged or the peer will be dropped.
	**/
	@:native("SetPeerTimeout")
	public function setPeerTimeout(id:Int, timeoutLimit:Int, timeoutMin:Int, timeoutMax:Int):Void;

	/**		
		Returns the channel of the next packet that will be retrieved via `godot.PacketPeer.getPacket`.
	**/
	@:native("GetPacketChannel")
	public function getPacketChannel():Int;

	/**		
		Returns the channel of the last packet fetched via `godot.PacketPeer.getPacket`.
	**/
	@:native("GetLastPacketChannel")
	public function getLastPacketChannel():Int;

	@:native("SetTransferChannel")
	public function setTransferChannel(channel:Int):Void;

	@:native("GetTransferChannel")
	public function getTransferChannel():Int;

	@:native("SetChannelCount")
	public function setChannelCount(channels:Int):Void;

	@:native("GetChannelCount")
	public function getChannelCount():Int;

	@:native("SetAlwaysOrdered")
	public function setAlwaysOrdered(ordered:Bool):Void;

	@:native("IsAlwaysOrdered")
	public function isAlwaysOrdered():Bool;

	@:native("SetServerRelayEnabled")
	public function setServerRelayEnabled(enabled:Bool):Void;

	@:native("IsServerRelayEnabled")
	public function isServerRelayEnabled():Bool;
}
