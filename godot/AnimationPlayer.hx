// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
An animation player is used for general-purpose playback of `godot.Animation` resources. It contains a dictionary of animations (referenced by name) and custom blend times between their transitions. Additionally, animations can be played and blended in different channels.

`godot.AnimationPlayer` is more suited than `godot.Tween` for animations where you know the final values in advance. For example, fading a screen in and out is more easily done with an `godot.AnimationPlayer` node thanks to the animation tools provided by the editor. That particular example can also be implemented with a `godot.Tween` node, but it requires doing everything by code.

Updating the target properties of animations occurs at process time.
**/
@:libType
@:csNative
@:native("Godot.AnimationPlayer")
@:autoBuild(godot.Godot.buildUserClass())
extern class AnimationPlayer extends godot.Node {
	/**		
		The call mode to use for Call Method tracks.
	**/
	@:native("MethodCallMode")
	public var methodCallMode:godot.AnimationPlayer_AnimationMethodCallMode;

	/**		
		The speed scaling ratio. For instance, if this value is 1, then the animation plays at normal speed. If it's 0.5, then it plays at half speed. If it's 2, then it plays at double speed.
	**/
	@:native("PlaybackSpeed")
	public var playbackSpeed:Single;

	/**		
		If `true`, updates animations in response to process-related notifications.
	**/
	@:native("PlaybackActive")
	public var playbackActive:Bool;

	/**		
		The default time in which to blend animations. Ranges from 0 to 4096 with 0.01 precision.
	**/
	@:native("PlaybackDefaultBlendTime")
	public var playbackDefaultBlendTime:Single;

	/**		
		The process notification in which to update animations.
	**/
	@:native("PlaybackProcessMode")
	public var playbackProcessMode:godot.AnimationPlayer_AnimationProcessMode;

	/**		
		The position (in seconds) of the currently playing animation.
	**/
	@:native("CurrentAnimationPosition")
	public var currentAnimationPosition(default, never):Single;

	/**		
		The length (in seconds) of the currently being played animation.
	**/
	@:native("CurrentAnimationLength")
	public var currentAnimationLength(default, never):Single;

	/**		
		The name of the animation to play when the scene loads.
	**/
	@:native("Autoplay")
	public var autoplay:std.String;

	/**		
		If playing, the current animation; otherwise, the animation last played. When set, would change the animation, but would not play it unless currently playing. See also `godot.AnimationPlayer.currentAnimation`.
	**/
	@:native("AssignedAnimation")
	public var assignedAnimation:std.String;

	/**		
		The name of the currently playing animation. If no animation is playing, the property's value is an empty string. Changing this value does not restart the animation. See `godot.AnimationPlayer.play` for more information on playing animations.
		
		Note: while this property appears in the inspector, it's not meant to be edited and it's not saved in the scene. This property is mainly used to get the currently playing animation, and internally for animation playback tracks. For more information, see `godot.Animation`.
	**/
	@:native("CurrentAnimation")
	public var currentAnimation:std.String;

	/**		
		The node from which node path references will travel.
	**/
	@:native("RootNode")
	public var rootNode:godot.NodePath;

	@:native("new")
	public function new():Void;

	/**		
		Adds `animation` to the player accessible with the key `name`.
	**/
	@:native("AddAnimation")
	public function addAnimation(name:std.String, animation:godot.Animation):godot.Error;

	/**		
		Removes the animation with key `name`.
	**/
	@:native("RemoveAnimation")
	public function removeAnimation(name:std.String):Void;

	/**		
		Renames an existing animation with key `name` to `newname`.
	**/
	@:native("RenameAnimation")
	public function renameAnimation(name:std.String, newname:std.String):Void;

	/**		
		Returns `true` if the `godot.AnimationPlayer` stores an `godot.Animation` with key `name`.
	**/
	@:native("HasAnimation")
	public function hasAnimation(name:std.String):Bool;

	/**		
		Returns the `godot.Animation` with key `name` or `null` if not found.
	**/
	@:native("GetAnimation")
	public function getAnimation(name:std.String):godot.Animation;

	/**		
		Returns the list of stored animation names.
	**/
	@:native("GetAnimationList")
	public function getAnimationList():cs.NativeArray<std.String>;

	/**		
		Triggers the `anim_to` animation when the `anim_from` animation completes.
	**/
	@:native("AnimationSetNext")
	public function animationSetNext(animFrom:std.String, animTo:std.String):Void;

	/**		
		Returns the name of the next animation in the queue.
	**/
	@:native("AnimationGetNext")
	public function animationGetNext(animFrom:std.String):std.String;

	/**		
		Specifies a blend time (in seconds) between two animations, referenced by their names.
	**/
	@:native("SetBlendTime")
	public function setBlendTime(animFrom:std.String, animTo:std.String, sec:Single):Void;

	/**		
		Gets the blend time (in seconds) between two animations, referenced by their names.
	**/
	@:native("GetBlendTime")
	public function getBlendTime(animFrom:std.String, animTo:std.String):Single;

	@:native("SetDefaultBlendTime")
	public function setDefaultBlendTime(sec:Single):Void;

	@:native("GetDefaultBlendTime")
	public function getDefaultBlendTime():Single;

	#if doc_gen
	/**		
		Plays the animation with key `name`. Custom blend times and speed can be set. If `custom_speed` is negative and `from_end` is `true`, the animation will play backwards (which is equivalent to calling `godot.AnimationPlayer.playBackwards`).
		
		The `godot.AnimationPlayer` keeps track of its current or last played animation with `godot.AnimationPlayer.assignedAnimation`. If this method is called with that same animation `name`, or with no `name` parameter, the assigned animation will resume playing if it was paused, or restart if it was stopped (see `godot.AnimationPlayer.stop` for both pause and stop). If the animation was already playing, it will keep playing.
		
		Note: The animation will be updated the next time the `godot.AnimationPlayer` is processed. If other variables are updated at the same time this is called, they may be updated too early. To perform the update immediately, call `advance(0)`.
	**/
	@:native("Play")
	public function play(?name:std.String, ?customBlend:Single, ?customSpeed:Single, ?fromEnd:Bool):Void;
	#else
	/**		
		Plays the animation with key `name`. Custom blend times and speed can be set. If `custom_speed` is negative and `from_end` is `true`, the animation will play backwards (which is equivalent to calling `godot.AnimationPlayer.playBackwards`).
		
		The `godot.AnimationPlayer` keeps track of its current or last played animation with `godot.AnimationPlayer.assignedAnimation`. If this method is called with that same animation `name`, or with no `name` parameter, the assigned animation will resume playing if it was paused, or restart if it was stopped (see `godot.AnimationPlayer.stop` for both pause and stop). If the animation was already playing, it will keep playing.
		
		Note: The animation will be updated the next time the `godot.AnimationPlayer` is processed. If other variables are updated at the same time this is called, they may be updated too early. To perform the update immediately, call `advance(0)`.
	**/
	@:native("Play")
	public overload function play():Void;

	/**		
		Plays the animation with key `name`. Custom blend times and speed can be set. If `custom_speed` is negative and `from_end` is `true`, the animation will play backwards (which is equivalent to calling `godot.AnimationPlayer.playBackwards`).
		
		The `godot.AnimationPlayer` keeps track of its current or last played animation with `godot.AnimationPlayer.assignedAnimation`. If this method is called with that same animation `name`, or with no `name` parameter, the assigned animation will resume playing if it was paused, or restart if it was stopped (see `godot.AnimationPlayer.stop` for both pause and stop). If the animation was already playing, it will keep playing.
		
		Note: The animation will be updated the next time the `godot.AnimationPlayer` is processed. If other variables are updated at the same time this is called, they may be updated too early. To perform the update immediately, call `advance(0)`.
	**/
	@:native("Play")
	public overload function play(name:std.String):Void;

	/**		
		Plays the animation with key `name`. Custom blend times and speed can be set. If `custom_speed` is negative and `from_end` is `true`, the animation will play backwards (which is equivalent to calling `godot.AnimationPlayer.playBackwards`).
		
		The `godot.AnimationPlayer` keeps track of its current or last played animation with `godot.AnimationPlayer.assignedAnimation`. If this method is called with that same animation `name`, or with no `name` parameter, the assigned animation will resume playing if it was paused, or restart if it was stopped (see `godot.AnimationPlayer.stop` for both pause and stop). If the animation was already playing, it will keep playing.
		
		Note: The animation will be updated the next time the `godot.AnimationPlayer` is processed. If other variables are updated at the same time this is called, they may be updated too early. To perform the update immediately, call `advance(0)`.
	**/
	@:native("Play")
	public overload function play(name:std.String, customBlend:Single):Void;

	/**		
		Plays the animation with key `name`. Custom blend times and speed can be set. If `custom_speed` is negative and `from_end` is `true`, the animation will play backwards (which is equivalent to calling `godot.AnimationPlayer.playBackwards`).
		
		The `godot.AnimationPlayer` keeps track of its current or last played animation with `godot.AnimationPlayer.assignedAnimation`. If this method is called with that same animation `name`, or with no `name` parameter, the assigned animation will resume playing if it was paused, or restart if it was stopped (see `godot.AnimationPlayer.stop` for both pause and stop). If the animation was already playing, it will keep playing.
		
		Note: The animation will be updated the next time the `godot.AnimationPlayer` is processed. If other variables are updated at the same time this is called, they may be updated too early. To perform the update immediately, call `advance(0)`.
	**/
	@:native("Play")
	public overload function play(name:std.String, customBlend:Single, customSpeed:Single):Void;

	/**		
		Plays the animation with key `name`. Custom blend times and speed can be set. If `custom_speed` is negative and `from_end` is `true`, the animation will play backwards (which is equivalent to calling `godot.AnimationPlayer.playBackwards`).
		
		The `godot.AnimationPlayer` keeps track of its current or last played animation with `godot.AnimationPlayer.assignedAnimation`. If this method is called with that same animation `name`, or with no `name` parameter, the assigned animation will resume playing if it was paused, or restart if it was stopped (see `godot.AnimationPlayer.stop` for both pause and stop). If the animation was already playing, it will keep playing.
		
		Note: The animation will be updated the next time the `godot.AnimationPlayer` is processed. If other variables are updated at the same time this is called, they may be updated too early. To perform the update immediately, call `advance(0)`.
	**/
	@:native("Play")
	public overload function play(name:std.String, customBlend:Single, customSpeed:Single, fromEnd:Bool):Void;
	#end

	#if doc_gen
	/**		
		Plays the animation with key `name` in reverse.
		
		This method is a shorthand for `godot.AnimationPlayer.play` with `custom_speed = -1.0` and `from_end = true`, so see its description for more information.
	**/
	@:native("PlayBackwards")
	public function playBackwards(?name:std.String, ?customBlend:Single):Void;
	#else
	/**		
		Plays the animation with key `name` in reverse.
		
		This method is a shorthand for `godot.AnimationPlayer.play` with `custom_speed = -1.0` and `from_end = true`, so see its description for more information.
	**/
	@:native("PlayBackwards")
	public overload function playBackwards():Void;

	/**		
		Plays the animation with key `name` in reverse.
		
		This method is a shorthand for `godot.AnimationPlayer.play` with `custom_speed = -1.0` and `from_end = true`, so see its description for more information.
	**/
	@:native("PlayBackwards")
	public overload function playBackwards(name:std.String):Void;

	/**		
		Plays the animation with key `name` in reverse.
		
		This method is a shorthand for `godot.AnimationPlayer.play` with `custom_speed = -1.0` and `from_end = true`, so see its description for more information.
	**/
	@:native("PlayBackwards")
	public overload function playBackwards(name:std.String, customBlend:Single):Void;
	#end

	#if doc_gen
	/**		
		Stops or pauses the currently playing animation. If `reset` is `true`, the animation position is reset to `0` and the playback speed is reset to `1.0`.
		
		If `reset` is `false`, the `godot.AnimationPlayer.currentAnimationPosition` will be kept and calling `godot.AnimationPlayer.play` or `godot.AnimationPlayer.playBackwards` without arguments or with the same animation name as `godot.AnimationPlayer.assignedAnimation` will resume the animation.
	**/
	@:native("Stop")
	public function stop(?reset:Bool):Void;
	#else
	/**		
		Stops or pauses the currently playing animation. If `reset` is `true`, the animation position is reset to `0` and the playback speed is reset to `1.0`.
		
		If `reset` is `false`, the `godot.AnimationPlayer.currentAnimationPosition` will be kept and calling `godot.AnimationPlayer.play` or `godot.AnimationPlayer.playBackwards` without arguments or with the same animation name as `godot.AnimationPlayer.assignedAnimation` will resume the animation.
	**/
	@:native("Stop")
	public overload function stop():Void;

	/**		
		Stops or pauses the currently playing animation. If `reset` is `true`, the animation position is reset to `0` and the playback speed is reset to `1.0`.
		
		If `reset` is `false`, the `godot.AnimationPlayer.currentAnimationPosition` will be kept and calling `godot.AnimationPlayer.play` or `godot.AnimationPlayer.playBackwards` without arguments or with the same animation name as `godot.AnimationPlayer.assignedAnimation` will resume the animation.
	**/
	@:native("Stop")
	public overload function stop(reset:Bool):Void;
	#end

	/**		
		Returns `true` if playing an animation.
	**/
	@:native("IsPlaying")
	public function isPlaying():Bool;

	@:native("SetCurrentAnimation")
	public function setCurrentAnimation(anim:std.String):Void;

	@:native("GetCurrentAnimation")
	public function getCurrentAnimation():std.String;

	@:native("SetAssignedAnimation")
	public function setAssignedAnimation(anim:std.String):Void;

	@:native("GetAssignedAnimation")
	public function getAssignedAnimation():std.String;

	/**		
		Queues an animation for playback once the current one is done.
		
		Note: If a looped animation is currently playing, the queued animation will never play unless the looped animation is stopped somehow.
	**/
	@:native("Queue")
	public function queue(name:std.String):Void;

	/**		
		Returns a list of the animation names that are currently queued to play.
	**/
	@:native("GetQueue")
	public function getQueue():cs.NativeArray<std.String>;

	/**		
		Clears all queued, unplayed animations.
	**/
	@:native("ClearQueue")
	public function clearQueue():Void;

	@:native("SetActive")
	public function setActive(active:Bool):Void;

	@:native("IsActive")
	public function isActive():Bool;

	@:native("SetSpeedScale")
	public function setSpeedScale(speed:Single):Void;

	@:native("GetSpeedScale")
	public function getSpeedScale():Single;

	/**		
		Gets the actual playing speed of current animation or 0 if not playing. This speed is the `godot.AnimationPlayer.playbackSpeed` property multiplied by `custom_speed` argument specified when calling the `godot.AnimationPlayer.play` method.
	**/
	@:native("GetPlayingSpeed")
	public function getPlayingSpeed():Single;

	@:native("SetAutoplay")
	public function setAutoplay(name:std.String):Void;

	@:native("GetAutoplay")
	public function getAutoplay():std.String;

	@:native("SetRoot")
	public function setRoot(path:godot.NodePath):Void;

	@:native("GetRoot")
	public function getRoot():godot.NodePath;

	/**		
		Returns the name of `animation` or an empty string if not found.
	**/
	@:native("FindAnimation")
	public function findAnimation(animation:godot.Animation):std.String;

	/**		
		`godot.AnimationPlayer` caches animated nodes. It may not notice if a node disappears; `godot.AnimationPlayer.clearCaches` forces it to update the cache again.
	**/
	@:native("ClearCaches")
	public function clearCaches():Void;

	@:native("SetAnimationProcessMode")
	public function setAnimationProcessMode(mode:godot.AnimationPlayer_AnimationProcessMode):Void;

	@:native("GetAnimationProcessMode")
	public function getAnimationProcessMode():godot.AnimationPlayer_AnimationProcessMode;

	@:native("SetMethodCallMode")
	public function setMethodCallMode(mode:godot.AnimationPlayer_AnimationMethodCallMode):Void;

	@:native("GetMethodCallMode")
	public function getMethodCallMode():godot.AnimationPlayer_AnimationMethodCallMode;

	@:native("GetCurrentAnimationPosition")
	public function getCurrentAnimationPosition():Single;

	@:native("GetCurrentAnimationLength")
	public function getCurrentAnimationLength():Single;

	#if doc_gen
	/**		
		Seeks the animation to the `seconds` point in time (in seconds). If `update` is `true`, the animation updates too, otherwise it updates at process time. Events between the current frame and `seconds` are skipped.
	**/
	@:native("Seek")
	public function seek(seconds:Single, ?update:Bool):Void;
	#else
	/**		
		Seeks the animation to the `seconds` point in time (in seconds). If `update` is `true`, the animation updates too, otherwise it updates at process time. Events between the current frame and `seconds` are skipped.
	**/
	@:native("Seek")
	public overload function seek(seconds:Single):Void;

	/**		
		Seeks the animation to the `seconds` point in time (in seconds). If `update` is `true`, the animation updates too, otherwise it updates at process time. Events between the current frame and `seconds` are skipped.
	**/
	@:native("Seek")
	public overload function seek(seconds:Single, update:Bool):Void;
	#end

	/**		
		Shifts position in the animation timeline and immediately updates the animation. `delta` is the time in seconds to shift. Events between the current frame and `delta` are handled.
	**/
	@:native("Advance")
	public function advance(delta:Single):Void;
}
