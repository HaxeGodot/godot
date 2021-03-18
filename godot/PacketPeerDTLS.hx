// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
This class represents a DTLS peer connection. It can be used to connect to a DTLS server, and is returned by `godot.DTLSServer.takeConnection`.
**/
@:libType
@:csNative
@:native("Godot.PacketPeerDTLS")
@:autoBuild(godot.Godot.buildUserClass())
extern class PacketPeerDTLS extends godot.PacketPeer {
	@:native("new")
	public function new():Void;

	/**		
		Poll the connection to check for incoming packets. Call this frequently to update the status and keep the connection working.
	**/
	@:native("Poll")
	public function poll():Void;

	#if doc_gen
	/**		
		Connects a `peer` beginning the DTLS handshake using the underlying `godot.PacketPeerUDP` which must be connected (see `godot.PacketPeerUDP.connectToHost`). If `validate_certs` is `true`, `godot.PacketPeerDTLS` will validate that the certificate presented by the remote peer and match it with the `for_hostname` argument. You can specify a custom `godot.X509Certificate` to use for validation via the `valid_certificate` argument.
	**/
	@:native("ConnectToPeer")
	public function connectToPeer(packetPeer:godot.PacketPeerUDP, ?validateCerts:Bool, ?forHostname:std.String, ?validCertificate:godot.X509Certificate):godot.Error;
	#else
	/**		
		Connects a `peer` beginning the DTLS handshake using the underlying `godot.PacketPeerUDP` which must be connected (see `godot.PacketPeerUDP.connectToHost`). If `validate_certs` is `true`, `godot.PacketPeerDTLS` will validate that the certificate presented by the remote peer and match it with the `for_hostname` argument. You can specify a custom `godot.X509Certificate` to use for validation via the `valid_certificate` argument.
	**/
	@:native("ConnectToPeer")
	public overload function connectToPeer(packetPeer:godot.PacketPeerUDP):godot.Error;

	/**		
		Connects a `peer` beginning the DTLS handshake using the underlying `godot.PacketPeerUDP` which must be connected (see `godot.PacketPeerUDP.connectToHost`). If `validate_certs` is `true`, `godot.PacketPeerDTLS` will validate that the certificate presented by the remote peer and match it with the `for_hostname` argument. You can specify a custom `godot.X509Certificate` to use for validation via the `valid_certificate` argument.
	**/
	@:native("ConnectToPeer")
	public overload function connectToPeer(packetPeer:godot.PacketPeerUDP, validateCerts:Bool):godot.Error;

	/**		
		Connects a `peer` beginning the DTLS handshake using the underlying `godot.PacketPeerUDP` which must be connected (see `godot.PacketPeerUDP.connectToHost`). If `validate_certs` is `true`, `godot.PacketPeerDTLS` will validate that the certificate presented by the remote peer and match it with the `for_hostname` argument. You can specify a custom `godot.X509Certificate` to use for validation via the `valid_certificate` argument.
	**/
	@:native("ConnectToPeer")
	public overload function connectToPeer(packetPeer:godot.PacketPeerUDP, validateCerts:Bool, forHostname:std.String):godot.Error;

	/**		
		Connects a `peer` beginning the DTLS handshake using the underlying `godot.PacketPeerUDP` which must be connected (see `godot.PacketPeerUDP.connectToHost`). If `validate_certs` is `true`, `godot.PacketPeerDTLS` will validate that the certificate presented by the remote peer and match it with the `for_hostname` argument. You can specify a custom `godot.X509Certificate` to use for validation via the `valid_certificate` argument.
	**/
	@:native("ConnectToPeer")
	public overload function connectToPeer(packetPeer:godot.PacketPeerUDP, validateCerts:Bool, forHostname:std.String, validCertificate:godot.X509Certificate):godot.Error;
	#end

	/**		
		Returns the status of the connection. See `godot.PacketPeerDTLS_Status` for values.
	**/
	@:native("GetStatus")
	public function getStatus():godot.PacketPeerDTLS_Status;

	/**		
		Disconnects this peer, terminating the DTLS session.
	**/
	@:native("DisconnectFromPeer")
	public function disconnectFromPeer():Void;
}
