// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

@:libType
@:csNative
@:native("Godot.ISerializationListener")
@:autoBuild(godot.Godot.buildUserClass())
extern interface ISerializationListener {
	@:native("OnBeforeSerialize")
	public function onBeforeSerialize():Void;

	@:native("OnAfterDeserialize")
	public function onAfterDeserialize():Void;
}
