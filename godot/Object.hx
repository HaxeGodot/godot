// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Every class which is not a built-in type inherits from this class.

You can construct Objects from scripting languages, using `Object.new()` in GDScript, `new Object` in C#, or the "Construct Object" node in VisualScript.

Objects do not manage memory. If a class inherits from Object, you will have to delete instances of it manually. To do so, call the `godot.Object.free` method from your script or delete the instance from C++.

Some classes that extend Object add memory management. This is the case of `godot.Reference`, which counts references and deletes itself automatically when no longer referenced. `godot.Node`, another fundamental type, deletes all its children when freed from memory.

Objects export properties, which are mainly useful for storage and editing, but not really so much in programming. Properties are exported in `godot.Object._GetPropertyList` and handled in `godot.Object._Get` and `godot.Object._Set`. However, scripting languages and C++ have simpler means to export them.

Property membership can be tested directly in GDScript using `in`:

```

var n = Node2D.new()
print("position" in n) # Prints "True".
print("other_property" in n) # Prints "False".

```

The `in` operator will evaluate to `true` as long as the key exists, even if the value is `null`.

Objects also receive notifications. Notifications are a simple way to notify the object about different events, so they can all be handled together. See `godot.Object._Notification`.

Note: Unlike references to a `godot.Reference`, references to an Object stored in a variable can become invalid without warning. Therefore, it's recommended to use `godot.Reference` for data classes instead of `godot.Object`.

Note: Due to a bug, you can't create a "plain" Object using `Object.new()`. Instead, use `ClassDB.instance("Object")`. This bug only applies to Object itself, not any of its descendents like `godot.Reference`.
**/
@:libType
@:csNative
@:native("Godot.Object")
@:autoBuild(godot.Godot.buildUserClass())
extern class Object implements cs.system.IDisposable {
	/**
		`script_changed` signal.
		
		Emitted whenever the object's script is changed.
	**/
	public var onScriptChanged(get, never):Signal<Void->Void>;
	@:dox(hide) @:noCompletion inline function get_onScriptChanged():Signal<Void->Void> {
		return new Signal(this, "script_changed", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	/**		
		Gets a new `godot.DynamicGodotObject` associated with this instance.
	**/
	@:native("DynamicObject")
	public var dynamicObject(default, never):Dynamic;

	@:native("NativeInstance")
	public var nativeInstance(default, never):cs.system.IntPtr;

	/**		
		Called before the object is about to be deleted.
	**/
	@:native("NotificationPredelete")
	public static var NOTIFICATION_PREDELETE(default, never):Int;

	/**		
		Called right when the object is initialized. Not available in script.
	**/
	@:native("NotificationPostinitialize")
	public static var NOTIFICATION_POSTINITIALIZE(default, never):Int;

	@:native("IsInstanceValid")
	public static function isInstanceValid(instance:godot.Object):Bool;

	@:native("WeakRef")
	public static function weakRef(obj:godot.Object):godot.WeakRef;

	@:native("new")
	public function new():Void;

	@:native("Dispose")
	public overload function dispose():Void;

	@:native("Dispose") @:protected
	public overload function dispose(disposing:Bool):Void;

	@:native("ToString")
	public function toString():std.String;

	/**		
		Returns a new `godot.SignalAwaiter` awaiter configured to complete when the instance
		`source` emits the signal specified by the `signal` parameter.
		
		@param source
		The instance the awaiter will be listening to.
		
		@param signal
		The signal the awaiter will be waiting for.
		
		This sample prints a message once every frame up to 100 times.
		
		```
		
		public override void _Ready()
		{
		for (int i = 0; i &lt; 100; i++)
		{
		await ToSignal(GetTree(), "idle_frame");
		GD.Print($"Frame {i}");
		}
		}
		
		```
	**/
	@:native("ToSignal")
	public function toSignal(source:godot.Object, signal:std.String):godot.SignalAwaiter;

	/**		
		Virtual method which can be overridden to customize the return value of `godot.Object.get`.
		
		Returns the given property. Returns `null` if the `property` does not exist.
	**/
	@:native("_Get")
	public function _Get(property:std.String):Dynamic;

	/**		
		Virtual method which can be overridden to customize the return value of `godot.Object.getPropertyList`.
		
		Returns the object's property list as an `godot.Collections_Array` of dictionaries.
		
		Each property's `godot.Collections_Dictionary` must contain at least `name: String` and `type: int` (see `godot.Variant_Type`) entries. Optionally, it can also include `hint: int` (see `godot.PropertyHint`), `hint_string: String`, and `usage: int` (see `godot.PropertyUsageFlags`).
	**/
	@:native("_GetPropertyList")
	public function _GetPropertyList():godot.collections.Array;

	/**		
		Called whenever the object receives a notification, which is identified in `what` by a constant. The base `godot.Object` has two constants  and , but subclasses such as `godot.Node` define a lot more notifications which are also received by this method.
	**/
	@:native("_Notification")
	public function _Notification(what:Int):Void;

	/**		
		Virtual method which can be overridden to customize the return value of `godot.Object.set`.
		
		Sets a property. Returns `true` if the `property` exists.
	**/
	@:native("_Set")
	public function _Set(property:std.String, value:Dynamic):Bool;

	/**		
		Deletes the object from memory immediately. For `godot.Node`s, you may want to use `godot.Node.queueFree` to queue the node for safe deletion at the end of the current frame.
		
		Important: If you have a variable pointing to an object, it will not be assigned to `null` once the object is freed. Instead, it will point to a previously freed instance and you should validate it with `@GDScript.is_instance_valid` before attempting to call its methods or access its properties.
	**/
	@:native("Free")
	public function free():Void;

	/**		
		Returns the object's class as a `String`.
	**/
	@:native("GetClass")
	public function getClass():std.String;

	/**		
		Returns `true` if the object inherits from the given `class`.
	**/
	@:native("IsClass")
	public function isClass(class_:std.String):Bool;

	/**		
		Assigns a new value to the given property. If the `property` does not exist, nothing will happen.
		
		Note: In C#, the property name must be specified as snake_case if it is defined by a built-in Godot node. This doesn't apply to user-defined properties where you should use the same convention as in the C# source (typically PascalCase).
	**/
	@:native("Set")
	public function set(property:std.String, value:Dynamic):Void;

	/**		
		Returns the `Variant` value of the given `property`. If the `property` doesn't exist, this will return `null`.
		
		Note: In C#, the property name must be specified as snake_case if it is defined by a built-in Godot node. This doesn't apply to user-defined properties where you should use the same convention as in the C# source (typically PascalCase).
	**/
	@:native("Get")
	public function get(property:std.String):Dynamic;

	/**		
		Assigns a new value to the property identified by the `godot.NodePath`. The node path should be relative to the current object and can use the colon character (`:`) to access nested properties. Example:
		
		```
		
		set_indexed("position", Vector2(42, 0))
		set_indexed("position:y", -10)
		print(position) # (42, -10)
		
		```
	**/
	@:native("SetIndexed")
	public function setIndexed(property:godot.NodePath, value:Dynamic):Void;

	/**		
		Gets the object's property indexed by the given `godot.NodePath`. The node path should be relative to the current object and can use the colon character (`:`) to access nested properties. Examples: `"position:x"` or `"material:next_pass:blend_mode"`.
	**/
	@:native("GetIndexed")
	public function getIndexed(property:godot.NodePath):Dynamic;

	/**		
		Returns the object's property list as an `godot.Collections_Array` of dictionaries.
		
		Each property's `godot.Collections_Dictionary` contain at least `name: String` and `type: int` (see `godot.Variant_Type`) entries. Optionally, it can also include `hint: int` (see `godot.PropertyHint`), `hint_string: String`, and `usage: int` (see `godot.PropertyUsageFlags`).
	**/
	@:native("GetPropertyList")
	public function getPropertyList():godot.collections.Array;

	/**		
		Returns the object's methods and their signatures as an `godot.Collections_Array`.
	**/
	@:native("GetMethodList")
	public function getMethodList():godot.collections.Array;

	#if doc_gen
	/**		
		Send a given notification to the object, which will also trigger a call to the `godot.Object._Notification` method of all classes that the object inherits from.
		
		If `reversed` is `true`, `godot.Object._Notification` is called first on the object's own class, and then up to its successive parent classes. If `reversed` is `false`, `godot.Object._Notification` is called first on the highest ancestor (`godot.Object` itself), and then down to its successive inheriting classes.
	**/
	@:native("Notification")
	public function notification(what:Int, ?reversed:Bool):Void;
	#else
	/**		
		Send a given notification to the object, which will also trigger a call to the `godot.Object._Notification` method of all classes that the object inherits from.
		
		If `reversed` is `true`, `godot.Object._Notification` is called first on the object's own class, and then up to its successive parent classes. If `reversed` is `false`, `godot.Object._Notification` is called first on the highest ancestor (`godot.Object` itself), and then down to its successive inheriting classes.
	**/
	@:native("Notification")
	public overload function notification(what:Int):Void;

	/**		
		Send a given notification to the object, which will also trigger a call to the `godot.Object._Notification` method of all classes that the object inherits from.
		
		If `reversed` is `true`, `godot.Object._Notification` is called first on the object's own class, and then up to its successive parent classes. If `reversed` is `false`, `godot.Object._Notification` is called first on the highest ancestor (`godot.Object` itself), and then down to its successive inheriting classes.
	**/
	@:native("Notification")
	public overload function notification(what:Int, reversed:Bool):Void;
	#end

	/**		
		Returns the object's unique instance ID.
		
		This ID can be saved in `godot.EncodedObjectAsID`, and can be used to retrieve the object instance with `@GDScript.instance_from_id`.
	**/
	@:native("GetInstanceId")
	public function getInstanceId():cs.types.UInt64;

	/**		
		Assigns a script to the object. Each object can have a single script assigned to it, which are used to extend its functionality.
		
		If the object already had a script, the previous script instance will be freed and its variables and state will be lost. The new script's  method will be called.
	**/
	@:native("SetScript")
	public function setScript(script:godot.Reference):Void;

	/**		
		Returns the object's `godot.Script` instance, or `null` if none is assigned.
	**/
	@:native("GetScript")
	public function getScript():godot.Reference;

	/**		
		Adds, changes or removes a given entry in the object's metadata. Metadata are serialized and can take any `Variant` value.
		
		To remove a given entry from the object's metadata, use `godot.Object.removeMeta`. Metadata is also removed if its value is set to `null`. This means you can also use `set_meta("name", null)` to remove metadata for `"name"`.
	**/
	@:native("SetMeta")
	public function setMeta(name:std.String, value:Dynamic):Void;

	/**		
		Removes a given entry from the object's metadata. See also `godot.Object.setMeta`.
	**/
	@:native("RemoveMeta")
	public function removeMeta(name:std.String):Void;

	/**		
		Returns the object's metadata entry for the given `name`.
	**/
	@:native("GetMeta")
	public function getMeta(name:std.String):Dynamic;

	/**		
		Returns `true` if a metadata entry is found with the given `name`.
	**/
	@:native("HasMeta")
	public function hasMeta(name:std.String):Bool;

	/**		
		Returns the object's metadata as a `String`.
	**/
	public extern inline function getMetaList():std.Array<std.String> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetMetaList()", this));
	}

	#if doc_gen
	/**		
		Adds a user-defined `signal`. Arguments are optional, but can be added as an `godot.Collections_Array` of dictionaries, each containing `name: String` and `type: int` (see `godot.Variant_Type`) entries.
		
		@param arguments If the parameter is null, then the default value is new Godot.Collections.Array {}
	**/
	@:native("AddUserSignal")
	public function addUserSignal(signal:std.String, ?arguments:godot.collections.Array):Void;
	#else
	/**		
		Adds a user-defined `signal`. Arguments are optional, but can be added as an `godot.Collections_Array` of dictionaries, each containing `name: String` and `type: int` (see `godot.Variant_Type`) entries.
		
		@param arguments If the parameter is null, then the default value is new Godot.Collections.Array {}
	**/
	@:native("AddUserSignal")
	public overload function addUserSignal(signal:std.String):Void;

	/**		
		Adds a user-defined `signal`. Arguments are optional, but can be added as an `godot.Collections_Array` of dictionaries, each containing `name: String` and `type: int` (see `godot.Variant_Type`) entries.
		
		@param arguments If the parameter is null, then the default value is new Godot.Collections.Array {}
	**/
	@:native("AddUserSignal")
	public overload function addUserSignal(signal:std.String, arguments:godot.collections.Array):Void;
	#end

	/**		
		Returns `true` if the given user-defined `signal` exists. Only signals added using `godot.Object.addUserSignal` are taken into account.
	**/
	@:native("HasUserSignal")
	public function hasUserSignal(signal:std.String):Bool;

	/**		
		Emits the given `signal`. The signal must exist, so it should be a built-in signal of this class or one of its parent classes, or a user-defined signal. This method supports a variable number of arguments, so parameters are passed as a comma separated list. Example:
		
		```
		
		emit_signal("hit", weapon_type, damage)
		emit_signal("game_over")
		
		```
	**/
	@:native("EmitSignal")
	public function emitSignal(signal:std.String, args:HaxeArray<Dynamic>):Void;

	/**		
		Calls the `method` on the object and returns the result. This method supports a variable number of arguments, so parameters are passed as a comma separated list. Example:
		
		```
		
		call("set", "position", Vector2(42.0, 0.0))
		
		```
		
		Note: In C#, the method name must be specified as snake_case if it is defined by a built-in Godot node. This doesn't apply to user-defined methods where you should use the same convention as in the C# source (typically PascalCase).
	**/
	@:native("Call")
	public function call(method:std.String, args:HaxeArray<Dynamic>):Dynamic;

	/**		
		Calls the `method` on the object during idle time. This method supports a variable number of arguments, so parameters are passed as a comma separated list. Example:
		
		```
		
		call_deferred("set", "position", Vector2(42.0, 0.0))
		
		```
		
		Note: In C#, the method name must be specified as snake_case if it is defined by a built-in Godot node. This doesn't apply to user-defined methods where you should use the same convention as in the C# source (typically PascalCase).
	**/
	@:native("CallDeferred")
	public function callDeferred(method:std.String, args:HaxeArray<Dynamic>):Void;

	/**		
		Assigns a new value to the given property, after the current frame's physics step. This is equivalent to calling `godot.Object.set` via `godot.Object.callDeferred`, i.e. `call_deferred("set", property, value)`.
		
		Note: In C#, the property name must be specified as snake_case if it is defined by a built-in Godot node. This doesn't apply to user-defined properties where you should use the same convention as in the C# source (typically PascalCase).
	**/
	@:native("SetDeferred")
	public function setDeferred(property:std.String, value:Dynamic):Void;

	/**		
		Calls the `method` on the object and returns the result. Contrarily to `godot.Object.call`, this method does not support a variable number of arguments but expects all parameters to be via a single `godot.Collections_Array`.
		
		```
		
		callv("set", [ "position", Vector2(42.0, 0.0) ])
		
		```
	**/
	@:native("Callv")
	public function callv(method:std.String, argArray:godot.collections.Array):Dynamic;

	/**		
		Returns `true` if the object contains the given `method`.
	**/
	@:native("HasMethod")
	public function hasMethod(method:std.String):Bool;

	/**		
		Returns `true` if the given `signal` exists.
	**/
	@:native("HasSignal")
	public function hasSignal(signal:std.String):Bool;

	/**		
		Returns the list of signals as an `godot.Collections_Array` of dictionaries.
	**/
	@:native("GetSignalList")
	public function getSignalList():godot.collections.Array;

	/**		
		Returns an `godot.Collections_Array` of connections for the given `signal`.
	**/
	@:native("GetSignalConnectionList")
	public function getSignalConnectionList(signal:std.String):godot.collections.Array;

	/**		
		Returns an `godot.Collections_Array` of dictionaries with information about signals that are connected to the object.
		
		Each `godot.Collections_Dictionary` contains three String entries:
		
		- `source` is a reference to the signal emitter.
		
		- `signal_name` is the name of the connected signal.
		
		- `method_name` is the name of the method to which the signal is connected.
	**/
	@:native("GetIncomingConnections")
	public function getIncomingConnections():godot.collections.Array;

	#if doc_gen
	/**		
		Connects a `signal` to a `method` on a `target` object. Pass optional `binds` to the call as an `godot.Collections_Array` of parameters. These parameters will be passed to the method after any parameter used in the call to `godot.Object.emitSignal`. Use `flags` to set deferred or one-shot connections. See `godot.Object_ConnectFlags` constants.
		
		A `signal` can only be connected once to a `method`. It will throw an error if already connected, unless the signal was connected with . To avoid this, first, use `godot.Object.isConnected` to check for existing connections.
		
		If the `target` is destroyed in the game's lifecycle, the connection will be lost.
		
		Examples:
		
		```
		
		connect("pressed", self, "_on_Button_pressed") # BaseButton signal
		connect("text_entered", self, "_on_LineEdit_text_entered") # LineEdit signal
		connect("hit", self, "_on_Player_hit", [ weapon_type, damage ]) # User-defined signal
		
		```
		
		An example of the relationship between `binds` passed to `godot.Object.connect` and parameters used when calling `godot.Object.emitSignal`:
		
		```
		
		connect("hit", self, "_on_Player_hit", [ weapon_type, damage ]) # weapon_type and damage are passed last
		emit_signal("hit", "Dark lord", 5) # "Dark lord" and 5 are passed first
		func _on_Player_hit(hit_by, level, weapon_type, damage):
		print("Hit by %s (lvl %d) with weapon %s for %d damage" % [hit_by, level, weapon_type, damage])
		
		```
		
		@param binds If the parameter is null, then the default value is new Godot.Collections.Array {}
	**/
	@:native("Connect")
	public function connect(signal:std.String, target:godot.Object, method:std.String, ?binds:godot.collections.Array, ?flags:UInt):godot.Error;
	#else
	/**		
		Connects a `signal` to a `method` on a `target` object. Pass optional `binds` to the call as an `godot.Collections_Array` of parameters. These parameters will be passed to the method after any parameter used in the call to `godot.Object.emitSignal`. Use `flags` to set deferred or one-shot connections. See `godot.Object_ConnectFlags` constants.
		
		A `signal` can only be connected once to a `method`. It will throw an error if already connected, unless the signal was connected with . To avoid this, first, use `godot.Object.isConnected` to check for existing connections.
		
		If the `target` is destroyed in the game's lifecycle, the connection will be lost.
		
		Examples:
		
		```
		
		connect("pressed", self, "_on_Button_pressed") # BaseButton signal
		connect("text_entered", self, "_on_LineEdit_text_entered") # LineEdit signal
		connect("hit", self, "_on_Player_hit", [ weapon_type, damage ]) # User-defined signal
		
		```
		
		An example of the relationship between `binds` passed to `godot.Object.connect` and parameters used when calling `godot.Object.emitSignal`:
		
		```
		
		connect("hit", self, "_on_Player_hit", [ weapon_type, damage ]) # weapon_type and damage are passed last
		emit_signal("hit", "Dark lord", 5) # "Dark lord" and 5 are passed first
		func _on_Player_hit(hit_by, level, weapon_type, damage):
		print("Hit by %s (lvl %d) with weapon %s for %d damage" % [hit_by, level, weapon_type, damage])
		
		```
		
		@param binds If the parameter is null, then the default value is new Godot.Collections.Array {}
	**/
	@:native("Connect")
	public overload function connect(signal:std.String, target:godot.Object, method:std.String):godot.Error;

	/**		
		Connects a `signal` to a `method` on a `target` object. Pass optional `binds` to the call as an `godot.Collections_Array` of parameters. These parameters will be passed to the method after any parameter used in the call to `godot.Object.emitSignal`. Use `flags` to set deferred or one-shot connections. See `godot.Object_ConnectFlags` constants.
		
		A `signal` can only be connected once to a `method`. It will throw an error if already connected, unless the signal was connected with . To avoid this, first, use `godot.Object.isConnected` to check for existing connections.
		
		If the `target` is destroyed in the game's lifecycle, the connection will be lost.
		
		Examples:
		
		```
		
		connect("pressed", self, "_on_Button_pressed") # BaseButton signal
		connect("text_entered", self, "_on_LineEdit_text_entered") # LineEdit signal
		connect("hit", self, "_on_Player_hit", [ weapon_type, damage ]) # User-defined signal
		
		```
		
		An example of the relationship between `binds` passed to `godot.Object.connect` and parameters used when calling `godot.Object.emitSignal`:
		
		```
		
		connect("hit", self, "_on_Player_hit", [ weapon_type, damage ]) # weapon_type and damage are passed last
		emit_signal("hit", "Dark lord", 5) # "Dark lord" and 5 are passed first
		func _on_Player_hit(hit_by, level, weapon_type, damage):
		print("Hit by %s (lvl %d) with weapon %s for %d damage" % [hit_by, level, weapon_type, damage])
		
		```
		
		@param binds If the parameter is null, then the default value is new Godot.Collections.Array {}
	**/
	@:native("Connect")
	public overload function connect(signal:std.String, target:godot.Object, method:std.String, binds:godot.collections.Array):godot.Error;

	/**		
		Connects a `signal` to a `method` on a `target` object. Pass optional `binds` to the call as an `godot.Collections_Array` of parameters. These parameters will be passed to the method after any parameter used in the call to `godot.Object.emitSignal`. Use `flags` to set deferred or one-shot connections. See `godot.Object_ConnectFlags` constants.
		
		A `signal` can only be connected once to a `method`. It will throw an error if already connected, unless the signal was connected with . To avoid this, first, use `godot.Object.isConnected` to check for existing connections.
		
		If the `target` is destroyed in the game's lifecycle, the connection will be lost.
		
		Examples:
		
		```
		
		connect("pressed", self, "_on_Button_pressed") # BaseButton signal
		connect("text_entered", self, "_on_LineEdit_text_entered") # LineEdit signal
		connect("hit", self, "_on_Player_hit", [ weapon_type, damage ]) # User-defined signal
		
		```
		
		An example of the relationship between `binds` passed to `godot.Object.connect` and parameters used when calling `godot.Object.emitSignal`:
		
		```
		
		connect("hit", self, "_on_Player_hit", [ weapon_type, damage ]) # weapon_type and damage are passed last
		emit_signal("hit", "Dark lord", 5) # "Dark lord" and 5 are passed first
		func _on_Player_hit(hit_by, level, weapon_type, damage):
		print("Hit by %s (lvl %d) with weapon %s for %d damage" % [hit_by, level, weapon_type, damage])
		
		```
		
		@param binds If the parameter is null, then the default value is new Godot.Collections.Array {}
	**/
	@:native("Connect")
	public overload function connect(signal:std.String, target:godot.Object, method:std.String, binds:godot.collections.Array, flags:UInt):godot.Error;
	#end

	/**		
		Disconnects a `signal` from a `method` on the given `target`.
		
		If you try to disconnect a connection that does not exist, the method will throw an error. Use `godot.Object.isConnected` to ensure that the connection exists.
	**/
	@:native("Disconnect")
	public function disconnect(signal:std.String, target:godot.Object, method:std.String):Void;

	/**		
		Returns `true` if a connection exists for a given `signal`, `target`, and `method`.
	**/
	@:native("IsConnected")
	public function isConnected(signal:std.String, target:godot.Object, method:std.String):Bool;

	/**		
		If set to `true`, signal emission is blocked.
	**/
	@:native("SetBlockSignals")
	public function setBlockSignals(enable:Bool):Void;

	/**		
		Returns `true` if signal emission blocking is enabled.
	**/
	@:native("IsBlockingSignals")
	public function isBlockingSignals():Bool;

	/**		
		Notify the editor that the property list has changed, so that editor plugins can take the new values into account. Does nothing on export builds.
	**/
	@:native("PropertyListChangedNotify")
	public function propertyListChangedNotify():Void;

	/**		
		Defines whether the object can translate strings (with calls to `godot.Object.tr`). Enabled by default.
	**/
	@:native("SetMessageTranslation")
	public function setMessageTranslation(enable:Bool):Void;

	/**		
		Returns `true` if the object can translate strings. See `godot.Object.setMessageTranslation` and `godot.Object.tr`.
	**/
	@:native("CanTranslateMessages")
	public function canTranslateMessages():Bool;

	/**		
		Translates a message using translation catalogs configured in the Project Settings.
		
		Only works if message translation is enabled (which it is by default), otherwise it returns the `message` unchanged. See `godot.Object.setMessageTranslation`.
	**/
	@:native("Tr")
	public function tr(message:std.String):std.String;

	/**		
		Returns `true` if the `godot.Node.queueFree` method was called for the object.
	**/
	@:native("IsQueuedForDeletion")
	public function isQueuedForDeletion():Bool;
}
