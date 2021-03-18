// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
A ParallaxLayer must be the child of a `godot.ParallaxBackground` node. Each ParallaxLayer can be set to move at different speeds relative to the camera movement or the `godot.ParallaxBackground.scrollOffset` value.

This node's children will be affected by its scroll offset.

Note: Any changes to this node's position and scale made after it enters the scene will be ignored.
**/
@:libType
@:csNative
@:native("Godot.ParallaxLayer")
@:autoBuild(godot.Godot.buildUserClass())
extern class ParallaxLayer extends godot.Node2D {
	/**		
		The ParallaxLayer's `godot.Texture` mirroring. Useful for creating an infinite scrolling background. If an axis is set to `0`, the `godot.Texture` will not be mirrored.
	**/
	@:native("MotionMirroring")
	public var motionMirroring:godot.Vector2;

	/**		
		The ParallaxLayer's offset relative to the parent ParallaxBackground's `godot.ParallaxBackground.scrollOffset`.
	**/
	@:native("MotionOffset")
	public var motionOffset:godot.Vector2;

	/**		
		Multiplies the ParallaxLayer's motion. If an axis is set to `0`, it will not scroll.
	**/
	@:native("MotionScale")
	public var motionScale:godot.Vector2;

	@:native("new")
	public function new():Void;

	@:native("SetMotionScale")
	public function setMotionScale(scale:godot.Vector2):Void;

	@:native("GetMotionScale")
	public function getMotionScale():godot.Vector2;

	@:native("SetMotionOffset")
	public function setMotionOffset(offset:godot.Vector2):Void;

	@:native("GetMotionOffset")
	public function getMotionOffset():godot.Vector2;

	@:native("SetMirroring")
	public function setMirroring(mirror:godot.Vector2):Void;

	@:native("GetMirroring")
	public function getMirroring():godot.Vector2;
}
