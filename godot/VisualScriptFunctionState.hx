// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
`godot.VisualScriptFunctionState` is returned from `godot.VisualScriptYield` and can be used to resume a paused function call.
**/
@:libType
@:csNative
@:native("Godot.VisualScriptFunctionState")
@:autoBuild(godot.Godot.buildUserClass())
extern class VisualScriptFunctionState extends godot.Reference {
	@:native("new")
	public function new():Void;

	/**		
		Connects this `godot.VisualScriptFunctionState` to a signal in the given object to automatically resume when it's emitted.
	**/
	@:native("ConnectToSignal")
	public function connectToSignal(obj:godot.Object, signals:std.String, args:godot.collections.Array):Void;

	#if doc_gen
	/**		
		Resumes the function to run from the point it was yielded.
	**/
	@:native("Resume")
	public function resume(?args:godot.collections.Array):Dynamic;
	#else
	/**		
		Resumes the function to run from the point it was yielded.
	**/
	@:native("Resume")
	public overload function resume():Dynamic;

	/**		
		Resumes the function to run from the point it was yielded.
	**/
	@:native("Resume")
	public overload function resume(args:godot.collections.Array):Dynamic;
	#end

	/**		
		Returns whether the function state is valid.
	**/
	@:native("IsValid")
	public function isValid():Bool;
}
