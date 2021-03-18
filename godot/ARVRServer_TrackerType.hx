// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.ARVRServer.TrackerType")
@:csNative
extern enum ARVRServer_TrackerType {
	/**		
		The tracker tracks the location of a controller.
	**/
	Controller;

	/**		
		The tracker tracks the location of a base station.
	**/
	Basestation;

	/**		
		The tracker tracks the location and size of an AR anchor.
	**/
	Anchor;

	/**		
		Used internally to filter trackers of any known type.
	**/
	AnyKnown;

	/**		
		Used internally if we haven't set the tracker type yet.
	**/
	Unknown;

	/**		
		Used internally to select all trackers.
	**/
	Any;
}
