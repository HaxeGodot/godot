// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
GradientTexture uses a `godot.Gradient` to fill the texture data. The gradient will be filled from left to right using colors obtained from the gradient. This means the texture does not necessarily represent an exact copy of the gradient, but instead an interpolation of samples obtained from the gradient at fixed steps (see `godot.GradientTexture.width`).
**/
@:libType
@:csNative
@:native("Godot.GradientTexture")
@:autoBuild(godot.Godot.buildUserClass())
extern class GradientTexture extends godot.Texture {
	/**		
		The number of color samples that will be obtained from the `godot.Gradient`.
	**/
	@:native("Width")
	public var width:Int;

	/**		
		The `godot.Gradient` that will be used to fill the texture.
	**/
	@:native("Gradient")
	public var gradient:godot.Gradient;

	@:native("new")
	public function new():Void;

	@:native("SetGradient")
	public function setGradient(gradient:godot.Gradient):Void;

	@:native("GetGradient")
	public function getGradient():godot.Gradient;

	@:native("SetWidth")
	public function setWidth(width:Int):Void;
}
