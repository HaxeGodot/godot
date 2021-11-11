// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.VisualScriptCustomNode.StartMode")
@:csNative
extern enum VisualScriptCustomNode_StartMode {
	/**		
		The start mode used the first time when `godot.VisualScriptCustomNode._Step` is called.
	**/
	BeginSequence;

	/**		
		The start mode used when `godot.VisualScriptCustomNode._Step` is called after coming back from a `godot.VisualScriptCustomNode.stepPushStackBit`.
	**/
	ContinueSequence;

	/**		
		The start mode used when `godot.VisualScriptCustomNode._Step` is called after resuming from `godot.VisualScriptCustomNode.stepYieldBit`.
	**/
	ResumeYield;
}
