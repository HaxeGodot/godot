// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Nodes are Godot's building blocks. They can be assigned as the child of another node, resulting in a tree arrangement. A given node can contain any number of nodes as children with the requirement that all siblings (direct children of a node) should have unique names.

A tree of nodes is called a scene. Scenes can be saved to the disk and then instanced into other scenes. This allows for very high flexibility in the architecture and data model of Godot projects.

Scene tree: The `godot.SceneTree` contains the active tree of nodes. When a node is added to the scene tree, it receives the `godot.Node.notificationEnterTree` notification and its `godot.Node._EnterTree` callback is triggered. Child nodes are always added after their parent node, i.e. the `godot.Node._EnterTree` callback of a parent node will be triggered before its child's.

Once all nodes have been added in the scene tree, they receive the `godot.Node.notificationReady` notification and their respective `godot.Node._Ready` callbacks are triggered. For groups of nodes, the `godot.Node._Ready` callback is called in reverse order, starting with the children and moving up to the parent nodes.

This means that when adding a node to the scene tree, the following order will be used for the callbacks: `godot.Node._EnterTree` of the parent, `godot.Node._EnterTree` of the children, `godot.Node._Ready` of the children and finally `godot.Node._Ready` of the parent (recursively for the entire scene tree).

Processing: Nodes can override the "process" state, so that they receive a callback on each frame requesting them to process (do something). Normal processing (callback `godot.Node._Process`, toggled with `godot.Node.setProcess`) happens as fast as possible and is dependent on the frame rate, so the processing time delta (in seconds) is passed as an argument. Physics processing (callback `godot.Node._PhysicsProcess`, toggled with `godot.Node.setPhysicsProcess`) happens a fixed number of times per second (60 by default) and is useful for code related to the physics engine.

Nodes can also process input events. When present, the `godot.Node._Input` function will be called for each input that the program receives. In many cases, this can be overkill (unless used for simple projects), and the `godot.Node._UnhandledInput` function might be preferred; it is called when the input event was not handled by anyone else (typically, GUI `godot.Control` nodes), ensuring that the node only receives the events that were meant for it.

To keep track of the scene hierarchy (especially when instancing scenes into other scenes), an "owner" can be set for the node with the `godot.Node.owner` property. This keeps track of who instanced what. This is mostly useful when writing editors and tools, though.

Finally, when a node is freed with `godot.Object.free` or `godot.Node.queueFree`, it will also free all its children.

Groups: Nodes can be added to as many groups as you want to be easy to manage, you could create groups like "enemies" or "collectables" for example, depending on your game. See `godot.Node.addToGroup`, `godot.Node.isInGroup` and `godot.Node.removeFromGroup`. You can then retrieve all nodes in these groups, iterate them and even call methods on groups via the methods on `godot.SceneTree`.

Networking with nodes: After connecting to a server (or making one, see `godot.NetworkedMultiplayerENet`), it is possible to use the built-in RPC (remote procedure call) system to communicate over the network. By calling `godot.Node.rpc` with a method name, it will be called locally and in all connected peers (peers = clients and the server that accepts connections). To identify which node receives the RPC call, Godot will use its `godot.NodePath` (make sure node names are the same on all peers). Also, take a look at the high-level networking tutorial and corresponding demos.
**/
@:libType
@:csNative
@:native("Godot.Node")
@:autoBuild(godot.Godot.buildUserClass())
extern class Node extends godot.Object {
	/**
		`ready` signal.
	**/
	public var onReady(get, never):Signal<Void->Void>;
	@:dox(hide) @:noCompletion inline function get_onReady():Signal<Void->Void> {
		return new Signal(this, "ready", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	/**
		`renamed` signal.
	**/
	public var onRenamed(get, never):Signal<Void->Void>;
	@:dox(hide) @:noCompletion inline function get_onRenamed():Signal<Void->Void> {
		return new Signal(this, "renamed", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	/**
		`tree_entered` signal.
	**/
	public var onTreeEntered(get, never):Signal<Void->Void>;
	@:dox(hide) @:noCompletion inline function get_onTreeEntered():Signal<Void->Void> {
		return new Signal(this, "tree_entered", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	/**
		`tree_exited` signal.
	**/
	public var onTreeExited(get, never):Signal<Void->Void>;
	@:dox(hide) @:noCompletion inline function get_onTreeExited():Signal<Void->Void> {
		return new Signal(this, "tree_exited", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	/**
		`tree_exiting` signal.
	**/
	public var onTreeExiting(get, never):Signal<Void->Void>;
	@:dox(hide) @:noCompletion inline function get_onTreeExiting():Signal<Void->Void> {
		return new Signal(this, "tree_exiting", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	/**		
		The node's priority in the execution order of the enabled processing callbacks (i.e. `godot.Node.notificationProcess`, `godot.Node.notificationPhysicsProcess` and their internal counterparts). Nodes whose process priority value is lower will have their processing callbacks executed first.
	**/
	@:native("ProcessPriority")
	public var processPriority:Int;

	/**		
		The override to the default `godot.MultiplayerAPI`. Set to `null` to use the default `godot.SceneTree` one.
	**/
	@:native("CustomMultiplayer")
	public var customMultiplayer:godot.MultiplayerAPI;

	/**		
		The `godot.MultiplayerAPI` instance associated with this node. Either the `godot.Node.customMultiplayer`, or the default SceneTree one (if inside tree).
	**/
	@:native("Multiplayer") @:readOnly
	public var multiplayer(default, never):godot.MultiplayerAPI;

	/**		
		The node owner. A node can have any other node as owner (as long as it is a valid parent, grandparent, etc. ascending in the tree). When saving a node (using `godot.PackedScene`), all the nodes it owns will be saved with it. This allows for the creation of complex `godot.SceneTree`s, with instancing and subinstancing.
		
		Note: If you want a child to be persisted to a `godot.PackedScene`, you must set `godot.Node.owner` in addition to calling `godot.Node.addChild`. This is typically relevant for [https://docs.godotengine.org/en/3.4/tutorials/misc/running_code_in_the_editor.html](tool scripts) and [https://docs.godotengine.org/en/3.4/tutorials/plugins/editor/index.html](editor plugins). If `godot.Node.addChild` is called without setting `godot.Node.owner`, the newly added `godot.Node` will not be visible in the scene tree, though it will be visible in the 2D/3D view.
	**/
	@:native("Owner")
	public var owner:godot.Node;

	/**		
		If a scene is instantiated from a file, its topmost node contains the absolute file path from which it was loaded in `godot.Node.filename` (e.g. `res://levels/1.tscn`). Otherwise, `godot.Node.filename` is set to an empty string.
	**/
	@:native("Filename")
	public var filename:std.String;

	/**		
		The name of the node. This name is unique among the siblings (other child nodes from the same parent). When set to an existing name, the node will be automatically renamed.
		
		Note: Auto-generated names might include the `@` character, which is reserved for unique names when using `godot.Node.addChild`. When setting the name manually, any `@` will be removed.
	**/
	@:native("Name")
	public var name:std.String;

	/**		
		Pause mode. How the node will behave if the `godot.SceneTree` is paused.
	**/
	@:native("PauseMode")
	public var pauseMode:godot.Node_PauseModeEnum;

	@:native("_ImportPath")
	public var _ImportPath:godot.NodePath;

	@:native("EditorDescription")
	public var editorDescription:std.String;

	/**		
		Notification received from the OS when the app is paused.
		
		Specific to the Android platform.
	**/
	@:native("NotificationAppPaused") @:readOnly
	public static var NOTIFICATION_APP_PAUSED(default, never):Int;

	/**		
		Notification received from the OS when the app is resumed.
		
		Specific to the Android platform.
	**/
	@:native("NotificationAppResumed") @:readOnly
	public static var NOTIFICATION_APP_RESUMED(default, never):Int;

	/**		
		Notification received from the OS when an update of the Input Method Engine occurs (e.g. change of IME cursor position or composition string).
		
		Specific to the macOS platform.
	**/
	@:native("NotificationOsImeUpdate") @:readOnly
	public static var NOTIFICATION_OS_IME_UPDATE(default, never):Int;

	/**		
		Notification received from Godot's crash handler when the engine is about to crash.
		
		Implemented on desktop platforms if the crash handler is enabled.
	**/
	@:native("NotificationCrash") @:readOnly
	public static var NOTIFICATION_CRASH(default, never):Int;

	/**		
		Notification received from the OS when a request for "About" information is sent.
		
		Specific to the macOS platform.
	**/
	@:native("NotificationWmAbout") @:readOnly
	public static var NOTIFICATION_WM_ABOUT(default, never):Int;

	/**		
		Notification received when translations may have changed. Can be triggered by the user changing the locale. Can be used to respond to language changes, for example to change the UI strings on the fly. Useful when working with the built-in translation support, like `godot.Object.tr`.
	**/
	@:native("NotificationTranslationChanged") @:readOnly
	public static var NOTIFICATION_TRANSLATION_CHANGED(default, never):Int;

	/**		
		Notification received from the OS when the application is exceeding its allocated memory.
		
		Specific to the iOS platform.
	**/
	@:native("NotificationOsMemoryWarning") @:readOnly
	public static var NOTIFICATION_OS_MEMORY_WARNING(default, never):Int;

	/**		
		Notification received from the OS when an unfocus request is sent (e.g. another OS window wants to take the focus).
		
		No supported platforms currently send this notification.
	**/
	@:native("NotificationWmUnfocusRequest") @:readOnly
	public static var NOTIFICATION_WM_UNFOCUS_REQUEST(default, never):Int;

	/**		
		Notification received from the OS when a go back request is sent (e.g. pressing the "Back" button on Android).
		
		Specific to the Android platform.
	**/
	@:native("NotificationWmGoBackRequest") @:readOnly
	public static var NOTIFICATION_WM_GO_BACK_REQUEST(default, never):Int;

	/**		
		Notification received from the OS when a quit request is sent (e.g. closing the window with a "Close" button or Alt+F4).
		
		Implemented on desktop platforms.
	**/
	@:native("NotificationWmQuitRequest") @:readOnly
	public static var NOTIFICATION_WM_QUIT_REQUEST(default, never):Int;

	/**		
		Notification received from the OS when the game window is unfocused.
		
		Implemented on all platforms.
	**/
	@:native("NotificationWmFocusOut") @:readOnly
	public static var NOTIFICATION_WM_FOCUS_OUT(default, never):Int;

	/**		
		Notification received from the OS when the game window is focused.
		
		Implemented on all platforms.
	**/
	@:native("NotificationWmFocusIn") @:readOnly
	public static var NOTIFICATION_WM_FOCUS_IN(default, never):Int;

	/**		
		Notification received from the OS when the mouse leaves the game window.
		
		Implemented on desktop and web platforms.
	**/
	@:native("NotificationWmMouseExit") @:readOnly
	public static var NOTIFICATION_WM_MOUSE_EXIT(default, never):Int;

	/**		
		Notification received from the OS when the mouse enters the game window.
		
		Implemented on desktop and web platforms.
	**/
	@:native("NotificationWmMouseEnter") @:readOnly
	public static var NOTIFICATION_WM_MOUSE_ENTER(default, never):Int;

	/**		
		Notification received when the node is ready, just before `godot.Node.notificationReady` is received. Unlike the latter, it's sent every time the node enters tree, instead of only once.
	**/
	@:native("NotificationPostEnterTree") @:readOnly
	public static var NOTIFICATION_POST_ENTER_TREE(default, never):Int;

	/**		
		Notification received every frame when the internal physics process flag is set (see `godot.Node.setPhysicsProcessInternal`).
	**/
	@:native("NotificationInternalPhysicsProcess") @:readOnly
	public static var NOTIFICATION_INTERNAL_PHYSICS_PROCESS(default, never):Int;

	/**		
		Notification received every frame when the internal process flag is set (see `godot.Node.setProcessInternal`).
	**/
	@:native("NotificationInternalProcess") @:readOnly
	public static var NOTIFICATION_INTERNAL_PROCESS(default, never):Int;

	/**		
		Notification received when the node's `godot.NodePath` changed.
	**/
	@:native("NotificationPathChanged") @:readOnly
	public static var NOTIFICATION_PATH_CHANGED(default, never):Int;

	/**		
		Notification received when a drag ends.
	**/
	@:native("NotificationDragEnd") @:readOnly
	public static var NOTIFICATION_DRAG_END(default, never):Int;

	/**		
		Notification received when a drag begins.
	**/
	@:native("NotificationDragBegin") @:readOnly
	public static var NOTIFICATION_DRAG_BEGIN(default, never):Int;

	/**		
		Notification received when the node is instanced.
	**/
	@:native("NotificationInstanced") @:readOnly
	public static var NOTIFICATION_INSTANCED(default, never):Int;

	/**		
		Notification received when a node is unparented (parent removed it from the list of children).
	**/
	@:native("NotificationUnparented") @:readOnly
	public static var NOTIFICATION_UNPARENTED(default, never):Int;

	/**		
		Notification received when a node is set as a child of another node.
		
		Note: This doesn't mean that a node entered the `godot.SceneTree`.
	**/
	@:native("NotificationParented") @:readOnly
	public static var NOTIFICATION_PARENTED(default, never):Int;

	/**		
		Notification received every frame when the process flag is set (see `godot.Node.setProcess`).
	**/
	@:native("NotificationProcess") @:readOnly
	public static var NOTIFICATION_PROCESS(default, never):Int;

	/**		
		Notification received every frame when the physics process flag is set (see `godot.Node.setPhysicsProcess`).
	**/
	@:native("NotificationPhysicsProcess") @:readOnly
	public static var NOTIFICATION_PHYSICS_PROCESS(default, never):Int;

	/**		
		Notification received when the node is unpaused.
	**/
	@:native("NotificationUnpaused") @:readOnly
	public static var NOTIFICATION_UNPAUSED(default, never):Int;

	/**		
		Notification received when the node is paused.
	**/
	@:native("NotificationPaused") @:readOnly
	public static var NOTIFICATION_PAUSED(default, never):Int;

	/**		
		Notification received when the node is ready. See `godot.Node._Ready`.
	**/
	@:native("NotificationReady") @:readOnly
	public static var NOTIFICATION_READY(default, never):Int;

	/**		
		Notification received when the node is moved in the parent.
	**/
	@:native("NotificationMovedInParent") @:readOnly
	public static var NOTIFICATION_MOVED_IN_PARENT(default, never):Int;

	/**		
		Notification received when the node is about to exit a `godot.SceneTree`.
	**/
	@:native("NotificationExitTree") @:readOnly
	public static var NOTIFICATION_EXIT_TREE(default, never):Int;

	/**		
		Notification received when the node enters a `godot.SceneTree`.
	**/
	@:native("NotificationEnterTree") @:readOnly
	public static var NOTIFICATION_ENTER_TREE(default, never):Int;

	@:native("GetChildOrNull")
	public function getChildOrNull<M0>(idx:Int):M0;

	@:native("GetOwnerOrNull")
	public function getOwnerOrNull<M0>():M0;

	@:native("GetParentOrNull")
	public function getParentOrNull<M0>():M0;

	@:native("new")
	public function new():Void;

	/**		
		Called when the node enters the `godot.SceneTree` (e.g. upon instancing, scene changing, or after calling `godot.Node.addChild` in a script). If the node has children, its `godot.Node._EnterTree` callback will be called first, and then that of the children.
		
		Corresponds to the `godot.Node.notificationEnterTree` notification in `godot.Object._Notification`.
	**/
	@:native("_EnterTree")
	public function _EnterTree():Void;

	/**		
		Called when the node is about to leave the `godot.SceneTree` (e.g. upon freeing, scene changing, or after calling `godot.Node.removeChild` in a script). If the node has children, its `godot.Node._ExitTree` callback will be called last, after all its children have left the tree.
		
		Corresponds to the `godot.Node.notificationExitTree` notification in `godot.Object._Notification` and signal `tree_exiting`. To get notified when the node has already left the active tree, connect to the `tree_exited`.
	**/
	@:native("_ExitTree")
	public function _ExitTree():Void;

	/**		
		The string returned from this method is displayed as a warning in the Scene Dock if the script that overrides it is a `tool` script.
		
		Returning an empty string produces no warning.
		
		Call `godot.Node.updateConfigurationWarning` when the warning needs to be updated for this node.
	**/
	@:native("_GetConfigurationWarning")
	public function _GetConfigurationWarning():std.String;

	/**		
		Called when there is an input event. The input event propagates up through the node tree until a node consumes it.
		
		It is only called if input processing is enabled, which is done automatically if this method is overridden, and can be toggled with `godot.Node.setProcessInput`.
		
		To consume the input event and stop it propagating further to other nodes, `godot.SceneTree.setInputAsHandled` can be called.
		
		For gameplay input, `godot.Node._UnhandledInput` and `godot.Node._UnhandledKeyInput` are usually a better fit as they allow the GUI to intercept the events first.
		
		Note: This method is only called if the node is present in the scene tree (i.e. if it's not orphan).
	**/
	@:native("_Input")
	public function _Input(event:godot.InputEvent):Void;

	/**		
		Called during the physics processing step of the main loop. Physics processing means that the frame rate is synced to the physics, i.e. the `delta` variable should be constant. `delta` is in seconds.
		
		It is only called if physics processing is enabled, which is done automatically if this method is overridden, and can be toggled with `godot.Node.setPhysicsProcess`.
		
		Corresponds to the `godot.Node.notificationPhysicsProcess` notification in `godot.Object._Notification`.
		
		Note: This method is only called if the node is present in the scene tree (i.e. if it's not orphan).
	**/
	@:native("_PhysicsProcess")
	public function _PhysicsProcess(delta:Single):Void;

	/**		
		Called during the processing step of the main loop. Processing happens at every frame and as fast as possible, so the `delta` time since the previous frame is not constant. `delta` is in seconds.
		
		It is only called if processing is enabled, which is done automatically if this method is overridden, and can be toggled with `godot.Node.setProcess`.
		
		Corresponds to the `godot.Node.notificationProcess` notification in `godot.Object._Notification`.
		
		Note: This method is only called if the node is present in the scene tree (i.e. if it's not orphan).
	**/
	@:native("_Process")
	public function _Process(delta:Single):Void;

	/**		
		Called when the node is "ready", i.e. when both the node and its children have entered the scene tree. If the node has children, their `godot.Node._Ready` callbacks get triggered first, and the parent node will receive the ready notification afterwards.
		
		Corresponds to the `godot.Node.notificationReady` notification in `godot.Object._Notification`. See also the `onready` keyword for variables.
		
		Usually used for initialization. For even earlier initialization,  may be used. See also `godot.Node._EnterTree`.
		
		Note: `godot.Node._Ready` may be called only once for each node. After removing a node from the scene tree and adding again, `_ready` will not be called for the second time. This can be bypassed with requesting another call with `godot.Node.requestReady`, which may be called anywhere before adding the node again.
	**/
	@:native("_Ready")
	public function _Ready():Void;

	/**		
		Called when an `godot.InputEvent` hasn't been consumed by `godot.Node._Input` or any GUI. The input event propagates up through the node tree until a node consumes it.
		
		It is only called if unhandled input processing is enabled, which is done automatically if this method is overridden, and can be toggled with `godot.Node.setProcessUnhandledInput`.
		
		To consume the input event and stop it propagating further to other nodes, `godot.SceneTree.setInputAsHandled` can be called.
		
		For gameplay input, this and `godot.Node._UnhandledKeyInput` are usually a better fit than `godot.Node._Input` as they allow the GUI to intercept the events first.
		
		Note: This method is only called if the node is present in the scene tree (i.e. if it's not orphan).
	**/
	@:native("_UnhandledInput")
	public function _UnhandledInput(event:godot.InputEvent):Void;

	/**		
		Called when an `godot.InputEventKey` hasn't been consumed by `godot.Node._Input` or any GUI. The input event propagates up through the node tree until a node consumes it.
		
		It is only called if unhandled key input processing is enabled, which is done automatically if this method is overridden, and can be toggled with `godot.Node.setProcessUnhandledKeyInput`.
		
		To consume the input event and stop it propagating further to other nodes, `godot.SceneTree.setInputAsHandled` can be called.
		
		For gameplay input, this and `godot.Node._UnhandledInput` are usually a better fit than `godot.Node._Input` as they allow the GUI to intercept the events first.
		
		Note: This method is only called if the node is present in the scene tree (i.e. if it's not orphan).
	**/
	@:native("_UnhandledKeyInput")
	public function _UnhandledKeyInput(event:godot.InputEventKey):Void;

	#if doc_gen
	/**		
		Adds `child_node` as a child. The child is placed below the given `node` in the list of children.
		
		If `legible_unique_name` is `true`, the child node will have a human-readable name based on the name of the node being instanced instead of its type.
	**/
	@:native("AddChildBelowNode")
	public function addChildBelowNode(node:godot.Node, childNode:godot.Node, ?legibleUniqueName:Bool):Void;
	#else
	/**		
		Adds `child_node` as a child. The child is placed below the given `node` in the list of children.
		
		If `legible_unique_name` is `true`, the child node will have a human-readable name based on the name of the node being instanced instead of its type.
	**/
	@:native("AddChildBelowNode")
	public overload function addChildBelowNode(node:godot.Node, childNode:godot.Node):Void;

	/**		
		Adds `child_node` as a child. The child is placed below the given `node` in the list of children.
		
		If `legible_unique_name` is `true`, the child node will have a human-readable name based on the name of the node being instanced instead of its type.
	**/
	@:native("AddChildBelowNode")
	public overload function addChildBelowNode(node:godot.Node, childNode:godot.Node, legibleUniqueName:Bool):Void;
	#end

	@:native("SetName")
	public function setName(name:std.String):Void;

	@:native("GetName")
	public function getName():std.String;

	#if doc_gen
	/**		
		Adds a child node. Nodes can have any number of children, but every child must have a unique name. Child nodes are automatically deleted when the parent node is deleted, so an entire scene can be removed by deleting its topmost node.
		
		If `legible_unique_name` is `true`, the child node will have a human-readable name based on the name of the node being instanced instead of its type.
		
		Note: If the child node already has a parent, the function will fail. Use `godot.Node.removeChild` first to remove the node from its current parent. For example:
		
		```
		
		if child_node.get_parent():
		child_node.get_parent().remove_child(child_node)
		add_child(child_node)
		
		```
		
		Note: If you want a child to be persisted to a `godot.PackedScene`, you must set `godot.Node.owner` in addition to calling `godot.Node.addChild`. This is typically relevant for [https://docs.godotengine.org/en/3.4/tutorials/misc/running_code_in_the_editor.html](tool scripts) and [https://docs.godotengine.org/en/3.4/tutorials/plugins/editor/index.html](editor plugins). If `godot.Node.addChild` is called without setting `godot.Node.owner`, the newly added `godot.Node` will not be visible in the scene tree, though it will be visible in the 2D/3D view.
	**/
	@:native("AddChild")
	public function addChild(node:godot.Node, ?legibleUniqueName:Bool):Void;
	#else
	/**		
		Adds a child node. Nodes can have any number of children, but every child must have a unique name. Child nodes are automatically deleted when the parent node is deleted, so an entire scene can be removed by deleting its topmost node.
		
		If `legible_unique_name` is `true`, the child node will have a human-readable name based on the name of the node being instanced instead of its type.
		
		Note: If the child node already has a parent, the function will fail. Use `godot.Node.removeChild` first to remove the node from its current parent. For example:
		
		```
		
		if child_node.get_parent():
		child_node.get_parent().remove_child(child_node)
		add_child(child_node)
		
		```
		
		Note: If you want a child to be persisted to a `godot.PackedScene`, you must set `godot.Node.owner` in addition to calling `godot.Node.addChild`. This is typically relevant for [https://docs.godotengine.org/en/3.4/tutorials/misc/running_code_in_the_editor.html](tool scripts) and [https://docs.godotengine.org/en/3.4/tutorials/plugins/editor/index.html](editor plugins). If `godot.Node.addChild` is called without setting `godot.Node.owner`, the newly added `godot.Node` will not be visible in the scene tree, though it will be visible in the 2D/3D view.
	**/
	@:native("AddChild")
	public overload function addChild(node:godot.Node):Void;

	/**		
		Adds a child node. Nodes can have any number of children, but every child must have a unique name. Child nodes are automatically deleted when the parent node is deleted, so an entire scene can be removed by deleting its topmost node.
		
		If `legible_unique_name` is `true`, the child node will have a human-readable name based on the name of the node being instanced instead of its type.
		
		Note: If the child node already has a parent, the function will fail. Use `godot.Node.removeChild` first to remove the node from its current parent. For example:
		
		```
		
		if child_node.get_parent():
		child_node.get_parent().remove_child(child_node)
		add_child(child_node)
		
		```
		
		Note: If you want a child to be persisted to a `godot.PackedScene`, you must set `godot.Node.owner` in addition to calling `godot.Node.addChild`. This is typically relevant for [https://docs.godotengine.org/en/3.4/tutorials/misc/running_code_in_the_editor.html](tool scripts) and [https://docs.godotengine.org/en/3.4/tutorials/plugins/editor/index.html](editor plugins). If `godot.Node.addChild` is called without setting `godot.Node.owner`, the newly added `godot.Node` will not be visible in the scene tree, though it will be visible in the 2D/3D view.
	**/
	@:native("AddChild")
	public overload function addChild(node:godot.Node, legibleUniqueName:Bool):Void;
	#end

	/**		
		Removes a child node. The node is NOT deleted and must be deleted manually.
		
		Note: This function may set the `godot.Node.owner` of the removed Node (or its descendants) to be `null`, if that `godot.Node.owner` is no longer a parent or ancestor.
	**/
	@:native("RemoveChild")
	public function removeChild(node:godot.Node):Void;

	/**		
		Returns the number of child nodes.
	**/
	@:native("GetChildCount")
	public function getChildCount():Int;

	/**		
		Returns an array of references to node's children.
	**/
	@:native("GetChildren")
	public function getChildren():godot.collections.Array;

	/**		
		Returns a child node by its index (see `godot.Node.getChildCount`). This method is often used for iterating all children of a node.
		
		To access a child node via its name, use `godot.Node.getNode`.
	**/
	@:native("GetChild")
	public function getChild(idx:Int):godot.Node;

	/**		
		Returns `true` if the node that the `godot.NodePath` points to exists.
	**/
	@:native("HasNode")
	public function hasNode(path:godot.NodePath):Bool;

	/**		
		Fetches a node. The `godot.NodePath` can be either a relative path (from the current node) or an absolute path (in the scene tree) to a node. If the path does not exist, a `null instance` is returned and an error is logged. Attempts to access methods on the return value will result in an "Attempt to call &lt;method&gt; on a null instance." error.
		
		Note: Fetching absolute paths only works when the node is inside the scene tree (see `godot.Node.isInsideTree`).
		
		Example: Assume your current node is Character and the following tree:
		
		```
		
		/root
		/root/Character
		/root/Character/Sword
		/root/Character/Backpack/Dagger
		/root/MyGame
		/root/Swamp/Alligator
		/root/Swamp/Mosquito
		/root/Swamp/Goblin
		
		```
		
		Possible paths are:
		
		```
		
		get_node("Sword")
		get_node("Backpack/Dagger")
		get_node("../Swamp/Alligator")
		get_node("/root/MyGame")
		
		```
	**/
	@:native("GetNode")
	public function getNode(path:godot.NodePath):godot.Node;

	/**		
		Similar to `godot.Node.getNode`, but does not log an error if `path` does not point to a valid `godot.Node`.
	**/
	@:native("GetNodeOrNull")
	public function getNodeOrNull(path:godot.NodePath):godot.Node;

	/**		
		Returns the parent node of the current node, or a `null instance` if the node lacks a parent.
	**/
	@:native("GetParent")
	public function getParent():godot.Node;

	#if doc_gen
	/**		
		Finds a descendant of this node whose name matches `mask` as in `String.match` (i.e. case-sensitive, but `"*"` matches zero or more characters and `"?"` matches any single character except `"."`). Returns `null` if no matching `godot.Node` is found.
		
		Note: It does not match against the full path, just against individual node names.
		
		If `owned` is `true`, this method only finds nodes whose owner is this node. This is especially important for scenes instantiated through a script, because those scenes don't have an owner.
		
		Note: As this method walks through all the descendants of the node, it is the slowest way to get a reference to another node. Whenever possible, consider using `godot.Node.getNode` instead. To avoid using `godot.Node.findNode` too often, consider caching the node reference into a variable.
	**/
	@:native("FindNode")
	public function findNode(mask:std.String, ?recursive:Bool, ?owned:Bool):godot.Node;
	#else
	/**		
		Finds a descendant of this node whose name matches `mask` as in `String.match` (i.e. case-sensitive, but `"*"` matches zero or more characters and `"?"` matches any single character except `"."`). Returns `null` if no matching `godot.Node` is found.
		
		Note: It does not match against the full path, just against individual node names.
		
		If `owned` is `true`, this method only finds nodes whose owner is this node. This is especially important for scenes instantiated through a script, because those scenes don't have an owner.
		
		Note: As this method walks through all the descendants of the node, it is the slowest way to get a reference to another node. Whenever possible, consider using `godot.Node.getNode` instead. To avoid using `godot.Node.findNode` too often, consider caching the node reference into a variable.
	**/
	@:native("FindNode")
	public overload function findNode(mask:std.String):godot.Node;

	/**		
		Finds a descendant of this node whose name matches `mask` as in `String.match` (i.e. case-sensitive, but `"*"` matches zero or more characters and `"?"` matches any single character except `"."`). Returns `null` if no matching `godot.Node` is found.
		
		Note: It does not match against the full path, just against individual node names.
		
		If `owned` is `true`, this method only finds nodes whose owner is this node. This is especially important for scenes instantiated through a script, because those scenes don't have an owner.
		
		Note: As this method walks through all the descendants of the node, it is the slowest way to get a reference to another node. Whenever possible, consider using `godot.Node.getNode` instead. To avoid using `godot.Node.findNode` too often, consider caching the node reference into a variable.
	**/
	@:native("FindNode")
	public overload function findNode(mask:std.String, recursive:Bool):godot.Node;

	/**		
		Finds a descendant of this node whose name matches `mask` as in `String.match` (i.e. case-sensitive, but `"*"` matches zero or more characters and `"?"` matches any single character except `"."`). Returns `null` if no matching `godot.Node` is found.
		
		Note: It does not match against the full path, just against individual node names.
		
		If `owned` is `true`, this method only finds nodes whose owner is this node. This is especially important for scenes instantiated through a script, because those scenes don't have an owner.
		
		Note: As this method walks through all the descendants of the node, it is the slowest way to get a reference to another node. Whenever possible, consider using `godot.Node.getNode` instead. To avoid using `godot.Node.findNode` too often, consider caching the node reference into a variable.
	**/
	@:native("FindNode")
	public overload function findNode(mask:std.String, recursive:Bool, owned:Bool):godot.Node;
	#end

	/**		
		Finds the first parent of the current node whose name matches `mask` as in `String.match` (i.e. case-sensitive, but `"*"` matches zero or more characters and `"?"` matches any single character except `"."`).
		
		Note: It does not match against the full path, just against individual node names.
		
		Note: As this method walks upwards in the scene tree, it can be slow in large, deeply nested scene trees. Whenever possible, consider using `godot.Node.getNode` instead. To avoid using `godot.Node.findParent` too often, consider caching the node reference into a variable.
	**/
	@:native("FindParent")
	public function findParent(mask:std.String):godot.Node;

	/**		
		Returns `true` if the `godot.NodePath` points to a valid node and its subname points to a valid resource, e.g. `Area2D/CollisionShape2D:shape`. Properties with a non-`godot.Resource` type (e.g. nodes or primitive math types) are not considered resources.
	**/
	@:native("HasNodeAndResource")
	public function hasNodeAndResource(path:godot.NodePath):Bool;

	/**		
		Fetches a node and one of its resources as specified by the `godot.NodePath`'s subname (e.g. `Area2D/CollisionShape2D:shape`). If several nested resources are specified in the `godot.NodePath`, the last one will be fetched.
		
		The return value is an array of size 3: the first index points to the `godot.Node` (or `null` if not found), the second index points to the `godot.Resource` (or `null` if not found), and the third index is the remaining `godot.NodePath`, if any.
		
		For example, assuming that `Area2D/CollisionShape2D` is a valid node and that its `shape` property has been assigned a `godot.RectangleShape2D` resource, one could have this kind of output:
		
		```
		
		print(get_node_and_resource("Area2D/CollisionShape2D")) # [[CollisionShape2D:1161], Null, ]
		print(get_node_and_resource("Area2D/CollisionShape2D:shape")) # [[CollisionShape2D:1161], [RectangleShape2D:1156], ]
		print(get_node_and_resource("Area2D/CollisionShape2D:shape:extents")) # [[CollisionShape2D:1161], [RectangleShape2D:1156], :extents]
		
		```
	**/
	@:native("GetNodeAndResource")
	public function getNodeAndResource(path:godot.NodePath):godot.collections.Array;

	/**		
		Returns `true` if this node is currently inside a `godot.SceneTree`.
	**/
	@:native("IsInsideTree")
	public function isInsideTree():Bool;

	/**		
		Returns `true` if the given node is a direct or indirect child of the current node.
	**/
	@:native("IsAParentOf")
	public function isAParentOf(node:godot.Node):Bool;

	/**		
		Returns `true` if the given node occurs later in the scene hierarchy than the current node.
	**/
	@:native("IsGreaterThan")
	public function isGreaterThan(node:godot.Node):Bool;

	/**		
		Returns the absolute path of the current node. This only works if the current node is inside the scene tree (see `godot.Node.isInsideTree`).
	**/
	@:native("GetPath")
	public function getPath():godot.NodePath;

	/**		
		Returns the relative `godot.NodePath` from this node to the specified `node`. Both nodes must be in the same scene or the function will fail.
	**/
	@:native("GetPathTo")
	public function getPathTo(node:godot.Node):godot.NodePath;

	#if doc_gen
	/**		
		Adds the node to a group. Groups are helpers to name and organize a subset of nodes, for example "enemies" or "collectables". A node can be in any number of groups. Nodes can be assigned a group at any time, but will not be added until they are inside the scene tree (see `godot.Node.isInsideTree`). See notes in the description, and the group methods in `godot.SceneTree`.
		
		The `persistent` option is used when packing node to `godot.PackedScene` and saving to file. Non-persistent groups aren't stored.
		
		Note: For performance reasons, the order of node groups is not guaranteed. The order of node groups should not be relied upon as it can vary across project runs.
	**/
	@:native("AddToGroup")
	public function addToGroup(group:std.String, ?persistent:Bool):Void;
	#else
	/**		
		Adds the node to a group. Groups are helpers to name and organize a subset of nodes, for example "enemies" or "collectables". A node can be in any number of groups. Nodes can be assigned a group at any time, but will not be added until they are inside the scene tree (see `godot.Node.isInsideTree`). See notes in the description, and the group methods in `godot.SceneTree`.
		
		The `persistent` option is used when packing node to `godot.PackedScene` and saving to file. Non-persistent groups aren't stored.
		
		Note: For performance reasons, the order of node groups is not guaranteed. The order of node groups should not be relied upon as it can vary across project runs.
	**/
	@:native("AddToGroup")
	public overload function addToGroup(group:std.String):Void;

	/**		
		Adds the node to a group. Groups are helpers to name and organize a subset of nodes, for example "enemies" or "collectables". A node can be in any number of groups. Nodes can be assigned a group at any time, but will not be added until they are inside the scene tree (see `godot.Node.isInsideTree`). See notes in the description, and the group methods in `godot.SceneTree`.
		
		The `persistent` option is used when packing node to `godot.PackedScene` and saving to file. Non-persistent groups aren't stored.
		
		Note: For performance reasons, the order of node groups is not guaranteed. The order of node groups should not be relied upon as it can vary across project runs.
	**/
	@:native("AddToGroup")
	public overload function addToGroup(group:std.String, persistent:Bool):Void;
	#end

	/**		
		Removes a node from a group. See notes in the description, and the group methods in `godot.SceneTree`.
	**/
	@:native("RemoveFromGroup")
	public function removeFromGroup(group:std.String):Void;

	/**		
		Returns `true` if this node is in the specified group. See notes in the description, and the group methods in `godot.SceneTree`.
	**/
	@:native("IsInGroup")
	public function isInGroup(group:std.String):Bool;

	/**		
		Moves a child node to a different position (order) among the other children. Since calls, signals, etc are performed by tree order, changing the order of children nodes may be useful.
	**/
	@:native("MoveChild")
	public function moveChild(childNode:godot.Node, toPosition:Int):Void;

	/**		
		Returns an array listing the groups that the node is a member of.
		
		Note: For performance reasons, the order of node groups is not guaranteed. The order of node groups should not be relied upon as it can vary across project runs.
		
		Note: The engine uses some group names internally (all starting with an underscore). To avoid conflicts with internal groups, do not add custom groups whose name starts with an underscore. To exclude internal groups while looping over `godot.Node.getGroups`, use the following snippet:
		
		```
		
		# Stores the node's non-internal groups only (as an array of Strings).
		var non_internal_groups = []
		for group in get_groups():
		if not group.begins_with("_"):
		non_internal_groups.push_back(group)
		
		```
	**/
	@:native("GetGroups")
	public function getGroups():godot.collections.Array;

	/**		
		Moves this node to the bottom of parent node's children hierarchy. This is often useful in GUIs (`godot.Control` nodes), because their order of drawing depends on their order in the tree. The top Node is drawn first, then any siblings below the top Node in the hierarchy are successively drawn on top of it. After using `raise`, a Control will be drawn on top of its siblings.
	**/
	@:native("Raise")
	public function raise():Void;

	@:native("SetOwner")
	public function setOwner(owner:godot.Node):Void;

	@:native("GetOwner")
	public function getOwner():godot.Node;

	/**		
		Removes a node and sets all its children as children of the parent node (if it exists). All event subscriptions that pass by the removed node will be unsubscribed.
	**/
	@:native("RemoveAndSkip")
	public function removeAndSkip():Void;

	/**		
		Returns the node's index, i.e. its position among the siblings of its parent.
	**/
	@:native("GetIndex")
	public function getIndex():Int;

	/**		
		Prints the tree to stdout. Used mainly for debugging purposes. This version displays the path relative to the current node, and is good for copy/pasting into the `godot.Node.getNode` function.
		
		Example output:
		
		```
		
		TheGame
		TheGame/Menu
		TheGame/Menu/Label
		TheGame/Menu/Camera2D
		TheGame/SplashScreen
		TheGame/SplashScreen/Camera2D
		
		```
	**/
	@:native("PrintTree")
	public function printTree():Void;

	/**		
		Similar to `godot.Node.printTree`, this prints the tree to stdout. This version displays a more graphical representation similar to what is displayed in the scene inspector. It is useful for inspecting larger trees.
		
		Example output:
		
		```
		
		┖╴TheGame
		┠╴Menu
		┃  ┠╴Label
		┃  ┖╴Camera2D
		┖╴SplashScreen
		┖╴Camera2D
		
		```
	**/
	@:native("PrintTreePretty")
	public function printTreePretty():Void;

	@:native("SetFilename")
	public function setFilename(filename:std.String):Void;

	@:native("GetFilename")
	public function getFilename():std.String;

	/**		
		Notifies the current node and all its children recursively by calling `godot.Object.notification` on all of them.
	**/
	@:native("PropagateNotification")
	public function propagateNotification(what:Int):Void;

	#if doc_gen
	/**		
		Calls the given method (if present) with the arguments given in `args` on this node and recursively on all its children. If the `parent_first` argument is `true`, the method will be called on the current node first, then on all its children. If `parent_first` is `false`, the children will be called first.
		
		@param args If the parameter is null, then the default value is new Godot.Collections.Array { }
	**/
	@:native("PropagateCall")
	public function propagateCall(method:std.String, ?args:godot.collections.Array, ?parentFirst:Bool):Void;
	#else
	/**		
		Calls the given method (if present) with the arguments given in `args` on this node and recursively on all its children. If the `parent_first` argument is `true`, the method will be called on the current node first, then on all its children. If `parent_first` is `false`, the children will be called first.
		
		@param args If the parameter is null, then the default value is new Godot.Collections.Array { }
	**/
	@:native("PropagateCall")
	public overload function propagateCall(method:std.String):Void;

	/**		
		Calls the given method (if present) with the arguments given in `args` on this node and recursively on all its children. If the `parent_first` argument is `true`, the method will be called on the current node first, then on all its children. If `parent_first` is `false`, the children will be called first.
		
		@param args If the parameter is null, then the default value is new Godot.Collections.Array { }
	**/
	@:native("PropagateCall")
	public overload function propagateCall(method:std.String, args:godot.collections.Array):Void;

	/**		
		Calls the given method (if present) with the arguments given in `args` on this node and recursively on all its children. If the `parent_first` argument is `true`, the method will be called on the current node first, then on all its children. If `parent_first` is `false`, the children will be called first.
		
		@param args If the parameter is null, then the default value is new Godot.Collections.Array { }
	**/
	@:native("PropagateCall")
	public overload function propagateCall(method:std.String, args:godot.collections.Array, parentFirst:Bool):Void;
	#end

	/**		
		Enables or disables physics (i.e. fixed framerate) processing. When a node is being processed, it will receive a `godot.Node.notificationPhysicsProcess` at a fixed (usually 60 FPS, see `godot.Engine.iterationsPerSecond` to change) interval (and the `godot.Node._PhysicsProcess` callback will be called if exists). Enabled automatically if `godot.Node._PhysicsProcess` is overridden. Any calls to this before `godot.Node._Ready` will be ignored.
	**/
	@:native("SetPhysicsProcess")
	public function setPhysicsProcess(enable:Bool):Void;

	/**		
		Returns the time elapsed (in seconds) since the last physics-bound frame (see `godot.Node._PhysicsProcess`). This is always a constant value in physics processing unless the frames per second is changed via `godot.Engine.iterationsPerSecond`.
	**/
	@:native("GetPhysicsProcessDeltaTime")
	public function getPhysicsProcessDeltaTime():Single;

	/**		
		Returns `true` if physics processing is enabled (see `godot.Node.setPhysicsProcess`).
	**/
	@:native("IsPhysicsProcessing")
	public function isPhysicsProcessing():Bool;

	/**		
		Returns the time elapsed (in seconds) since the last process callback. This value may vary from frame to frame.
	**/
	@:native("GetProcessDeltaTime")
	public function getProcessDeltaTime():Single;

	/**		
		Enables or disables processing. When a node is being processed, it will receive a `godot.Node.notificationProcess` on every drawn frame (and the `godot.Node._Process` callback will be called if exists). Enabled automatically if `godot.Node._Process` is overridden. Any calls to this before `godot.Node._Ready` will be ignored.
	**/
	@:native("SetProcess")
	public function setProcess(enable:Bool):Void;

	@:native("SetProcessPriority")
	public function setProcessPriority(priority:Int):Void;

	@:native("GetProcessPriority")
	public function getProcessPriority():Int;

	/**		
		Returns `true` if processing is enabled (see `godot.Node.setProcess`).
	**/
	@:native("IsProcessing")
	public function isProcessing():Bool;

	/**		
		Enables or disables input processing. This is not required for GUI controls! Enabled automatically if `godot.Node._Input` is overridden. Any calls to this before `godot.Node._Ready` will be ignored.
	**/
	@:native("SetProcessInput")
	public function setProcessInput(enable:Bool):Void;

	/**		
		Returns `true` if the node is processing input (see `godot.Node.setProcessInput`).
	**/
	@:native("IsProcessingInput")
	public function isProcessingInput():Bool;

	/**		
		Enables unhandled input processing. This is not required for GUI controls! It enables the node to receive all input that was not previously handled (usually by a `godot.Control`). Enabled automatically if `godot.Node._UnhandledInput` is overridden. Any calls to this before `godot.Node._Ready` will be ignored.
	**/
	@:native("SetProcessUnhandledInput")
	public function setProcessUnhandledInput(enable:Bool):Void;

	/**		
		Returns `true` if the node is processing unhandled input (see `godot.Node.setProcessUnhandledInput`).
	**/
	@:native("IsProcessingUnhandledInput")
	public function isProcessingUnhandledInput():Bool;

	/**		
		Enables unhandled key input processing. Enabled automatically if `godot.Node._UnhandledKeyInput` is overridden. Any calls to this before `godot.Node._Ready` will be ignored.
	**/
	@:native("SetProcessUnhandledKeyInput")
	public function setProcessUnhandledKeyInput(enable:Bool):Void;

	/**		
		Returns `true` if the node is processing unhandled key input (see `godot.Node.setProcessUnhandledKeyInput`).
	**/
	@:native("IsProcessingUnhandledKeyInput")
	public function isProcessingUnhandledKeyInput():Bool;

	@:native("SetPauseMode")
	public function setPauseMode(mode:godot.Node_PauseModeEnum):Void;

	@:native("GetPauseMode")
	public function getPauseMode():godot.Node_PauseModeEnum;

	/**		
		Returns `true` if the node can process while the scene tree is paused (see `godot.Node.pauseMode`). Always returns `true` if the scene tree is not paused, and `false` if the node is not in the tree.
	**/
	@:native("CanProcess")
	public function canProcess():Bool;

	/**		
		Prints all stray nodes (nodes outside the `godot.SceneTree`). Used for debugging. Works only in debug builds.
	**/
	@:native("PrintStrayNodes")
	public function printStrayNodes():Void;

	/**		
		Returns the node's order in the scene tree branch. For example, if called on the first child node the position is `0`.
	**/
	@:native("GetPositionInParent")
	public function getPositionInParent():Int;

	/**		
		Sets the folded state of the node in the Scene dock.
	**/
	@:native("SetDisplayFolded")
	public function setDisplayFolded(fold:Bool):Void;

	/**		
		Returns `true` if the node is folded (collapsed) in the Scene dock.
	**/
	@:native("IsDisplayedFolded")
	public function isDisplayedFolded():Bool;

	/**		
		Enables or disabled internal processing for this node. Internal processing happens in isolation from the normal `godot.Node._Process` calls and is used by some nodes internally to guarantee proper functioning even if the node is paused or processing is disabled for scripting (`godot.Node.setProcess`). Only useful for advanced uses to manipulate built-in nodes' behavior.
		
		Warning: Built-in Nodes rely on the internal processing for their own logic, so changing this value from your code may lead to unexpected behavior. Script access to this internal logic is provided for specific advanced uses, but is unsafe and not supported.
	**/
	@:native("SetProcessInternal")
	public function setProcessInternal(enable:Bool):Void;

	/**		
		Returns `true` if internal processing is enabled (see `godot.Node.setProcessInternal`).
	**/
	@:native("IsProcessingInternal")
	public function isProcessingInternal():Bool;

	/**		
		Enables or disables internal physics for this node. Internal physics processing happens in isolation from the normal `godot.Node._PhysicsProcess` calls and is used by some nodes internally to guarantee proper functioning even if the node is paused or physics processing is disabled for scripting (`godot.Node.setPhysicsProcess`). Only useful for advanced uses to manipulate built-in nodes' behavior.
		
		Warning: Built-in Nodes rely on the internal processing for their own logic, so changing this value from your code may lead to unexpected behavior. Script access to this internal logic is provided for specific advanced uses, but is unsafe and not supported.
	**/
	@:native("SetPhysicsProcessInternal")
	public function setPhysicsProcessInternal(enable:Bool):Void;

	/**		
		Returns `true` if internal physics processing is enabled (see `godot.Node.setPhysicsProcessInternal`).
	**/
	@:native("IsPhysicsProcessingInternal")
	public function isPhysicsProcessingInternal():Bool;

	/**		
		Returns the `godot.SceneTree` that contains this node.
	**/
	@:native("GetTree")
	public function getTree():godot.SceneTree;

	#if doc_gen
	/**		
		Duplicates the node, returning a new node.
		
		You can fine-tune the behavior using the `flags` (see `godot.Node_DuplicateFlags`).
		
		Note: It will not work properly if the node contains a script with constructor arguments (i.e. needs to supply arguments to  method). In that case, the node will be duplicated without a script.
	**/
	@:native("Duplicate")
	public function duplicate(?flags:Int):godot.Node;
	#else
	/**		
		Duplicates the node, returning a new node.
		
		You can fine-tune the behavior using the `flags` (see `godot.Node_DuplicateFlags`).
		
		Note: It will not work properly if the node contains a script with constructor arguments (i.e. needs to supply arguments to  method). In that case, the node will be duplicated without a script.
	**/
	@:native("Duplicate")
	public overload function duplicate():godot.Node;

	/**		
		Duplicates the node, returning a new node.
		
		You can fine-tune the behavior using the `flags` (see `godot.Node_DuplicateFlags`).
		
		Note: It will not work properly if the node contains a script with constructor arguments (i.e. needs to supply arguments to  method). In that case, the node will be duplicated without a script.
	**/
	@:native("Duplicate")
	public overload function duplicate(flags:Int):godot.Node;
	#end

	#if doc_gen
	/**		
		Replaces a node in a scene by the given one. Subscriptions that pass through this node will be lost.
		
		Note that the replaced node is not automatically freed, so you either need to keep it in a variable for later use or free it using `godot.Object.free`.
	**/
	@:native("ReplaceBy")
	public function replaceBy(node:godot.Node, ?keepData:Bool):Void;
	#else
	/**		
		Replaces a node in a scene by the given one. Subscriptions that pass through this node will be lost.
		
		Note that the replaced node is not automatically freed, so you either need to keep it in a variable for later use or free it using `godot.Object.free`.
	**/
	@:native("ReplaceBy")
	public overload function replaceBy(node:godot.Node):Void;

	/**		
		Replaces a node in a scene by the given one. Subscriptions that pass through this node will be lost.
		
		Note that the replaced node is not automatically freed, so you either need to keep it in a variable for later use or free it using `godot.Object.free`.
	**/
	@:native("ReplaceBy")
	public overload function replaceBy(node:godot.Node, keepData:Bool):Void;
	#end

	/**		
		Sets whether this is an instance load placeholder. See `godot.InstancePlaceholder`.
	**/
	@:native("SetSceneInstanceLoadPlaceholder")
	public function setSceneInstanceLoadPlaceholder(loadPlaceholder:Bool):Void;

	/**		
		Returns `true` if this is an instance load placeholder. See `godot.InstancePlaceholder`.
	**/
	@:native("GetSceneInstanceLoadPlaceholder")
	public function getSceneInstanceLoadPlaceholder():Bool;

	/**		
		Returns the node's `godot.Viewport`.
	**/
	@:native("GetViewport")
	public function getViewport():godot.Viewport;

	/**		
		Queues a node for deletion at the end of the current frame. When deleted, all of its child nodes will be deleted as well. This method ensures it's safe to delete the node, contrary to `godot.Object.free`. Use `godot.Object.isQueuedForDeletion` to check whether a node will be deleted at the end of the frame.
		
		Important: If you have a variable pointing to a node, it will not be assigned to `null` once the node is freed. Instead, it will point to a previously freed instance and you should validate it with `@GDScript.is_instance_valid` before attempting to call its methods or access its properties.
	**/
	@:native("QueueFree")
	public function queueFree():Void;

	/**		
		Requests that `_ready` be called again. Note that the method won't be called immediately, but is scheduled for when the node is added to the scene tree again (see `godot.Node._Ready`). `_ready` is called only for the node which requested it, which means that you need to request ready for each child if you want them to call `_ready` too (in which case, `_ready` will be called in the same order as it would normally).
	**/
	@:native("RequestReady")
	public function requestReady():Void;

	#if doc_gen
	/**		
		Sets the node's network master to the peer with the given peer ID. The network master is the peer that has authority over the node on the network. Useful in conjunction with the `master` and `puppet` keywords. Inherited from the parent node by default, which ultimately defaults to peer ID 1 (the server). If `recursive`, the given peer is recursively set as the master for all children of this node.
	**/
	@:native("SetNetworkMaster")
	public function setNetworkMaster(id:Int, ?recursive:Bool):Void;
	#else
	/**		
		Sets the node's network master to the peer with the given peer ID. The network master is the peer that has authority over the node on the network. Useful in conjunction with the `master` and `puppet` keywords. Inherited from the parent node by default, which ultimately defaults to peer ID 1 (the server). If `recursive`, the given peer is recursively set as the master for all children of this node.
	**/
	@:native("SetNetworkMaster")
	public overload function setNetworkMaster(id:Int):Void;

	/**		
		Sets the node's network master to the peer with the given peer ID. The network master is the peer that has authority over the node on the network. Useful in conjunction with the `master` and `puppet` keywords. Inherited from the parent node by default, which ultimately defaults to peer ID 1 (the server). If `recursive`, the given peer is recursively set as the master for all children of this node.
	**/
	@:native("SetNetworkMaster")
	public overload function setNetworkMaster(id:Int, recursive:Bool):Void;
	#end

	/**		
		Returns the peer ID of the network master for this node. See `godot.Node.setNetworkMaster`.
	**/
	@:native("GetNetworkMaster")
	public function getNetworkMaster():Int;

	/**		
		Returns `true` if the local system is the master of this node.
	**/
	@:native("IsNetworkMaster")
	public function isNetworkMaster():Bool;

	@:native("GetMultiplayer")
	public function getMultiplayer():godot.MultiplayerAPI;

	@:native("GetCustomMultiplayer")
	public function getCustomMultiplayer():godot.MultiplayerAPI;

	@:native("SetCustomMultiplayer")
	public function setCustomMultiplayer(api:godot.MultiplayerAPI):Void;

	/**		
		Changes the RPC mode for the given `method` to the given `mode`. See `godot.MultiplayerAPI_RPCMode`. An alternative is annotating methods and properties with the corresponding keywords (`remote`, `master`, `puppet`, `remotesync`, `mastersync`, `puppetsync`). By default, methods are not exposed to networking (and RPCs). See also `godot.Node.rset` and `godot.Node.rsetConfig` for properties.
	**/
	@:native("RpcConfig")
	public function rpcConfig(method:std.String, mode:godot.MultiplayerAPI_RPCMode):Void;

	/**		
		Changes the RPC mode for the given `property` to the given `mode`. See `godot.MultiplayerAPI_RPCMode`. An alternative is annotating methods and properties with the corresponding keywords (`remote`, `master`, `puppet`, `remotesync`, `mastersync`, `puppetsync`). By default, properties are not exposed to networking (and RPCs). See also `godot.Node.rpc` and `godot.Node.rpcConfig` for methods.
	**/
	@:native("RsetConfig")
	public function rsetConfig(property:std.String, mode:godot.MultiplayerAPI_RPCMode):Void;

	/**		
		Sends a remote procedure call request for the given `method` to peers on the network (and locally), optionally sending all additional arguments as arguments to the method called by the RPC. The call request will only be received by nodes with the same `godot.NodePath`, including the exact same node name. Behaviour depends on the RPC configuration for the given method, see `godot.Node.rpcConfig`. Methods are not exposed to RPCs by default. See also `godot.Node.rset` and `godot.Node.rsetConfig` for properties. Returns `null`.
		
		Note: You can only safely use RPCs on clients after you received the `connected_to_server` signal from the `godot.SceneTree`. You also need to keep track of the connection state, either by the `godot.SceneTree` signals like `server_disconnected` or by checking `SceneTree.network_peer.get_connection_status() == CONNECTION_CONNECTED`.
	**/
	@:native("Rpc")
	public function rpc(method:std.String, args:HaxeArray<Dynamic>):Dynamic;

	/**		
		Sends a `godot.Node.rpc` using an unreliable protocol. Returns `null`.
	**/
	@:native("RpcUnreliable")
	public function rpcUnreliable(method:std.String, args:HaxeArray<Dynamic>):Dynamic;

	/**		
		Sends a `godot.Node.rpc` to a specific peer identified by `peer_id` (see `godot.NetworkedMultiplayerPeer.setTargetPeer`). Returns `null`.
	**/
	@:native("RpcId")
	public function rpcId(peerId:Int, method:std.String, args:HaxeArray<Dynamic>):Dynamic;

	/**		
		Sends a `godot.Node.rpc` to a specific peer identified by `peer_id` using an unreliable protocol (see `godot.NetworkedMultiplayerPeer.setTargetPeer`). Returns `null`.
	**/
	@:native("RpcUnreliableId")
	public function rpcUnreliableId(peerId:Int, method:std.String, args:HaxeArray<Dynamic>):Dynamic;

	/**		
		Remotely changes a property's value on other peers (and locally). Behaviour depends on the RPC configuration for the given property, see `godot.Node.rsetConfig`. See also `godot.Node.rpc` for RPCs for methods, most information applies to this method as well.
	**/
	@:native("Rset")
	public function rset(property:std.String, value:Dynamic):Void;

	/**		
		Remotely changes the property's value on a specific peer identified by `peer_id` (see `godot.NetworkedMultiplayerPeer.setTargetPeer`).
	**/
	@:native("RsetId")
	public function rsetId(peerId:Int, property:std.String, value:Dynamic):Void;

	/**		
		Remotely changes the property's value on other peers (and locally) using an unreliable protocol.
	**/
	@:native("RsetUnreliable")
	public function rsetUnreliable(property:std.String, value:Dynamic):Void;

	/**		
		Remotely changes property's value on a specific peer identified by `peer_id` using an unreliable protocol (see `godot.NetworkedMultiplayerPeer.setTargetPeer`).
	**/
	@:native("RsetUnreliableId")
	public function rsetUnreliableId(peerId:Int, property:std.String, value:Dynamic):Void;

	/**		
		Updates the warning displayed for this node in the Scene Dock.
		
		Use `godot.Node._GetConfigurationWarning` to setup the warning message to display.
	**/
	@:native("UpdateConfigurationWarning")
	public function updateConfigurationWarning():Void;
}
