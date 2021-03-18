// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Utility class which holds a reference to the internal identifier of an `godot.Object` instance, as given by `godot.Object.getInstanceId`. This ID can then be used to retrieve the object instance with `@GDScript.instance_from_id`.

This class is used internally by the editor inspector and script debugger, but can also be used in plugins to pass and display objects as their IDs.
**/
@:libType
@:csNative
@:native("Godot.EncodedObjectAsID")
@:autoBuild(godot.Godot.buildUserClass())
extern class EncodedObjectAsID extends godot.Reference {
	/**		
		The `godot.Object` identifier stored in this `godot.EncodedObjectAsID` instance. The object instance can be retrieved with `@GDScript.instance_from_id`.
	**/
	@:native("ObjectId")
	public var objectId:cs.types.UInt64;

	@:native("new")
	public function new():Void;

	@:native("SetObjectId")
	public function setObjectId(id:cs.types.UInt64):Void;

	@:native("GetObjectId")
	public function getObjectId():cs.types.UInt64;
}
