// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

@:libType
@:csNative
@:native("Godot.VisualScriptFunctionState")
@:autoBuild(godot.Godot.buildUserClass())
extern class VisualScriptFunctionState extends godot.Reference {
	@:native("new")
	public function new():Void;

	@:native("ConnectToSignal")
	public function connectToSignal(obj:godot.Object, signals:std.String, args:godot.collections.Array):Void;

	#if doc_gen
	@:native("Resume")
	public function resume(?args:godot.collections.Array):Dynamic;
	#else
	@:native("Resume")
	public overload function resume():Dynamic;

	@:native("Resume")
	public overload function resume(args:godot.collections.Array):Dynamic;
	#end

	@:native("IsValid")
	public function isValid():Bool;
}
