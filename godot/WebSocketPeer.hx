// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
This class represent a specific WebSocket connection, you can do lower level operations with it.

You can choose to write to the socket in binary or text mode, and you can recognize the mode used for writing by the other peer.
**/
@:libType
@:csNative
@:native("Godot.WebSocketPeer")
@:autoBuild(godot.Godot.buildUserClass())
extern class WebSocketPeer extends godot.PacketPeer {
	@:native("new")
	public function new():Void;

	/**		
		Gets the current selected write mode. See `godot.WebSocketPeer_WriteMode`.
	**/
	@:native("GetWriteMode")
	public function getWriteMode():godot.WebSocketPeer_WriteMode;

	/**		
		Sets the socket to use the given `godot.WebSocketPeer_WriteMode`.
	**/
	@:native("SetWriteMode")
	public function setWriteMode(mode:godot.WebSocketPeer_WriteMode):Void;

	/**		
		Returns `true` if this peer is currently connected.
	**/
	@:native("IsConnectedToHost")
	public function isConnectedToHost():Bool;

	/**		
		Returns `true` if the last received packet was sent as a text payload. See `godot.WebSocketPeer_WriteMode`.
	**/
	@:native("WasStringPacket")
	public function wasStringPacket():Bool;

	#if doc_gen
	/**		
		Closes this WebSocket connection. `code` is the status code for the closure (see RFC 6455 section 7.4 for a list of valid status codes). `reason` is the human readable reason for closing the connection (can be any UTF-8 string that's smaller than 123 bytes).
		
		Note: To achieve a clean close, you will need to keep polling until either `WebSocketClient.connection_closed` or `WebSocketServer.client_disconnected` is received.
		
		Note: The HTML5 export might not support all status codes. Please refer to browser-specific documentation for more details.
	**/
	@:native("Close")
	public function close(?code:Int, ?reason:std.String):Void;
	#else
	/**		
		Closes this WebSocket connection. `code` is the status code for the closure (see RFC 6455 section 7.4 for a list of valid status codes). `reason` is the human readable reason for closing the connection (can be any UTF-8 string that's smaller than 123 bytes).
		
		Note: To achieve a clean close, you will need to keep polling until either `WebSocketClient.connection_closed` or `WebSocketServer.client_disconnected` is received.
		
		Note: The HTML5 export might not support all status codes. Please refer to browser-specific documentation for more details.
	**/
	@:native("Close")
	public overload function close():Void;

	/**		
		Closes this WebSocket connection. `code` is the status code for the closure (see RFC 6455 section 7.4 for a list of valid status codes). `reason` is the human readable reason for closing the connection (can be any UTF-8 string that's smaller than 123 bytes).
		
		Note: To achieve a clean close, you will need to keep polling until either `WebSocketClient.connection_closed` or `WebSocketServer.client_disconnected` is received.
		
		Note: The HTML5 export might not support all status codes. Please refer to browser-specific documentation for more details.
	**/
	@:native("Close")
	public overload function close(code:Int):Void;

	/**		
		Closes this WebSocket connection. `code` is the status code for the closure (see RFC 6455 section 7.4 for a list of valid status codes). `reason` is the human readable reason for closing the connection (can be any UTF-8 string that's smaller than 123 bytes).
		
		Note: To achieve a clean close, you will need to keep polling until either `WebSocketClient.connection_closed` or `WebSocketServer.client_disconnected` is received.
		
		Note: The HTML5 export might not support all status codes. Please refer to browser-specific documentation for more details.
	**/
	@:native("Close")
	public overload function close(code:Int, reason:std.String):Void;
	#end

	/**		
		Returns the IP address of the connected peer.
		
		Note: Not available in the HTML5 export.
	**/
	@:native("GetConnectedHost")
	public function getConnectedHost():std.String;

	/**		
		Returns the remote port of the connected peer.
		
		Note: Not available in the HTML5 export.
	**/
	@:native("GetConnectedPort")
	public function getConnectedPort():cs.types.UInt16;

	/**		
		Disable Nagle's algorithm on the underling TCP socket (default). See `godot.StreamPeerTCP.setNoDelay` for more information.
		
		Note: Not available in the HTML5 export.
	**/
	@:native("SetNoDelay")
	public function setNoDelay(enabled:Bool):Void;
}
