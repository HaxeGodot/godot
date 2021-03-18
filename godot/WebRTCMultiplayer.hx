// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
This class constructs a full mesh of `godot.WebRTCPeerConnection` (one connection for each peer) that can be used as a `godot.MultiplayerAPI.networkPeer`.

You can add each `godot.WebRTCPeerConnection` via `godot.WebRTCMultiplayer.addPeer` or remove them via `godot.WebRTCMultiplayer.removePeer`. Peers must be added in  state to allow it to create the appropriate channels. This class will not create offers nor set descriptions, it will only poll them, and notify connections and disconnections.

`NetworkedMultiplayerPeer.connection_succeeded` and `NetworkedMultiplayerPeer.server_disconnected` will not be emitted unless `server_compatibility` is `true` in `godot.WebRTCMultiplayer.initialize`. Beside that data transfer works like in a `godot.NetworkedMultiplayerPeer`.
**/
@:libType
@:csNative
@:native("Godot.WebRTCMultiplayer")
@:autoBuild(godot.Godot.buildUserClass())
extern class WebRTCMultiplayer extends godot.NetworkedMultiplayerPeer {
	@:native("new")
	public function new():Void;

	#if doc_gen
	/**		
		Initialize the multiplayer peer with the given `peer_id` (must be between 1 and 2147483647).
		
		If `server_compatibilty` is `false` (default), the multiplayer peer will be immediately in state  and `NetworkedMultiplayerPeer.connection_succeeded` will not be emitted.
		
		If `server_compatibilty` is `true` the peer will suppress all `NetworkedMultiplayerPeer.peer_connected` signals until a peer with id  connects and then emit `NetworkedMultiplayerPeer.connection_succeeded`. After that the signal `NetworkedMultiplayerPeer.peer_connected` will be emitted for every already connected peer, and any new peer that might connect. If the server peer disconnects after that, signal `NetworkedMultiplayerPeer.server_disconnected` will be emitted and state will become .
	**/
	@:native("Initialize")
	public function initialize(peerId:Int, ?serverCompatibility:Bool):godot.Error;
	#else
	/**		
		Initialize the multiplayer peer with the given `peer_id` (must be between 1 and 2147483647).
		
		If `server_compatibilty` is `false` (default), the multiplayer peer will be immediately in state  and `NetworkedMultiplayerPeer.connection_succeeded` will not be emitted.
		
		If `server_compatibilty` is `true` the peer will suppress all `NetworkedMultiplayerPeer.peer_connected` signals until a peer with id  connects and then emit `NetworkedMultiplayerPeer.connection_succeeded`. After that the signal `NetworkedMultiplayerPeer.peer_connected` will be emitted for every already connected peer, and any new peer that might connect. If the server peer disconnects after that, signal `NetworkedMultiplayerPeer.server_disconnected` will be emitted and state will become .
	**/
	@:native("Initialize")
	public overload function initialize(peerId:Int):godot.Error;

	/**		
		Initialize the multiplayer peer with the given `peer_id` (must be between 1 and 2147483647).
		
		If `server_compatibilty` is `false` (default), the multiplayer peer will be immediately in state  and `NetworkedMultiplayerPeer.connection_succeeded` will not be emitted.
		
		If `server_compatibilty` is `true` the peer will suppress all `NetworkedMultiplayerPeer.peer_connected` signals until a peer with id  connects and then emit `NetworkedMultiplayerPeer.connection_succeeded`. After that the signal `NetworkedMultiplayerPeer.peer_connected` will be emitted for every already connected peer, and any new peer that might connect. If the server peer disconnects after that, signal `NetworkedMultiplayerPeer.server_disconnected` will be emitted and state will become .
	**/
	@:native("Initialize")
	public overload function initialize(peerId:Int, serverCompatibility:Bool):godot.Error;
	#end

	#if doc_gen
	/**		
		Add a new peer to the mesh with the given `peer_id`. The `godot.WebRTCPeerConnection` must be in state .
		
		Three channels will be created for reliable, unreliable, and ordered transport. The value of `unreliable_lifetime` will be passed to the `maxPacketLifetime` option when creating unreliable and ordered channels (see `godot.WebRTCPeerConnection.createDataChannel`).
	**/
	@:native("AddPeer")
	public function addPeer(peer:godot.WebRTCPeerConnection, peerId:Int, ?unreliableLifetime:Int):godot.Error;
	#else
	/**		
		Add a new peer to the mesh with the given `peer_id`. The `godot.WebRTCPeerConnection` must be in state .
		
		Three channels will be created for reliable, unreliable, and ordered transport. The value of `unreliable_lifetime` will be passed to the `maxPacketLifetime` option when creating unreliable and ordered channels (see `godot.WebRTCPeerConnection.createDataChannel`).
	**/
	@:native("AddPeer")
	public overload function addPeer(peer:godot.WebRTCPeerConnection, peerId:Int):godot.Error;

	/**		
		Add a new peer to the mesh with the given `peer_id`. The `godot.WebRTCPeerConnection` must be in state .
		
		Three channels will be created for reliable, unreliable, and ordered transport. The value of `unreliable_lifetime` will be passed to the `maxPacketLifetime` option when creating unreliable and ordered channels (see `godot.WebRTCPeerConnection.createDataChannel`).
	**/
	@:native("AddPeer")
	public overload function addPeer(peer:godot.WebRTCPeerConnection, peerId:Int, unreliableLifetime:Int):godot.Error;
	#end

	/**		
		Remove the peer with given `peer_id` from the mesh. If the peer was connected, and `NetworkedMultiplayerPeer.peer_connected` was emitted for it, then `NetworkedMultiplayerPeer.peer_disconnected` will be emitted.
	**/
	@:native("RemovePeer")
	public function removePeer(peerId:Int):Void;

	/**		
		Returns `true` if the given `peer_id` is in the peers map (it might not be connected though).
	**/
	@:native("HasPeer")
	public function hasPeer(peerId:Int):Bool;

	/**		
		Return a dictionary representation of the peer with given `peer_id` with three keys. `connection` containing the `godot.WebRTCPeerConnection` to this peer, `channels` an array of three `godot.WebRTCDataChannel`, and `connected` a boolean representing if the peer connection is currently connected (all three channels are open).
	**/
	@:native("GetPeer")
	public function getPeer(peerId:Int):godot.collections.Dictionary;

	/**		
		Returns a dictionary which keys are the peer ids and values the peer representation as in `godot.WebRTCMultiplayer.getPeer`.
	**/
	@:native("GetPeers")
	public function getPeers():godot.collections.Dictionary;

	/**		
		Close all the add peer connections and channels, freeing all resources.
	**/
	@:native("Close")
	public function close():Void;
}
