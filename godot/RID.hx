// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

@:libType
@:csNative
@:native("Godot.RID")
@:autoBuild(godot.Godot.buildUserClass())
extern class RID implements cs.system.IDisposable {
	@:native("NativeInstance")
	public var nativeInstance(default, never):cs.system.IntPtr;

	@:native("Dispose")
	public function dispose():Void;

	@:native("new")
	public function new(from:godot.Object):Void;

	@:native("GetId")
	public function getId():Int;

	@:native("ToString")
	public function toString():std.String;
}
