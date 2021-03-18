// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Simple state machine for cases which don't require a more advanced `godot.AnimationNodeStateMachine`. Animations can be connected to the inputs and transition times can be specified.
**/
@:libType
@:csNative
@:native("Godot.AnimationNodeTransition")
@:autoBuild(godot.Godot.buildUserClass())
extern class AnimationNodeTransition extends godot.AnimationNode {
	@:native("Input31__autoAdvance")
	public var input31__autoAdvance:Bool;

	@:native("Input31__name")
	public var input31__name:std.String;

	@:native("Input30__autoAdvance")
	public var input30__autoAdvance:Bool;

	@:native("Input30__name")
	public var input30__name:std.String;

	@:native("Input29__autoAdvance")
	public var input29__autoAdvance:Bool;

	@:native("Input29__name")
	public var input29__name:std.String;

	@:native("Input28__autoAdvance")
	public var input28__autoAdvance:Bool;

	@:native("Input28__name")
	public var input28__name:std.String;

	@:native("Input27__autoAdvance")
	public var input27__autoAdvance:Bool;

	@:native("Input27__name")
	public var input27__name:std.String;

	@:native("Input26__autoAdvance")
	public var input26__autoAdvance:Bool;

	@:native("Input26__name")
	public var input26__name:std.String;

	@:native("Input25__autoAdvance")
	public var input25__autoAdvance:Bool;

	@:native("Input25__name")
	public var input25__name:std.String;

	@:native("Input24__autoAdvance")
	public var input24__autoAdvance:Bool;

	@:native("Input24__name")
	public var input24__name:std.String;

	@:native("Input23__autoAdvance")
	public var input23__autoAdvance:Bool;

	@:native("Input23__name")
	public var input23__name:std.String;

	@:native("Input22__autoAdvance")
	public var input22__autoAdvance:Bool;

	@:native("Input22__name")
	public var input22__name:std.String;

	@:native("Input21__autoAdvance")
	public var input21__autoAdvance:Bool;

	@:native("Input21__name")
	public var input21__name:std.String;

	@:native("Input20__autoAdvance")
	public var input20__autoAdvance:Bool;

	@:native("Input20__name")
	public var input20__name:std.String;

	@:native("Input19__autoAdvance")
	public var input19__autoAdvance:Bool;

	@:native("Input19__name")
	public var input19__name:std.String;

	@:native("Input18__autoAdvance")
	public var input18__autoAdvance:Bool;

	@:native("Input18__name")
	public var input18__name:std.String;

	@:native("Input17__autoAdvance")
	public var input17__autoAdvance:Bool;

	@:native("Input17__name")
	public var input17__name:std.String;

	@:native("Input16__autoAdvance")
	public var input16__autoAdvance:Bool;

	@:native("Input16__name")
	public var input16__name:std.String;

	@:native("Input15__autoAdvance")
	public var input15__autoAdvance:Bool;

	@:native("Input15__name")
	public var input15__name:std.String;

	@:native("Input14__autoAdvance")
	public var input14__autoAdvance:Bool;

	@:native("Input14__name")
	public var input14__name:std.String;

	@:native("Input13__autoAdvance")
	public var input13__autoAdvance:Bool;

	@:native("Input13__name")
	public var input13__name:std.String;

	@:native("Input12__autoAdvance")
	public var input12__autoAdvance:Bool;

	@:native("Input12__name")
	public var input12__name:std.String;

	@:native("Input11__autoAdvance")
	public var input11__autoAdvance:Bool;

	@:native("Input11__name")
	public var input11__name:std.String;

	@:native("Input10__autoAdvance")
	public var input10__autoAdvance:Bool;

	@:native("Input10__name")
	public var input10__name:std.String;

	@:native("Input9__autoAdvance")
	public var input9__autoAdvance:Bool;

	@:native("Input9__name")
	public var input9__name:std.String;

	@:native("Input8__autoAdvance")
	public var input8__autoAdvance:Bool;

	@:native("Input8__name")
	public var input8__name:std.String;

	@:native("Input7__autoAdvance")
	public var input7__autoAdvance:Bool;

	@:native("Input7__name")
	public var input7__name:std.String;

	@:native("Input6__autoAdvance")
	public var input6__autoAdvance:Bool;

	@:native("Input6__name")
	public var input6__name:std.String;

	@:native("Input5__autoAdvance")
	public var input5__autoAdvance:Bool;

	@:native("Input5__name")
	public var input5__name:std.String;

	@:native("Input4__autoAdvance")
	public var input4__autoAdvance:Bool;

	@:native("Input4__name")
	public var input4__name:std.String;

	@:native("Input3__autoAdvance")
	public var input3__autoAdvance:Bool;

	@:native("Input3__name")
	public var input3__name:std.String;

	@:native("Input2__autoAdvance")
	public var input2__autoAdvance:Bool;

	@:native("Input2__name")
	public var input2__name:std.String;

	@:native("Input1__autoAdvance")
	public var input1__autoAdvance:Bool;

	@:native("Input1__name")
	public var input1__name:std.String;

	@:native("Input0__autoAdvance")
	public var input0__autoAdvance:Bool;

	@:native("Input0__name")
	public var input0__name:std.String;

	/**		
		Cross-fading time (in seconds) between each animation connected to the inputs.
	**/
	@:native("XfadeTime")
	public var xfadeTime:Single;

	/**		
		The number of available input ports for this node.
	**/
	@:native("InputCount")
	public var inputCount:Int;

	@:native("new")
	public function new():Void;

	@:native("SetEnabledInputs")
	public function setEnabledInputs(amount:Int):Void;

	@:native("GetEnabledInputs")
	public function getEnabledInputs():Int;

	@:native("SetInputAsAutoAdvance")
	public function setInputAsAutoAdvance(input:Int, enable:Bool):Void;

	@:native("IsInputSetAsAutoAdvance")
	public function isInputSetAsAutoAdvance(input:Int):Bool;

	@:native("SetInputCaption")
	public function setInputCaption(input:Int, caption:std.String):Void;

	@:native("GetInputCaption")
	public function getInputCaption(input:Int):std.String;

	@:native("SetCrossFadeTime")
	public function setCrossFadeTime(time:Single):Void;

	@:native("GetCrossFadeTime")
	public function getCrossFadeTime():Single;
}
