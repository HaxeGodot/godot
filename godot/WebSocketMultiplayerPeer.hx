// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Base class for WebSocket server and client, allowing them to be used as network peer for the `godot.MultiplayerAPI`.
**/
@:libType
@:csNative
@:native("Godot.WebSocketMultiplayerPeer")
@:autoBuild(godot.Godot.buildUserClass())
extern abstract class WebSocketMultiplayerPeer extends godot.NetworkedMultiplayerPeer {
	/**		
		Configures the buffer sizes for this WebSocket peer. Default values can be specified in the Project Settings under `network/limits`. For server, values are meant per connected peer.
		
		The first two parameters define the size and queued packets limits of the input buffer, the last two of the output buffer.
		
		Buffer sizes are expressed in KiB, so `4 = 2^12 = 4096 bytes`. All parameters will be rounded up to the nearest power of two.
		
		Note: HTML5 exports only use the input buffer since the output one is managed by browsers.
	**/
	@:native("SetBuffers")
	public function setBuffers(inputBufferSizeKb:Int, inputMaxPackets:Int, outputBufferSizeKb:Int, outputMaxPackets:Int):godot.Error;

	/**		
		Returns the `godot.WebSocketPeer` associated to the given `peer_id`.
	**/
	@:native("GetPeer")
	public function getPeer(peerId:Int):godot.WebSocketPeer;
}
