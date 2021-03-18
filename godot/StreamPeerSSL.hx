// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
SSL stream peer. This object can be used to connect to an SSL server or accept a single SSL client connection.
**/
@:libType
@:csNative
@:native("Godot.StreamPeerSSL")
@:autoBuild(godot.Godot.buildUserClass())
extern class StreamPeerSSL extends godot.StreamPeer {
	@:native("BlockingHandshake")
	public var blockingHandshake:Bool;

	@:native("new")
	public function new():Void;

	/**		
		Poll the connection to check for incoming bytes. Call this right before `godot.StreamPeer.getAvailableBytes` for it to work properly.
	**/
	@:native("Poll")
	public function poll():Void;

	#if doc_gen
	/**		
		Accepts a peer connection as a server using the given `private_key` and providing the given `certificate` to the client. You can pass the optional `chain` parameter to provide additional CA chain information along with the certificate.
	**/
	@:native("AcceptStream")
	public function acceptStream(stream:godot.StreamPeer, privateKey:godot.CryptoKey, certificate:godot.X509Certificate, ?chain:godot.X509Certificate):godot.Error;
	#else
	/**		
		Accepts a peer connection as a server using the given `private_key` and providing the given `certificate` to the client. You can pass the optional `chain` parameter to provide additional CA chain information along with the certificate.
	**/
	@:native("AcceptStream")
	public overload function acceptStream(stream:godot.StreamPeer, privateKey:godot.CryptoKey, certificate:godot.X509Certificate):godot.Error;

	/**		
		Accepts a peer connection as a server using the given `private_key` and providing the given `certificate` to the client. You can pass the optional `chain` parameter to provide additional CA chain information along with the certificate.
	**/
	@:native("AcceptStream")
	public overload function acceptStream(stream:godot.StreamPeer, privateKey:godot.CryptoKey, certificate:godot.X509Certificate, chain:godot.X509Certificate):godot.Error;
	#end

	#if doc_gen
	/**		
		Connects to a peer using an underlying `godot.StreamPeer` `stream`. If `validate_certs` is `true`, `godot.StreamPeerSSL` will validate that the certificate presented by the peer matches the `for_hostname`.
		
		Note: Specifying a custom `valid_certificate` is not supported in HTML5 exports due to browsers restrictions.
	**/
	@:native("ConnectToStream")
	public function connectToStream(stream:godot.StreamPeer, ?validateCerts:Bool, ?forHostname:std.String, ?validCertificate:godot.X509Certificate):godot.Error;
	#else
	/**		
		Connects to a peer using an underlying `godot.StreamPeer` `stream`. If `validate_certs` is `true`, `godot.StreamPeerSSL` will validate that the certificate presented by the peer matches the `for_hostname`.
		
		Note: Specifying a custom `valid_certificate` is not supported in HTML5 exports due to browsers restrictions.
	**/
	@:native("ConnectToStream")
	public overload function connectToStream(stream:godot.StreamPeer):godot.Error;

	/**		
		Connects to a peer using an underlying `godot.StreamPeer` `stream`. If `validate_certs` is `true`, `godot.StreamPeerSSL` will validate that the certificate presented by the peer matches the `for_hostname`.
		
		Note: Specifying a custom `valid_certificate` is not supported in HTML5 exports due to browsers restrictions.
	**/
	@:native("ConnectToStream")
	public overload function connectToStream(stream:godot.StreamPeer, validateCerts:Bool):godot.Error;

	/**		
		Connects to a peer using an underlying `godot.StreamPeer` `stream`. If `validate_certs` is `true`, `godot.StreamPeerSSL` will validate that the certificate presented by the peer matches the `for_hostname`.
		
		Note: Specifying a custom `valid_certificate` is not supported in HTML5 exports due to browsers restrictions.
	**/
	@:native("ConnectToStream")
	public overload function connectToStream(stream:godot.StreamPeer, validateCerts:Bool, forHostname:std.String):godot.Error;

	/**		
		Connects to a peer using an underlying `godot.StreamPeer` `stream`. If `validate_certs` is `true`, `godot.StreamPeerSSL` will validate that the certificate presented by the peer matches the `for_hostname`.
		
		Note: Specifying a custom `valid_certificate` is not supported in HTML5 exports due to browsers restrictions.
	**/
	@:native("ConnectToStream")
	public overload function connectToStream(stream:godot.StreamPeer, validateCerts:Bool, forHostname:std.String, validCertificate:godot.X509Certificate):godot.Error;
	#end

	/**		
		Returns the status of the connection. See `godot.StreamPeerSSL_Status` for values.
	**/
	@:native("GetStatus")
	public function getStatus():godot.StreamPeerSSL_Status;

	/**		
		Disconnects from host.
	**/
	@:native("DisconnectFromStream")
	public function disconnectFromStream():Void;

	@:native("SetBlockingHandshakeEnabled")
	public function setBlockingHandshakeEnabled(enabled:Bool):Void;

	@:native("IsBlockingHandshakeEnabled")
	public function isBlockingHandshakeEnabled():Bool;
}
