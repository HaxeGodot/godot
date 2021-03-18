// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
A resource to add to an `godot.AnimationNodeBlendTree`. This node will execute a sub-animation and return once it finishes. Blend times for fading in and out can be customized, as well as filters.
**/
@:libType
@:csNative
@:native("Godot.AnimationNodeOneShot")
@:autoBuild(godot.Godot.buildUserClass())
extern class AnimationNodeOneShot extends godot.AnimationNode {
	@:native("Sync")
	public var sync:Bool;

	/**		
		If `godot.AnimationNodeOneShot.autorestart` is `true`, a random additional delay (in seconds) between 0 and this value will be added to `godot.AnimationNodeOneShot.autorestartDelay`.
	**/
	@:native("AutorestartRandomDelay")
	public var autorestartRandomDelay:Single;

	/**		
		The delay after which the automatic restart is triggered, in seconds.
	**/
	@:native("AutorestartDelay")
	public var autorestartDelay:Single;

	/**		
		If `true`, the sub-animation will restart automatically after finishing.
	**/
	@:native("Autorestart")
	public var autorestart:Bool;

	@:native("FadeoutTime")
	public var fadeoutTime:Single;

	@:native("FadeinTime")
	public var fadeinTime:Single;

	@:native("new")
	public function new():Void;

	@:native("SetFadeinTime")
	public function setFadeinTime(time:Single):Void;

	@:native("GetFadeinTime")
	public function getFadeinTime():Single;

	@:native("SetFadeoutTime")
	public function setFadeoutTime(time:Single):Void;

	@:native("GetFadeoutTime")
	public function getFadeoutTime():Single;

	@:native("SetAutorestart")
	public function setAutorestart(enable:Bool):Void;

	@:native("HasAutorestart")
	public function hasAutorestart():Bool;

	@:native("SetAutorestartDelay")
	public function setAutorestartDelay(enable:Single):Void;

	@:native("GetAutorestartDelay")
	public function getAutorestartDelay():Single;

	@:native("SetAutorestartRandomDelay")
	public function setAutorestartRandomDelay(enable:Single):Void;

	@:native("GetAutorestartRandomDelay")
	public function getAutorestartRandomDelay():Single;

	@:native("SetMixMode")
	public function setMixMode(mode:godot.AnimationNodeOneShot_MixMode):Void;

	@:native("GetMixMode")
	public function getMixMode():godot.AnimationNodeOneShot_MixMode;

	@:native("SetUseSync")
	public function setUseSync(enable:Bool):Void;

	@:native("IsUsingSync")
	public function isUsingSync():Bool;
}
