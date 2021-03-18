// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.ARVRServer.RotationMode")
@:csNative
extern enum ARVRServer_RotationMode {
	/**		
		Fully reset the orientation of the HMD. Regardless of what direction the user is looking to in the real world. The user will look dead ahead in the virtual world.
	**/
	ResetFullRotation;

	/**		
		Resets the orientation but keeps the tilt of the device. So if we're looking down, we keep looking down but heading will be reset.
	**/
	ResetButKeepTilt;

	/**		
		Does not reset the orientation of the HMD, only the position of the player gets centered.
	**/
	DontResetRotation;
}
