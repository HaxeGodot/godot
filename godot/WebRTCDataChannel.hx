// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

@:libType
@:csNative
@:native("Godot.WebRTCDataChannel")
@:autoBuild(godot.Godot.buildUserClass())
extern abstract class WebRTCDataChannel extends godot.PacketPeer {
	/**		
		The transfer mode to use when sending outgoing packet. Either text or binary.
	**/
	@:native("WriteMode")
	public var writeMode:godot.WebRTCDataChannel_WriteModeEnum;

	/**		
		Reserved, but not used for now.
	**/
	@:native("Poll")
	public function poll():godot.Error;

	/**		
		Closes this data channel, notifying the other peer.
	**/
	@:native("Close")
	public function close():Void;

	/**		
		Returns `true` if the last received packet was transferred as text. See `godot.WebRTCDataChannel.writeMode`.
	**/
	@:native("WasStringPacket")
	public function wasStringPacket():Bool;

	@:native("SetWriteMode")
	public function setWriteMode(writeMode:godot.WebRTCDataChannel_WriteModeEnum):Void;

	@:native("GetWriteMode")
	public function getWriteMode():godot.WebRTCDataChannel_WriteModeEnum;

	/**		
		Returns the current state of this channel, see `godot.WebRTCDataChannel_ChannelState`.
	**/
	@:native("GetReadyState")
	public function getReadyState():godot.WebRTCDataChannel_ChannelState;

	/**		
		Returns the label assigned to this channel during creation.
	**/
	@:native("GetLabel")
	public function getLabel():std.String;

	/**		
		Returns `true` if this channel was created with ordering enabled (default).
	**/
	@:native("IsOrdered")
	public function isOrdered():Bool;

	/**		
		Returns the id assigned to this channel during creation (or auto-assigned during negotiation).
		
		If the channel is not negotiated out-of-band the id will only be available after the connection is established (will return `65535` until then).
	**/
	@:native("GetId")
	public function getId():Int;

	/**		
		Returns the `maxPacketLifeTime` value assigned to this channel during creation.
		
		Will be `65535` if not specified.
	**/
	@:native("GetMaxPacketLifeTime")
	public function getMaxPacketLifeTime():Int;

	/**		
		Returns the `maxRetransmits` value assigned to this channel during creation.
		
		Will be `65535` if not specified.
	**/
	@:native("GetMaxRetransmits")
	public function getMaxRetransmits():Int;

	/**		
		Returns the sub-protocol assigned to this channel during creation. An empty string if not specified.
	**/
	@:native("GetProtocol")
	public function getProtocol():std.String;

	/**		
		Returns `true` if this channel was created with out-of-band configuration.
	**/
	@:native("IsNegotiated")
	public function isNegotiated():Bool;

	/**		
		Returns the number of bytes currently queued to be sent over this channel.
	**/
	@:native("GetBufferedAmount")
	public function getBufferedAmount():Int;
}
