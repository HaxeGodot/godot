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
		
		Returns  on success, or  on failure.
	**/
	@:native("Start")
	public function start(instance:godot.Object, method:std.String, ?userdata:Dynamic, ?priority:godot.Thread_Priority):godot.Error;
	#else
	/**		
		Starts a new `godot.Thread` that runs `method` on object `instance` with `userdata` passed as an argument. Even if no userdata is passed, `method` must accept one argument and it will be null. The `priority` of the `godot.Thread` can be changed by passing a value from the `godot.Thread_Priority` enum.
		
		Returns  on success, or  on failure.
	**/
	@:native("Start")
	public overload function start(instance:godot.Object, method:std.String):godot.Error;

	/**		
		Starts a new `godot.Thread` that runs `method` on object `instance` with `userdata` passed as an argument. Even if no userdata is passed, `method` must accept one argument and it will be null. The `priority` of the `godot.Thread` can be changed by passing a value from the `godot.Thread_Priority` enum.
		
		Returns  on success, or  on failure.
	**/
	@:native("Start")
	public overload function start(instance:godot.Object, method:std.String, userdata:Dynamic):godot.Error;

	/**		
		Starts a new `godot.Thread` that runs `method` on object `instance` with `userdata` passed as an argument. Even if no userdata is passed, `method` must accept one argument and it will be null. The `priority` of the `godot.Thread` can be changed by passing a value from the `godot.Thread_Priority` enum.
		
		Returns  on success, or  on failure.
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
		Returns `true` if this `godot.Thread` is currently active. An active `godot.Thread` cannot start work on a new method but can be joined with `godot.Thread.waitToFinish`.
	**/
	@:native("IsActive")
	public function isActive():Bool;

	/**		
		Joins the `godot.Thread` and waits for it to finish. Returns what the method called returned.
	**/
	@:native("WaitToFinish")
	public function waitToFinish():Dynamic;
}
