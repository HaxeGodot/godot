// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.PacketPeerDTLS.Status")
@:csNative
extern enum PacketPeerDTLS_Status {
	/**		
		A status representing a `godot.PacketPeerDTLS` that is disconnected.
	**/
	Disconnected;

	/**		
		A status representing a `godot.PacketPeerDTLS` that is currently performing the handshake with a remote peer.
	**/
	Handshaking;

	/**		
		A status representing a `godot.PacketPeerDTLS` that is connected to a remote peer.
	**/
	Connected;

	/**		
		A status representing a `godot.PacketPeerDTLS` in a generic error state.
	**/
	Error;

	/**		
		An error status that shows a mismatch in the DTLS certificate domain presented by the host and the domain requested for validation.
	**/
	ErrorHostnameMismatch;
}
