// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.StreamPeerSSL.Status")
@:csNative
extern enum StreamPeerSSL_Status {
	/**		
		A status representing a `godot.StreamPeerSSL` that is disconnected.
	**/
	Disconnected;

	/**		
		A status representing a `godot.StreamPeerSSL` during handshaking.
	**/
	Handshaking;

	/**		
		A status representing a `godot.StreamPeerSSL` that is connected to a host.
	**/
	Connected;

	/**		
		A status representing a `godot.StreamPeerSSL` in error state.
	**/
	Error;

	/**		
		An error status that shows a mismatch in the SSL certificate domain presented by the host and the domain requested for validation.
	**/
	ErrorHostnameMismatch;
}
