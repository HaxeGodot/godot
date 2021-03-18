// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
A ParallaxBackground uses one or more `godot.ParallaxLayer` child nodes to create a parallax effect. Each `godot.ParallaxLayer` can move at a different speed using `godot.ParallaxLayer.motionOffset`. This creates an illusion of depth in a 2D game. If not used with a `godot.Camera2D`, you must manually calculate the `godot.ParallaxBackground.scrollOffset`.
**/
@:libType
@:csNative
@:native("Godot.ParallaxBackground")
@:autoBuild(godot.Godot.buildUserClass())
extern class ParallaxBackground extends godot.CanvasLayer {
	/**		
		If `true`, elements in `godot.ParallaxLayer` child aren't affected by the zoom level of the camera.
	**/
	@:native("ScrollIgnoreCameraZoom")
	public var scrollIgnoreCameraZoom:Bool;

	/**		
		Bottom-right limits for scrolling to end. If the camera is outside of this limit, the background will stop scrolling. Must be higher than `godot.ParallaxBackground.scrollLimitBegin` to work.
	**/
	@:native("ScrollLimitEnd")
	public var scrollLimitEnd:godot.Vector2;

	/**		
		Top-left limits for scrolling to begin. If the camera is outside of this limit, the background will stop scrolling. Must be lower than `godot.ParallaxBackground.scrollLimitEnd` to work.
	**/
	@:native("ScrollLimitBegin")
	public var scrollLimitBegin:godot.Vector2;

	/**		
		The base motion scale for all `godot.ParallaxLayer` children.
	**/
	@:native("ScrollBaseScale")
	public var scrollBaseScale:godot.Vector2;

	/**		
		The base position offset for all `godot.ParallaxLayer` children.
	**/
	@:native("ScrollBaseOffset")
	public var scrollBaseOffset:godot.Vector2;

	/**		
		The ParallaxBackground's scroll value. Calculated automatically when using a `godot.Camera2D`, but can be used to manually manage scrolling when no camera is present.
	**/
	@:native("ScrollOffset")
	public var scrollOffset:godot.Vector2;

	@:native("new")
	public function new():Void;

	@:native("SetScrollOffset")
	public function setScrollOffset(ofs:godot.Vector2):Void;

	@:native("GetScrollOffset")
	public function getScrollOffset():godot.Vector2;

	@:native("SetScrollBaseOffset")
	public function setScrollBaseOffset(ofs:godot.Vector2):Void;

	@:native("GetScrollBaseOffset")
	public function getScrollBaseOffset():godot.Vector2;

	@:native("SetScrollBaseScale")
	public function setScrollBaseScale(scale:godot.Vector2):Void;

	@:native("GetScrollBaseScale")
	public function getScrollBaseScale():godot.Vector2;

	@:native("SetLimitBegin")
	public function setLimitBegin(ofs:godot.Vector2):Void;

	@:native("GetLimitBegin")
	public function getLimitBegin():godot.Vector2;

	@:native("SetLimitEnd")
	public function setLimitEnd(ofs:godot.Vector2):Void;

	@:native("GetLimitEnd")
	public function getLimitEnd():godot.Vector2;

	@:native("SetIgnoreCameraZoom")
	public function setIgnoreCameraZoom(ignore:Bool):Void;

	@:native("IsIgnoreCameraZoom")
	public function isIgnoreCameraZoom():Bool;
}
