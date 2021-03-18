// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.UPNPDevice.IGDStatus")
@:csNative
extern enum UPNPDevice_IGDStatus {
	/**		
		OK.
	**/
	Ok;

	/**		
		HTTP error.
	**/
	HttpError;

	/**		
		Empty HTTP response.
	**/
	HttpEmpty;

	/**		
		Returned response contained no URLs.
	**/
	NoUrls;

	/**		
		Not a valid IGD.
	**/
	NoIgd;

	/**		
		Disconnected.
	**/
	Disconnected;

	/**		
		Unknown device.
	**/
	UnknownDevice;

	/**		
		Invalid control.
	**/
	InvalidControl;

	/**		
		Memory allocation error.
	**/
	MallocError;

	/**		
		Unknown error.
	**/
	UnknownError;
}
