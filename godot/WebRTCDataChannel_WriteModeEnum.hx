// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.WebRTCDataChannel.WriteModeEnum")
@:csNative
extern enum WebRTCDataChannel_WriteModeEnum {
	/**		
		Tells the channel to send data over this channel as text. An external peer (non-Godot) would receive this as a string.
	**/
	Text;

	/**		
		Tells the channel to send data over this channel as binary. An external peer (non-Godot) would receive this as array buffer or blob.
	**/
	Binary;
}
