// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.VisualScriptFunctionCall.RPCCallMode")
@:csNative
extern enum VisualScriptFunctionCall_RPCCallMode {
	/**		
		The method will be called locally.
	**/
	Disabled;

	/**		
		The method will be called remotely.
	**/
	Reliable;

	/**		
		The method will be called remotely using an unreliable protocol.
	**/
	Unreliable;

	/**		
		The method will be called remotely for the given peer.
	**/
	ReliableToId;

	/**		
		The method will be called remotely for the given peer, using an unreliable protocol.
	**/
	UnreliableToId;
}
