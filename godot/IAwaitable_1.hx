// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

@:libType
@:csNative
@:native("Godot.IAwaitable`1")
@:autoBuild(godot.Godot.buildUserClass())
extern interface IAwaitable_1<T0> {
	@:native("GetAwaiter")
	public function getAwaiter():godot.IAwaiter_1<T0>;
}
