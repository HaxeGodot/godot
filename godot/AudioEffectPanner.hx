// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Determines how much of an audio signal is sent to the left and right buses.
**/
@:libType
@:csNative
@:native("Godot.AudioEffectPanner")
@:autoBuild(godot.Godot.buildUserClass())
extern class AudioEffectPanner extends godot.AudioEffect {
	/**		
		Pan position. Value can range from -1 (fully left) to 1 (fully right).
	**/
	@:native("Pan")
	public var pan:Single;

	@:native("new")
	public function new():Void;

	@:native("SetPan")
	public function setPan(cpanume:Single):Void;

	@:native("GetPan")
	public function getPan():Single;
}
