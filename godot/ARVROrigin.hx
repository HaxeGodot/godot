// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
This is a special node within the AR/VR system that maps the physical location of the center of our tracking space to the virtual location within our game world.

There should be only one of these nodes in your scene and you must have one. All the ARVRCamera, ARVRController and ARVRAnchor nodes should be direct children of this node for spatial tracking to work correctly.

It is the position of this node that you update when your character needs to move through your game world while we're not moving in the real world. Movement in the real world is always in relation to this origin point.

For example, if your character is driving a car, the ARVROrigin node should be a child node of this car. Or, if you're implementing a teleport system to move your character, you should change the position of this node.
**/
@:libType
@:csNative
@:native("Godot.ARVROrigin")
@:autoBuild(godot.Godot.buildUserClass())
extern class ARVROrigin extends godot.Spatial {
	/**		
		Allows you to adjust the scale to your game's units. Most AR/VR platforms assume a scale of 1 game world unit = 1 real world meter.
		
		Note: This method is a passthrough to the `godot.ARVRServer` itself.
	**/
	@:native("WorldScale")
	public var worldScale:Single;

	@:native("new")
	public function new():Void;

	@:native("SetWorldScale")
	public function setWorldScale(worldScale:Single):Void;

	@:native("GetWorldScale")
	public function getWorldScale():Single;
}
