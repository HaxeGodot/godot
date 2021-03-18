// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
A WebRTC connection between the local computer and a remote peer. Provides an interface to connect, maintain and monitor the connection.

Setting up a WebRTC connection between two peers from now on) may not seem a trivial task, but it can be broken down into 3 main steps:

- The peer that wants to initiate the connection (`A` from now on) creates an offer and send it to the other peer (`B` from now on).

- `B` receives the offer, generate and answer, and sends it to `A`).

- `A` and `B` then generates and exchange ICE candidates with each other.

After these steps, the connection should become connected. Keep on reading or look into the tutorial for more information.
**/
@:libType
@:csNative
@:native("Godot.WebRTCPeerConnection")
@:autoBuild(godot.Godot.buildUserClass())
extern class WebRTCPeerConnection extends godot.Reference {
	@:native("new")
	public function new():Void;

	#if doc_gen
	/**		
		Re-initialize this peer connection, closing any previously active connection, and going back to state . A dictionary of `options` can be passed to configure the peer connection.
		
		Valid `options` are:
		
		```
		
		{
		"iceServers": [
		{
		"urls": [ "stun:stun.example.com:3478" ], # One or more STUN servers.
		},
		{
		"urls": [ "turn:turn.example.com:3478" ], # One or more TURN servers.
		"username": "a_username", # Optional username for the TURN server.
		"credential": "a_password", # Optional password for the TURN server.
		}
		]
		}
		
		```
		
		@param configuration If the parameter is null, then the default value is new Godot.Collections.Dictionary()
	**/
	@:native("Initialize")
	public function initialize(?configuration:godot.collections.Dictionary):godot.Error;
	#else
	/**		
		Re-initialize this peer connection, closing any previously active connection, and going back to state . A dictionary of `options` can be passed to configure the peer connection.
		
		Valid `options` are:
		
		```
		
		{
		"iceServers": [
		{
		"urls": [ "stun:stun.example.com:3478" ], # One or more STUN servers.
		},
		{
		"urls": [ "turn:turn.example.com:3478" ], # One or more TURN servers.
		"username": "a_username", # Optional username for the TURN server.
		"credential": "a_password", # Optional password for the TURN server.
		}
		]
		}
		
		```
		
		@param configuration If the parameter is null, then the default value is new Godot.Collections.Dictionary()
	**/
	@:native("Initialize")
	public overload function initialize():godot.Error;

	/**		
		Re-initialize this peer connection, closing any previously active connection, and going back to state . A dictionary of `options` can be passed to configure the peer connection.
		
		Valid `options` are:
		
		```
		
		{
		"iceServers": [
		{
		"urls": [ "stun:stun.example.com:3478" ], # One or more STUN servers.
		},
		{
		"urls": [ "turn:turn.example.com:3478" ], # One or more TURN servers.
		"username": "a_username", # Optional username for the TURN server.
		"credential": "a_password", # Optional password for the TURN server.
		}
		]
		}
		
		```
		
		@param configuration If the parameter is null, then the default value is new Godot.Collections.Dictionary()
	**/
	@:native("Initialize")
	public overload function initialize(configuration:godot.collections.Dictionary):godot.Error;
	#end

	#if doc_gen
	/**		
		Returns a new `godot.WebRTCDataChannel` (or `null` on failure) with given `label` and optionally configured via the `options` dictionary. This method can only be called when the connection is in state .
		
		There are two ways to create a working data channel: either call `godot.WebRTCPeerConnection.createDataChannel` on only one of the peer and listen to `data_channel_received` on the other, or call `godot.WebRTCPeerConnection.createDataChannel` on both peers, with the same values, and the `negotiated` option set to `true`.
		
		Valid `options` are:
		
		```
		
		{
		"negotiated": true, # When set to true (default off), means the channel is negotiated out of band. "id" must be set too. data_channel_received will not be called.
		"id": 1, # When "negotiated" is true this value must also be set to the same value on both peer.
		
		# Only one of maxRetransmits and maxPacketLifeTime can be specified, not both. They make the channel unreliable (but also better at real time).
		"maxRetransmits": 1, # Specify the maximum number of attempt the peer will make to retransmits packets if they are not acknowledged.
		"maxPacketLifeTime": 100, # Specify the maximum amount of time before giving up retransmitions of unacknowledged packets (in milliseconds).
		"ordered": true, # When in unreliable mode (i.e. either "maxRetransmits" or "maxPacketLifetime" is set), "ordered" (true by default) specify if packet ordering is to be enforced.
		
		"protocol": "my-custom-protocol", # A custom sub-protocol string for this channel.
		}
		
		```
		
		Note: You must keep a reference to channels created this way, or it will be closed.
		
		@param options If the parameter is null, then the default value is new Godot.Collections.Dictionary()
	**/
	@:native("CreateDataChannel")
	public function createDataChannel(label:std.String, ?options:godot.collections.Dictionary):godot.WebRTCDataChannel;
	#else
	/**		
		Returns a new `godot.WebRTCDataChannel` (or `null` on failure) with given `label` and optionally configured via the `options` dictionary. This method can only be called when the connection is in state .
		
		There are two ways to create a working data channel: either call `godot.WebRTCPeerConnection.createDataChannel` on only one of the peer and listen to `data_channel_received` on the other, or call `godot.WebRTCPeerConnection.createDataChannel` on both peers, with the same values, and the `negotiated` option set to `true`.
		
		Valid `options` are:
		
		```
		
		{
		"negotiated": true, # When set to true (default off), means the channel is negotiated out of band. "id" must be set too. data_channel_received will not be called.
		"id": 1, # When "negotiated" is true this value must also be set to the same value on both peer.
		
		# Only one of maxRetransmits and maxPacketLifeTime can be specified, not both. They make the channel unreliable (but also better at real time).
		"maxRetransmits": 1, # Specify the maximum number of attempt the peer will make to retransmits packets if they are not acknowledged.
		"maxPacketLifeTime": 100, # Specify the maximum amount of time before giving up retransmitions of unacknowledged packets (in milliseconds).
		"ordered": true, # When in unreliable mode (i.e. either "maxRetransmits" or "maxPacketLifetime" is set), "ordered" (true by default) specify if packet ordering is to be enforced.
		
		"protocol": "my-custom-protocol", # A custom sub-protocol string for this channel.
		}
		
		```
		
		Note: You must keep a reference to channels created this way, or it will be closed.
		
		@param options If the parameter is null, then the default value is new Godot.Collections.Dictionary()
	**/
	@:native("CreateDataChannel")
	public overload function createDataChannel(label:std.String):godot.WebRTCDataChannel;

	/**		
		Returns a new `godot.WebRTCDataChannel` (or `null` on failure) with given `label` and optionally configured via the `options` dictionary. This method can only be called when the connection is in state .
		
		There are two ways to create a working data channel: either call `godot.WebRTCPeerConnection.createDataChannel` on only one of the peer and listen to `data_channel_received` on the other, or call `godot.WebRTCPeerConnection.createDataChannel` on both peers, with the same values, and the `negotiated` option set to `true`.
		
		Valid `options` are:
		
		```
		
		{
		"negotiated": true, # When set to true (default off), means the channel is negotiated out of band. "id" must be set too. data_channel_received will not be called.
		"id": 1, # When "negotiated" is true this value must also be set to the same value on both peer.
		
		# Only one of maxRetransmits and maxPacketLifeTime can be specified, not both. They make the channel unreliable (but also better at real time).
		"maxRetransmits": 1, # Specify the maximum number of attempt the peer will make to retransmits packets if they are not acknowledged.
		"maxPacketLifeTime": 100, # Specify the maximum amount of time before giving up retransmitions of unacknowledged packets (in milliseconds).
		"ordered": true, # When in unreliable mode (i.e. either "maxRetransmits" or "maxPacketLifetime" is set), "ordered" (true by default) specify if packet ordering is to be enforced.
		
		"protocol": "my-custom-protocol", # A custom sub-protocol string for this channel.
		}
		
		```
		
		Note: You must keep a reference to channels created this way, or it will be closed.
		
		@param options If the parameter is null, then the default value is new Godot.Collections.Dictionary()
	**/
	@:native("CreateDataChannel")
	public overload function createDataChannel(label:std.String, options:godot.collections.Dictionary):godot.WebRTCDataChannel;
	#end

	/**		
		Creates a new SDP offer to start a WebRTC connection with a remote peer. At least one `godot.WebRTCDataChannel` must have been created before calling this method.
		
		If this functions returns , `session_description_created` will be called when the session is ready to be sent.
	**/
	@:native("CreateOffer")
	public function createOffer():godot.Error;

	/**		
		Sets the SDP description of the local peer. This should be called in response to `session_description_created`.
		
		After calling this function the peer will start emitting `ice_candidate_created` (unless an `godot.Error` different from  is returned).
	**/
	@:native("SetLocalDescription")
	public function setLocalDescription(type:std.String, sdp:std.String):godot.Error;

	/**		
		Sets the SDP description of the remote peer. This should be called with the values generated by a remote peer and received over the signaling server.
		
		If `type` is `offer` the peer will emit `session_description_created` with the appropriate answer.
		
		If `type` is `answer` the peer will start emitting `ice_candidate_created`.
	**/
	@:native("SetRemoteDescription")
	public function setRemoteDescription(type:std.String, sdp:std.String):godot.Error;

	/**		
		Add an ice candidate generated by a remote peer (and received over the signaling server). See `ice_candidate_created`.
	**/
	@:native("AddIceCandidate")
	public function addIceCandidate(media:std.String, index:Int, name:std.String):godot.Error;

	/**		
		Call this method frequently (e.g. in `godot.Node._Process` or `godot.Node._PhysicsProcess`) to properly receive signals.
	**/
	@:native("Poll")
	public function poll():godot.Error;

	/**		
		Close the peer connection and all data channels associated with it. Note, you cannot reuse this object for a new connection unless you call `godot.WebRTCPeerConnection.initialize`.
	**/
	@:native("Close")
	public function close():Void;

	/**		
		Returns the connection state. See `godot.WebRTCPeerConnection_ConnectionState`.
	**/
	@:native("GetConnectionState")
	public function getConnectionState():godot.WebRTCPeerConnection_ConnectionState;
}
