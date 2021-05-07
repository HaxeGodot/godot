// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
This object manages the SceneTree selection in the editor.

Note: This class shouldn't be instantiated directly. Instead, access the singleton using `godot.EditorInterface.getSelection`.
**/
@:libType
@:csNative
@:native("Godot.EditorSelection")
@:autoBuild(godot.Godot.buildUserClass())
extern class EditorSelection extends godot.Object {
	/**
		`selection_changed` signal.
		
		Emitted when the selection changes.
	**/
	public var onSelectionChanged(get, never):Signal<Void->Void>;
	@:dox(hide) @:noCompletion inline function get_onSelectionChanged():Signal<Void->Void> {
		return new Signal(this, "selection_changed", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	@:native("new")
	public function new():Void;

	/**		
		Clear the selection.
	**/
	@:native("Clear")
	public function clear():Void;

	/**		
		Adds a node to the selection.
		
		Note: The newly selected node will not be automatically edited in the inspector. If you want to edit a node, use `godot.EditorInterface.editNode`.
	**/
	@:native("AddNode")
	public function addNode(node:godot.Node):Void;

	/**		
		Removes a node from the selection.
	**/
	@:native("RemoveNode")
	public function removeNode(node:godot.Node):Void;

	/**		
		Gets the list of selected nodes.
	**/
	@:native("GetSelectedNodes")
	public function getSelectedNodes():godot.collections.Array;

	/**		
		Gets the list of selected nodes, optimized for transform operations (i.e. moving them, rotating, etc). This list avoids situations where a node is selected and also child/grandchild.
	**/
	@:native("GetTransformableSelectedNodes")
	public function getTransformableSelectedNodes():godot.collections.Array;
}
