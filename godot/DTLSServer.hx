// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
This class is used to store the state of a DTLS server. Upon `godot.DTLSServer.setup` it converts connected `godot.PacketPeerUDP` to `godot.PacketPeerDTLS` accepting them via `godot.DTLSServer.takeConnection` as DTLS clients. Under the hood, this class is used to store the DTLS state and cookies of the server. The reason of why the state and cookies are needed is outside of the scope of this documentation.

Below a small example of how to use it:

```

# server.gd
extends Node

var dtls := DTLSServer.new()
var server := UDPServer.new()
var peers = []

func _ready():
server.listen(4242)
var key = load("key.key") # Your private key.
var cert = load("cert.crt") # Your X509 certificate.
dtls.setup(key, cert)

func _process(delta):
while server.is_connection_available():
var peer : PacketPeerUDP = server.take_connection()
var dtls_peer : PacketPeerDTLS = dtls.take_connection(peer)
if dtls_peer.get_status() != PacketPeerDTLS.STATUS_HANDSHAKING:
continue # It is normal that 50% of the connections fails due to cookie exchange.
print("Peer connected!")
peers.append(dtls_peer)
for p in peers:
p.poll() # Must poll to update the state.
if p.get_status() == PacketPeerDTLS.STATUS_CONNECTED:
while p.get_available_packet_count() &gt; 0:
print("Received message from client: %s" % p.get_packet().get_string_from_utf8())
p.put_packet("Hello DTLS client".to_utf8())

```

```

# client.gd
extends Node

var dtls := PacketPeerDTLS.new()
var udp := PacketPeerUDP.new()
var connected = false

func _ready():
udp.connect_to_host("127.0.0.1", 4242)
dtls.connect_to_peer(udp, false) # Use true in production for certificate validation!

func _process(delta):
dtls.poll()
if dtls.get_status() == PacketPeerDTLS.STATUS_CONNECTED:
if !connected:
# Try to contact server
dtls.put_packet("The answer is... 42!".to_utf8())
while dtls.get_available_packet_count() &gt; 0:
print("Connected: %s" % dtls.get_packet().get_string_from_utf8())
connected = true

```
**/
@:libType
@:csNative
@:native("Godot.DTLSServer")
@:autoBuild(godot.Godot.buildUserClass())
extern class DTLSServer extends godot.Reference {
	@:native("new")
	public function new():Void;

	#if doc_gen
	/**		
		Setup the DTLS server to use the given `private_key` and provide the given `certificate` to clients. You can pass the optional `chain` parameter to provide additional CA chain information along with the certificate.
	**/
	@:native("Setup")
	public function setup(key:godot.CryptoKey, certificate:godot.X509Certificate, ?chain:godot.X509Certificate):godot.Error;
	#else
	/**		
		Setup the DTLS server to use the given `private_key` and provide the given `certificate` to clients. You can pass the optional `chain` parameter to provide additional CA chain information along with the certificate.
	**/
	@:native("Setup")
	public overload function setup(key:godot.CryptoKey, certificate:godot.X509Certificate):godot.Error;

	/**		
		Setup the DTLS server to use the given `private_key` and provide the given `certificate` to clients. You can pass the optional `chain` parameter to provide additional CA chain information along with the certificate.
	**/
	@:native("Setup")
	public overload function setup(key:godot.CryptoKey, certificate:godot.X509Certificate, chain:godot.X509Certificate):godot.Error;
	#end

	/**		
		Try to initiate the DTLS handshake with the given `udp_peer` which must be already connected (see `godot.PacketPeerUDP.connectToHost`).
		
		Note: You must check that the state of the return PacketPeerUDP is , as it is normal that 50% of the new connections will be invalid due to cookie exchange.
	**/
	@:native("TakeConnection")
	public function takeConnection(udpPeer:godot.PacketPeerUDP):godot.PacketPeerDTLS;
}
