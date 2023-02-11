// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
The RID type is used to access the unique integer ID of a resource.
They are opaque, which means they do not grant access to the associated
resource by themselves. They are used by and with the low-level Server
classes such as `godot.VisualServer`.
**/
@:libType
@:csNative
@:native("Godot.RID")
@:autoBuild(godot.Godot.buildUserClass())
extern class RID implements cs.system.IDisposable {
	/**		
		The pointer to the native instance of this `godot.RID`.
	**/
	@:native("NativeInstance") @:readOnly
	public var nativeInstance(default, never):cs.system.IntPtr;

	/**		
		Disposes of this `godot.RID`.
	**/
	@:native("Dispose")
	public function dispose():Void;

	/**		
		Constructs a new `godot.RID` for the given `godot.Object` `from`.
	**/
	@:native("new")
	public function new(from:godot.Object):Void;

	/**		
		Returns the ID of the referenced resource.
		
		@returns The ID of the referenced resource.
	**/
	@:native("GetId")
	public function getId():Int;

	/**		
		Converts this `godot.RID` to a string.
		
		@returns A string representation of this RID.
	**/
	@:native("ToString")
	public function toString():std.String;
}
