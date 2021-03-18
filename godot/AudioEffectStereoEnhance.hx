// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

@:libType
@:csNative
@:native("Godot.AudioEffectStereoEnhance")
@:autoBuild(godot.Godot.buildUserClass())
extern class AudioEffectStereoEnhance extends godot.AudioEffect {
	@:native("Surround")
	public var surround:Single;

	@:native("TimePulloutMs")
	public var timePulloutMs:Single;

	@:native("PanPullout")
	public var panPullout:Single;

	@:native("new")
	public function new():Void;

	@:native("SetPanPullout")
	public function setPanPullout(amount:Single):Void;

	@:native("GetPanPullout")
	public function getPanPullout():Single;

	@:native("SetTimePullout")
	public function setTimePullout(amount:Single):Void;

	@:native("GetTimePullout")
	public function getTimePullout():Single;

	@:native("SetSurround")
	public function setSurround(amount:Single):Void;

	@:native("GetSurround")
	public function getSurround():Single;
}
