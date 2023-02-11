// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Event arguments for when unhandled exceptions occur.
**/
@:libType
@:csNative
@:native("Godot.UnhandledExceptionArgs")
@:autoBuild(godot.Godot.buildUserClass())
extern class UnhandledExceptionArgs {
	/**		
		Exception object.
	**/
	@:native("Exception") @:readOnly
	public var exception(default, never):cs.system.Exception;
}
