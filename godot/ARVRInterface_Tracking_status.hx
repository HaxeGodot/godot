// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.ARVRInterface.Tracking_status")
@:csNative
extern enum ARVRInterface_Tracking_status {
	/**		
		Tracking is behaving as expected.
	**/
	NormalTracking;

	/**		
		Tracking is hindered by excessive motion (the player is moving faster than tracking can keep up).
	**/
	ExcessiveMotion;

	/**		
		Tracking is hindered by insufficient features, it's too dark (for camera-based tracking), player is blocked, etc.
	**/
	InsufficientFeatures;

	/**		
		We don't know the status of the tracking or this interface does not provide feedback.
	**/
	UnknownTracking;

	/**		
		Tracking is not functional (camera not plugged in or obscured, lighthouses turned off, etc.).
	**/
	NotTracking;
}
