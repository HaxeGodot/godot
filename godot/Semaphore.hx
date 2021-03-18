// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
A synchronization semaphore which can be used to synchronize multiple `godot.Thread`s. Initialized to zero on creation. Be careful to avoid deadlocks. For a binary version, see `godot.Mutex`.
**/
@:libType
@:csNative
@:native("Godot.Semaphore")
@:autoBuild(godot.Godot.buildUserClass())
extern class Semaphore extends godot.Reference {
	@:native("new")
	public function new():Void;

	/**		
		Tries to wait for the `godot.Semaphore`, if its value is zero, blocks until non-zero. Returns  on success,  otherwise.
	**/
	@:native("Wait")
	public function wait():godot.Error;

	/**		
		Lowers the `godot.Semaphore`, allowing one more thread in. Returns  on success,  otherwise.
	**/
	@:native("Post")
	public function post():godot.Error;
}
