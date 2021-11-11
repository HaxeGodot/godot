// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
A synchronization mutex (mutual exclusion). This is used to synchronize multiple `godot.Thread`s, and is equivalent to a binary `godot.Semaphore`. It guarantees that only one thread can ever acquire the lock at a time. A mutex can be used to protect a critical section; however, be careful to avoid deadlocks.
**/
@:libType
@:csNative
@:native("Godot.Mutex")
@:autoBuild(godot.Godot.buildUserClass())
extern class Mutex extends godot.Reference {
	@:native("new")
	public function new():Void;

	/**		
		Locks this `godot.Mutex`, blocks until it is unlocked by the current owner.
		
		Note: This function returns without blocking if the thread already has ownership of the mutex.
	**/
	@:native("Lock")
	public function lock():Void;

	/**		
		Tries locking this `godot.Mutex`, but does not block. Returns `OK` on success, `ERR_BUSY` otherwise.
		
		Note: This function returns `OK` if the thread already has ownership of the mutex.
	**/
	@:native("TryLock")
	public function tryLock():godot.Error;

	/**		
		Unlocks this `godot.Mutex`, leaving it to other threads.
		
		Note: If a thread called `godot.Mutex.lock` or `godot.Mutex.tryLock` multiple times while already having ownership of the mutex, it must also call `godot.Mutex.unlock` the same number of times in order to unlock it correctly.
	**/
	@:native("Unlock")
	public function unlock():Void;
}
