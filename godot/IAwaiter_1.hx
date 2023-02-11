// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

@:libType
@:csNative
@:native("Godot.IAwaiter`1")
@:autoBuild(godot.Godot.buildUserClass())
extern interface IAwaiter_1<T0> extends cs.system.runtime.compilerservices.INotifyCompletion {
	@:native("IsCompleted") @:readOnly
	public var isCompleted(default, never):Bool;

	@:native("GetResult")
	public function getResult():T0;
}
