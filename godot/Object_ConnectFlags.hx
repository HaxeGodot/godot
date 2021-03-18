// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.Object.ConnectFlags")
@:csNative
extern enum Object_ConnectFlags {
	/**		
		Connects a signal in deferred mode. This way, signal emissions are stored in a queue, then set on idle time.
	**/
	Deferred;

	/**		
		Persisting connections are saved when the object is serialized to file.
	**/
	Persist;

	/**		
		One-shot connections disconnect themselves after emission.
	**/
	Oneshot;

	/**		
		Connect a signal as reference-counted. This means that a given signal can be connected several times to the same target, and will only be fully disconnected once no references are left.
	**/
	ReferenceCounted;
}
