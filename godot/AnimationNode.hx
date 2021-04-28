// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Base resource for `godot.AnimationTree` nodes. In general, it's not used directly, but you can create custom ones with custom blending formulas.

Inherit this when creating nodes mainly for use in `godot.AnimationNodeBlendTree`, otherwise `godot.AnimationRootNode` should be used instead.
**/
@:libType
@:csNative
@:native("Godot.AnimationNode")
@:autoBuild(godot.Godot.buildUserClass())
extern class AnimationNode extends godot.Resource {
	/**
		`removed_from_graph` signal.
		
		Called when the node was removed from the graph.
	**/
	public var onRemovedFromGraph(get, never):Signal<Void->Void>;
	@:dox(hide) @:noCompletion inline function get_onRemovedFromGraph():Signal<Void->Void> {
		return new Signal(this, "removed_from_graph", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	/**
		`tree_changed` signal.
		
		Emitted by nodes that inherit from this class and that have an internal tree when one of their nodes changes. The nodes that emit this signal are `AnimationNodeBlendSpace1D`, `AnimationNodeBlendSpace2D`, `AnimationNodeStateMachine`, and `AnimationNodeBlendTree`.
	**/
	public var onTreeChanged(get, never):Signal<Void->Void>;
	@:dox(hide) @:noCompletion inline function get_onTreeChanged():Signal<Void->Void> {
		return new Signal(this, "tree_changed", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	@:native("Filters")
	public var filters:godot.collections.Array;

	/**		
		If `true`, filtering is enabled.
	**/
	@:native("FilterEnabled")
	public var filterEnabled:Bool;

	@:native("new")
	public function new():Void;

	/**		
		Gets the text caption for this node (used by some editors).
	**/
	@:native("GetCaption")
	public function getCaption():std.String;

	/**		
		Gets a child node by index (used by editors inheriting from `godot.AnimationRootNode`).
	**/
	@:native("GetChildByName")
	public function getChildByName(name:std.String):godot.Object;

	/**		
		Gets all children nodes in order as a `name: node` dictionary. Only useful when inheriting `godot.AnimationRootNode`.
	**/
	@:native("GetChildNodes")
	public function getChildNodes():godot.collections.Dictionary;

	/**		
		Gets the default value of a parameter. Parameters are custom local memory used for your nodes, given a resource can be reused in multiple trees.
	**/
	@:native("GetParameterDefaultValue")
	public function getParameterDefaultValue(name:std.String):Dynamic;

	/**		
		Gets the property information for parameter. Parameters are custom local memory used for your nodes, given a resource can be reused in multiple trees. Format is similar to `godot.Object.getPropertyList`.
	**/
	@:native("GetParameterList")
	public function getParameterList():godot.collections.Array;

	/**		
		Returns `true` whether you want the blend tree editor to display filter editing on this node.
	**/
	@:native("HasFilter")
	public function hasFilter():std.String;

	/**		
		User-defined callback called when a custom node is processed. The `time` parameter is a relative delta, unless `seek` is `true`, in which case it is absolute.
		
		Here, call the `godot.AnimationNode.blendInput`, `godot.AnimationNode.blendNode` or `godot.AnimationNode.blendAnimation` functions. You can also use `godot.AnimationNode.getParameter` and `godot.AnimationNode.setParameter` to modify local memory.
		
		This function should return the time left for the current animation to finish (if unsure, pass the value from the main blend being called).
	**/
	@:native("Process")
	public function process(time:Single, seek:Bool):Void;

	/**		
		Amount of inputs in this node, only useful for nodes that go into `godot.AnimationNodeBlendTree`.
	**/
	@:native("GetInputCount")
	public function getInputCount():Int;

	/**		
		Gets the name of an input by index.
	**/
	@:native("GetInputName")
	public function getInputName(input:Int):std.String;

	/**		
		Adds an input to the node. This is only useful for nodes created for use in an `godot.AnimationNodeBlendTree`.
	**/
	@:native("AddInput")
	public function addInput(name:std.String):Void;

	/**		
		Removes an input, call this only when inactive.
	**/
	@:native("RemoveInput")
	public function removeInput(index:Int):Void;

	/**		
		Adds or removes a path for the filter.
	**/
	@:native("SetFilterPath")
	public function setFilterPath(path:godot.NodePath, enable:Bool):Void;

	/**		
		Returns `true` whether a given path is filtered.
	**/
	@:native("IsPathFiltered")
	public function isPathFiltered(path:godot.NodePath):Bool;

	@:native("SetFilterEnabled")
	public function setFilterEnabled(enable:Bool):Void;

	@:native("IsFilterEnabled")
	public function isFilterEnabled():Bool;

	/**		
		Blend an animation by `blend` amount (name must be valid in the linked `godot.AnimationPlayer`). A `time` and `delta` may be passed, as well as whether `seek` happened.
	**/
	@:native("BlendAnimation")
	public function blendAnimation(animation:std.String, time:Single, delta:Single, seeked:Bool, blend:Single):Void;

	#if doc_gen
	/**		
		Blend another animation node (in case this node contains children animation nodes). This function is only useful if you inherit from `godot.AnimationRootNode` instead, else editors will not display your node for addition.
	**/
	@:native("BlendNode")
	public function blendNode(name:std.String, node:godot.AnimationNode, time:Single, seek:Bool, blend:Single, ?filter:godot.AnimationNode_FilterAction, ?optimize:Bool):Single;
	#else
	/**		
		Blend another animation node (in case this node contains children animation nodes). This function is only useful if you inherit from `godot.AnimationRootNode` instead, else editors will not display your node for addition.
	**/
	@:native("BlendNode")
	public overload function blendNode(name:std.String, node:godot.AnimationNode, time:Single, seek:Bool, blend:Single):Single;

	/**		
		Blend another animation node (in case this node contains children animation nodes). This function is only useful if you inherit from `godot.AnimationRootNode` instead, else editors will not display your node for addition.
	**/
	@:native("BlendNode")
	public overload function blendNode(name:std.String, node:godot.AnimationNode, time:Single, seek:Bool, blend:Single, filter:godot.AnimationNode_FilterAction):Single;

	/**		
		Blend another animation node (in case this node contains children animation nodes). This function is only useful if you inherit from `godot.AnimationRootNode` instead, else editors will not display your node for addition.
	**/
	@:native("BlendNode")
	public overload function blendNode(name:std.String, node:godot.AnimationNode, time:Single, seek:Bool, blend:Single, filter:godot.AnimationNode_FilterAction, optimize:Bool):Single;
	#end

	#if doc_gen
	/**		
		Blend an input. This is only useful for nodes created for an `godot.AnimationNodeBlendTree`. The `time` parameter is a relative delta, unless `seek` is `true`, in which case it is absolute. A filter mode may be optionally passed (see `godot.AnimationNode_FilterAction` for options).
	**/
	@:native("BlendInput")
	public function blendInput(inputIndex:Int, time:Single, seek:Bool, blend:Single, ?filter:godot.AnimationNode_FilterAction, ?optimize:Bool):Single;
	#else
	/**		
		Blend an input. This is only useful for nodes created for an `godot.AnimationNodeBlendTree`. The `time` parameter is a relative delta, unless `seek` is `true`, in which case it is absolute. A filter mode may be optionally passed (see `godot.AnimationNode_FilterAction` for options).
	**/
	@:native("BlendInput")
	public overload function blendInput(inputIndex:Int, time:Single, seek:Bool, blend:Single):Single;

	/**		
		Blend an input. This is only useful for nodes created for an `godot.AnimationNodeBlendTree`. The `time` parameter is a relative delta, unless `seek` is `true`, in which case it is absolute. A filter mode may be optionally passed (see `godot.AnimationNode_FilterAction` for options).
	**/
	@:native("BlendInput")
	public overload function blendInput(inputIndex:Int, time:Single, seek:Bool, blend:Single, filter:godot.AnimationNode_FilterAction):Single;

	/**		
		Blend an input. This is only useful for nodes created for an `godot.AnimationNodeBlendTree`. The `time` parameter is a relative delta, unless `seek` is `true`, in which case it is absolute. A filter mode may be optionally passed (see `godot.AnimationNode_FilterAction` for options).
	**/
	@:native("BlendInput")
	public overload function blendInput(inputIndex:Int, time:Single, seek:Bool, blend:Single, filter:godot.AnimationNode_FilterAction, optimize:Bool):Single;
	#end

	/**		
		Sets a custom parameter. These are used as local storage, because resources can be reused across the tree or scenes.
	**/
	@:native("SetParameter")
	public function setParameter(name:std.String, value:Dynamic):Void;

	/**		
		Gets the value of a parameter. Parameters are custom local memory used for your nodes, given a resource can be reused in multiple trees.
	**/
	@:native("GetParameter")
	public function getParameter(name:std.String):Dynamic;
}
