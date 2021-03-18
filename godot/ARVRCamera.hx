// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
This is a helper spatial node for our camera; note that, if stereoscopic rendering is applicable (VR-HMD), most of the camera properties are ignored, as the HMD information overrides them. The only properties that can be trusted are the near and far planes.

The position and orientation of this node is automatically updated by the ARVR Server to represent the location of the HMD if such tracking is available and can thus be used by game logic. Note that, in contrast to the ARVR Controller, the render thread has access to the most up-to-date tracking data of the HMD and the location of the ARVRCamera can lag a few milliseconds behind what is used for rendering as a result.
**/
@:libType
@:csNative
@:native("Godot.ARVRCamera")
@:autoBuild(godot.Godot.buildUserClass())
extern class ARVRCamera extends godot.Camera {
	@:native("new")
	public function new():Void;
}
