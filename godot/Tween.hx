// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Tweens are useful for animations requiring a numerical property to be interpolated over a range of values. The name tween comes from in-betweening, an animation technique where you specify keyframes and the computer interpolates the frames that appear between them.

`godot.Tween` is more suited than `godot.AnimationPlayer` for animations where you don't know the final values in advance. For example, interpolating a dynamically-chosen camera zoom value is best done with a `godot.Tween` node; it would be difficult to do the same thing with an `godot.AnimationPlayer` node.

Here is a brief usage example that makes a 2D node move smoothly between two positions:

```

var tween = get_node("Tween")
tween.interpolate_property($Node2D, "position",
Vector2(0, 0), Vector2(100, 100), 1,
Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
tween.start()

```

Many methods require a property name, such as `"position"` above. You can find the correct property name by hovering over the property in the Inspector. You can also provide the components of a property directly by using `"property:component"` (e.g. `position:x`), where it would only apply to that particular component.

Many of the methods accept `trans_type` and `ease_type`. The first accepts an `godot.Tween_TransitionType` constant, and refers to the way the timing of the animation is handled (see [https://easings.net/](easings.net) for some examples). The second accepts an `godot.Tween_EaseType` constant, and controls where the `trans_type` is applied to the interpolation (in the beginning, the end, or both). If you don't know which transition and easing to pick, you can try different `godot.Tween_TransitionType` constants with `godot.Tween_EaseType.inOut`, and use the one that looks best.

[https://raw.githubusercontent.com/godotengine/godot-docs/master/img/tween_cheatsheet.png](Tween easing and transition types cheatsheet)
**/
@:libType
@:csNative
@:native("Godot.Tween")
@:autoBuild(godot.Godot.buildUserClass())
extern class Tween extends godot.Node {
	/**
		`tween_all_completed` signal.
		
		Emitted when all processes in a tween end.
	**/
	public var onTweenAllCompleted(get, never):Signal<Void->Void>;
	@:dox(hide) @:noCompletion inline function get_onTweenAllCompleted():Signal<Void->Void> {
		return new Signal(this, "tween_all_completed", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	/**
		`tween_completed` signal.
		
		Emitted when a tween ends.
	**/
	public var onTweenCompleted(get, never):Signal<(object:godot.Object, key:NodePath)->Void>;
	@:dox(hide) @:noCompletion inline function get_onTweenCompleted():Signal<(object:godot.Object, key:NodePath)->Void> {
		return new Signal(this, "tween_completed", Signal.SignalHandlerObjectNodePathVoid.connectSignal, Signal.SignalHandlerObjectNodePathVoid.disconnectSignal, Signal.SignalHandlerObjectNodePathVoid.isSignalConnected);
	}

	/**
		`tween_started` signal.
		
		Emitted when a tween starts.
	**/
	public var onTweenStarted(get, never):Signal<(object:godot.Object, key:NodePath)->Void>;
	@:dox(hide) @:noCompletion inline function get_onTweenStarted():Signal<(object:godot.Object, key:NodePath)->Void> {
		return new Signal(this, "tween_started", Signal.SignalHandlerObjectNodePathVoid.connectSignal, Signal.SignalHandlerObjectNodePathVoid.disconnectSignal, Signal.SignalHandlerObjectNodePathVoid.isSignalConnected);
	}

	/**
		`tween_step` signal.
		
		Emitted at each step of the animation.
	**/
	public var onTweenStep(get, never):Signal<(object:godot.Object, key:NodePath, elapsed:Float, value:godot.Object)->Void>;
	@:dox(hide) @:noCompletion inline function get_onTweenStep():Signal<(object:godot.Object, key:NodePath, elapsed:Float, value:godot.Object)->Void> {
		return new Signal(this, "tween_step", Signal.SignalHandlerObjectNodePathFloatObjectVoid.connectSignal, Signal.SignalHandlerObjectNodePathFloatObjectVoid.disconnectSignal, Signal.SignalHandlerObjectNodePathFloatObjectVoid.isSignalConnected);
	}

	/**		
		The tween's speed multiplier. For example, set it to `1.0` for normal speed, `2.0` for two times normal speed, or `0.5` for half of the normal speed. A value of `0` pauses the animation, but see also `godot.Tween.setActive` or `godot.Tween.stopAll` for this.
	**/
	@:native("PlaybackSpeed")
	public var playbackSpeed:Single;

	/**		
		The tween's animation process thread. See `godot.Tween_TweenProcessMode`.
	**/
	@:native("PlaybackProcessMode")
	public var playbackProcessMode:godot.Tween_TweenProcessMode;

	/**		
		If `true`, the tween loops.
	**/
	@:native("Repeat")
	public var repeat:Bool;

	@:native("new")
	public function new():Void;

	/**		
		Returns `true` if any tweens are currently running.
		
		Note: This method doesn't consider tweens that have ended.
	**/
	@:native("IsActive")
	public function isActive():Bool;

	/**		
		Activates/deactivates the tween. See also `godot.Tween.stopAll` and `godot.Tween.resumeAll`.
	**/
	@:native("SetActive")
	public function setActive(active:Bool):Void;

	@:native("IsRepeat")
	public function isRepeat():Bool;

	@:native("SetRepeat")
	public function setRepeat(repeat:Bool):Void;

	@:native("SetSpeedScale")
	public function setSpeedScale(speed:Single):Void;

	@:native("GetSpeedScale")
	public function getSpeedScale():Single;

	@:native("SetTweenProcessMode")
	public function setTweenProcessMode(mode:godot.Tween_TweenProcessMode):Void;

	@:native("GetTweenProcessMode")
	public function getTweenProcessMode():godot.Tween_TweenProcessMode;

	/**		
		Starts the tween. You can define animations both before and after this.
	**/
	@:native("Start")
	public function start():Bool;

	#if doc_gen
	/**		
		Resets a tween to its initial value (the one given, not the one before the tween), given its object and property/method pair. By default, all tweens are removed, unless `key` is specified.
	**/
	@:native("Reset")
	public function reset(object:godot.Object, ?key:std.String):Bool;
	#else
	/**		
		Resets a tween to its initial value (the one given, not the one before the tween), given its object and property/method pair. By default, all tweens are removed, unless `key` is specified.
	**/
	@:native("Reset")
	public overload function reset(object:godot.Object):Bool;

	/**		
		Resets a tween to its initial value (the one given, not the one before the tween), given its object and property/method pair. By default, all tweens are removed, unless `key` is specified.
	**/
	@:native("Reset")
	public overload function reset(object:godot.Object, key:std.String):Bool;
	#end

	/**		
		Resets all tweens to their initial values (the ones given, not those before the tween).
	**/
	@:native("ResetAll")
	public function resetAll():Bool;

	#if doc_gen
	/**		
		Stops a tween, given its object and property/method pair. By default, all tweens are stopped, unless `key` is specified.
	**/
	@:native("Stop")
	public function stop(object:godot.Object, ?key:std.String):Bool;
	#else
	/**		
		Stops a tween, given its object and property/method pair. By default, all tweens are stopped, unless `key` is specified.
	**/
	@:native("Stop")
	public overload function stop(object:godot.Object):Bool;

	/**		
		Stops a tween, given its object and property/method pair. By default, all tweens are stopped, unless `key` is specified.
	**/
	@:native("Stop")
	public overload function stop(object:godot.Object, key:std.String):Bool;
	#end

	/**		
		Stops animating all tweens.
	**/
	@:native("StopAll")
	public function stopAll():Bool;

	#if doc_gen
	/**		
		Continues animating a stopped tween, given its object and property/method pair. By default, all tweens are resumed, unless `key` is specified.
	**/
	@:native("Resume")
	public function resume(object:godot.Object, ?key:std.String):Bool;
	#else
	/**		
		Continues animating a stopped tween, given its object and property/method pair. By default, all tweens are resumed, unless `key` is specified.
	**/
	@:native("Resume")
	public overload function resume(object:godot.Object):Bool;

	/**		
		Continues animating a stopped tween, given its object and property/method pair. By default, all tweens are resumed, unless `key` is specified.
	**/
	@:native("Resume")
	public overload function resume(object:godot.Object, key:std.String):Bool;
	#end

	/**		
		Continues animating all stopped tweens.
	**/
	@:native("ResumeAll")
	public function resumeAll():Bool;

	#if doc_gen
	/**		
		Stops animation and removes a tween, given its object and property/method pair. By default, all tweens are removed, unless `key` is specified.
	**/
	@:native("Remove")
	public function remove(object:godot.Object, ?key:std.String):Bool;
	#else
	/**		
		Stops animation and removes a tween, given its object and property/method pair. By default, all tweens are removed, unless `key` is specified.
	**/
	@:native("Remove")
	public overload function remove(object:godot.Object):Bool;

	/**		
		Stops animation and removes a tween, given its object and property/method pair. By default, all tweens are removed, unless `key` is specified.
	**/
	@:native("Remove")
	public overload function remove(object:godot.Object, key:std.String):Bool;
	#end

	/**		
		Stops animation and removes all tweens.
	**/
	@:native("RemoveAll")
	public function removeAll():Bool;

	/**		
		Sets the interpolation to the given `time` in seconds.
	**/
	@:native("Seek")
	public function seek(time:Single):Bool;

	/**		
		Returns the current time of the tween.
	**/
	@:native("Tell")
	public function tell():Single;

	/**		
		Returns the total time needed for all tweens to end. If you have two tweens, one lasting 10 seconds and the other 20 seconds, it would return 20 seconds, as by that time all tweens would have finished.
	**/
	@:native("GetRuntime")
	public function getRuntime():Single;

	#if doc_gen
	/**		
		Animates `property` of `object` from `initial_val` to `final_val` for `duration` seconds, `delay` seconds later. Setting the initial value to `null` uses the current value of the property.
		
		Use `godot.Tween_TransitionType` for `trans_type` and `godot.Tween_EaseType` for `ease_type` parameters. These values control the timing and direction of the interpolation. See the class description for more information.
	**/
	@:native("InterpolateProperty")
	public function interpolateProperty(object:godot.Object, property:godot.NodePath, initialVal:Dynamic, finalVal:Dynamic, duration:Single, ?transType:godot.Tween_TransitionType, ?easeType:godot.Tween_EaseType, ?delay:Single):Bool;
	#else
	/**		
		Animates `property` of `object` from `initial_val` to `final_val` for `duration` seconds, `delay` seconds later. Setting the initial value to `null` uses the current value of the property.
		
		Use `godot.Tween_TransitionType` for `trans_type` and `godot.Tween_EaseType` for `ease_type` parameters. These values control the timing and direction of the interpolation. See the class description for more information.
	**/
	@:native("InterpolateProperty")
	public overload function interpolateProperty(object:godot.Object, property:godot.NodePath, initialVal:Dynamic, finalVal:Dynamic, duration:Single):Bool;

	/**		
		Animates `property` of `object` from `initial_val` to `final_val` for `duration` seconds, `delay` seconds later. Setting the initial value to `null` uses the current value of the property.
		
		Use `godot.Tween_TransitionType` for `trans_type` and `godot.Tween_EaseType` for `ease_type` parameters. These values control the timing and direction of the interpolation. See the class description for more information.
	**/
	@:native("InterpolateProperty")
	public overload function interpolateProperty(object:godot.Object, property:godot.NodePath, initialVal:Dynamic, finalVal:Dynamic, duration:Single, transType:godot.Tween_TransitionType):Bool;

	/**		
		Animates `property` of `object` from `initial_val` to `final_val` for `duration` seconds, `delay` seconds later. Setting the initial value to `null` uses the current value of the property.
		
		Use `godot.Tween_TransitionType` for `trans_type` and `godot.Tween_EaseType` for `ease_type` parameters. These values control the timing and direction of the interpolation. See the class description for more information.
	**/
	@:native("InterpolateProperty")
	public overload function interpolateProperty(object:godot.Object, property:godot.NodePath, initialVal:Dynamic, finalVal:Dynamic, duration:Single, transType:godot.Tween_TransitionType, easeType:godot.Tween_EaseType):Bool;

	/**		
		Animates `property` of `object` from `initial_val` to `final_val` for `duration` seconds, `delay` seconds later. Setting the initial value to `null` uses the current value of the property.
		
		Use `godot.Tween_TransitionType` for `trans_type` and `godot.Tween_EaseType` for `ease_type` parameters. These values control the timing and direction of the interpolation. See the class description for more information.
	**/
	@:native("InterpolateProperty")
	public overload function interpolateProperty(object:godot.Object, property:godot.NodePath, initialVal:Dynamic, finalVal:Dynamic, duration:Single, transType:godot.Tween_TransitionType, easeType:godot.Tween_EaseType, delay:Single):Bool;
	#end

	#if doc_gen
	/**		
		Animates `method` of `object` from `initial_val` to `final_val` for `duration` seconds, `delay` seconds later. Methods are called with consecutive values.
		
		Use `godot.Tween_TransitionType` for `trans_type` and `godot.Tween_EaseType` for `ease_type` parameters. These values control the timing and direction of the interpolation. See the class description for more information.
	**/
	@:native("InterpolateMethod")
	public function interpolateMethod(object:godot.Object, method:std.String, initialVal:Dynamic, finalVal:Dynamic, duration:Single, ?transType:godot.Tween_TransitionType, ?easeType:godot.Tween_EaseType, ?delay:Single):Bool;
	#else
	/**		
		Animates `method` of `object` from `initial_val` to `final_val` for `duration` seconds, `delay` seconds later. Methods are called with consecutive values.
		
		Use `godot.Tween_TransitionType` for `trans_type` and `godot.Tween_EaseType` for `ease_type` parameters. These values control the timing and direction of the interpolation. See the class description for more information.
	**/
	@:native("InterpolateMethod")
	public overload function interpolateMethod(object:godot.Object, method:std.String, initialVal:Dynamic, finalVal:Dynamic, duration:Single):Bool;

	/**		
		Animates `method` of `object` from `initial_val` to `final_val` for `duration` seconds, `delay` seconds later. Methods are called with consecutive values.
		
		Use `godot.Tween_TransitionType` for `trans_type` and `godot.Tween_EaseType` for `ease_type` parameters. These values control the timing and direction of the interpolation. See the class description for more information.
	**/
	@:native("InterpolateMethod")
	public overload function interpolateMethod(object:godot.Object, method:std.String, initialVal:Dynamic, finalVal:Dynamic, duration:Single, transType:godot.Tween_TransitionType):Bool;

	/**		
		Animates `method` of `object` from `initial_val` to `final_val` for `duration` seconds, `delay` seconds later. Methods are called with consecutive values.
		
		Use `godot.Tween_TransitionType` for `trans_type` and `godot.Tween_EaseType` for `ease_type` parameters. These values control the timing and direction of the interpolation. See the class description for more information.
	**/
	@:native("InterpolateMethod")
	public overload function interpolateMethod(object:godot.Object, method:std.String, initialVal:Dynamic, finalVal:Dynamic, duration:Single, transType:godot.Tween_TransitionType, easeType:godot.Tween_EaseType):Bool;

	/**		
		Animates `method` of `object` from `initial_val` to `final_val` for `duration` seconds, `delay` seconds later. Methods are called with consecutive values.
		
		Use `godot.Tween_TransitionType` for `trans_type` and `godot.Tween_EaseType` for `ease_type` parameters. These values control the timing and direction of the interpolation. See the class description for more information.
	**/
	@:native("InterpolateMethod")
	public overload function interpolateMethod(object:godot.Object, method:std.String, initialVal:Dynamic, finalVal:Dynamic, duration:Single, transType:godot.Tween_TransitionType, easeType:godot.Tween_EaseType, delay:Single):Bool;
	#end

	#if doc_gen
	/**		
		Calls `callback` of `object` after `duration`. `arg1`-`arg5` are arguments to be passed to the callback.
	**/
	@:native("InterpolateCallback")
	public function interpolateCallback(object:godot.Object, duration:Single, callback:std.String, ?arg1:Dynamic, ?arg2:Dynamic, ?arg3:Dynamic, ?arg4:Dynamic, ?arg5:Dynamic):Bool;
	#else
	/**		
		Calls `callback` of `object` after `duration`. `arg1`-`arg5` are arguments to be passed to the callback.
	**/
	@:native("InterpolateCallback")
	public overload function interpolateCallback(object:godot.Object, duration:Single, callback:std.String):Bool;

	/**		
		Calls `callback` of `object` after `duration`. `arg1`-`arg5` are arguments to be passed to the callback.
	**/
	@:native("InterpolateCallback")
	public overload function interpolateCallback(object:godot.Object, duration:Single, callback:std.String, arg1:Dynamic):Bool;

	/**		
		Calls `callback` of `object` after `duration`. `arg1`-`arg5` are arguments to be passed to the callback.
	**/
	@:native("InterpolateCallback")
	public overload function interpolateCallback(object:godot.Object, duration:Single, callback:std.String, arg1:Dynamic, arg2:Dynamic):Bool;

	/**		
		Calls `callback` of `object` after `duration`. `arg1`-`arg5` are arguments to be passed to the callback.
	**/
	@:native("InterpolateCallback")
	public overload function interpolateCallback(object:godot.Object, duration:Single, callback:std.String, arg1:Dynamic, arg2:Dynamic, arg3:Dynamic):Bool;

	/**		
		Calls `callback` of `object` after `duration`. `arg1`-`arg5` are arguments to be passed to the callback.
	**/
	@:native("InterpolateCallback")
	public overload function interpolateCallback(object:godot.Object, duration:Single, callback:std.String, arg1:Dynamic, arg2:Dynamic, arg3:Dynamic, arg4:Dynamic):Bool;

	/**		
		Calls `callback` of `object` after `duration`. `arg1`-`arg5` are arguments to be passed to the callback.
	**/
	@:native("InterpolateCallback")
	public overload function interpolateCallback(object:godot.Object, duration:Single, callback:std.String, arg1:Dynamic, arg2:Dynamic, arg3:Dynamic, arg4:Dynamic, arg5:Dynamic):Bool;
	#end

	#if doc_gen
	/**		
		Calls `callback` of `object` after `duration` on the main thread (similar to `godot.Object.callDeferred`). `arg1`-`arg5` are arguments to be passed to the callback.
	**/
	@:native("InterpolateDeferredCallback")
	public function interpolateDeferredCallback(object:godot.Object, duration:Single, callback:std.String, ?arg1:Dynamic, ?arg2:Dynamic, ?arg3:Dynamic, ?arg4:Dynamic, ?arg5:Dynamic):Bool;
	#else
	/**		
		Calls `callback` of `object` after `duration` on the main thread (similar to `godot.Object.callDeferred`). `arg1`-`arg5` are arguments to be passed to the callback.
	**/
	@:native("InterpolateDeferredCallback")
	public overload function interpolateDeferredCallback(object:godot.Object, duration:Single, callback:std.String):Bool;

	/**		
		Calls `callback` of `object` after `duration` on the main thread (similar to `godot.Object.callDeferred`). `arg1`-`arg5` are arguments to be passed to the callback.
	**/
	@:native("InterpolateDeferredCallback")
	public overload function interpolateDeferredCallback(object:godot.Object, duration:Single, callback:std.String, arg1:Dynamic):Bool;

	/**		
		Calls `callback` of `object` after `duration` on the main thread (similar to `godot.Object.callDeferred`). `arg1`-`arg5` are arguments to be passed to the callback.
	**/
	@:native("InterpolateDeferredCallback")
	public overload function interpolateDeferredCallback(object:godot.Object, duration:Single, callback:std.String, arg1:Dynamic, arg2:Dynamic):Bool;

	/**		
		Calls `callback` of `object` after `duration` on the main thread (similar to `godot.Object.callDeferred`). `arg1`-`arg5` are arguments to be passed to the callback.
	**/
	@:native("InterpolateDeferredCallback")
	public overload function interpolateDeferredCallback(object:godot.Object, duration:Single, callback:std.String, arg1:Dynamic, arg2:Dynamic, arg3:Dynamic):Bool;

	/**		
		Calls `callback` of `object` after `duration` on the main thread (similar to `godot.Object.callDeferred`). `arg1`-`arg5` are arguments to be passed to the callback.
	**/
	@:native("InterpolateDeferredCallback")
	public overload function interpolateDeferredCallback(object:godot.Object, duration:Single, callback:std.String, arg1:Dynamic, arg2:Dynamic, arg3:Dynamic, arg4:Dynamic):Bool;

	/**		
		Calls `callback` of `object` after `duration` on the main thread (similar to `godot.Object.callDeferred`). `arg1`-`arg5` are arguments to be passed to the callback.
	**/
	@:native("InterpolateDeferredCallback")
	public overload function interpolateDeferredCallback(object:godot.Object, duration:Single, callback:std.String, arg1:Dynamic, arg2:Dynamic, arg3:Dynamic, arg4:Dynamic, arg5:Dynamic):Bool;
	#end

	#if doc_gen
	/**		
		Follows `property` of `object` and applies it on `target_property` of `target`, beginning from `initial_val` for `duration` seconds, `delay` seconds later.
		
		Use `godot.Tween_TransitionType` for `trans_type` and `godot.Tween_EaseType` for `ease_type` parameters. These values control the timing and direction of the interpolation. See the class description for more information.
	**/
	@:native("FollowProperty")
	public function followProperty(object:godot.Object, property:godot.NodePath, initialVal:Dynamic, target:godot.Object, targetProperty:godot.NodePath, duration:Single, ?transType:godot.Tween_TransitionType, ?easeType:godot.Tween_EaseType, ?delay:Single):Bool;
	#else
	/**		
		Follows `property` of `object` and applies it on `target_property` of `target`, beginning from `initial_val` for `duration` seconds, `delay` seconds later.
		
		Use `godot.Tween_TransitionType` for `trans_type` and `godot.Tween_EaseType` for `ease_type` parameters. These values control the timing and direction of the interpolation. See the class description for more information.
	**/
	@:native("FollowProperty")
	public overload function followProperty(object:godot.Object, property:godot.NodePath, initialVal:Dynamic, target:godot.Object, targetProperty:godot.NodePath, duration:Single):Bool;

	/**		
		Follows `property` of `object` and applies it on `target_property` of `target`, beginning from `initial_val` for `duration` seconds, `delay` seconds later.
		
		Use `godot.Tween_TransitionType` for `trans_type` and `godot.Tween_EaseType` for `ease_type` parameters. These values control the timing and direction of the interpolation. See the class description for more information.
	**/
	@:native("FollowProperty")
	public overload function followProperty(object:godot.Object, property:godot.NodePath, initialVal:Dynamic, target:godot.Object, targetProperty:godot.NodePath, duration:Single, transType:godot.Tween_TransitionType):Bool;

	/**		
		Follows `property` of `object` and applies it on `target_property` of `target`, beginning from `initial_val` for `duration` seconds, `delay` seconds later.
		
		Use `godot.Tween_TransitionType` for `trans_type` and `godot.Tween_EaseType` for `ease_type` parameters. These values control the timing and direction of the interpolation. See the class description for more information.
	**/
	@:native("FollowProperty")
	public overload function followProperty(object:godot.Object, property:godot.NodePath, initialVal:Dynamic, target:godot.Object, targetProperty:godot.NodePath, duration:Single, transType:godot.Tween_TransitionType, easeType:godot.Tween_EaseType):Bool;

	/**		
		Follows `property` of `object` and applies it on `target_property` of `target`, beginning from `initial_val` for `duration` seconds, `delay` seconds later.
		
		Use `godot.Tween_TransitionType` for `trans_type` and `godot.Tween_EaseType` for `ease_type` parameters. These values control the timing and direction of the interpolation. See the class description for more information.
	**/
	@:native("FollowProperty")
	public overload function followProperty(object:godot.Object, property:godot.NodePath, initialVal:Dynamic, target:godot.Object, targetProperty:godot.NodePath, duration:Single, transType:godot.Tween_TransitionType, easeType:godot.Tween_EaseType, delay:Single):Bool;
	#end

	#if doc_gen
	/**		
		Follows `method` of `object` and applies the returned value on `target_method` of `target`, beginning from `initial_val` for `duration` seconds, `delay` later. Methods are called with consecutive values.
		
		Use `godot.Tween_TransitionType` for `trans_type` and `godot.Tween_EaseType` for `ease_type` parameters. These values control the timing and direction of the interpolation. See the class description for more information.
	**/
	@:native("FollowMethod")
	public function followMethod(object:godot.Object, method:std.String, initialVal:Dynamic, target:godot.Object, targetMethod:std.String, duration:Single, ?transType:godot.Tween_TransitionType, ?easeType:godot.Tween_EaseType, ?delay:Single):Bool;
	#else
	/**		
		Follows `method` of `object` and applies the returned value on `target_method` of `target`, beginning from `initial_val` for `duration` seconds, `delay` later. Methods are called with consecutive values.
		
		Use `godot.Tween_TransitionType` for `trans_type` and `godot.Tween_EaseType` for `ease_type` parameters. These values control the timing and direction of the interpolation. See the class description for more information.
	**/
	@:native("FollowMethod")
	public overload function followMethod(object:godot.Object, method:std.String, initialVal:Dynamic, target:godot.Object, targetMethod:std.String, duration:Single):Bool;

	/**		
		Follows `method` of `object` and applies the returned value on `target_method` of `target`, beginning from `initial_val` for `duration` seconds, `delay` later. Methods are called with consecutive values.
		
		Use `godot.Tween_TransitionType` for `trans_type` and `godot.Tween_EaseType` for `ease_type` parameters. These values control the timing and direction of the interpolation. See the class description for more information.
	**/
	@:native("FollowMethod")
	public overload function followMethod(object:godot.Object, method:std.String, initialVal:Dynamic, target:godot.Object, targetMethod:std.String, duration:Single, transType:godot.Tween_TransitionType):Bool;

	/**		
		Follows `method` of `object` and applies the returned value on `target_method` of `target`, beginning from `initial_val` for `duration` seconds, `delay` later. Methods are called with consecutive values.
		
		Use `godot.Tween_TransitionType` for `trans_type` and `godot.Tween_EaseType` for `ease_type` parameters. These values control the timing and direction of the interpolation. See the class description for more information.
	**/
	@:native("FollowMethod")
	public overload function followMethod(object:godot.Object, method:std.String, initialVal:Dynamic, target:godot.Object, targetMethod:std.String, duration:Single, transType:godot.Tween_TransitionType, easeType:godot.Tween_EaseType):Bool;

	/**		
		Follows `method` of `object` and applies the returned value on `target_method` of `target`, beginning from `initial_val` for `duration` seconds, `delay` later. Methods are called with consecutive values.
		
		Use `godot.Tween_TransitionType` for `trans_type` and `godot.Tween_EaseType` for `ease_type` parameters. These values control the timing and direction of the interpolation. See the class description for more information.
	**/
	@:native("FollowMethod")
	public overload function followMethod(object:godot.Object, method:std.String, initialVal:Dynamic, target:godot.Object, targetMethod:std.String, duration:Single, transType:godot.Tween_TransitionType, easeType:godot.Tween_EaseType, delay:Single):Bool;
	#end

	#if doc_gen
	/**		
		Animates `property` of `object` from the current value of the `initial_val` property of `initial` to `final_val` for `duration` seconds, `delay` seconds later.
		
		Use `godot.Tween_TransitionType` for `trans_type` and `godot.Tween_EaseType` for `ease_type` parameters. These values control the timing and direction of the interpolation. See the class description for more information.
	**/
	@:native("TargetingProperty")
	public function targetingProperty(object:godot.Object, property:godot.NodePath, initial:godot.Object, initialVal:godot.NodePath, finalVal:Dynamic, duration:Single, ?transType:godot.Tween_TransitionType, ?easeType:godot.Tween_EaseType, ?delay:Single):Bool;
	#else
	/**		
		Animates `property` of `object` from the current value of the `initial_val` property of `initial` to `final_val` for `duration` seconds, `delay` seconds later.
		
		Use `godot.Tween_TransitionType` for `trans_type` and `godot.Tween_EaseType` for `ease_type` parameters. These values control the timing and direction of the interpolation. See the class description for more information.
	**/
	@:native("TargetingProperty")
	public overload function targetingProperty(object:godot.Object, property:godot.NodePath, initial:godot.Object, initialVal:godot.NodePath, finalVal:Dynamic, duration:Single):Bool;

	/**		
		Animates `property` of `object` from the current value of the `initial_val` property of `initial` to `final_val` for `duration` seconds, `delay` seconds later.
		
		Use `godot.Tween_TransitionType` for `trans_type` and `godot.Tween_EaseType` for `ease_type` parameters. These values control the timing and direction of the interpolation. See the class description for more information.
	**/
	@:native("TargetingProperty")
	public overload function targetingProperty(object:godot.Object, property:godot.NodePath, initial:godot.Object, initialVal:godot.NodePath, finalVal:Dynamic, duration:Single, transType:godot.Tween_TransitionType):Bool;

	/**		
		Animates `property` of `object` from the current value of the `initial_val` property of `initial` to `final_val` for `duration` seconds, `delay` seconds later.
		
		Use `godot.Tween_TransitionType` for `trans_type` and `godot.Tween_EaseType` for `ease_type` parameters. These values control the timing and direction of the interpolation. See the class description for more information.
	**/
	@:native("TargetingProperty")
	public overload function targetingProperty(object:godot.Object, property:godot.NodePath, initial:godot.Object, initialVal:godot.NodePath, finalVal:Dynamic, duration:Single, transType:godot.Tween_TransitionType, easeType:godot.Tween_EaseType):Bool;

	/**		
		Animates `property` of `object` from the current value of the `initial_val` property of `initial` to `final_val` for `duration` seconds, `delay` seconds later.
		
		Use `godot.Tween_TransitionType` for `trans_type` and `godot.Tween_EaseType` for `ease_type` parameters. These values control the timing and direction of the interpolation. See the class description for more information.
	**/
	@:native("TargetingProperty")
	public overload function targetingProperty(object:godot.Object, property:godot.NodePath, initial:godot.Object, initialVal:godot.NodePath, finalVal:Dynamic, duration:Single, transType:godot.Tween_TransitionType, easeType:godot.Tween_EaseType, delay:Single):Bool;
	#end

	#if doc_gen
	/**		
		Animates `method` of `object` from the value returned by `initial_method` to `final_val` for `duration` seconds, `delay` seconds later. Methods are animated by calling them with consecutive values.
		
		Use `godot.Tween_TransitionType` for `trans_type` and `godot.Tween_EaseType` for `ease_type` parameters. These values control the timing and direction of the interpolation. See the class description for more information.
	**/
	@:native("TargetingMethod")
	public function targetingMethod(object:godot.Object, method:std.String, initial:godot.Object, initialMethod:std.String, finalVal:Dynamic, duration:Single, ?transType:godot.Tween_TransitionType, ?easeType:godot.Tween_EaseType, ?delay:Single):Bool;
	#else
	/**		
		Animates `method` of `object` from the value returned by `initial_method` to `final_val` for `duration` seconds, `delay` seconds later. Methods are animated by calling them with consecutive values.
		
		Use `godot.Tween_TransitionType` for `trans_type` and `godot.Tween_EaseType` for `ease_type` parameters. These values control the timing and direction of the interpolation. See the class description for more information.
	**/
	@:native("TargetingMethod")
	public overload function targetingMethod(object:godot.Object, method:std.String, initial:godot.Object, initialMethod:std.String, finalVal:Dynamic, duration:Single):Bool;

	/**		
		Animates `method` of `object` from the value returned by `initial_method` to `final_val` for `duration` seconds, `delay` seconds later. Methods are animated by calling them with consecutive values.
		
		Use `godot.Tween_TransitionType` for `trans_type` and `godot.Tween_EaseType` for `ease_type` parameters. These values control the timing and direction of the interpolation. See the class description for more information.
	**/
	@:native("TargetingMethod")
	public overload function targetingMethod(object:godot.Object, method:std.String, initial:godot.Object, initialMethod:std.String, finalVal:Dynamic, duration:Single, transType:godot.Tween_TransitionType):Bool;

	/**		
		Animates `method` of `object` from the value returned by `initial_method` to `final_val` for `duration` seconds, `delay` seconds later. Methods are animated by calling them with consecutive values.
		
		Use `godot.Tween_TransitionType` for `trans_type` and `godot.Tween_EaseType` for `ease_type` parameters. These values control the timing and direction of the interpolation. See the class description for more information.
	**/
	@:native("TargetingMethod")
	public overload function targetingMethod(object:godot.Object, method:std.String, initial:godot.Object, initialMethod:std.String, finalVal:Dynamic, duration:Single, transType:godot.Tween_TransitionType, easeType:godot.Tween_EaseType):Bool;

	/**		
		Animates `method` of `object` from the value returned by `initial_method` to `final_val` for `duration` seconds, `delay` seconds later. Methods are animated by calling them with consecutive values.
		
		Use `godot.Tween_TransitionType` for `trans_type` and `godot.Tween_EaseType` for `ease_type` parameters. These values control the timing and direction of the interpolation. See the class description for more information.
	**/
	@:native("TargetingMethod")
	public overload function targetingMethod(object:godot.Object, method:std.String, initial:godot.Object, initialMethod:std.String, finalVal:Dynamic, duration:Single, transType:godot.Tween_TransitionType, easeType:godot.Tween_EaseType, delay:Single):Bool;
	#end
}
