// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Deprecated. A node graph tool for blending multiple animations bound to an `godot.AnimationPlayer`. Especially useful for animating characters or other skeleton-based rigs. It can combine several animations to form a desired pose.

It takes `godot.Animation`s from an `godot.AnimationPlayer` node and mixes them depending on the graph.

See `godot.AnimationTree` for a more full-featured replacement of this node.
**/
@:libType
@:csNative
@:native("Godot.AnimationTreePlayer")
@:autoBuild(godot.Godot.buildUserClass())
extern class AnimationTreePlayer extends godot.Node {
	/**		
		If `true`, the `godot.AnimationTreePlayer` is able to play animations.
	**/
	@:native("Active")
	public var active:Bool;

	/**		
		The node from which to relatively access other nodes.
		
		It accesses the bones, so it should point to the same node the `godot.AnimationPlayer` would point its Root Node at.
	**/
	@:native("BasePath")
	public var basePath:godot.NodePath;

	/**		
		The path to the `godot.AnimationPlayer` from which this `godot.AnimationTreePlayer` binds animations to animation nodes.
		
		Once set, `godot.Animation` nodes can be added to the `godot.AnimationTreePlayer`.
	**/
	@:native("MasterPlayer")
	public var masterPlayer:godot.NodePath;

	/**		
		The thread in which to update animations.
	**/
	@:native("PlaybackProcessMode")
	public var playbackProcessMode:godot.AnimationTreePlayer_AnimationProcessMode;

	@:native("new")
	public function new():Void;

	/**		
		Adds a `type` node to the graph with name `id`.
	**/
	@:native("AddNode")
	public function addNode(type:godot.AnimationTreePlayer_NodeType, id:std.String):Void;

	/**		
		Check if a node exists (by name).
	**/
	@:native("NodeExists")
	public function nodeExists(node:std.String):Bool;

	/**		
		Renames a node in the graph.
	**/
	@:native("NodeRename")
	public function nodeRename(node:std.String, newName:std.String):godot.Error;

	/**		
		Gets the node type, will return from `godot.AnimationTreePlayer_NodeType` enum.
	**/
	@:native("NodeGetType")
	public function nodeGetType(id:std.String):godot.AnimationTreePlayer_NodeType;

	/**		
		Returns the input count for a given node. Different types of nodes have different amount of inputs.
	**/
	@:native("NodeGetInputCount")
	public function nodeGetInputCount(id:std.String):Int;

	/**		
		Returns the input source for a given node input.
	**/
	@:native("NodeGetInputSource")
	public function nodeGetInputSource(id:std.String, idx:Int):std.String;

	/**		
		Binds a new `godot.Animation` from the `godot.AnimationTreePlayer.masterPlayer` to the `godot.AnimationTreePlayer`'s animation node with name `id`.
	**/
	@:native("AnimationNodeSetAnimation")
	public function animationNodeSetAnimation(id:std.String, animation:godot.Animation):Void;

	/**		
		Returns the `godot.AnimationPlayer`'s `godot.Animation` bound to the `godot.AnimationTreePlayer`'s animation node with name `id`.
	**/
	@:native("AnimationNodeGetAnimation")
	public function animationNodeGetAnimation(id:std.String):godot.Animation;

	/**		
		Binds the `godot.Animation` named `source` from `godot.AnimationTreePlayer.masterPlayer` to the animation node `id`. Recalculates caches.
	**/
	@:native("AnimationNodeSetMasterAnimation")
	public function animationNodeSetMasterAnimation(id:std.String, source:std.String):Void;

	/**		
		Returns the name of the `godot.AnimationTreePlayer.masterPlayer`'s `godot.Animation` bound to this animation node.
	**/
	@:native("AnimationNodeGetMasterAnimation")
	public function animationNodeGetMasterAnimation(id:std.String):std.String;

	/**		
		Returns the absolute playback timestamp of the animation node with name `id`.
	**/
	@:native("AnimationNodeGetPosition")
	public function animationNodeGetPosition(id:std.String):Single;

	/**		
		If `enable` is `true`, the animation node with ID `id` turns off the track modifying the property at `path`. The modified node's children continue to animate.
	**/
	@:native("AnimationNodeSetFilterPath")
	public function animationNodeSetFilterPath(id:std.String, path:godot.NodePath, enable:Bool):Void;

	/**		
		Sets the fade in time of a OneShot node given its name and value in seconds.
	**/
	@:native("OneshotNodeSetFadeinTime")
	public function oneshotNodeSetFadeinTime(id:std.String, timeSec:Single):Void;

	/**		
		Returns the fade in time of a OneShot node given its name.
	**/
	@:native("OneshotNodeGetFadeinTime")
	public function oneshotNodeGetFadeinTime(id:std.String):Single;

	/**		
		Sets the fade out time of a OneShot node given its name and value in seconds.
	**/
	@:native("OneshotNodeSetFadeoutTime")
	public function oneshotNodeSetFadeoutTime(id:std.String, timeSec:Single):Void;

	/**		
		Returns the fade out time of a OneShot node given its name.
	**/
	@:native("OneshotNodeGetFadeoutTime")
	public function oneshotNodeGetFadeoutTime(id:std.String):Single;

	/**		
		Sets the autorestart property of a OneShot node given its name and value.
	**/
	@:native("OneshotNodeSetAutorestart")
	public function oneshotNodeSetAutorestart(id:std.String, enable:Bool):Void;

	/**		
		Sets the autorestart delay of a OneShot node given its name and value in seconds.
	**/
	@:native("OneshotNodeSetAutorestartDelay")
	public function oneshotNodeSetAutorestartDelay(id:std.String, delaySec:Single):Void;

	/**		
		Sets the autorestart random delay of a OneShot node given its name and value in seconds.
	**/
	@:native("OneshotNodeSetAutorestartRandomDelay")
	public function oneshotNodeSetAutorestartRandomDelay(id:std.String, randSec:Single):Void;

	/**		
		Returns whether a OneShot node will auto restart given its name.
	**/
	@:native("OneshotNodeHasAutorestart")
	public function oneshotNodeHasAutorestart(id:std.String):Bool;

	/**		
		Returns the autostart delay of a OneShot node given its name.
	**/
	@:native("OneshotNodeGetAutorestartDelay")
	public function oneshotNodeGetAutorestartDelay(id:std.String):Single;

	/**		
		Returns the autostart random delay of a OneShot node given its name.
	**/
	@:native("OneshotNodeGetAutorestartRandomDelay")
	public function oneshotNodeGetAutorestartRandomDelay(id:std.String):Single;

	/**		
		Starts a OneShot node given its name.
	**/
	@:native("OneshotNodeStart")
	public function oneshotNodeStart(id:std.String):Void;

	/**		
		Stops the OneShot node with name `id`.
	**/
	@:native("OneshotNodeStop")
	public function oneshotNodeStop(id:std.String):Void;

	/**		
		Returns whether a OneShot node is active given its name.
	**/
	@:native("OneshotNodeIsActive")
	public function oneshotNodeIsActive(id:std.String):Bool;

	/**		
		If `enable` is `true`, the OneShot node with ID `id` turns off the track modifying the property at `path`. The modified node's children continue to animate.
	**/
	@:native("OneshotNodeSetFilterPath")
	public function oneshotNodeSetFilterPath(id:std.String, path:godot.NodePath, enable:Bool):Void;

	/**		
		Sets the mix amount of a Mix node given its name and value.
		
		A Mix node adds input b to input a by the amount given by ratio.
	**/
	@:native("MixNodeSetAmount")
	public function mixNodeSetAmount(id:std.String, ratio:Single):Void;

	/**		
		Returns the mix amount of a Mix node given its name.
	**/
	@:native("MixNodeGetAmount")
	public function mixNodeGetAmount(id:std.String):Single;

	/**		
		Sets the blend amount of a Blend2 node given its name and value.
		
		A Blend2 node blends two animations (A and B) with the amount between 0 and 1.
		
		At 0, output is input A. Towards 1, the influence of A gets lessened, the influence of B gets raised. At 1, output is input B.
	**/
	@:native("Blend2NodeSetAmount")
	public function blend2NodeSetAmount(id:std.String, blend:Single):Void;

	/**		
		Returns the blend amount of a Blend2 node given its name.
	**/
	@:native("Blend2NodeGetAmount")
	public function blend2NodeGetAmount(id:std.String):Single;

	/**		
		If `enable` is `true`, the Blend2 node with name `id` turns off the track modifying the property at `path`. The modified node's children continue to animate.
	**/
	@:native("Blend2NodeSetFilterPath")
	public function blend2NodeSetFilterPath(id:std.String, path:godot.NodePath, enable:Bool):Void;

	/**		
		Sets the blend amount of a Blend3 node given its name and value.
		
		A Blend3 Node blends three animations (A, B-, B+) with the amount between -1 and 1.
		
		At -1, output is input B-. From -1 to 0, the influence of B- gets lessened, the influence of A gets raised and the influence of B+ is 0. At 0, output is input A. From 0 to 1, the influence of A gets lessened, the influence of B+ gets raised and the influence of B+ is 0. At 1, output is input B+.
	**/
	@:native("Blend3NodeSetAmount")
	public function blend3NodeSetAmount(id:std.String, blend:Single):Void;

	/**		
		Returns the blend amount of a Blend3 node given its name.
	**/
	@:native("Blend3NodeGetAmount")
	public function blend3NodeGetAmount(id:std.String):Single;

	/**		
		Sets the blend amount of a Blend4 node given its name and value.
		
		A Blend4 Node blends two pairs of animations.
		
		The two pairs are blended like Blend2 and then added together.
	**/
	@:native("Blend4NodeSetAmount")
	public function blend4NodeSetAmount(id:std.String, blend:godot.Vector2):Void;

	/**		
		Returns the blend amount of a Blend4 node given its name.
	**/
	@:native("Blend4NodeGetAmount")
	public function blend4NodeGetAmount(id:std.String):godot.Vector2;

	/**		
		Sets the time scale of the TimeScale node with name `id` to `scale`.
		
		The TimeScale node is used to speed `godot.Animation`s up if the scale is above 1 or slow them down if it is below 1.
		
		If applied after a blend or mix, affects all input animations to that blend or mix.
	**/
	@:native("TimescaleNodeSetScale")
	public function timescaleNodeSetScale(id:std.String, scale:Single):Void;

	/**		
		Returns the time scale value of the TimeScale node with name `id`.
	**/
	@:native("TimescaleNodeGetScale")
	public function timescaleNodeGetScale(id:std.String):Single;

	/**		
		Sets the time seek value of the TimeSeek node with name `id` to `seconds`.
		
		This functions as a seek in the `godot.Animation` or the blend or mix of `godot.Animation`s input in it.
	**/
	@:native("TimeseekNodeSeek")
	public function timeseekNodeSeek(id:std.String, seconds:Single):Void;

	/**		
		Resizes the number of inputs available for the transition node with name `id`.
	**/
	@:native("TransitionNodeSetInputCount")
	public function transitionNodeSetInputCount(id:std.String, count:Int):Void;

	/**		
		Returns the number of inputs for the transition node with name `id`. You can add inputs by right-clicking on the transition node.
	**/
	@:native("TransitionNodeGetInputCount")
	public function transitionNodeGetInputCount(id:std.String):Int;

	/**		
		Deletes the input at `input_idx` for the transition node with name `id`.
	**/
	@:native("TransitionNodeDeleteInput")
	public function transitionNodeDeleteInput(id:std.String, inputIdx:Int):Void;

	/**		
		The transition node with name `id` advances to its next input automatically when the input at `input_idx` completes.
	**/
	@:native("TransitionNodeSetInputAutoAdvance")
	public function transitionNodeSetInputAutoAdvance(id:std.String, inputIdx:Int, enable:Bool):Void;

	/**		
		Returns `true` if the input at `input_idx` on the transition node with name `id` is set to automatically advance to the next input upon completion.
	**/
	@:native("TransitionNodeHasInputAutoAdvance")
	public function transitionNodeHasInputAutoAdvance(id:std.String, inputIdx:Int):Bool;

	/**		
		The transition node with name `id` sets its cross fade time to `time_sec`.
	**/
	@:native("TransitionNodeSetXfadeTime")
	public function transitionNodeSetXfadeTime(id:std.String, timeSec:Single):Void;

	/**		
		Returns the cross fade time for the transition node with name `id`.
	**/
	@:native("TransitionNodeGetXfadeTime")
	public function transitionNodeGetXfadeTime(id:std.String):Single;

	/**		
		The transition node with name `id` sets its current input at `input_idx`.
	**/
	@:native("TransitionNodeSetCurrent")
	public function transitionNodeSetCurrent(id:std.String, inputIdx:Int):Void;

	/**		
		Returns the index of the currently evaluated input for the transition node with name `id`.
	**/
	@:native("TransitionNodeGetCurrent")
	public function transitionNodeGetCurrent(id:std.String):Int;

	/**		
		Sets the position of a node in the graph given its name and position.
	**/
	@:native("NodeSetPosition")
	public function nodeSetPosition(id:std.String, screenPosition:godot.Vector2):Void;

	/**		
		Returns position of a node in the graph given its name.
	**/
	@:native("NodeGetPosition")
	public function nodeGetPosition(id:std.String):godot.Vector2;

	/**		
		Removes the animation node with name `id`.
	**/
	@:native("RemoveNode")
	public function removeNode(id:std.String):Void;

	/**		
		Connects node `id` to `dst_id` at the specified input slot.
	**/
	@:native("ConnectNodes")
	public function connectNodes(id:std.String, dstId:std.String, dstInputIdx:Int):godot.Error;

	/**		
		Returns whether node `id` and `dst_id` are connected at the specified slot.
	**/
	@:native("AreNodesConnected")
	public function areNodesConnected(id:std.String, dstId:std.String, dstInputIdx:Int):Bool;

	/**		
		Disconnects nodes connected to `id` at the specified input slot.
	**/
	@:native("DisconnectNodes")
	public function disconnectNodes(id:std.String, dstInputIdx:Int):Void;

	@:native("SetActive")
	public function setActive(enabled:Bool):Void;

	@:native("IsActive")
	public function isActive():Bool;

	@:native("SetBasePath")
	public function setBasePath(path:godot.NodePath):Void;

	@:native("GetBasePath")
	public function getBasePath():godot.NodePath;

	@:native("SetMasterPlayer")
	public function setMasterPlayer(nodepath:godot.NodePath):Void;

	@:native("GetMasterPlayer")
	public function getMasterPlayer():godot.NodePath;

	/**		
		Returns a `String` containing the name of all nodes.
	**/
	@:native("GetNodeList")
	public function getNodeList():cs.NativeArray<std.String>;

	@:native("SetAnimationProcessMode")
	public function setAnimationProcessMode(mode:godot.AnimationTreePlayer_AnimationProcessMode):Void;

	@:native("GetAnimationProcessMode")
	public function getAnimationProcessMode():godot.AnimationTreePlayer_AnimationProcessMode;

	/**		
		Shifts position in the animation timeline. `delta` is the time in seconds to shift. Events between the current frame and `delta` are handled.
	**/
	@:native("Advance")
	public function advance(delta:Single):Void;

	/**		
		Resets this `godot.AnimationTreePlayer`.
	**/
	@:native("Reset")
	public function reset():Void;

	/**		
		Manually recalculates the cache of track information generated from animation nodes. Needed when external sources modify the animation nodes' state.
	**/
	@:native("RecomputeCaches")
	public function recomputeCaches():Void;
}
