// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
`godot.AudioServer` is a low-level server interface for audio access. It is in charge of creating sample data (playable audio) as well as its playback via a voice interface.
**/
@:libType
@:csNative
@:native("Godot.AudioServer")
@:autoBuild(godot.Godot.buildUserClass())
extern class AudioServer {
	/**
		`bus_layout_changed` signal.
		
		Emitted when the `AudioBusLayout` changes.
	**/
	public static var onBusLayoutChanged(get, never):Signal<Void->Void>;
	@:dox(hide) inline static function get_onBusLayoutChanged():Signal<Void->Void> {
		return new Signal(SINGLETON, "bus_layout_changed", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	@:native("Singleton")
	public static var SINGLETON(default, never):godot.Object;

	/**		
		Scales the rate at which audio is played (i.e. setting it to `0.5` will make the audio be played twice as fast).
	**/
	@:native("GlobalRateScale")
	public static var GLOBAL_RATE_SCALE:Single;

	/**		
		Name of the current device for audio output (see `godot.AudioServer.getDeviceList`).
	**/
	@:native("Device")
	public static var DEVICE:std.String;

	/**		
		Number of available audio buses.
	**/
	@:native("BusCount")
	public static var BUS_COUNT:Int;

	@:native("SetBusCount")
	public static function setBusCount(amount:Int):Void;

	@:native("GetBusCount")
	public static function getBusCount():Int;

	/**		
		Removes the bus at index `index`.
	**/
	@:native("RemoveBus")
	public static function removeBus(index:Int):Void;

	#if doc_gen
	/**		
		Adds a bus at `at_position`.
	**/
	@:native("AddBus")
	public static function addBus(?atPosition:Int):Void;
	#else
	/**		
		Adds a bus at `at_position`.
	**/
	@:native("AddBus")
	public static overload function addBus():Void;

	/**		
		Adds a bus at `at_position`.
	**/
	@:native("AddBus")
	public static overload function addBus(atPosition:Int):Void;
	#end

	/**		
		Moves the bus from index `index` to index `to_index`.
	**/
	@:native("MoveBus")
	public static function moveBus(index:Int, toIndex:Int):Void;

	/**		
		Sets the name of the bus at index `bus_idx` to `name`.
	**/
	@:native("SetBusName")
	public static function setBusName(busIdx:Int, name:std.String):Void;

	/**		
		Returns the name of the bus with the index `bus_idx`.
	**/
	@:native("GetBusName")
	public static function getBusName(busIdx:Int):std.String;

	/**		
		Returns the index of the bus with the name `bus_name`.
	**/
	@:native("GetBusIndex")
	public static function getBusIndex(busName:std.String):Int;

	/**		
		Returns the amount of channels of the bus at index `bus_idx`.
	**/
	@:native("GetBusChannels")
	public static function getBusChannels(busIdx:Int):Int;

	/**		
		Sets the volume of the bus at index `bus_idx` to `volume_db`.
	**/
	@:native("SetBusVolumeDb")
	public static function setBusVolumeDb(busIdx:Int, volumeDb:Single):Void;

	/**		
		Returns the volume of the bus at index `bus_idx` in dB.
	**/
	@:native("GetBusVolumeDb")
	public static function getBusVolumeDb(busIdx:Int):Single;

	/**		
		Connects the output of the bus at `bus_idx` to the bus named `send`.
	**/
	@:native("SetBusSend")
	public static function setBusSend(busIdx:Int, send:std.String):Void;

	/**		
		Returns the name of the bus that the bus at index `bus_idx` sends to.
	**/
	@:native("GetBusSend")
	public static function getBusSend(busIdx:Int):std.String;

	/**		
		If `true`, the bus at index `bus_idx` is in solo mode.
	**/
	@:native("SetBusSolo")
	public static function setBusSolo(busIdx:Int, enable:Bool):Void;

	/**		
		If `true`, the bus at index `bus_idx` is in solo mode.
	**/
	@:native("IsBusSolo")
	public static function isBusSolo(busIdx:Int):Bool;

	/**		
		If `true`, the bus at index `bus_idx` is muted.
	**/
	@:native("SetBusMute")
	public static function setBusMute(busIdx:Int, enable:Bool):Void;

	/**		
		If `true`, the bus at index `bus_idx` is muted.
	**/
	@:native("IsBusMute")
	public static function isBusMute(busIdx:Int):Bool;

	/**		
		If `true`, the bus at index `bus_idx` is bypassing effects.
	**/
	@:native("SetBusBypassEffects")
	public static function setBusBypassEffects(busIdx:Int, enable:Bool):Void;

	/**		
		If `true`, the bus at index `bus_idx` is bypassing effects.
	**/
	@:native("IsBusBypassingEffects")
	public static function isBusBypassingEffects(busIdx:Int):Bool;

	#if doc_gen
	/**		
		Adds an `godot.AudioEffect` effect to the bus `bus_idx` at `at_position`.
	**/
	@:native("AddBusEffect")
	public static function addBusEffect(busIdx:Int, effect:godot.AudioEffect, ?atPosition:Int):Void;
	#else
	/**		
		Adds an `godot.AudioEffect` effect to the bus `bus_idx` at `at_position`.
	**/
	@:native("AddBusEffect")
	public static overload function addBusEffect(busIdx:Int, effect:godot.AudioEffect):Void;

	/**		
		Adds an `godot.AudioEffect` effect to the bus `bus_idx` at `at_position`.
	**/
	@:native("AddBusEffect")
	public static overload function addBusEffect(busIdx:Int, effect:godot.AudioEffect, atPosition:Int):Void;
	#end

	/**		
		Removes the effect at index `effect_idx` from the bus at index `bus_idx`.
	**/
	@:native("RemoveBusEffect")
	public static function removeBusEffect(busIdx:Int, effectIdx:Int):Void;

	/**		
		Returns the number of effects on the bus at `bus_idx`.
	**/
	@:native("GetBusEffectCount")
	public static function getBusEffectCount(busIdx:Int):Int;

	/**		
		Returns the `godot.AudioEffect` at position `effect_idx` in bus `bus_idx`.
	**/
	@:native("GetBusEffect")
	public static function getBusEffect(busIdx:Int, effectIdx:Int):godot.AudioEffect;

	#if doc_gen
	/**		
		Returns the `godot.AudioEffectInstance` assigned to the given bus and effect indices (and optionally channel).
	**/
	@:native("GetBusEffectInstance")
	public static function getBusEffectInstance(busIdx:Int, effectIdx:Int, ?channel:Int):godot.AudioEffectInstance;
	#else
	/**		
		Returns the `godot.AudioEffectInstance` assigned to the given bus and effect indices (and optionally channel).
	**/
	@:native("GetBusEffectInstance")
	public static overload function getBusEffectInstance(busIdx:Int, effectIdx:Int):godot.AudioEffectInstance;

	/**		
		Returns the `godot.AudioEffectInstance` assigned to the given bus and effect indices (and optionally channel).
	**/
	@:native("GetBusEffectInstance")
	public static overload function getBusEffectInstance(busIdx:Int, effectIdx:Int, channel:Int):godot.AudioEffectInstance;
	#end

	/**		
		Swaps the position of two effects in bus `bus_idx`.
	**/
	@:native("SwapBusEffects")
	public static function swapBusEffects(busIdx:Int, effectIdx:Int, byEffectIdx:Int):Void;

	/**		
		If `true`, the effect at index `effect_idx` on the bus at index `bus_idx` is enabled.
	**/
	@:native("SetBusEffectEnabled")
	public static function setBusEffectEnabled(busIdx:Int, effectIdx:Int, enabled:Bool):Void;

	/**		
		If `true`, the effect at index `effect_idx` on the bus at index `bus_idx` is enabled.
	**/
	@:native("IsBusEffectEnabled")
	public static function isBusEffectEnabled(busIdx:Int, effectIdx:Int):Bool;

	/**		
		Returns the peak volume of the left speaker at bus index `bus_idx` and channel index `channel`.
	**/
	@:native("GetBusPeakVolumeLeftDb")
	public static function getBusPeakVolumeLeftDb(busIdx:Int, channel:Int):Single;

	/**		
		Returns the peak volume of the right speaker at bus index `bus_idx` and channel index `channel`.
	**/
	@:native("GetBusPeakVolumeRightDb")
	public static function getBusPeakVolumeRightDb(busIdx:Int, channel:Int):Single;

	@:native("SetGlobalRateScale")
	public static function setGlobalRateScale(scale:Single):Void;

	@:native("GetGlobalRateScale")
	public static function getGlobalRateScale():Single;

	/**		
		Locks the audio driver's main loop.
		
		Note: Remember to unlock it afterwards.
	**/
	@:native("Lock")
	public static function lock():Void;

	/**		
		Unlocks the audio driver's main loop. (After locking it, you should always unlock it.)
	**/
	@:native("Unlock")
	public static function unlock():Void;

	/**		
		Returns the speaker configuration.
	**/
	@:native("GetSpeakerMode")
	public static function getSpeakerMode():godot.AudioServer_SpeakerMode;

	/**		
		Returns the sample rate at the output of the `godot.AudioServer`.
	**/
	@:native("GetMixRate")
	public static function getMixRate():Single;

	/**		
		Returns the names of all audio devices detected on the system.
	**/
	@:native("GetDeviceList")
	public static function getDeviceList():godot.collections.Array;

	@:native("GetDevice")
	public static function getDevice():std.String;

	@:native("SetDevice")
	public static function setDevice(device:std.String):Void;

	/**		
		Returns the relative time until the next mix occurs.
	**/
	@:native("GetTimeToNextMix")
	public static function getTimeToNextMix():Float;

	/**		
		Returns the relative time since the last mix occurred.
	**/
	@:native("GetTimeSinceLastMix")
	public static function getTimeSinceLastMix():Float;

	/**		
		Returns the audio driver's output latency.
	**/
	@:native("GetOutputLatency")
	public static function getOutputLatency():Float;

	/**		
		Returns the names of all audio input devices detected on the system.
	**/
	@:native("CaptureGetDeviceList")
	public static function captureGetDeviceList():godot.collections.Array;

	/**		
		Name of the current device for audio input (see `godot.AudioServer.captureGetDeviceList`).
	**/
	@:native("CaptureGetDevice")
	public static function captureGetDevice():std.String;

	/**		
		Sets which audio input device is used for audio capture.
	**/
	@:native("CaptureSetDevice")
	public static function captureSetDevice(name:std.String):Void;

	/**		
		Overwrites the currently used `godot.AudioBusLayout`.
	**/
	@:native("SetBusLayout")
	public static function setBusLayout(busLayout:godot.AudioBusLayout):Void;

	/**		
		Generates an `godot.AudioBusLayout` using the available buses and effects.
	**/
	@:native("GenerateBusLayout")
	public static function generateBusLayout():godot.AudioBusLayout;
}
