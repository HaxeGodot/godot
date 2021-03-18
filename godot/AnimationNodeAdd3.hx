// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
A resource to add to an `godot.AnimationNodeBlendTree`. Blends two animations together additively out of three based on a value in the `[-1.0, 1.0]` range.

This node has three inputs:

- The base animation to add to

- A -add animation to blend with when the blend amount is in the `[-1.0, 0.0]` range.

- A +add animation to blend with when the blend amount is in the `[0.0, 1.0]` range
**/
@:libType
@:csNative
@:native("Godot.AnimationNodeAdd3")
@:autoBuild(godot.Godot.buildUserClass())
extern class AnimationNodeAdd3 extends godot.AnimationNode {
	/**		
		If `true`, sets the `optimization` to `false` when calling `godot.AnimationNode.blendInput`, forcing the blended animations to update every frame.
	**/
	@:native("Sync")
	public var sync:Bool;

	@:native("new")
	public function new():Void;

	@:native("SetUseSync")
	public function setUseSync(enable:Bool):Void;

	@:native("IsUsingSync")
	public function isUsingSync():Bool;
}
