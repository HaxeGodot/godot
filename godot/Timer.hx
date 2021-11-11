// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Counts down a specified interval and emits a signal on reaching 0. Can be set to repeat or "one-shot" mode.

Note: To create a one-shot timer without instantiating a node, use `godot.SceneTree.createTimer`.
**/
@:libType
@:csNative
@:native("Godot.Timer")
@:autoBuild(godot.Godot.buildUserClass())
extern class Timer extends godot.Node {
	/**
		`timeout` signal.
		
		Emitted when the timer reaches 0.
	**/
	public var onTimeout(get, never):Signal<Void->Void>;
	@:dox(hide) @:noCompletion inline function get_onTimeout():Signal<Void->Void> {
		return new Signal(this, "timeout", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	/**		
		The timer's remaining time in seconds. Returns 0 if the timer is inactive.
		
		Note: You cannot set this value. To change the timer's remaining time, use `godot.Timer.start`.
	**/
	@:native("TimeLeft")
	public var timeLeft(default, never):Single;

	/**		
		If `true`, the timer is paused and will not process until it is unpaused again, even if `godot.Timer.start` is called.
	**/
	@:native("Paused")
	public var paused:Bool;

	/**		
		If `true`, the timer will automatically start when entering the scene tree.
		
		Note: This property is automatically set to `false` after the timer enters the scene tree and starts.
	**/
	@:native("Autostart")
	public var autostart:Bool;

	/**		
		If `true`, the timer will stop when reaching 0. If `false`, it will restart.
	**/
	@:native("OneShot")
	public var oneShot:Bool;

	/**		
		The wait time in seconds.
		
		Note: Timers can only emit once per rendered frame at most (or once per physics frame if `godot.Timer.processMode` is `godot.Timer_TimerProcessMode.physics`). This means very low wait times (lower than 0.05 seconds) will behave in significantly different ways depending on the rendered framerate. For very low wait times, it is recommended to use a process loop in a script instead of using a Timer node.
	**/
	@:native("WaitTime")
	public var waitTime:Single;

	/**		
		Processing mode. See `godot.Timer_TimerProcessMode`.
	**/
	@:native("ProcessMode")
	public var processMode:godot.Timer_TimerProcessMode;

	@:native("new")
	public function new():Void;

	@:native("SetWaitTime")
	public function setWaitTime(timeSec:Single):Void;

	@:native("GetWaitTime")
	public function getWaitTime():Single;

	@:native("SetOneShot")
	public function setOneShot(enable:Bool):Void;

	@:native("IsOneShot")
	public function isOneShot():Bool;

	@:native("SetAutostart")
	public function setAutostart(enable:Bool):Void;

	@:native("HasAutostart")
	public function hasAutostart():Bool;

	#if doc_gen
	/**		
		Starts the timer. Sets `wait_time` to `time_sec` if `time_sec &gt; 0`. This also resets the remaining time to `wait_time`.
		
		Note: This method will not resume a paused timer. See `godot.Timer.paused`.
	**/
	@:native("Start")
	public function start(?timeSec:Single):Void;
	#else
	/**		
		Starts the timer. Sets `wait_time` to `time_sec` if `time_sec &gt; 0`. This also resets the remaining time to `wait_time`.
		
		Note: This method will not resume a paused timer. See `godot.Timer.paused`.
	**/
	@:native("Start")
	public overload function start():Void;

	/**		
		Starts the timer. Sets `wait_time` to `time_sec` if `time_sec &gt; 0`. This also resets the remaining time to `wait_time`.
		
		Note: This method will not resume a paused timer. See `godot.Timer.paused`.
	**/
	@:native("Start")
	public overload function start(timeSec:Single):Void;
	#end

	/**		
		Stops the timer.
	**/
	@:native("Stop")
	public function stop():Void;

	@:native("SetPaused")
	public function setPaused(paused:Bool):Void;

	@:native("IsPaused")
	public function isPaused():Bool;

	/**		
		Returns `true` if the timer is stopped.
	**/
	@:native("IsStopped")
	public function isStopped():Bool;

	@:native("GetTimeLeft")
	public function getTimeLeft():Single;

	@:native("SetTimerProcessMode")
	public function setTimerProcessMode(mode:godot.Timer_TimerProcessMode):Void;

	@:native("GetTimerProcessMode")
	public function getTimerProcessMode():godot.Timer_TimerProcessMode;
}
