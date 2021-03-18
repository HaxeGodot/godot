// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

@:libType
@:csNative
@:native("Godot.GodotTaskScheduler")
@:autoBuild(godot.Godot.buildUserClass())
extern class GodotTaskScheduler extends cs.system.threading.tasks.TaskScheduler {
	@:native("new")
	public function new():Void;

	@:native("QueueTask") @:protected
	public function queueTask(task:cs.system.threading.tasks.Task):Void;

	@:native("TryExecuteTaskInline") @:protected
	public function tryExecuteTaskInline(task:cs.system.threading.tasks.Task, taskWasPreviouslyQueued:Bool):Bool;

	@:native("TryDequeue") @:protected
	public function tryDequeue(task:cs.system.threading.tasks.Task):Bool;

	@:native("GetScheduledTasks") @:protected
	public function getScheduledTasks():cs.system.collections.generic.IEnumerable_1<cs.system.threading.tasks.Task>;

	@:native("Activate")
	public function activate():Void;
}
