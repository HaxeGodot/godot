// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
As one of the most important classes, the `godot.SceneTree` manages the hierarchy of nodes in a scene as well as scenes themselves. Nodes can be added, retrieved and removed. The whole scene tree (and thus the current scene) can be paused. Scenes can be loaded, switched and reloaded.

You can also use the `godot.SceneTree` to organize your nodes into groups: every node can be assigned as many groups as you want to create, e.g. an "enemy" group. You can then iterate these groups or even call methods and set properties on all the group's members at once.

`godot.SceneTree` is the default `godot.MainLoop` implementation used by scenes, and is thus in charge of the game loop.
**/
@:libType
@:csNative
@:native("Godot.SceneTree")
@:autoBuild(godot.Godot.buildUserClass())
extern class SceneTree extends godot.MainLoop {
	/**
		`connected_to_server` signal.
		
		Emitted whenever this `SceneTree`'s `networkPeer` successfully connected to a server. Only emitted on clients.
	**/
	public var onConnectedToServer(get, never):Signal<Void->Void>;
	@:dox(hide) @:noCompletion inline function get_onConnectedToServer():Signal<Void->Void> {
		return new Signal(this, "connected_to_server", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	/**
		`connection_failed` signal.
		
		Emitted whenever this `SceneTree`'s `networkPeer` fails to establish a connection to a server. Only emitted on clients.
	**/
	public var onConnectionFailed(get, never):Signal<Void->Void>;
	@:dox(hide) @:noCompletion inline function get_onConnectionFailed():Signal<Void->Void> {
		return new Signal(this, "connection_failed", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	/**
		`files_dropped` signal.
		
		Emitted when files are dragged from the OS file manager and dropped in the game window. The arguments are a list of file paths and the identifier of the screen where the drag originated.
	**/
	public var onFilesDropped(get, never):Signal<(files:std.Array<std.String>, screen:Int)->Void>;
	@:dox(hide) @:noCompletion inline function get_onFilesDropped():Signal<(files:std.Array<std.String>, screen:Int)->Void> {
		return new Signal(this, "files_dropped", Signal.SignalHandlerPoolStringArrayIntVoid.connectSignal, Signal.SignalHandlerPoolStringArrayIntVoid.disconnectSignal, Signal.SignalHandlerPoolStringArrayIntVoid.isSignalConnected);
	}

	/**
		`global_menu_action` signal.
		
		Emitted whenever global menu item is clicked.
	**/
	public var onGlobalMenuAction(get, never):Signal<(id:Any, meta:Any)->Void>;
	@:dox(hide) @:noCompletion inline function get_onGlobalMenuAction():Signal<(id:Any, meta:Any)->Void> {
		return new Signal(this, "global_menu_action", Signal.SignalHandlerVariantVariantVoid.connectSignal, Signal.SignalHandlerVariantVariantVoid.disconnectSignal, Signal.SignalHandlerVariantVariantVoid.isSignalConnected);
	}

	/**
		`idle_frame` signal.
		
		Emitted immediately before `node.Process` is called on every node in the `SceneTree`.
	**/
	public var onIdleFrame(get, never):Signal<Void->Void>;
	@:dox(hide) @:noCompletion inline function get_onIdleFrame():Signal<Void->Void> {
		return new Signal(this, "idle_frame", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	/**
		`network_peer_connected` signal.
		
		Emitted whenever this `SceneTree`'s `networkPeer` connects with a new peer. ID is the peer ID of the new peer. Clients get notified when other clients connect to the same server. Upon connecting to a server, a client also receives this signal for the server (with ID being 1).
	**/
	public var onNetworkPeerConnected(get, never):Signal<(id:Int)->Void>;
	@:dox(hide) @:noCompletion inline function get_onNetworkPeerConnected():Signal<(id:Int)->Void> {
		return new Signal(this, "network_peer_connected", Signal.SignalHandlerIntVoid.connectSignal, Signal.SignalHandlerIntVoid.disconnectSignal, Signal.SignalHandlerIntVoid.isSignalConnected);
	}

	/**
		`network_peer_disconnected` signal.
		
		Emitted whenever this `SceneTree`'s `networkPeer` disconnects from a peer. Clients get notified when other clients disconnect from the same server.
	**/
	public var onNetworkPeerDisconnected(get, never):Signal<(id:Int)->Void>;
	@:dox(hide) @:noCompletion inline function get_onNetworkPeerDisconnected():Signal<(id:Int)->Void> {
		return new Signal(this, "network_peer_disconnected", Signal.SignalHandlerIntVoid.connectSignal, Signal.SignalHandlerIntVoid.disconnectSignal, Signal.SignalHandlerIntVoid.isSignalConnected);
	}

	/**
		`node_added` signal.
		
		Emitted whenever a node is added to the `SceneTree`.
	**/
	public var onNodeAdded(get, never):Signal<(node:Node)->Void>;
	@:dox(hide) @:noCompletion inline function get_onNodeAdded():Signal<(node:Node)->Void> {
		return new Signal(this, "node_added", Signal.SignalHandlerNodeVoid.connectSignal, Signal.SignalHandlerNodeVoid.disconnectSignal, Signal.SignalHandlerNodeVoid.isSignalConnected);
	}

	/**
		`node_configuration_warning_changed` signal.
		
		Emitted when a node's configuration changed. Only emitted in `tool` mode.
	**/
	public var onNodeConfigurationWarningChanged(get, never):Signal<(node:Node)->Void>;
	@:dox(hide) @:noCompletion inline function get_onNodeConfigurationWarningChanged():Signal<(node:Node)->Void> {
		return new Signal(this, "node_configuration_warning_changed", Signal.SignalHandlerNodeVoid.connectSignal, Signal.SignalHandlerNodeVoid.disconnectSignal, Signal.SignalHandlerNodeVoid.isSignalConnected);
	}

	/**
		`node_removed` signal.
		
		Emitted whenever a node is removed from the `SceneTree`.
	**/
	public var onNodeRemoved(get, never):Signal<(node:Node)->Void>;
	@:dox(hide) @:noCompletion inline function get_onNodeRemoved():Signal<(node:Node)->Void> {
		return new Signal(this, "node_removed", Signal.SignalHandlerNodeVoid.connectSignal, Signal.SignalHandlerNodeVoid.disconnectSignal, Signal.SignalHandlerNodeVoid.isSignalConnected);
	}

	/**
		`node_renamed` signal.
		
		Emitted whenever a node is renamed.
	**/
	public var onNodeRenamed(get, never):Signal<(node:Node)->Void>;
	@:dox(hide) @:noCompletion inline function get_onNodeRenamed():Signal<(node:Node)->Void> {
		return new Signal(this, "node_renamed", Signal.SignalHandlerNodeVoid.connectSignal, Signal.SignalHandlerNodeVoid.disconnectSignal, Signal.SignalHandlerNodeVoid.isSignalConnected);
	}

	/**
		`physics_frame` signal.
		
		Emitted immediately before `node.PhysicsProcess` is called on every node in the `SceneTree`.
	**/
	public var onPhysicsFrame(get, never):Signal<Void->Void>;
	@:dox(hide) @:noCompletion inline function get_onPhysicsFrame():Signal<Void->Void> {
		return new Signal(this, "physics_frame", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	/**
		`screen_resized` signal.
		
		Emitted when the screen resolution (fullscreen) or window size (windowed) changes.
	**/
	public var onScreenResized(get, never):Signal<Void->Void>;
	@:dox(hide) @:noCompletion inline function get_onScreenResized():Signal<Void->Void> {
		return new Signal(this, "screen_resized", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	/**
		`server_disconnected` signal.
		
		Emitted whenever this `SceneTree`'s `networkPeer` disconnected from server. Only emitted on clients.
	**/
	public var onServerDisconnected(get, never):Signal<Void->Void>;
	@:dox(hide) @:noCompletion inline function get_onServerDisconnected():Signal<Void->Void> {
		return new Signal(this, "server_disconnected", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	/**
		`tree_changed` signal.
		
		Emitted whenever the `SceneTree` hierarchy changed (children being moved or renamed, etc.).
	**/
	public var onTreeChanged(get, never):Signal<Void->Void>;
	@:dox(hide) @:noCompletion inline function get_onTreeChanged():Signal<Void->Void> {
		return new Signal(this, "tree_changed", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	/**		
		If `true` (default value), enables automatic polling of the `godot.MultiplayerAPI` for this SceneTree during `idle_frame`.
		
		If `false`, you need to manually call `godot.MultiplayerAPI.poll` to process network packets and deliver RPCs/RSETs. This allows running RPCs/RSETs in a different loop (e.g. physics, thread, specific time step) and for manual `godot.Mutex` protection when accessing the `godot.MultiplayerAPI` from threads.
	**/
	@:native("MultiplayerPoll")
	public var multiplayerPoll:Bool;

	/**		
		The default `godot.MultiplayerAPI` instance for this `godot.SceneTree`.
	**/
	@:native("Multiplayer")
	public var multiplayer:godot.MultiplayerAPI;

	/**		
		The `godot.SceneTree`'s root `godot.Viewport`.
	**/
	@:native("Root")
	public var root(default, never):godot.Viewport;

	/**		
		The peer object to handle the RPC system (effectively enabling networking when set). Depending on the peer itself, the `godot.SceneTree` will become a network server (check with `godot.SceneTree.isNetworkServer`) and will set the root node's network mode to master, or it will become a regular peer with the root node set to puppet. All child nodes are set to inherit the network mode by default. Handling of networking-related events (connection, disconnection, new clients) is done by connecting to `godot.SceneTree`'s signals.
	**/
	@:native("NetworkPeer")
	public var networkPeer:godot.NetworkedMultiplayerPeer;

	/**		
		The current scene.
	**/
	@:native("CurrentScene")
	public var currentScene:godot.Node;

	/**		
		The root of the edited scene.
	**/
	@:native("EditedSceneRoot")
	public var editedSceneRoot:godot.Node;

	/**		
		If `true`, font oversampling is used.
	**/
	@:native("UseFontOversampling")
	public var useFontOversampling:Bool;

	/**		
		If `true`, the `godot.SceneTree`'s `godot.SceneTree.networkPeer` refuses new incoming connections.
	**/
	@:native("RefuseNewNetworkConnections")
	public var refuseNewNetworkConnections:Bool;

	/**		
		If `true`, the `godot.SceneTree` is paused. Doing so will have the following behavior:
		
		- 2D and 3D physics will be stopped. This includes signals and collision detection.
		
		- `godot.Node._Process`, `godot.Node._PhysicsProcess` and `godot.Node._Input` will not be called anymore in nodes.
	**/
	@:native("Paused")
	public var paused:Bool;

	/**		
		If `true`, navigation polygons will be visible when running the game from the editor for debugging purposes.
	**/
	@:native("DebugNavigationHint")
	public var debugNavigationHint:Bool;

	/**		
		If `true`, collision shapes will be visible when running the game from the editor for debugging purposes.
	**/
	@:native("DebugCollisionsHint")
	public var debugCollisionsHint:Bool;

	@:native("new")
	public function new():Void;

	@:native("GetRoot")
	public function getRoot():godot.Viewport;

	/**		
		Returns `true` if the given group exists.
	**/
	@:native("HasGroup")
	public function hasGroup(name:std.String):Bool;

	/**		
		If `true`, the application automatically accepts quitting. Enabled by default.
		
		For mobile platforms, see `godot.SceneTree.setQuitOnGoBack`.
	**/
	@:native("SetAutoAcceptQuit")
	public function setAutoAcceptQuit(enabled:Bool):Void;

	/**		
		If `true`, the application quits automatically on going back (e.g. on Android). Enabled by default.
		
		To handle 'Go Back' button when this option is disabled, use `godot.MainLoop.notificationWmGoBackRequest`.
	**/
	@:native("SetQuitOnGoBack")
	public function setQuitOnGoBack(enabled:Bool):Void;

	@:native("SetDebugCollisionsHint")
	public function setDebugCollisionsHint(enable:Bool):Void;

	@:native("IsDebuggingCollisionsHint")
	public function isDebuggingCollisionsHint():Bool;

	@:native("SetDebugNavigationHint")
	public function setDebugNavigationHint(enable:Bool):Void;

	@:native("IsDebuggingNavigationHint")
	public function isDebuggingNavigationHint():Bool;

	@:native("SetEditedSceneRoot")
	public function setEditedSceneRoot(scene:godot.Node):Void;

	@:native("GetEditedSceneRoot")
	public function getEditedSceneRoot():godot.Node;

	@:native("SetPause")
	public function setPause(enable:Bool):Void;

	@:native("IsPaused")
	public function isPaused():Bool;

	/**		
		Marks the most recent `godot.InputEvent` as handled.
	**/
	@:native("SetInputAsHandled")
	public function setInputAsHandled():Void;

	/**		
		Returns `true` if the most recent `godot.InputEvent` was marked as handled with `godot.SceneTree.setInputAsHandled`.
	**/
	@:native("IsInputHandled")
	public function isInputHandled():Bool;

	#if doc_gen
	/**		
		Returns a `godot.SceneTreeTimer` which will `SceneTreeTimer.timeout` after the given time in seconds elapsed in this `godot.SceneTree`. If `pause_mode_process` is set to `false`, pausing the `godot.SceneTree` will also pause the timer.
		
		Commonly used to create a one-shot delay timer as in the following example:
		
		```
		
		func some_function():
		print("start")
		yield(get_tree().create_timer(1.0), "timeout")
		print("end")
		
		```
		
		The timer will be automatically freed after its time elapses.
	**/
	@:native("CreateTimer")
	public function createTimer(timeSec:Single, ?pauseModeProcess:Bool):godot.SceneTreeTimer;
	#else
	/**		
		Returns a `godot.SceneTreeTimer` which will `SceneTreeTimer.timeout` after the given time in seconds elapsed in this `godot.SceneTree`. If `pause_mode_process` is set to `false`, pausing the `godot.SceneTree` will also pause the timer.
		
		Commonly used to create a one-shot delay timer as in the following example:
		
		```
		
		func some_function():
		print("start")
		yield(get_tree().create_timer(1.0), "timeout")
		print("end")
		
		```
		
		The timer will be automatically freed after its time elapses.
	**/
	@:native("CreateTimer")
	public overload function createTimer(timeSec:Single):godot.SceneTreeTimer;

	/**		
		Returns a `godot.SceneTreeTimer` which will `SceneTreeTimer.timeout` after the given time in seconds elapsed in this `godot.SceneTree`. If `pause_mode_process` is set to `false`, pausing the `godot.SceneTree` will also pause the timer.
		
		Commonly used to create a one-shot delay timer as in the following example:
		
		```
		
		func some_function():
		print("start")
		yield(get_tree().create_timer(1.0), "timeout")
		print("end")
		
		```
		
		The timer will be automatically freed after its time elapses.
	**/
	@:native("CreateTimer")
	public overload function createTimer(timeSec:Single, pauseModeProcess:Bool):godot.SceneTreeTimer;
	#end

	/**		
		Returns the number of nodes in this `godot.SceneTree`.
	**/
	@:native("GetNodeCount")
	public function getNodeCount():Int;

	/**		
		Returns the current frame number, i.e. the total frame count since the application started.
	**/
	@:native("GetFrame")
	public function getFrame():haxe.Int64;

	#if doc_gen
	/**		
		Quits the application at the end of the current iteration. A process `exit_code` can optionally be passed as an argument. If this argument is `0` or greater, it will override the `godot.OS.exitCode` defined before quitting the application.
		
		Note: On iOS this method doesn't work. Instead, as recommended by the iOS Human Interface Guidelines, the user is expected to close apps via the Home button.
	**/
	@:native("Quit")
	public function quit(?exitCode:Int):Void;
	#else
	/**		
		Quits the application at the end of the current iteration. A process `exit_code` can optionally be passed as an argument. If this argument is `0` or greater, it will override the `godot.OS.exitCode` defined before quitting the application.
		
		Note: On iOS this method doesn't work. Instead, as recommended by the iOS Human Interface Guidelines, the user is expected to close apps via the Home button.
	**/
	@:native("Quit")
	public overload function quit():Void;

	/**		
		Quits the application at the end of the current iteration. A process `exit_code` can optionally be passed as an argument. If this argument is `0` or greater, it will override the `godot.OS.exitCode` defined before quitting the application.
		
		Note: On iOS this method doesn't work. Instead, as recommended by the iOS Human Interface Guidelines, the user is expected to close apps via the Home button.
	**/
	@:native("Quit")
	public overload function quit(exitCode:Int):Void;
	#end

	#if doc_gen
	/**		
		Configures screen stretching to the given `godot.SceneTree_StretchMode`, `godot.SceneTree_StretchAspect`, minimum size and `scale`.
	**/
	@:native("SetScreenStretch")
	public function setScreenStretch(mode:godot.SceneTree_StretchMode, aspect:godot.SceneTree_StretchAspect, minsize:godot.Vector2, ?scale:Single):Void;
	#else
	/**		
		Configures screen stretching to the given `godot.SceneTree_StretchMode`, `godot.SceneTree_StretchAspect`, minimum size and `scale`.
	**/
	@:native("SetScreenStretch")
	public overload function setScreenStretch(mode:godot.SceneTree_StretchMode, aspect:godot.SceneTree_StretchAspect, minsize:godot.Vector2):Void;

	/**		
		Configures screen stretching to the given `godot.SceneTree_StretchMode`, `godot.SceneTree_StretchAspect`, minimum size and `scale`.
	**/
	@:native("SetScreenStretch")
	public overload function setScreenStretch(mode:godot.SceneTree_StretchMode, aspect:godot.SceneTree_StretchAspect, minsize:godot.Vector2, scale:Single):Void;
	#end

	/**		
		Queues the given object for deletion, delaying the call to `godot.Object.free` to after the current frame.
	**/
	@:native("QueueDelete")
	public function queueDelete(obj:godot.Object):Void;

	/**		
		Calls `method` on each member of the given group, respecting the given `godot.SceneTree_GroupCallFlags`. You can pass arguments to `method` by specifying them at the end of the method call.
		
		Note: `method` may only have 5 arguments at most (8 arguments passed to this method in total).
		
		Note: Due to design limitations, `godot.SceneTree.callGroupFlags` will fail silently if one of the arguments is `null`.
		
		```
		
		# Call the method immediately and in reverse order.
		get_tree().call_group_flags(SceneTree.GROUP_CALL_REALTIME | SceneTree.GROUP_CALL_REVERSE, "bases", "destroy")
		
		```
	**/
	@:native("CallGroupFlags")
	public function callGroupFlags(flags:Int, group:std.String, method:std.String, args:HaxeArray<Dynamic>):Dynamic;

	/**		
		Sends the given notification to all members of the `group`, respecting the given `godot.SceneTree_GroupCallFlags`.
	**/
	@:native("NotifyGroupFlags")
	public function notifyGroupFlags(callFlags:UInt, group:std.String, notification:Int):Void;

	/**		
		Sets the given `property` to `value` on all members of the given group, respecting the given `godot.SceneTree_GroupCallFlags`.
	**/
	@:native("SetGroupFlags")
	public function setGroupFlags(callFlags:UInt, group:std.String, property:std.String, value:Dynamic):Void;

	/**		
		Calls `method` on each member of the given group. You can pass arguments to `method` by specifying them at the end of the method call. This method is equivalent of calling `godot.SceneTree.callGroupFlags` with `godot.SceneTree_GroupCallFlags.default` flag.
		
		Note: `method` may only have 5 arguments at most (7 arguments passed to this method in total).
		
		Note: Due to design limitations, `godot.SceneTree.callGroup` will fail silently if one of the arguments is `null`.
		
		Note: `godot.SceneTree.callGroup` will always call methods with an one-frame delay, in a way similar to `godot.Object.callDeferred`. To call methods immediately, use `godot.SceneTree.callGroupFlags` with the `godot.SceneTree_GroupCallFlags.realtime` flag.
	**/
	@:native("CallGroup")
	public function callGroup(group:std.String, method:std.String, args:HaxeArray<Dynamic>):Dynamic;

	/**		
		Sends the given notification to all members of the `group`.
	**/
	@:native("NotifyGroup")
	public function notifyGroup(group:std.String, notification:Int):Void;

	/**		
		Sets the given `property` to `value` on all members of the given group.
	**/
	@:native("SetGroup")
	public function setGroup(group:std.String, property:std.String, value:Dynamic):Void;

	/**		
		Returns a list of all nodes assigned to the given group.
	**/
	@:native("GetNodesInGroup")
	public function getNodesInGroup(group:std.String):godot.collections.Array;

	@:native("SetCurrentScene")
	public function setCurrentScene(childNode:godot.Node):Void;

	@:native("GetCurrentScene")
	public function getCurrentScene():godot.Node;

	/**		
		Changes the running scene to the one at the given `path`, after loading it into a `godot.PackedScene` and creating a new instance.
		
		Returns `OK` on success, `ERR_CANT_OPEN` if the `path` cannot be loaded into a `godot.PackedScene`, or `ERR_CANT_CREATE` if that scene cannot be instantiated.
		
		Note: The scene change is deferred, which means that the new scene node is added on the next idle frame. You won't be able to access it immediately after the `godot.SceneTree.changeScene` call.
	**/
	@:native("ChangeScene")
	public function changeScene(path:std.String):godot.Error;

	/**		
		Changes the running scene to a new instance of the given `godot.PackedScene`.
		
		Returns `OK` on success or `ERR_CANT_CREATE` if the scene cannot be instantiated.
		
		Note: The scene change is deferred, which means that the new scene node is added on the next idle frame. You won't be able to access it immediately after the `godot.SceneTree.changeSceneTo` call.
	**/
	@:native("ChangeSceneTo")
	public function changeSceneTo(packedScene:godot.PackedScene):godot.Error;

	/**		
		Reloads the currently active scene.
		
		Returns `OK` on success, `ERR_UNCONFIGURED` if no `godot.SceneTree.currentScene` was defined yet, `ERR_CANT_OPEN` if `godot.SceneTree.currentScene` cannot be loaded into a `godot.PackedScene`, or `ERR_CANT_CREATE` if the scene cannot be instantiated.
	**/
	@:native("ReloadCurrentScene")
	public function reloadCurrentScene():godot.Error;

	@:native("SetMultiplayer")
	public function setMultiplayer(multiplayer:godot.MultiplayerAPI):Void;

	@:native("GetMultiplayer")
	public function getMultiplayer():godot.MultiplayerAPI;

	@:native("SetMultiplayerPollEnabled")
	public function setMultiplayerPollEnabled(enabled:Bool):Void;

	@:native("IsMultiplayerPollEnabled")
	public function isMultiplayerPollEnabled():Bool;

	@:native("SetNetworkPeer")
	public function setNetworkPeer(peer:godot.NetworkedMultiplayerPeer):Void;

	@:native("GetNetworkPeer")
	public function getNetworkPeer():godot.NetworkedMultiplayerPeer;

	/**		
		Returns `true` if this `godot.SceneTree`'s `godot.SceneTree.networkPeer` is in server mode (listening for connections).
	**/
	@:native("IsNetworkServer")
	public function isNetworkServer():Bool;

	/**		
		Returns `true` if there is a `godot.SceneTree.networkPeer` set.
	**/
	@:native("HasNetworkPeer")
	public function hasNetworkPeer():Bool;

	/**		
		Returns the peer IDs of all connected peers of this `godot.SceneTree`'s `godot.SceneTree.networkPeer`.
	**/
	public extern inline function getNetworkConnectedPeers():std.Array<Int> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetNetworkConnectedPeers()", this));
	}

	/**		
		Returns the unique peer ID of this `godot.SceneTree`'s `godot.SceneTree.networkPeer`.
	**/
	@:native("GetNetworkUniqueId")
	public function getNetworkUniqueId():Int;

	/**		
		Returns the sender's peer ID for the most recently received RPC call.
	**/
	@:native("GetRpcSenderId")
	public function getRpcSenderId():Int;

	@:native("SetRefuseNewNetworkConnections")
	public function setRefuseNewNetworkConnections(refuse:Bool):Void;

	@:native("IsRefusingNewNetworkConnections")
	public function isRefusingNewNetworkConnections():Bool;

	@:native("SetUseFontOversampling")
	public function setUseFontOversampling(enable:Bool):Void;

	@:native("IsUsingFontOversampling")
	public function isUsingFontOversampling():Bool;
}
