// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.WebRTCDataChannel.ChannelState")
@:csNative
extern enum WebRTCDataChannel_ChannelState {
	/**		
		The channel was created, but it's still trying to connect.
	**/
	Connecting;

	/**		
		The channel is currently open, and data can flow over it.
	**/
	Open;

	/**		
		The channel is being closed, no new messages will be accepted, but those already in queue will be flushed.
	**/
	Closing;

	/**		
		The channel was closed, or connection failed.
	**/
	Closed;
}
