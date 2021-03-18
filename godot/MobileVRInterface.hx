// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
This is a generic mobile VR implementation where you need to provide details about the phone and HMD used. It does not rely on any existing framework. This is the most basic interface we have. For the best effect, you need a mobile phone with a gyroscope and accelerometer.

Note that even though there is no positional tracking, the camera will assume the headset is at a height of 1.85 meters. You can change this by setting `godot.MobileVRInterface.eyeHeight`.

You can initialise this interface as follows:

```

var interface = ARVRServer.find_interface("Native mobile")
if interface and interface.initialize():
get_viewport().arvr = true

```
**/
@:libType
@:csNative
@:native("Godot.MobileVRInterface")
@:autoBuild(godot.Godot.buildUserClass())
extern class MobileVRInterface extends godot.ARVRInterface {
	/**		
		The k2 lens factor, see k1.
	**/
	@:native("K2")
	public var k2:Single;

	/**		
		The k1 lens factor is one of the two constants that define the strength of the lens used and directly influences the lens distortion effect.
	**/
	@:native("K1")
	public var k1:Single;

	/**		
		The oversample setting. Because of the lens distortion we have to render our buffers at a higher resolution then the screen can natively handle. A value between 1.5 and 2.0 often provides good results but at the cost of performance.
	**/
	@:native("Oversample")
	public var oversample:Single;

	/**		
		The distance between the display and the lenses inside of the device in centimeters.
	**/
	@:native("DisplayToLens")
	public var displayToLens:Single;

	/**		
		The width of the display in centimeters.
	**/
	@:native("DisplayWidth")
	public var displayWidth:Single;

	/**		
		The interocular distance, also known as the interpupillary distance. The distance between the pupils of the left and right eye.
	**/
	@:native("Iod")
	public var iod:Single;

	/**		
		The height at which the camera is placed in relation to the ground (i.e. `godot.ARVROrigin` node).
	**/
	@:native("EyeHeight")
	public var eyeHeight:Single;

	@:native("new")
	public function new():Void;

	@:native("SetEyeHeight")
	public function setEyeHeight(eyeHeight:Single):Void;

	@:native("GetEyeHeight")
	public function getEyeHeight():Single;

	@:native("SetIod")
	public function setIod(iod:Single):Void;

	@:native("GetIod")
	public function getIod():Single;

	@:native("SetDisplayWidth")
	public function setDisplayWidth(displayWidth:Single):Void;

	@:native("GetDisplayWidth")
	public function getDisplayWidth():Single;

	@:native("SetDisplayToLens")
	public function setDisplayToLens(displayToLens:Single):Void;

	@:native("GetDisplayToLens")
	public function getDisplayToLens():Single;

	@:native("SetOversample")
	public function setOversample(oversample:Single):Void;

	@:native("GetOversample")
	public function getOversample():Single;

	@:native("SetK1")
	public function setK1(k:Single):Void;

	@:native("GetK1")
	public function getK1():Single;

	@:native("SetK2")
	public function setK2(k:Single):Void;

	@:native("GetK2")
	public function getK2():Single;
}
