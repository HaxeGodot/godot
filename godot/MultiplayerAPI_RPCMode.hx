// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.MultiplayerAPI.RPCMode")
@:csNative
extern enum MultiplayerAPI_RPCMode {
	/**		
		Used with `godot.Node.rpcConfig` or `godot.Node.rsetConfig` to disable a method or property for all RPC calls, making it unavailable. Default for all methods.
	**/
	Disabled;

	/**		
		Used with `godot.Node.rpcConfig` or `godot.Node.rsetConfig` to set a method to be called or a property to be changed only on the remote end, not locally. Analogous to the `remote` keyword. Calls and property changes are accepted from all remote peers, no matter if they are node's master or puppets.
	**/
	Remote;

	/**		
		Used with `godot.Node.rpcConfig` or `godot.Node.rsetConfig` to set a method to be called or a property to be changed only on the network master for this node. Analogous to the `master` keyword. Only accepts calls or property changes from the node's network puppets, see `godot.Node.setNetworkMaster`.
	**/
	Master;

	/**		
		Used with `godot.Node.rpcConfig` or `godot.Node.rsetConfig` to set a method to be called or a property to be changed only on puppets for this node. Analogous to the `puppet` keyword. Only accepts calls or property changes from the node's network master, see `godot.Node.setNetworkMaster`.
	**/
	Puppet;

	/**		
		Deprecated. Use `godot.MultiplayerAPI_RPCMode.puppet` instead. Analogous to the `slave` keyword.
	**/
	Slave;

	/**		
		Behave like `godot.MultiplayerAPI_RPCMode.remote` but also make the call or property change locally. Analogous to the `remotesync` keyword.
	**/
	Remotesync;

	/**		
		Deprecated. Use `godot.MultiplayerAPI_RPCMode.remotesync` instead. Analogous to the `sync` keyword.
	**/
	Sync;

	/**		
		Behave like `godot.MultiplayerAPI_RPCMode.master` but also make the call or property change locally. Analogous to the `mastersync` keyword.
	**/
	Mastersync;

	/**		
		Behave like `godot.MultiplayerAPI_RPCMode.puppet` but also make the call or property change locally. Analogous to the `puppetsync` keyword.
	**/
	Puppetsync;
}
