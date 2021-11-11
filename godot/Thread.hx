// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
A unit of execution in a process. Can run methods on `godot.Object`s simultaneously. The use of synchronization via `godot.Mutex` or `godot.Semaphore` is advised if working with shared objects.

Note: Breakpoints won't break on code if it's running in a thread. This is a current limitation of the GDScript debugger.
**/
@:libType
@:csNative
@:native("Godot.Thread")
@:autoBuild(godot.Godot.buildUserClass())
extern class Thread extends godot.Reference {
	@:native("new")
	public function new():Void;

	#if doc_gen
	/**		
		Starts a new `godot.Thread` that runs `method` on object `instance` with `userdata` passed as an argument. Even if no userdata is passed, `method` must accept one argument and it will be null. The `priority` of the `godot.Thread` can be changed by passing a value from the `godot.Thread_Priority` enum.
		
		Returns `OK` on success, or `ERR_CANT_CREATE` on failure.
	**/
	@:native("Start")
	public function start(instance:godot.Object, method:std.String, ?userdata:Dynamic, ?priority:godot.Thread_Priority):godot.Error;
	#else
	/**		
		Starts a new `godot.Thread` that runs `method` on object `instance` with `userdata` passed as an argument. Even if no userdata is passed, `method` must accept one argument and it will be null. The `priority` of the `godot.Thread` can be changed by passing a value from the `godot.Thread_Priority` enum.
		
		Returns `OK` on success, or `ERR_CANT_CREATE` on failure.
	**/
	@:native("Start")
	public overload function start(instance:godot.Object, method:std.String):godot.Error;

	/**		
		Starts a new `godot.Thread` that runs `method` on object `instance` with `userdata` passed as an argument. Even if no userdata is passed, `method` must accept one argument and it will be null. The `priority` of the `godot.Thread` can be changed by passing a value from the `godot.Thread_Priority` enum.
		
		Returns `OK` on success, or `ERR_CANT_CREATE` on failure.
	**/
	@:native("Start")
	public overload function start(instance:godot.Object, method:std.String, userdata:Dynamic):godot.Error;

	/**		
		Starts a new `godot.Thread` that runs `method` on object `instance` with `userdata` passed as an argument. Even if no userdata is passed, `method` must accept one argument and it will be null. The `priority` of the `godot.Thread` can be changed by passing a value from the `godot.Thread_Priority` enum.
		
		Returns `OK` on success, or `ERR_CANT_CREATE` on failure.
	**/
	@:native("Start")
	public overload function start(instance:godot.Object, method:std.String, userdata:Dynamic, priority:godot.Thread_Priority):godot.Error;
	#end

	/**		
		Returns the current `godot.Thread`'s ID, uniquely identifying it among all threads. If the `godot.Thread` is not running this returns an empty string.
	**/
	@:native("GetId")
	public function getId():std.String;

	/**		
		Returns `true` if this `godot.Thread` has been started. Once started, this will return `true` until it is joined using `godot.Thread.waitToFinish`. For checking if a `godot.Thread` is still executing its task, use `godot.Thread.isAlive`.
	**/
	@:native("IsActive")
	public function isActive():Bool;

	/**		
		Returns `true` if this `godot.Thread` is currently running. This is useful for determining if `godot.Thread.waitToFinish` can be called without blocking the calling thread.
		
		To check if a `godot.Thread` is joinable, use `godot.Thread.isActive`.
	**/
	@:native("IsAlive")
	public function isAlive():Bool;

	/**		
		Joins the `godot.Thread` and waits for it to finish. Returns the output of the method passed to `godot.Thread.start`.
		
		Should either be used when you want to retrieve the value returned from the method called by the `godot.Thread` or before freeing the instance that contains the `godot.Thread`.
		
		To determine if this can be called without blocking the calling thread, check if `godot.Thread.isAlive` is `false`.
		
		Note: After the `godot.Thread` finishes joining it will be disposed. If you want to use it again you will have to create a new instance of it.
	**/
	@:native("WaitToFinish")
	public function waitToFinish():Dynamic;
}
