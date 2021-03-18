// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

@:libType
@:csNative
@:native("Godot.IAwaitable")
@:autoBuild(godot.Godot.buildUserClass())
extern interface IAwaitable {
	@:native("GetAwaiter")
	public function getAwaiter():godot.IAwaiter;
}
