// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
This class implements a WebSocket client compatible with any RFC 6455-compliant WebSocket server.

This client can be optionally used as a network peer for the `godot.MultiplayerAPI`.

After starting the client (`godot.WebSocketClient.connectToUrl`), you will need to `godot.NetworkedMultiplayerPeer.poll` it at regular intervals (e.g. inside `godot.Node._Process`).

You will receive appropriate signals when connecting, disconnecting, or when new data is available.
**/
@:libType
@:csNative
@:native("Godot.WebSocketClient")
@:autoBuild(godot.Godot.buildUserClass())
extern class WebSocketClient extends godot.WebSocketMultiplayerPeer {
	/**
		`connection_closed` signal.
	**/
	public var onConnectionClosed(get, never):Signal<(wasCleanClose:Bool)->Void>;
	@:dox(hide) @:noCompletion inline function get_onConnectionClosed():Signal<(wasCleanClose:Bool)->Void> {
		return new Signal(this, "connection_closed", Signal.SignalHandlerBoolVoid.connectSignal, Signal.SignalHandlerBoolVoid.disconnectSignal, Signal.SignalHandlerBoolVoid.isSignalConnected);
	}

	/**
		`connection_error` signal.
	**/
	public var onConnectionError(get, never):Signal<Void->Void>;
	@:dox(hide) @:noCompletion inline function get_onConnectionError():Signal<Void->Void> {
		return new Signal(this, "connection_error", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	/**
		`connection_established` signal.
	**/
	public var onConnectionEstablished(get, never):Signal<(protocol:std.String)->Void>;
	@:dox(hide) @:noCompletion inline function get_onConnectionEstablished():Signal<(protocol:std.String)->Void> {
		return new Signal(this, "connection_established", Signal.SignalHandlerStringVoid.connectSignal, Signal.SignalHandlerStringVoid.disconnectSignal, Signal.SignalHandlerStringVoid.isSignalConnected);
	}

	/**
		`data_received` signal.
	**/
	public var onDataReceived(get, never):Signal<Void->Void>;
	@:dox(hide) @:noCompletion inline function get_onDataReceived():Signal<Void->Void> {
		return new Signal(this, "data_received", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	/**
		`server_close_request` signal.
	**/
	public var onServerCloseRequest(get, never):Signal<(code:Int, reason:std.String)->Void>;
	@:dox(hide) @:noCompletion inline function get_onServerCloseRequest():Signal<(code:Int, reason:std.String)->Void> {
		return new Signal(this, "server_close_request", Signal.SignalHandlerIntStringVoid.connectSignal, Signal.SignalHandlerIntStringVoid.disconnectSignal, Signal.SignalHandlerIntStringVoid.isSignalConnected);
	}

	/**		
		If specified, this `godot.X509Certificate` will be the only one accepted when connecting to an SSL host. Any other certificate provided by the server will be regarded as invalid.
		
		Note: Specifying a custom `trusted_ssl_certificate` is not supported in HTML5 exports due to browsers restrictions.
	**/
	@:native("TrustedSslCertificate")
	public var trustedSslCertificate:godot.X509Certificate;

	/**		
		If `true`, SSL certificate verification is enabled.
		
		Note: You must specify the certificates to be used in the Project Settings for it to work when exported.
	**/
	@:native("VerifySsl")
	public var verifySsl:Bool;

	@:native("new")
	public function new():Void;

	/**		
		Connects to the given URL requesting one of the given `protocols` as sub-protocol. If the list empty (default), no sub-protocol will be requested.
		
		If `true` is passed as `gd_mp_api`, the client will behave like a network peer for the `godot.MultiplayerAPI`, connections to non-Godot servers will not work, and `data_received` will not be emitted.
		
		If `false` is passed instead (default), you must call `godot.PacketPeer` functions (`put_packet`, `get_packet`, etc.) on the `godot.WebSocketPeer` returned via `get_peer(1)` and not on this object directly (e.g. `get_peer(1).put_packet(data)`).
		
		You can optionally pass a list of `custom_headers` to be added to the handshake HTTP request.
		
		Note: To avoid mixed content warnings or errors in HTML5, you may have to use a `url` that starts with `wss://` (secure) instead of `ws://`. When doing so, make sure to use the fully qualified domain name that matches the one defined in the server's SSL certificate. Do not connect directly via the IP address for `wss://` connections, as it won't match with the SSL certificate.
		
		Note: Specifying `custom_headers` is not supported in HTML5 exports due to browsers restrictions.
		
		@param protocols If the parameter is null, then the default value is new string[] {}
		@param customHeaders If the parameter is null, then the default value is new string[] {}
	**/
	@:native("ConnectToUrl")
	public function connectToUrl(url:std.String, protocols:cs.NativeArray<std.String>, gdMpApi:Bool, customHeaders:haxe.Rest<std.String>):godot.Error;

	#if doc_gen
	/**		
		Disconnects this client from the connected host. See `godot.WebSocketPeer.close` for more information.
	**/
	@:native("DisconnectFromHost")
	public function disconnectFromHost(?code:Int, ?reason:std.String):Void;
	#else
	/**		
		Disconnects this client from the connected host. See `godot.WebSocketPeer.close` for more information.
	**/
	@:native("DisconnectFromHost")
	public overload function disconnectFromHost():Void;

	/**		
		Disconnects this client from the connected host. See `godot.WebSocketPeer.close` for more information.
	**/
	@:native("DisconnectFromHost")
	public overload function disconnectFromHost(code:Int):Void;

	/**		
		Disconnects this client from the connected host. See `godot.WebSocketPeer.close` for more information.
	**/
	@:native("DisconnectFromHost")
	public overload function disconnectFromHost(code:Int, reason:std.String):Void;
	#end

	/**		
		Return the IP address of the currently connected host.
	**/
	@:native("GetConnectedHost")
	public function getConnectedHost():std.String;

	/**		
		Return the IP port of the currently connected host.
	**/
	@:native("GetConnectedPort")
	public function getConnectedPort():cs.types.UInt16;

	@:native("SetVerifySslEnabled")
	public function setVerifySslEnabled(enabled:Bool):Void;

	@:native("IsVerifySslEnabled")
	public function isVerifySslEnabled():Bool;

	@:native("GetTrustedSslCertificate")
	public function getTrustedSslCertificate():godot.X509Certificate;

	@:native("SetTrustedSslCertificate")
	public function setTrustedSslCertificate(arg0:godot.X509Certificate):Void;
}
