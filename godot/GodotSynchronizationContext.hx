// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

@:libType
@:csNative
@:native("Godot.GodotSynchronizationContext")
@:autoBuild(godot.Godot.buildUserClass())
extern class GodotSynchronizationContext extends cs.system.threading.SynchronizationContext {
	@:native("Post")
	public function post(d:cs.system.threading.SendOrPostCallback, state:Dynamic):Void;

	@:native("ExecutePendingContinuations")
	public function executePendingContinuations():Void;

	@:native("new")
	public function new():Void;
}
