// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
An Animation resource contains data used to animate everything in the engine. Animations are divided into tracks, and each track must be linked to a node. The state of that node can be changed through time, by adding timed keys (events) to the track.

```

# This creates an animation that makes the node "Enemy" move to the right by
# 100 pixels in 0.5 seconds.
var animation = Animation.new()
var track_index = animation.add_track(Animation.TYPE_VALUE)
animation.track_set_path(track_index, "Enemy:position:x")
animation.track_insert_key(track_index, 0.0, 0)
animation.track_insert_key(track_index, 0.5, 100)

```

Animations are just data containers, and must be added to nodes such as an `godot.AnimationPlayer` or `godot.AnimationTreePlayer` to be played back. Animation tracks have different types, each with its own set of dedicated methods. Check `godot.Animation_TrackType` to see available types.
**/
@:libType
@:csNative
@:native("Godot.Animation")
@:autoBuild(godot.Godot.buildUserClass())
extern class Animation extends godot.Resource {
	/**
		`tracks_changed` signal.
		
		Emitted when there's a change in the list of tracks, e.g. tracks are added, moved or have changed paths.
	**/
	public var onTracksChanged(get, never):Signal<Void->Void>;
	@:dox(hide) @:noCompletion inline function get_onTracksChanged():Signal<Void->Void> {
		return new Signal(this, "tracks_changed", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	/**		
		The animation step value.
	**/
	@:native("Step")
	public var step:Single;

	/**		
		A flag indicating that the animation must loop. This is used for correct interpolation of animation cycles, and for hinting the player that it must restart the animation.
	**/
	@:native("Loop")
	public var loop:Bool;

	/**		
		The total length of the animation (in seconds).
		
		Note: Length is not delimited by the last key, as this one may be before or after the end to ensure correct interpolation and looping.
	**/
	@:native("Length")
	public var length:Single;

	@:native("new")
	public function new():Void;

	#if doc_gen
	/**		
		Adds a track to the Animation.
	**/
	@:native("AddTrack")
	public function addTrack(type:godot.Animation_TrackType, ?atPosition:Int):Int;
	#else
	/**		
		Adds a track to the Animation.
	**/
	@:native("AddTrack")
	public overload function addTrack(type:godot.Animation_TrackType):Int;

	/**		
		Adds a track to the Animation.
	**/
	@:native("AddTrack")
	public overload function addTrack(type:godot.Animation_TrackType, atPosition:Int):Int;
	#end

	/**		
		Removes a track by specifying the track index.
	**/
	@:native("RemoveTrack")
	public function removeTrack(trackIdx:Int):Void;

	/**		
		Returns the amount of tracks in the animation.
	**/
	@:native("GetTrackCount")
	public function getTrackCount():Int;

	/**		
		Gets the type of a track.
	**/
	@:native("TrackGetType")
	public function trackGetType(trackIdx:Int):godot.Animation_TrackType;

	/**		
		Gets the path of a track. For more information on the path format, see `godot.Animation.trackSetPath`.
	**/
	@:native("TrackGetPath")
	public function trackGetPath(trackIdx:Int):godot.NodePath;

	/**		
		Sets the path of a track. Paths must be valid scene-tree paths to a node, and must be specified starting from the parent node of the node that will reproduce the animation. Tracks that control properties or bones must append their name after the path, separated by `":"`.
		
		For example, `"character/skeleton:ankle"` or `"character/mesh:transform/local"`.
	**/
	@:native("TrackSetPath")
	public function trackSetPath(trackIdx:Int, path:godot.NodePath):Void;

	/**		
		Returns the index of the specified track. If the track is not found, return -1.
	**/
	@:native("FindTrack")
	public function findTrack(path:godot.NodePath):Int;

	/**		
		Moves a track up.
	**/
	@:native("TrackMoveUp")
	public function trackMoveUp(trackIdx:Int):Void;

	/**		
		Moves a track down.
	**/
	@:native("TrackMoveDown")
	public function trackMoveDown(trackIdx:Int):Void;

	/**		
		Changes the index position of track `idx` to the one defined in `to_idx`.
	**/
	@:native("TrackMoveTo")
	public function trackMoveTo(trackIdx:Int, toIdx:Int):Void;

	/**		
		Swaps the track `idx`'s index position with the track `with_idx`.
	**/
	@:native("TrackSwap")
	public function trackSwap(trackIdx:Int, withIdx:Int):Void;

	/**		
		Sets the given track as imported or not.
	**/
	@:native("TrackSetImported")
	public function trackSetImported(trackIdx:Int, imported:Bool):Void;

	/**		
		Returns `true` if the given track is imported. Else, return `false`.
	**/
	@:native("TrackIsImported")
	public function trackIsImported(trackIdx:Int):Bool;

	/**		
		Enables/disables the given track. Tracks are enabled by default.
	**/
	@:native("TrackSetEnabled")
	public function trackSetEnabled(trackIdx:Int, enabled:Bool):Void;

	/**		
		Returns `true` if the track at index `idx` is enabled.
	**/
	@:native("TrackIsEnabled")
	public function trackIsEnabled(trackIdx:Int):Bool;

	/**		
		Insert a transform key for a transform track.
	**/
	@:native("TransformTrackInsertKey")
	public function transformTrackInsertKey(trackIdx:Int, time:Single, location:godot.Vector3, rotation:godot.Quat, scale:godot.Vector3):Int;

	#if doc_gen
	/**		
		Insert a generic key in a given track.
	**/
	@:native("TrackInsertKey")
	public function trackInsertKey(trackIdx:Int, time:Single, key:Dynamic, ?transition:Single):Void;
	#else
	/**		
		Insert a generic key in a given track.
	**/
	@:native("TrackInsertKey")
	public overload function trackInsertKey(trackIdx:Int, time:Single, key:Dynamic):Void;

	/**		
		Insert a generic key in a given track.
	**/
	@:native("TrackInsertKey")
	public overload function trackInsertKey(trackIdx:Int, time:Single, key:Dynamic, transition:Single):Void;
	#end

	/**		
		Removes a key by index in a given track.
	**/
	@:native("TrackRemoveKey")
	public function trackRemoveKey(trackIdx:Int, keyIdx:Int):Void;

	/**		
		Removes a key by position (seconds) in a given track.
	**/
	@:native("TrackRemoveKeyAtPosition")
	public function trackRemoveKeyAtPosition(trackIdx:Int, position:Single):Void;

	/**		
		Sets the value of an existing key.
	**/
	@:native("TrackSetKeyValue")
	public function trackSetKeyValue(trackIdx:Int, key:Int, value:Dynamic):Void;

	/**		
		Sets the transition curve (easing) for a specific key (see the built-in math function `@GDScript.ease`).
	**/
	@:native("TrackSetKeyTransition")
	public function trackSetKeyTransition(trackIdx:Int, keyIdx:Int, transition:Single):Void;

	/**		
		Sets the time of an existing key.
	**/
	@:native("TrackSetKeyTime")
	public function trackSetKeyTime(trackIdx:Int, keyIdx:Int, time:Single):Void;

	/**		
		Returns the transition curve (easing) for a specific key (see the built-in math function `@GDScript.ease`).
	**/
	@:native("TrackGetKeyTransition")
	public function trackGetKeyTransition(trackIdx:Int, keyIdx:Int):Single;

	/**		
		Returns the amount of keys in a given track.
	**/
	@:native("TrackGetKeyCount")
	public function trackGetKeyCount(trackIdx:Int):Int;

	/**		
		Returns the value of a given key in a given track.
	**/
	@:native("TrackGetKeyValue")
	public function trackGetKeyValue(trackIdx:Int, keyIdx:Int):Dynamic;

	/**		
		Returns the time at which the key is located.
	**/
	@:native("TrackGetKeyTime")
	public function trackGetKeyTime(trackIdx:Int, keyIdx:Int):Single;

	#if doc_gen
	/**		
		Finds the key index by time in a given track. Optionally, only find it if the exact time is given.
	**/
	@:native("TrackFindKey")
	public function trackFindKey(trackIdx:Int, time:Single, ?exact:Bool):Int;
	#else
	/**		
		Finds the key index by time in a given track. Optionally, only find it if the exact time is given.
	**/
	@:native("TrackFindKey")
	public overload function trackFindKey(trackIdx:Int, time:Single):Int;

	/**		
		Finds the key index by time in a given track. Optionally, only find it if the exact time is given.
	**/
	@:native("TrackFindKey")
	public overload function trackFindKey(trackIdx:Int, time:Single, exact:Bool):Int;
	#end

	/**		
		Sets the interpolation type of a given track.
	**/
	@:native("TrackSetInterpolationType")
	public function trackSetInterpolationType(trackIdx:Int, interpolation:godot.Animation_InterpolationType):Void;

	/**		
		Returns the interpolation type of a given track.
	**/
	@:native("TrackGetInterpolationType")
	public function trackGetInterpolationType(trackIdx:Int):godot.Animation_InterpolationType;

	/**		
		If `true`, the track at `idx` wraps the interpolation loop.
	**/
	@:native("TrackSetInterpolationLoopWrap")
	public function trackSetInterpolationLoopWrap(trackIdx:Int, interpolation:Bool):Void;

	/**		
		Returns `true` if the track at `idx` wraps the interpolation loop. New tracks wrap the interpolation loop by default.
	**/
	@:native("TrackGetInterpolationLoopWrap")
	public function trackGetInterpolationLoopWrap(trackIdx:Int):Bool;

	/**		
		Returns the interpolated value of a transform track at a given time (in seconds). An array consisting of 3 elements: position (`godot.Vector3`), rotation (`godot.Quat`) and scale (`godot.Vector3`).
	**/
	@:native("TransformTrackInterpolate")
	public function transformTrackInterpolate(trackIdx:Int, timeSec:Single):godot.collections.Array;

	/**		
		Sets the update mode (see `godot.Animation_UpdateMode`) of a value track.
	**/
	@:native("ValueTrackSetUpdateMode")
	public function valueTrackSetUpdateMode(trackIdx:Int, mode:godot.Animation_UpdateMode):Void;

	/**		
		Returns the update mode of a value track.
	**/
	@:native("ValueTrackGetUpdateMode")
	public function valueTrackGetUpdateMode(trackIdx:Int):godot.Animation_UpdateMode;

	/**		
		Returns all the key indices of a value track, given a position and delta time.
	**/
	public extern inline function valueTrackGetKeyIndices(trackIdx:Int, timeSec:Single, delta:Single):std.Array<Int> {
		return cs.Lib.array(cs.Syntax.code("{0}.ValueTrackGetKeyIndices({1}, {2}, {3})", this, trackIdx, timeSec, delta));
	}

	/**		
		Returns the interpolated value at the given time (in seconds). The `track_idx` must be the index of a value track.
	**/
	@:native("ValueTrackInterpolate")
	public function valueTrackInterpolate(trackIdx:Int, timeSec:Single):Dynamic;

	/**		
		Returns all the key indices of a method track, given a position and delta time.
	**/
	public extern inline function methodTrackGetKeyIndices(trackIdx:Int, timeSec:Single, delta:Single):std.Array<Int> {
		return cs.Lib.array(cs.Syntax.code("{0}.MethodTrackGetKeyIndices({1}, {2}, {3})", this, trackIdx, timeSec, delta));
	}

	/**		
		Returns the method name of a method track.
	**/
	@:native("MethodTrackGetName")
	public function methodTrackGetName(trackIdx:Int, keyIdx:Int):std.String;

	/**		
		Returns the arguments values to be called on a method track for a given key in a given track.
	**/
	@:native("MethodTrackGetParams")
	public function methodTrackGetParams(trackIdx:Int, keyIdx:Int):godot.collections.Array;

	#if doc_gen
	/**		
		Inserts a Bezier Track key at the given `time` in seconds. The `track_idx` must be the index of a Bezier Track.
		
		`in_handle` is the left-side weight of the added Bezier curve point, `out_handle` is the right-side one, while `value` is the actual value at this point.
		
		@param inHandle If the parameter is null, then the default value is new Vector2(0, 0)
		@param outHandle If the parameter is null, then the default value is new Vector2(0, 0)
	**/
	@:native("BezierTrackInsertKey")
	public function bezierTrackInsertKey(trackIdx:Int, time:Single, value:Single, ?inHandle:Null<godot.Vector2>, ?outHandle:Null<godot.Vector2>):Int;
	#else
	/**		
		Inserts a Bezier Track key at the given `time` in seconds. The `track_idx` must be the index of a Bezier Track.
		
		`in_handle` is the left-side weight of the added Bezier curve point, `out_handle` is the right-side one, while `value` is the actual value at this point.
		
		@param inHandle If the parameter is null, then the default value is new Vector2(0, 0)
		@param outHandle If the parameter is null, then the default value is new Vector2(0, 0)
	**/
	@:native("BezierTrackInsertKey")
	public overload function bezierTrackInsertKey(trackIdx:Int, time:Single, value:Single):Int;

	/**		
		Inserts a Bezier Track key at the given `time` in seconds. The `track_idx` must be the index of a Bezier Track.
		
		`in_handle` is the left-side weight of the added Bezier curve point, `out_handle` is the right-side one, while `value` is the actual value at this point.
		
		@param inHandle If the parameter is null, then the default value is new Vector2(0, 0)
		@param outHandle If the parameter is null, then the default value is new Vector2(0, 0)
	**/
	@:native("BezierTrackInsertKey")
	public overload function bezierTrackInsertKey(trackIdx:Int, time:Single, value:Single, inHandle:Nullable1<godot.Vector2>):Int;

	/**		
		Inserts a Bezier Track key at the given `time` in seconds. The `track_idx` must be the index of a Bezier Track.
		
		`in_handle` is the left-side weight of the added Bezier curve point, `out_handle` is the right-side one, while `value` is the actual value at this point.
		
		@param inHandle If the parameter is null, then the default value is new Vector2(0, 0)
		@param outHandle If the parameter is null, then the default value is new Vector2(0, 0)
	**/
	@:native("BezierTrackInsertKey")
	public overload function bezierTrackInsertKey(trackIdx:Int, time:Single, value:Single, inHandle:Nullable1<godot.Vector2>, outHandle:Nullable1<godot.Vector2>):Int;
	#end

	/**		
		Sets the value of the key identified by `key_idx` to the given value. The `track_idx` must be the index of a Bezier Track.
	**/
	@:native("BezierTrackSetKeyValue")
	public function bezierTrackSetKeyValue(trackIdx:Int, keyIdx:Int, value:Single):Void;

	/**		
		Sets the in handle of the key identified by `key_idx` to value `in_handle`. The `track_idx` must be the index of a Bezier Track.
	**/
	@:native("BezierTrackSetKeyInHandle")
	public function bezierTrackSetKeyInHandle(trackIdx:Int, keyIdx:Int, inHandle:godot.Vector2):Void;

	/**		
		Sets the out handle of the key identified by `key_idx` to value `out_handle`. The `track_idx` must be the index of a Bezier Track.
	**/
	@:native("BezierTrackSetKeyOutHandle")
	public function bezierTrackSetKeyOutHandle(trackIdx:Int, keyIdx:Int, outHandle:godot.Vector2):Void;

	/**		
		Returns the value of the key identified by `key_idx`. The `track_idx` must be the index of a Bezier Track.
	**/
	@:native("BezierTrackGetKeyValue")
	public function bezierTrackGetKeyValue(trackIdx:Int, keyIdx:Int):Single;

	/**		
		Returns the in handle of the key identified by `key_idx`. The `track_idx` must be the index of a Bezier Track.
	**/
	@:native("BezierTrackGetKeyInHandle")
	public function bezierTrackGetKeyInHandle(trackIdx:Int, keyIdx:Int):godot.Vector2;

	/**		
		Returns the out handle of the key identified by `key_idx`. The `track_idx` must be the index of a Bezier Track.
	**/
	@:native("BezierTrackGetKeyOutHandle")
	public function bezierTrackGetKeyOutHandle(trackIdx:Int, keyIdx:Int):godot.Vector2;

	/**		
		Returns the interpolated value at the given `time` (in seconds). The `track_idx` must be the index of a Bezier Track.
	**/
	@:native("BezierTrackInterpolate")
	public function bezierTrackInterpolate(trackIdx:Int, time:Single):Single;

	#if doc_gen
	/**		
		Inserts an Audio Track key at the given `time` in seconds. The `track_idx` must be the index of an Audio Track.
		
		`stream` is the `godot.AudioStream` resource to play. `start_offset` is the number of seconds cut off at the beginning of the audio stream, while `end_offset` is at the ending.
	**/
	@:native("AudioTrackInsertKey")
	public function audioTrackInsertKey(trackIdx:Int, time:Single, stream:godot.Resource, ?startOffset:Single, ?endOffset:Single):Int;
	#else
	/**		
		Inserts an Audio Track key at the given `time` in seconds. The `track_idx` must be the index of an Audio Track.
		
		`stream` is the `godot.AudioStream` resource to play. `start_offset` is the number of seconds cut off at the beginning of the audio stream, while `end_offset` is at the ending.
	**/
	@:native("AudioTrackInsertKey")
	public overload function audioTrackInsertKey(trackIdx:Int, time:Single, stream:godot.Resource):Int;

	/**		
		Inserts an Audio Track key at the given `time` in seconds. The `track_idx` must be the index of an Audio Track.
		
		`stream` is the `godot.AudioStream` resource to play. `start_offset` is the number of seconds cut off at the beginning of the audio stream, while `end_offset` is at the ending.
	**/
	@:native("AudioTrackInsertKey")
	public overload function audioTrackInsertKey(trackIdx:Int, time:Single, stream:godot.Resource, startOffset:Single):Int;

	/**		
		Inserts an Audio Track key at the given `time` in seconds. The `track_idx` must be the index of an Audio Track.
		
		`stream` is the `godot.AudioStream` resource to play. `start_offset` is the number of seconds cut off at the beginning of the audio stream, while `end_offset` is at the ending.
	**/
	@:native("AudioTrackInsertKey")
	public overload function audioTrackInsertKey(trackIdx:Int, time:Single, stream:godot.Resource, startOffset:Single, endOffset:Single):Int;
	#end

	/**		
		Sets the stream of the key identified by `key_idx` to value `stream`. The `track_idx` must be the index of an Audio Track.
	**/
	@:native("AudioTrackSetKeyStream")
	public function audioTrackSetKeyStream(trackIdx:Int, keyIdx:Int, stream:godot.Resource):Void;

	/**		
		Sets the start offset of the key identified by `key_idx` to value `offset`. The `track_idx` must be the index of an Audio Track.
	**/
	@:native("AudioTrackSetKeyStartOffset")
	public function audioTrackSetKeyStartOffset(trackIdx:Int, keyIdx:Int, offset:Single):Void;

	/**		
		Sets the end offset of the key identified by `key_idx` to value `offset`. The `track_idx` must be the index of an Audio Track.
	**/
	@:native("AudioTrackSetKeyEndOffset")
	public function audioTrackSetKeyEndOffset(trackIdx:Int, keyIdx:Int, offset:Single):Void;

	/**		
		Returns the audio stream of the key identified by `key_idx`. The `track_idx` must be the index of an Audio Track.
	**/
	@:native("AudioTrackGetKeyStream")
	public function audioTrackGetKeyStream(trackIdx:Int, keyIdx:Int):godot.Resource;

	/**		
		Returns the start offset of the key identified by `key_idx`. The `track_idx` must be the index of an Audio Track.
		
		Start offset is the number of seconds cut off at the beginning of the audio stream.
	**/
	@:native("AudioTrackGetKeyStartOffset")
	public function audioTrackGetKeyStartOffset(trackIdx:Int, keyIdx:Int):Single;

	/**		
		Returns the end offset of the key identified by `key_idx`. The `track_idx` must be the index of an Audio Track.
		
		End offset is the number of seconds cut off at the ending of the audio stream.
	**/
	@:native("AudioTrackGetKeyEndOffset")
	public function audioTrackGetKeyEndOffset(trackIdx:Int, keyIdx:Int):Single;

	/**		
		Inserts a key with value `animation` at the given `time` (in seconds). The `track_idx` must be the index of an Animation Track.
	**/
	@:native("AnimationTrackInsertKey")
	public function animationTrackInsertKey(trackIdx:Int, time:Single, animation:std.String):Int;

	/**		
		Sets the key identified by `key_idx` to value `animation`. The `track_idx` must be the index of an Animation Track.
	**/
	@:native("AnimationTrackSetKeyAnimation")
	public function animationTrackSetKeyAnimation(trackIdx:Int, keyIdx:Int, animation:std.String):Void;

	/**		
		Returns the animation name at the key identified by `key_idx`. The `track_idx` must be the index of an Animation Track.
	**/
	@:native("AnimationTrackGetKeyAnimation")
	public function animationTrackGetKeyAnimation(trackIdx:Int, keyIdx:Int):std.String;

	@:native("SetLength")
	public function setLength(timeSec:Single):Void;

	@:native("GetLength")
	public function getLength():Single;

	@:native("SetLoop")
	public function setLoop(enabled:Bool):Void;

	@:native("HasLoop")
	public function hasLoop():Bool;

	@:native("SetStep")
	public function setStep(sizeSec:Single):Void;

	@:native("GetStep")
	public function getStep():Single;

	/**		
		Clear the animation (clear all tracks and reset all).
	**/
	@:native("Clear")
	public function clear():Void;

	/**		
		Adds a new track that is a copy of the given track from `to_animation`.
	**/
	@:native("CopyTrack")
	public function copyTrack(trackIdx:Int, toAnimation:godot.Animation):Void;
}
