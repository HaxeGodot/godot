// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
As one of the most important classes, the `godot.SceneTree` manages the hierarchy of nodes in a scene as well as scenes themselves. Nodes can be added, retrieved and removed. The whole scene tree (and thus the current scene) can be paused. Scenes can be loaded, switched and reloaded.

You can also use the `godot.SceneTree` to organize your nodes into groups: every node can be assigned as many groups as you want to create, e.g. a "enemy" group. You can then iterate these groups or even call methods and set properties on all the group's members at once.

`godot.SceneTree` is the default `godot.MainLoop` implementation used by scenes, and is thus in charge of the game loop.
**/
@:libType
@:csNative
@:native("Godot.SceneTree")
@:autoBuild(godot.Godot.buildUserClass())
extern class SceneTree extends godot.MainLoop {
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
		
		- 2D and 3D physics will be stopped.
		
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
		
		To handle 'Go Back' button when this option is disabled, use .
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
		Quits the application. A process `exit_code` can optionally be passed as an argument. If this argument is `0` or greater, it will override the `godot.OS.exitCode` defined before quitting the application.
	**/
	@:native("Quit")
	public function quit(?exitCode:Int):Void;
	#else
	/**		
		Quits the application. A process `exit_code` can optionally be passed as an argument. If this argument is `0` or greater, it will override the `godot.OS.exitCode` defined before quitting the application.
	**/
	@:native("Quit")
	public overload function quit():Void;

	/**		
		Quits the application. A process `exit_code` can optionally be passed as an argument. If this argument is `0` or greater, it will override the `godot.OS.exitCode` defined before quitting the application.
	**/
	@:native("Quit")
	public overload function quit(exitCode:Int):Void;
	#end

	#if doc_gen
	/**		
		Configures screen stretching to the given `godot.SceneTree_StretchMode`, `godot.SceneTree_StretchAspect`, minimum size and `shrink` ratio.
	**/
	@:native("SetScreenStretch")
	public function setScreenStretch(mode:godot.SceneTree_StretchMode, aspect:godot.SceneTree_StretchAspect, minsize:godot.Vector2, ?shrink:Single):Void;
	#else
	/**		
		Configures screen stretching to the given `godot.SceneTree_StretchMode`, `godot.SceneTree_StretchAspect`, minimum size and `shrink` ratio.
	**/
	@:native("SetScreenStretch")
	public overload function setScreenStretch(mode:godot.SceneTree_StretchMode, aspect:godot.SceneTree_StretchAspect, minsize:godot.Vector2):Void;

	/**		
		Configures screen stretching to the given `godot.SceneTree_StretchMode`, `godot.SceneTree_StretchAspect`, minimum size and `shrink` ratio.
	**/
	@:native("SetScreenStretch")
	public overload function setScreenStretch(mode:godot.SceneTree_StretchMode, aspect:godot.SceneTree_StretchAspect, minsize:godot.Vector2, shrink:Single):Void;
	#end

	/**		
		Queues the given object for deletion, delaying the call to `godot.Object.free` to after the current frame.
	**/
	@:native("QueueDelete")
	public function queueDelete(obj:godot.Object):Void;

	/**		
		Calls `method` on each member of the given group, respecting the given `godot.SceneTree_GroupCallFlags`.
	**/
	@:native("CallGroupFlags")
	public function callGroupFlags(flags:Int, group:std.String, method:std.String, args:haxe.Rest<Dynamic>):Dynamic;

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
		Calls `method` on each member of the given group.
	**/
	@:native("CallGroup")
	public function callGroup(group:std.String, method:std.String, args:haxe.Rest<Dynamic>):Dynamic;

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
		
		Returns  on success,  if the `path` cannot be loaded into a `godot.PackedScene`, or  if that scene cannot be instantiated.
	**/
	@:native("ChangeScene")
	public function changeScene(path:std.String):godot.Error;

	/**		
		Changes the running scene to a new instance of the given `godot.PackedScene`.
		
		Returns  on success or  if the scene cannot be instantiated.
	**/
	@:native("ChangeSceneTo")
	public function changeSceneTo(packedScene:godot.PackedScene):godot.Error;

	/**		
		Reloads the currently active scene.
		
		Returns  on success,  if no `godot.SceneTree.currentScene` was defined yet,  if `godot.SceneTree.currentScene` cannot be loaded into a `godot.PackedScene`, or  if the scene cannot be instantiated.
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
	@:native("GetNetworkConnectedPeers")
	public function getNetworkConnectedPeers():cs.NativeArray<Int>;

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
