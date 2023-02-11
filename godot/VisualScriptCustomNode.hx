// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
A custom Visual Script node which can be scripted in powerful ways.
**/
@:libType
@:csNative
@:native("Godot.VisualScriptCustomNode")
@:autoBuild(godot.Godot.buildUserClass())
extern class VisualScriptCustomNode extends godot.VisualScriptNode {
	/**		
		Hint used by `godot.VisualScriptCustomNode._Step` to tell that the function should be yielded.
		
		Using this requires you to have at least one working memory slot, which is used for the `godot.VisualScriptFunctionState`.
	**/
	@:native("StepYieldBit") @:readOnly
	public static var STEP_YIELD_BIT(default, never):Int;

	/**		
		Hint used by `godot.VisualScriptCustomNode._Step` to tell that control should stop and exit the function.
	**/
	@:native("StepExitFunctionBit") @:readOnly
	public static var STEP_EXIT_FUNCTION_BIT(default, never):Int;

	@:native("StepNoAdvanceBit") @:readOnly
	public static var STEP_NO_ADVANCE_BIT(default, never):Int;

	/**		
		Hint used by `godot.VisualScriptCustomNode._Step` to tell that control should return back, either hitting a previous `godot.VisualScriptCustomNode.stepPushStackBit` or exiting the function.
	**/
	@:native("StepGoBackBit") @:readOnly
	public static var STEP_GO_BACK_BIT(default, never):Int;

	/**		
		Hint used by `godot.VisualScriptCustomNode._Step` to tell that control should return to it when there is no other node left to execute.
		
		This is used by `godot.VisualScriptCondition` to redirect the sequence to the "Done" port after the `true`/`false` branch has finished execution.
	**/
	@:native("StepPushStackBit") @:readOnly
	public static var STEP_PUSH_STACK_BIT(default, never):Int;

	@:native("new")
	public function new():Void;

	/**		
		Return the node's title.
	**/
	@:native("_GetCaption")
	public function _GetCaption():std.String;

	/**		
		Return the node's category.
	**/
	@:native("_GetCategory")
	public function _GetCategory():std.String;

	/**		
		Return the count of input value ports.
	**/
	@:native("_GetInputValuePortCount")
	public function _GetInputValuePortCount():Int;

	/**		
		Return the specified input port's hint. See the `godot.PropertyHint` hints.
	**/
	@:native("_GetInputValuePortHint")
	public function _GetInputValuePortHint(idx:Int):Int;

	/**		
		Return the specified input port's hint string.
	**/
	@:native("_GetInputValuePortHintString")
	public function _GetInputValuePortHintString(idx:Int):std.String;

	/**		
		Return the specified input port's name.
	**/
	@:native("_GetInputValuePortName")
	public function _GetInputValuePortName(idx:Int):std.String;

	/**		
		Return the specified input port's type. See the `godot.Variant_Type` values.
	**/
	@:native("_GetInputValuePortType")
	public function _GetInputValuePortType(idx:Int):Int;

	/**		
		Return the amount of output sequence ports.
	**/
	@:native("_GetOutputSequencePortCount")
	public function _GetOutputSequencePortCount():Int;

	/**		
		Return the specified sequence output's name.
	**/
	@:native("_GetOutputSequencePortText")
	public function _GetOutputSequencePortText(idx:Int):std.String;

	/**		
		Return the amount of output value ports.
	**/
	@:native("_GetOutputValuePortCount")
	public function _GetOutputValuePortCount():Int;

	/**		
		Return the specified output port's hint. See the `godot.PropertyHint` hints.
	**/
	@:native("_GetOutputValuePortHint")
	public function _GetOutputValuePortHint(idx:Int):Int;

	/**		
		Return the specified output port's hint string.
	**/
	@:native("_GetOutputValuePortHintString")
	public function _GetOutputValuePortHintString(idx:Int):std.String;

	/**		
		Return the specified output port's name.
	**/
	@:native("_GetOutputValuePortName")
	public function _GetOutputValuePortName(idx:Int):std.String;

	/**		
		Return the specified output port's type. See the `godot.Variant_Type` values.
	**/
	@:native("_GetOutputValuePortType")
	public function _GetOutputValuePortType(idx:Int):Int;

	/**		
		Return the custom node's text, which is shown right next to the input sequence port (if there is none, on the place that is usually taken by it).
	**/
	@:native("_GetText")
	public function _GetText():std.String;

	/**		
		Return the size of the custom node's working memory. See `godot.VisualScriptCustomNode._Step` for more details.
	**/
	@:native("_GetWorkingMemorySize")
	public function _GetWorkingMemorySize():Int;

	/**		
		Return whether the custom node has an input sequence port.
	**/
	@:native("_HasInputSequencePort")
	public function _HasInputSequencePort():Bool;

	/**		
		Execute the custom node's logic, returning the index of the output sequence port to use or a `String` when there is an error.
		
		The `inputs` array contains the values of the input ports.
		
		`outputs` is an array whose indices should be set to the respective outputs.
		
		The `start_mode` is usually `godot.VisualScriptCustomNode_StartMode.beginSequence`, unless you have used the `STEP_*` constants.
		
		`working_mem` is an array which can be used to persist information between runs of the custom node. The size needs to be predefined using `godot.VisualScriptCustomNode._GetWorkingMemorySize`.
		
		When returning, you can mask the returned value with one of the `STEP_*` constants.
	**/
	@:native("_Step")
	public function _Step(inputs:godot.collections.Array, outputs:godot.collections.Array, startMode:Int, workingMem:godot.collections.Array):Dynamic;
}
