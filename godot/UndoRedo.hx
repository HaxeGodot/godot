// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Helper to manage undo/redo operations in the editor or custom tools. It works by registering methods and property changes inside "actions".

Common behavior is to create an action, then add do/undo calls to functions or property changes, then committing the action.

Here's an example on how to add an action to the Godot editor's own `godot.UndoRedo`, from a plugin:

```

var undo_redo = get_undo_redo() # Method of EditorPlugin.

func do_something():
pass # Put your code here.

func undo_something():
pass # Put here the code that reverts what's done by "do_something()".

func _on_MyButton_pressed():
var node = get_node("MyNode2D")
undo_redo.create_action("Move the node")
undo_redo.add_do_method(self, "do_something")
undo_redo.add_undo_method(self, "undo_something")
undo_redo.add_do_property(node, "position", Vector2(100,100))
undo_redo.add_undo_property(node, "position", node.position)
undo_redo.commit_action()

```

`godot.UndoRedo.createAction`, `godot.UndoRedo.addDoMethod`, `godot.UndoRedo.addUndoMethod`, `godot.UndoRedo.addDoProperty`, `godot.UndoRedo.addUndoProperty`, and `godot.UndoRedo.commitAction` should be called one after the other, like in the example. Not doing so could lead to crashes.

If you don't need to register a method, you can leave `godot.UndoRedo.addDoMethod` and `godot.UndoRedo.addUndoMethod` out; the same goes for properties. You can also register more than one method/property.
**/
@:libType
@:csNative
@:native("Godot.UndoRedo")
@:autoBuild(godot.Godot.buildUserClass())
extern class UndoRedo extends godot.Object {
	/**
		`version_changed` signal.
	**/
	public var onVersionChanged(get, never):Signal<Void->Void>;
	@:dox(hide) @:noCompletion inline function get_onVersionChanged():Signal<Void->Void> {
		return new Signal(this, "version_changed", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	@:native("new")
	public function new():Void;

	#if doc_gen
	/**		
		Create a new action. After this is called, do all your calls to `godot.UndoRedo.addDoMethod`, `godot.UndoRedo.addUndoMethod`, `godot.UndoRedo.addDoProperty`, and `godot.UndoRedo.addUndoProperty`, then commit the action with `godot.UndoRedo.commitAction`.
		
		The way actions are merged is dictated by the `merge_mode` argument. See `godot.UndoRedo_MergeMode` for details.
	**/
	@:native("CreateAction")
	public function createAction(name:std.String, ?mergeMode:godot.UndoRedo_MergeMode):Void;
	#else
	/**		
		Create a new action. After this is called, do all your calls to `godot.UndoRedo.addDoMethod`, `godot.UndoRedo.addUndoMethod`, `godot.UndoRedo.addDoProperty`, and `godot.UndoRedo.addUndoProperty`, then commit the action with `godot.UndoRedo.commitAction`.
		
		The way actions are merged is dictated by the `merge_mode` argument. See `godot.UndoRedo_MergeMode` for details.
	**/
	@:native("CreateAction")
	public overload function createAction(name:std.String):Void;

	/**		
		Create a new action. After this is called, do all your calls to `godot.UndoRedo.addDoMethod`, `godot.UndoRedo.addUndoMethod`, `godot.UndoRedo.addDoProperty`, and `godot.UndoRedo.addUndoProperty`, then commit the action with `godot.UndoRedo.commitAction`.
		
		The way actions are merged is dictated by the `merge_mode` argument. See `godot.UndoRedo_MergeMode` for details.
	**/
	@:native("CreateAction")
	public overload function createAction(name:std.String, mergeMode:godot.UndoRedo_MergeMode):Void;
	#end

	/**		
		Commit the action. All "do" methods/properties are called/set when this function is called.
	**/
	@:native("CommitAction")
	public function commitAction():Void;

	/**		
		Returns `true` if the `godot.UndoRedo` is currently committing the action, i.e. running its "do" method or property change (see `godot.UndoRedo.commitAction`).
	**/
	@:native("IsCommitingAction")
	public function isCommitingAction():Bool;

	/**		
		Register a method that will be called when the action is committed.
	**/
	@:native("AddDoMethod")
	public function addDoMethod(object:godot.Object, method:std.String, args:HaxeArray<Dynamic>):Void;

	/**		
		Register a method that will be called when the action is undone.
	**/
	@:native("AddUndoMethod")
	public function addUndoMethod(object:godot.Object, method:std.String, args:HaxeArray<Dynamic>):Void;

	/**		
		Register a property value change for "do".
	**/
	@:native("AddDoProperty")
	public function addDoProperty(object:godot.Object, property:std.String, value:Dynamic):Void;

	/**		
		Register a property value change for "undo".
	**/
	@:native("AddUndoProperty")
	public function addUndoProperty(object:godot.Object, property:std.String, value:Dynamic):Void;

	/**		
		Register a reference for "do" that will be erased if the "do" history is lost. This is useful mostly for new nodes created for the "do" call. Do not use for resources.
	**/
	@:native("AddDoReference")
	public function addDoReference(object:godot.Object):Void;

	/**		
		Register a reference for "undo" that will be erased if the "undo" history is lost. This is useful mostly for nodes removed with the "do" call (not the "undo" call!).
	**/
	@:native("AddUndoReference")
	public function addUndoReference(object:godot.Object):Void;

	#if doc_gen
	/**		
		Clear the undo/redo history and associated references.
		
		Passing `false` to `increase_version` will prevent the version number to be increased from this.
	**/
	@:native("ClearHistory")
	public function clearHistory(?increaseVersion:Bool):Void;
	#else
	/**		
		Clear the undo/redo history and associated references.
		
		Passing `false` to `increase_version` will prevent the version number to be increased from this.
	**/
	@:native("ClearHistory")
	public overload function clearHistory():Void;

	/**		
		Clear the undo/redo history and associated references.
		
		Passing `false` to `increase_version` will prevent the version number to be increased from this.
	**/
	@:native("ClearHistory")
	public overload function clearHistory(increaseVersion:Bool):Void;
	#end

	/**		
		Gets the name of the current action.
	**/
	@:native("GetCurrentActionName")
	public function getCurrentActionName():std.String;

	/**		
		Returns `true` if an "undo" action is available.
	**/
	@:native("HasUndo")
	public function hasUndo():Bool;

	/**		
		Returns `true` if a "redo" action is available.
	**/
	@:native("HasRedo")
	public function hasRedo():Bool;

	/**		
		Gets the version. Every time a new action is committed, the `godot.UndoRedo`'s version number is increased automatically.
		
		This is useful mostly to check if something changed from a saved version.
	**/
	@:native("GetVersion")
	public function getVersion():cs.types.UInt64;

	/**		
		Redo the last action.
	**/
	@:native("Redo")
	public function redo():Bool;

	/**		
		Undo the last action.
	**/
	@:native("Undo")
	public function undo():Bool;
}
