// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot.collections;

import cs.system.*;

@:libType
@:csNative
@:native("Godot.Collections.DictionarySafeHandle")
@:autoBuild(godot.Godot.buildUserClass())
extern class DictionarySafeHandle extends cs.system.runtime.interopservices.SafeHandle {
	@:native("IsInvalid") @:readOnly
	public var isInvalid(default, never):Bool;

	@:native("new")
	public function new(handle:cs.system.IntPtr):Void;

	@:native("ReleaseHandle") @:protected
	public function releaseHandle():Bool;
}
