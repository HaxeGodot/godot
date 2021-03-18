// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.WebRTCPeerConnection.ConnectionState")
@:csNative
extern enum WebRTCPeerConnection_ConnectionState {
	/**		
		The connection is new, data channels and an offer can be created in this state.
	**/
	New;

	/**		
		The peer is connecting, ICE is in progress, none of the transports has failed.
	**/
	Connecting;

	/**		
		The peer is connected, all ICE transports are connected.
	**/
	Connected;

	/**		
		At least one ICE transport is disconnected.
	**/
	Disconnected;

	/**		
		One or more of the ICE transports failed.
	**/
	Failed;

	/**		
		The peer connection is closed (after calling `godot.WebRTCPeerConnection.close` for example).
	**/
	Closed;
}
