// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
This class needs to be implemented to make an AR or VR platform available to Godot and these should be implemented as C++ modules or GDNative modules (note that for GDNative the subclass ARVRScriptInterface should be used). Part of the interface is exposed to GDScript so you can detect, enable and configure an AR or VR platform.

Interfaces should be written in such a way that simply enabling them will give us a working setup. You can query the available interfaces through `godot.ARVRServer`.
**/
@:libType
@:csNative
@:native("Godot.ARVRInterface")
@:autoBuild(godot.Godot.buildUserClass())
extern abstract class ARVRInterface extends godot.Reference {
	/**		
		On an AR interface, `true` if anchor detection is enabled.
	**/
	@:native("ArIsAnchorDetectionEnabled")
	public var arIsAnchorDetectionEnabled:Bool;

	/**		
		`true` if this interface been initialized.
	**/
	@:native("InterfaceIsInitialized")
	public var interfaceIsInitialized:Bool;

	/**		
		`true` if this is the primary interface.
	**/
	@:native("InterfaceIsPrimary")
	public var interfaceIsPrimary:Bool;

	/**		
		Returns the name of this interface (OpenVR, OpenHMD, ARKit, etc).
	**/
	@:native("GetName")
	public function getName():std.String;

	/**		
		Returns a combination of `godot.ARVRInterface_Capabilities` flags providing information about the capabilities of this interface.
	**/
	@:native("GetCapabilities")
	public function getCapabilities():Int;

	@:native("IsPrimary")
	public function isPrimary():Bool;

	@:native("SetIsPrimary")
	public function setIsPrimary(enable:Bool):Void;

	@:native("IsInitialized")
	public function isInitialized():Bool;

	@:native("SetIsInitialized")
	public function setIsInitialized(initialized:Bool):Void;

	/**		
		Call this to initialize this interface. The first interface that is initialized is identified as the primary interface and it will be used for rendering output.
		
		After initializing the interface you want to use you then need to enable the AR/VR mode of a viewport and rendering should commence.
		
		Note: You must enable the AR/VR mode on the main viewport for any device that uses the main output of Godot, such as for mobile VR.
		
		If you do this for a platform that handles its own output (such as OpenVR) Godot will show just one eye without distortion on screen. Alternatively, you can add a separate viewport node to your scene and enable AR/VR on that viewport. It will be used to output to the HMD, leaving you free to do anything you like in the main window, such as using a separate camera as a spectator camera or rendering something completely different.
		
		While currently not used, you can activate additional interfaces. You may wish to do this if you want to track controllers from other platforms. However, at this point in time only one interface can render to an HMD.
	**/
	@:native("Initialize")
	public function initialize():Bool;

	/**		
		Turns the interface off.
	**/
	@:native("Uninitialize")
	public function uninitialize():Void;

	/**		
		If supported, returns the status of our tracking. This will allow you to provide feedback to the user whether there are issues with positional tracking.
	**/
	@:native("GetTrackingStatus")
	public function getTrackingStatus():godot.ARVRInterface_Tracking_status;

	/**		
		Returns the resolution at which we should render our intermediate results before things like lens distortion are applied by the VR platform.
	**/
	@:native("GetRenderTargetsize")
	public function getRenderTargetsize():godot.Vector2;

	/**		
		Returns `true` if the current output of this interface is in stereo.
	**/
	@:native("IsStereo")
	public function isStereo():Bool;

	@:native("GetAnchorDetectionIsEnabled")
	public function getAnchorDetectionIsEnabled():Bool;

	@:native("SetAnchorDetectionIsEnabled")
	public function setAnchorDetectionIsEnabled(enable:Bool):Void;

	/**		
		If this is an AR interface that requires displaying a camera feed as the background, this method returns the feed ID in the `godot.CameraServer` for this interface.
	**/
	@:native("GetCameraFeedId")
	public function getCameraFeedId():Int;
}
