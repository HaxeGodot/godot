// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

@:libType
@:csNative
@:native("Godot.IAwaiter")
@:autoBuild(godot.Godot.buildUserClass())
extern interface IAwaiter extends cs.system.runtime.compilerservices.INotifyCompletion {
	@:native("IsCompleted")
	public var isCompleted(default, never):Bool;

	@:native("GetResult")
	public function getResult():Void;
}
