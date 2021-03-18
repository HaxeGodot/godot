// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
A class stored as a resource. A script extends the functionality of all objects that instance it.

The `new` method of a script subclass creates a new instance. `godot.Object.setScript` extends an existing object, if that object's class matches one of the script's base classes.
**/
@:libType
@:csNative
@:native("Godot.Script")
@:autoBuild(godot.Godot.buildUserClass())
extern abstract class Script extends godot.Resource {
	/**		
		The script source code or an empty string if source code is not available. When set, does not reload the class implementation automatically.
	**/
	@:native("SourceCode")
	public var sourceCode:std.String;

	/**		
		Returns `true` if the script can be instanced.
	**/
	@:native("CanInstance")
	public function canInstance():Bool;

	/**		
		Returns `true` if `base_object` is an instance of this script.
	**/
	@:native("InstanceHas")
	public function instanceHas(baseObject:godot.Object):Bool;

	/**		
		Returns `true` if the script contains non-empty source code.
	**/
	@:native("HasSourceCode")
	public function hasSourceCode():Bool;

	@:native("GetSourceCode")
	public function getSourceCode():std.String;

	@:native("SetSourceCode")
	public function setSourceCode(source:std.String):Void;

	#if doc_gen
	/**		
		Reloads the script's class implementation. Returns an error code.
	**/
	@:native("Reload")
	public function reload(?keepState:Bool):godot.Error;
	#else
	/**		
		Reloads the script's class implementation. Returns an error code.
	**/
	@:native("Reload")
	public overload function reload():godot.Error;

	/**		
		Reloads the script's class implementation. Returns an error code.
	**/
	@:native("Reload")
	public overload function reload(keepState:Bool):godot.Error;
	#end

	/**		
		Returns the script directly inherited by this script.
	**/
	@:native("GetBaseScript")
	public function getBaseScript():godot.Script;

	/**		
		Returns the script's base type.
	**/
	@:native("GetInstanceBaseType")
	public function getInstanceBaseType():std.String;

	/**		
		Returns `true` if the script, or a base class, defines a signal with the given name.
	**/
	@:native("HasScriptSignal")
	public function hasScriptSignal(signalName:std.String):Bool;

	/**		
		Returns the list of properties in this `godot.Script`.
	**/
	@:native("GetScriptPropertyList")
	public function getScriptPropertyList():godot.collections.Array;

	/**		
		Returns the list of methods in this `godot.Script`.
	**/
	@:native("GetScriptMethodList")
	public function getScriptMethodList():godot.collections.Array;

	/**		
		Returns the list of user signals defined in this `godot.Script`.
	**/
	@:native("GetScriptSignalList")
	public function getScriptSignalList():godot.collections.Array;

	/**		
		Returns a dictionary containing constant names and their values.
	**/
	@:native("GetScriptConstantMap")
	public function getScriptConstantMap():godot.collections.Dictionary;

	/**		
		Returns the default value of the specified property.
	**/
	@:native("GetPropertyDefaultValue")
	public function getPropertyDefaultValue(property:std.String):Dynamic;

	/**		
		Returns `true` if the script is a tool script. A tool script can run in the editor.
	**/
	@:native("IsTool")
	public function isTool():Bool;
}
