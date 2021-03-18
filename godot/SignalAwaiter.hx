// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

@:libType
@:csNative
@:native("Godot.SignalAwaiter")
@:autoBuild(godot.Godot.buildUserClass())
extern class SignalAwaiter implements godot.IAwaiter_1<cs.NativeArray<Dynamic>> implements cs.system.runtime.compilerservices.INotifyCompletion implements godot.IAwaitable_1<cs.NativeArray<Dynamic>> {
	@:native("IsCompleted")
	public var isCompleted(default, never):Bool;

	@:native("new")
	public function new(source:godot.Object, signal:std.String, target:godot.Object):Void;

	@:native("OnCompleted")
	public function onCompleted(action:cs.system.Action):Void;

	@:native("GetResult")
	public function getResult():cs.NativeArray<Dynamic>;

	@:native("GetAwaiter")
	public function getAwaiter():godot.IAwaiter_1<cs.NativeArray<Dynamic>>;
}
