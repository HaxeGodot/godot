// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
A resource to add to an `godot.AnimationNodeBlendTree`. Blends two animations additively based on an amount value in the `[0.0, 1.0]` range.
**/
@:libType
@:csNative
@:native("Godot.AnimationNodeAdd2")
@:autoBuild(godot.Godot.buildUserClass())
extern class AnimationNodeAdd2 extends godot.AnimationNode {
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
