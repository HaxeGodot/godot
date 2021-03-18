// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
A resource to add to an `godot.AnimationNodeBlendTree`. Only features one output set using the `godot.AnimationNodeAnimation.animation` property. Use it as an input for `godot.AnimationNode` that blend animations together.
**/
@:libType
@:csNative
@:native("Godot.AnimationNodeAnimation")
@:autoBuild(godot.Godot.buildUserClass())
extern class AnimationNodeAnimation extends godot.AnimationRootNode {
	/**		
		Animation to use as an output. It is one of the animations provided by `godot.AnimationTree.animPlayer`.
	**/
	@:native("Animation")
	public var animation:std.String;

	@:native("new")
	public function new():Void;

	@:native("SetAnimation")
	public function setAnimation(name:std.String):Void;

	@:native("GetAnimation")
	public function getAnimation():std.String;
}
