// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.StreamPeerTCP.Status")
@:csNative
extern enum StreamPeerTCP_Status {
	/**		
		The initial status of the `godot.StreamPeerTCP`. This is also the status after disconnecting.
	**/
	None;

	/**		
		A status representing a `godot.StreamPeerTCP` that is connecting to a host.
	**/
	Connecting;

	/**		
		A status representing a `godot.StreamPeerTCP` that is connected to a host.
	**/
	Connected;

	/**		
		A status representing a `godot.StreamPeerTCP` in error state.
	**/
	Error;
}
