// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
WebXR is an open standard that allows creating VR and AR applications that run in the web browser.

As such, this interface is only available when running in an HTML5 export.

WebXR supports a wide range of devices, from the very capable (like Valve Index, HTC Vive, Oculus Rift and Quest) down to the much less capable (like Google Cardboard, Oculus Go, GearVR, or plain smartphones).

Since WebXR is based on Javascript, it makes extensive use of callbacks, which means that `godot.WebXRInterface` is forced to use signals, where other AR/VR interfaces would instead use functions that return a result immediately. This makes `godot.WebXRInterface` quite a bit more complicated to intialize than other AR/VR interfaces.

Here's the minimum code required to start an immersive VR session:

```

extends Spatial

var webxr_interface
var vr_supported = false

func _ready():
# We assume this node has a button as a child.
# This button is for the user to consent to entering immersive VR mode.
$Button.connect("pressed", self, "_on_Button_pressed")

webxr_interface = ARVRServer.find_interface("WebXR")
if webxr_interface:
# WebXR uses a lot of asynchronous callbacks, so we connect to various
# signals in order to receive them.
webxr_interface.connect("session_supported", self, "_webxr_session_supported")
webxr_interface.connect("session_started", self, "_webxr_session_started")
webxr_interface.connect("session_ended", self, "_webxr_session_ended")
webxr_interface.connect("session_failed", self, "_webxr_session_failed")

# This returns immediately - our _webxr_session_supported() method
# (which we connected to the "session_supported" signal above) will
# be called sometime later to let us know if it's supported or not.
webxr_interface.is_session_supported("immersive-vr")

func _webxr_session_supported(session_mode, supported):
if session_mode == 'immersive-vr':
vr_supported = supported

func _on_Button_pressed():
if not vr_supported:
OS.alert("Your browser doesn't support VR")
return

# We want an immersive VR session, as opposed to AR ('immersive-ar') or a
# simple 3DoF viewer ('viewer').
webxr_interface.session_mode = 'immersive-vr'
# 'bounded-floor' is room scale, 'local-floor' is a standing or sitting
# experience (it puts you 1.6m above the ground if you have 3DoF headset),
# whereas as 'local' puts you down at the ARVROrigin.
# This list means it'll first try to request 'bounded-floor', then
# fallback on 'local-floor' and ultimately 'local', if nothing else is
# supported.
webxr_interface.requested_reference_space_types = 'bounded-floor, local-floor, local'
# In order to use 'local-floor' or 'bounded-floor' we must also
# mark the features as required or optional.
webxr_interface.required_features = 'local-floor'
webxr_interface.optional_features = 'bounded-floor'

# This will return false if we're unable to even request the session,
# however, it can still fail asynchronously later in the process, so we
# only know if it's really succeeded or failed when our
# _webxr_session_started() or _webxr_session_failed() methods are called.
if not webxr_interface.initialize():
OS.alert("Failed to initialize")
return

func _webxr_session_started():
$Button.visible = false
# This tells Godot to start rendering to the headset.
get_viewport().arvr = true
# This will be the reference space type you ultimately got, out of the
# types that you requested above. This is useful if you want the game to
# work a little differently in 'bounded-floor' versus 'local-floor'.
print ("Reference space type: " + webxr_interface.reference_space_type)

func _webxr_session_ended():
$Button.visible = true
# If the user exits immersive mode, then we tell Godot to render to the web
# page again.
get_viewport().arvr = false

func _webxr_session_failed(message):
OS.alert("Failed to initialize: " + message)

```

There are several ways to handle "controller" input:

- Using `godot.ARVRController` nodes and their `ARVRController.button_pressed` and `ARVRController.button_release` signals. This is how controllers are typically handled in AR/VR apps in Godot, however, this will only work with advanced VR controllers like the Oculus Touch or Index controllers, for example. The buttons codes are defined by [https://immersive-web.github.io/webxr-gamepads-module/#xr-standard-gamepad-mapping](Section 3.3 of the WebXR Gamepads Module).

- Using `godot.Node._UnhandledInput` and `godot.InputEventJoypadButton` or `godot.InputEventJoypadMotion`. This works the same as normal joypads, except the `godot.InputEvent.device` starts at 100, so the left controller is 100 and the right controller is 101, and the button codes are also defined by [https://immersive-web.github.io/webxr-gamepads-module/#xr-standard-gamepad-mapping](Section 3.3 of the WebXR Gamepads Module).

- Using the `select`, `squeeze` and related signals. This method will work for both advanced VR controllers, and non-traditional "controllers" like a tap on the screen, a spoken voice command or a button press on the device itself. The `controller_id` passed to these signals is the same id as used in `godot.ARVRController.controllerId`.

You can use one or all of these methods to allow your game or app to support a wider or narrower set of devices and input methods, or to allow more advanced interations with more advanced devices.
**/
@:libType
@:csNative
@:native("Godot.WebXRInterface")
@:autoBuild(godot.Godot.buildUserClass())
extern abstract class WebXRInterface extends godot.ARVRInterface {
	/**
		`reference_space_reset` signal.
	**/
	public var onReferenceSpaceReset(get, never):Signal<Void->Void>;
	@:dox(hide) @:noCompletion inline function get_onReferenceSpaceReset():Signal<Void->Void> {
		return new Signal(this, "reference_space_reset", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	/**
		`select` signal.
	**/
	public var onSelect(get, never):Signal<(controllerId:Int)->Void>;
	@:dox(hide) @:noCompletion inline function get_onSelect():Signal<(controllerId:Int)->Void> {
		return new Signal(this, "select", Signal.SignalHandlerIntVoid.connectSignal, Signal.SignalHandlerIntVoid.disconnectSignal, Signal.SignalHandlerIntVoid.isSignalConnected);
	}

	/**
		`selectend` signal.
	**/
	public var onSelectend(get, never):Signal<(controllerId:Int)->Void>;
	@:dox(hide) @:noCompletion inline function get_onSelectend():Signal<(controllerId:Int)->Void> {
		return new Signal(this, "selectend", Signal.SignalHandlerIntVoid.connectSignal, Signal.SignalHandlerIntVoid.disconnectSignal, Signal.SignalHandlerIntVoid.isSignalConnected);
	}

	/**
		`selectstart` signal.
	**/
	public var onSelectstart(get, never):Signal<(controllerId:Int)->Void>;
	@:dox(hide) @:noCompletion inline function get_onSelectstart():Signal<(controllerId:Int)->Void> {
		return new Signal(this, "selectstart", Signal.SignalHandlerIntVoid.connectSignal, Signal.SignalHandlerIntVoid.disconnectSignal, Signal.SignalHandlerIntVoid.isSignalConnected);
	}

	/**
		`session_ended` signal.
	**/
	public var onSessionEnded(get, never):Signal<Void->Void>;
	@:dox(hide) @:noCompletion inline function get_onSessionEnded():Signal<Void->Void> {
		return new Signal(this, "session_ended", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	/**
		`session_failed` signal.
	**/
	public var onSessionFailed(get, never):Signal<(message:std.String)->Void>;
	@:dox(hide) @:noCompletion inline function get_onSessionFailed():Signal<(message:std.String)->Void> {
		return new Signal(this, "session_failed", Signal.SignalHandlerStringVoid.connectSignal, Signal.SignalHandlerStringVoid.disconnectSignal, Signal.SignalHandlerStringVoid.isSignalConnected);
	}

	/**
		`session_started` signal.
	**/
	public var onSessionStarted(get, never):Signal<Void->Void>;
	@:dox(hide) @:noCompletion inline function get_onSessionStarted():Signal<Void->Void> {
		return new Signal(this, "session_started", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	/**
		`session_supported` signal.
	**/
	public var onSessionSupported(get, never):Signal<(sessionMode:std.String, supported:Bool)->Void>;
	@:dox(hide) @:noCompletion inline function get_onSessionSupported():Signal<(sessionMode:std.String, supported:Bool)->Void> {
		return new Signal(this, "session_supported", Signal.SignalHandlerStringBoolVoid.connectSignal, Signal.SignalHandlerStringBoolVoid.disconnectSignal, Signal.SignalHandlerStringBoolVoid.isSignalConnected);
	}

	/**
		`squeeze` signal.
	**/
	public var onSqueeze(get, never):Signal<(controllerId:Int)->Void>;
	@:dox(hide) @:noCompletion inline function get_onSqueeze():Signal<(controllerId:Int)->Void> {
		return new Signal(this, "squeeze", Signal.SignalHandlerIntVoid.connectSignal, Signal.SignalHandlerIntVoid.disconnectSignal, Signal.SignalHandlerIntVoid.isSignalConnected);
	}

	/**
		`squeezeend` signal.
	**/
	public var onSqueezeend(get, never):Signal<(controllerId:Int)->Void>;
	@:dox(hide) @:noCompletion inline function get_onSqueezeend():Signal<(controllerId:Int)->Void> {
		return new Signal(this, "squeezeend", Signal.SignalHandlerIntVoid.connectSignal, Signal.SignalHandlerIntVoid.disconnectSignal, Signal.SignalHandlerIntVoid.isSignalConnected);
	}

	/**
		`squeezestart` signal.
	**/
	public var onSqueezestart(get, never):Signal<(controllerId:Int)->Void>;
	@:dox(hide) @:noCompletion inline function get_onSqueezestart():Signal<(controllerId:Int)->Void> {
		return new Signal(this, "squeezestart", Signal.SignalHandlerIntVoid.connectSignal, Signal.SignalHandlerIntVoid.disconnectSignal, Signal.SignalHandlerIntVoid.isSignalConnected);
	}

	/**
		`visibility_state_changed` signal.
	**/
	public var onVisibilityStateChanged(get, never):Signal<Void->Void>;
	@:dox(hide) @:noCompletion inline function get_onVisibilityStateChanged():Signal<Void->Void> {
		return new Signal(this, "visibility_state_changed", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	/**		
		The vertices of a polygon which defines the boundaries of the user's play area.
		
		This will only be available if `godot.WebXRInterface.referenceSpaceType` is `"bounded-floor"` and only on certain browsers and devices that support it.
		
		The `reference_space_reset` signal may indicate when this changes.
	**/
	@:native("BoundsGeometry")
	public var boundsGeometry(default, never):cs.NativeArray<godot.Vector3>;

	/**		
		Indicates if the WebXR session's imagery is visible to the user.
		
		Possible values come from [https://developer.mozilla.org/en-US/docs/Web/API/XRVisibilityState](WebXR's XRVisibilityState), including `"hidden"`, `"visible"`, and `"visible-blurred"`.
	**/
	@:native("VisibilityState")
	public var visibilityState(default, never):std.String;

	/**		
		The reference space type (from the list of requested types set in the `godot.WebXRInterface.requestedReferenceSpaceTypes` property), that was ultimately used by `godot.ARVRInterface.initialize` when setting up the WebXR session.
		
		Possible values come from [https://developer.mozilla.org/en-US/docs/Web/API/XRReferenceSpaceType](WebXR's XRReferenceSpaceType). If you want to use a particular reference space type, it must be listed in either `godot.WebXRInterface.requiredFeatures` or `godot.WebXRInterface.optionalFeatures`.
	**/
	@:native("ReferenceSpaceType")
	public var referenceSpaceType(default, never):std.String;

	/**		
		A comma-seperated list of reference space types used by `godot.ARVRInterface.initialize` when setting up the WebXR session.
		
		The reference space types are requested in order, and the first on supported by the users device or browser will be used. The `godot.WebXRInterface.referenceSpaceType` property contains the reference space type that was ultimately used.
		
		This doesn't have any effect on the interface when already initialized.
		
		Possible values come from [https://developer.mozilla.org/en-US/docs/Web/API/XRReferenceSpaceType](WebXR's XRReferenceSpaceType). If you want to use a particular reference space type, it must be listed in either `godot.WebXRInterface.requiredFeatures` or `godot.WebXRInterface.optionalFeatures`.
	**/
	@:native("RequestedReferenceSpaceTypes")
	public var requestedReferenceSpaceTypes:std.String;

	/**		
		A comma-seperated list of optional features used by `godot.ARVRInterface.initialize` when setting up the WebXR session.
		
		If a user's browser or device doesn't support one of the given features, initialization will continue, but you won't be able to use the requested feature.
		
		This doesn't have any effect on the interface when already initialized.
		
		Possible values come from [https://developer.mozilla.org/en-US/docs/Web/API/XRReferenceSpaceType](WebXR's XRReferenceSpaceType). If you want to use a particular reference space type, it must be listed in either `godot.WebXRInterface.requiredFeatures` or `godot.WebXRInterface.optionalFeatures`.
	**/
	@:native("OptionalFeatures")
	public var optionalFeatures:std.String;

	/**		
		A comma-seperated list of required features used by `godot.ARVRInterface.initialize` when setting up the WebXR session.
		
		If a user's browser or device doesn't support one of the given features, initialization will fail and `session_failed` will be emitted.
		
		This doesn't have any effect on the interface when already initialized.
		
		Possible values come from [https://developer.mozilla.org/en-US/docs/Web/API/XRReferenceSpaceType](WebXR's XRReferenceSpaceType). If you want to use a particular reference space type, it must be listed in either `godot.WebXRInterface.requiredFeatures` or `godot.WebXRInterface.optionalFeatures`.
	**/
	@:native("RequiredFeatures")
	public var requiredFeatures:std.String;

	/**		
		The session mode used by `godot.ARVRInterface.initialize` when setting up the WebXR session.
		
		This doesn't have any effect on the interface when already initialized.
		
		Possible values come from [https://developer.mozilla.org/en-US/docs/Web/API/XRSessionMode](WebXR's XRSessionMode), including: `"immersive-vr"`, `"immersive-ar"`, and `"inline"`.
	**/
	@:native("SessionMode")
	public var sessionMode:std.String;

	/**		
		Checks if the given `session_mode` is supported by the user's browser.
		
		Possible values come from [https://developer.mozilla.org/en-US/docs/Web/API/XRSessionMode](WebXR's XRSessionMode), including: `"immersive-vr"`, `"immersive-ar"`, and `"inline"`.
		
		This method returns nothing, instead it emits the `session_supported` signal with the result.
	**/
	@:native("IsSessionSupported")
	public function isSessionSupported(sessionMode:std.String):Void;

	@:native("SetSessionMode")
	public function setSessionMode(sessionMode:std.String):Void;

	@:native("GetSessionMode")
	public function getSessionMode():std.String;

	@:native("SetRequiredFeatures")
	public function setRequiredFeatures(requiredFeatures:std.String):Void;

	@:native("GetRequiredFeatures")
	public function getRequiredFeatures():std.String;

	@:native("SetOptionalFeatures")
	public function setOptionalFeatures(optionalFeatures:std.String):Void;

	@:native("GetOptionalFeatures")
	public function getOptionalFeatures():std.String;

	@:native("GetReferenceSpaceType")
	public function getReferenceSpaceType():std.String;

	@:native("SetRequestedReferenceSpaceTypes")
	public function setRequestedReferenceSpaceTypes(requestedReferenceSpaceTypes:std.String):Void;

	@:native("GetRequestedReferenceSpaceTypes")
	public function getRequestedReferenceSpaceTypes():std.String;

	/**		
		Gets an `godot.ARVRPositionalTracker` for the given `controller_id`.
		
		In the context of WebXR, a "controller" can be an advanced VR controller like the Oculus Touch or Index controllers, or even a tap on the screen, a spoken voice command or a button press on the device itself. When a non-traditional controller is used, interpret the position and orientation of the `godot.ARVRPositionalTracker` as a ray pointing at the object the user wishes to interact with.
		
		Use this method to get information about the controller that triggered one of these signals:
		
		- `selectstart`
		
		- `select`
		
		- `selectend`
		
		- `squeezestart`
		
		- `squeeze`
		
		- `squeezestart`
	**/
	@:native("GetController")
	public function getController(controllerId:Int):godot.ARVRPositionalTracker;

	@:native("GetVisibilityState")
	public function getVisibilityState():std.String;

	@:native("GetBoundsGeometry")
	public function getBoundsGeometry():cs.NativeArray<godot.Vector3>;
}
