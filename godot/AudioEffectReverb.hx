// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Simulates rooms of different sizes. Its parameters can be adjusted to simulate the sound of a specific room.
**/
@:libType
@:csNative
@:native("Godot.AudioEffectReverb")
@:autoBuild(godot.Godot.buildUserClass())
extern class AudioEffectReverb extends godot.AudioEffect {
	/**		
		Output percent of modified sound. At 0, only original sound is outputted. Value can range from 0 to 1.
	**/
	@:native("Wet")
	public var wet:Single;

	/**		
		Output percent of original sound. At 0, only modified sound is outputted. Value can range from 0 to 1.
	**/
	@:native("Dry")
	public var dry:Single;

	/**		
		High-pass filter passes signals with a frequency higher than a certain cutoff frequency and attenuates signals with frequencies lower than the cutoff frequency. Value can range from 0 to 1.
	**/
	@:native("Hipass")
	public var hipass:Single;

	/**		
		Widens or narrows the stereo image of the reverb tail. 1 means fully widens. Value can range from 0 to 1.
	**/
	@:native("Spread")
	public var spread:Single;

	/**		
		Defines how reflective the imaginary room's walls are. Value can range from 0 to 1.
	**/
	@:native("Damping")
	public var damping:Single;

	/**		
		Dimensions of simulated room. Bigger means more echoes. Value can range from 0 to 1.
	**/
	@:native("RoomSize")
	public var roomSize:Single;

	/**		
		Output percent of predelay. Value can range from 0 to 1.
	**/
	@:native("PredelayFeedback")
	public var predelayFeedback:Single;

	/**		
		Time between the original signal and the early reflections of the reverb signal, in milliseconds.
	**/
	@:native("PredelayMsec")
	public var predelayMsec:Single;

	@:native("new")
	public function new():Void;

	@:native("SetPredelayMsec")
	public function setPredelayMsec(msec:Single):Void;

	@:native("GetPredelayMsec")
	public function getPredelayMsec():Single;

	@:native("SetPredelayFeedback")
	public function setPredelayFeedback(feedback:Single):Void;

	@:native("GetPredelayFeedback")
	public function getPredelayFeedback():Single;

	@:native("SetRoomSize")
	public function setRoomSize(size:Single):Void;

	@:native("GetRoomSize")
	public function getRoomSize():Single;

	@:native("SetDamping")
	public function setDamping(amount:Single):Void;

	@:native("GetDamping")
	public function getDamping():Single;

	@:native("SetSpread")
	public function setSpread(amount:Single):Void;

	@:native("GetSpread")
	public function getSpread():Single;

	@:native("SetDry")
	public function setDry(amount:Single):Void;

	@:native("GetDry")
	public function getDry():Single;

	@:native("SetWet")
	public function setWet(amount:Single):Void;

	@:native("GetWet")
	public function getWet():Single;

	@:native("SetHpf")
	public function setHpf(amount:Single):Void;

	@:native("GetHpf")
	public function getHpf():Single;
}
