// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.TextureProgress.FillModeEnum")
@:csNative
extern enum TextureProgress_FillModeEnum {
	/**		
		The `godot.TextureProgress.textureProgress_` fills from left to right.
	**/
	LeftToRight;

	/**		
		The `godot.TextureProgress.textureProgress_` fills from right to left.
	**/
	RightToLeft;

	/**		
		The `godot.TextureProgress.textureProgress_` fills from top to bottom.
	**/
	TopToBottom;

	/**		
		The `godot.TextureProgress.textureProgress_` fills from bottom to top.
	**/
	BottomToTop;

	/**		
		Turns the node into a radial bar. The `godot.TextureProgress.textureProgress_` fills clockwise. See `godot.TextureProgress.radialCenterOffset`, `godot.TextureProgress.radialInitialAngle` and `godot.TextureProgress.radialFillDegrees` to control the way the bar fills up.
	**/
	Clockwise;

	/**		
		Turns the node into a radial bar. The `godot.TextureProgress.textureProgress_` fills counterclockwise. See `godot.TextureProgress.radialCenterOffset`, `godot.TextureProgress.radialInitialAngle` and `godot.TextureProgress.radialFillDegrees` to control the way the bar fills up.
	**/
	CounterClockwise;

	/**		
		The `godot.TextureProgress.textureProgress_` fills from the center, expanding both towards the left and the right.
	**/
	BilinearLeftAndRight;

	/**		
		The `godot.TextureProgress.textureProgress_` fills from the center, expanding both towards the top and the bottom.
	**/
	BilinearTopAndBottom;

	/**		
		Turns the node into a radial bar. The `godot.TextureProgress.textureProgress_` fills radially from the center, expanding both clockwise and counterclockwise. See `godot.TextureProgress.radialCenterOffset`, `godot.TextureProgress.radialInitialAngle` and `godot.TextureProgress.radialFillDegrees` to control the way the bar fills up.
	**/
	ClockwiseAndCounterClockwise;
}
