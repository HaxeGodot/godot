// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Base class for any object that keeps a reference count. `godot.Resource` and many other helper objects inherit this class.

Unlike `godot.Object`s, References keep an internal reference counter so that they are automatically released when no longer in use, and only then. References therefore do not need to be freed manually with `godot.Object.free`.

In the vast majority of use cases, instantiating and using `godot.Reference`-derived types is all you need to do. The methods provided in this class are only for advanced users, and can cause issues if misused.
**/
@:libType
@:csNative
@:native("Godot.Reference")
@:autoBuild(godot.Godot.buildUserClass())
extern class Reference extends godot.Object {
	@:native("new")
	public function new():Void;

	/**		
		Initializes the internal reference counter. Use this only if you really know what you are doing.
		
		Returns whether the initialization was successful.
	**/
	@:native("InitRef")
	public function initRef():Bool;

	/**		
		Increments the internal reference counter. Use this only if you really know what you are doing.
		
		Returns `true` if the increment was successful, `false` otherwise.
	**/
	@:native("Reference_")
	public function reference_():Bool;

	/**		
		Decrements the internal reference counter. Use this only if you really know what you are doing.
		
		Returns `true` if the decrement was successful, `false` otherwise.
	**/
	@:native("Unreference")
	public function unreference():Bool;
}
