// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Deprecated (will be removed in Godot 4.0). InterpolatedCamera is a `godot.Camera` which smoothly moves to match a target node's position and rotation.

If it is not `godot.InterpolatedCamera.enabled` or does not have a valid target set, InterpolatedCamera acts like a normal Camera.
**/
@:libType
@:csNative
@:native("Godot.InterpolatedCamera")
@:autoBuild(godot.Godot.buildUserClass())
extern class InterpolatedCamera extends godot.Camera {
	/**		
		If `true`, and a target is set, the camera will move automatically.
	**/
	@:native("Enabled")
	public var enabled:Bool;

	/**		
		How quickly the camera moves toward its target. Higher values will result in tighter camera motion.
	**/
	@:native("Speed")
	public var speed:Single;

	/**		
		The target's `godot.NodePath`.
	**/
	@:native("Target")
	public var target:godot.NodePath;

	@:native("new")
	public function new():Void;

	@:native("SetTargetPath")
	public function setTargetPath(targetPath:godot.NodePath):Void;

	@:native("GetTargetPath")
	public function getTargetPath():godot.NodePath;

	/**		
		Sets the node to move toward and orient with.
	**/
	@:native("SetTarget")
	public function setTarget(target:godot.Object):Void;

	@:native("SetSpeed")
	public function setSpeed(speed:Single):Void;

	@:native("GetSpeed")
	public function getSpeed():Single;

	@:native("SetInterpolationEnabled")
	public function setInterpolationEnabled(targetPath:Bool):Void;

	@:native("IsInterpolationEnabled")
	public function isInterpolationEnabled():Bool;
}
