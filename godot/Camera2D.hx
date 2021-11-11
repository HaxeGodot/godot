// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Camera node for 2D scenes. It forces the screen (current layer) to scroll following this node. This makes it easier (and faster) to program scrollable scenes than manually changing the position of `godot.CanvasItem`-based nodes.

This node is intended to be a simple helper to get things going quickly, but more functionality may be desired to change how the camera works. To make your own custom camera node, inherit it from `godot.Node2D` and change the transform of the canvas by setting `godot.Viewport.canvasTransform` in `godot.Viewport` (you can obtain the current `godot.Viewport` by using `godot.Node.getViewport`).

Note that the `godot.Camera2D` node's `position` doesn't represent the actual position of the screen, which may differ due to applied smoothing or limits. You can use `godot.Camera2D.getCameraScreenCenter` to get the real position.
**/
@:libType
@:csNative
@:native("Godot.Camera2D")
@:autoBuild(godot.Godot.buildUserClass())
extern class Camera2D extends godot.Node2D {
	/**		
		If `true`, draws the camera's drag margin rectangle in the editor.
	**/
	@:native("EditorDrawDragMargin")
	public var editorDrawDragMargin:Bool;

	/**		
		If `true`, draws the camera's limits rectangle in the editor.
	**/
	@:native("EditorDrawLimits")
	public var editorDrawLimits:Bool;

	/**		
		If `true`, draws the camera's screen rectangle in the editor.
	**/
	@:native("EditorDrawScreen")
	public var editorDrawScreen:Bool;

	/**		
		Bottom margin needed to drag the camera. A value of `1` makes the camera move only when reaching the edge of the screen.
	**/
	@:native("DragMarginBottom")
	public var dragMarginBottom:Single;

	/**		
		Right margin needed to drag the camera. A value of `1` makes the camera move only when reaching the edge of the screen.
	**/
	@:native("DragMarginRight")
	public var dragMarginRight:Single;

	/**		
		Top margin needed to drag the camera. A value of `1` makes the camera move only when reaching the edge of the screen.
	**/
	@:native("DragMarginTop")
	public var dragMarginTop:Single;

	/**		
		Left margin needed to drag the camera. A value of `1` makes the camera move only when reaching the edge of the screen.
	**/
	@:native("DragMarginLeft")
	public var dragMarginLeft:Single;

	/**		
		The vertical offset of the camera, relative to the drag margins.
		
		Note: Used the same as `godot.Camera2D.offsetH`.
	**/
	@:native("OffsetV")
	public var offsetV:Single;

	/**		
		The horizontal offset of the camera, relative to the drag margins.
		
		Note: Offset H is used only to force offset relative to margins. It's not updated in any way if drag margins are enabled and can be used to set initial offset.
	**/
	@:native("OffsetH")
	public var offsetH:Single;

	/**		
		Speed in pixels per second of the camera's smoothing effect when `godot.Camera2D.smoothingEnabled` is `true`.
	**/
	@:native("SmoothingSpeed")
	public var smoothingSpeed:Single;

	/**		
		If `true`, the camera smoothly moves towards the target at `godot.Camera2D.smoothingSpeed`.
	**/
	@:native("SmoothingEnabled")
	public var smoothingEnabled:Bool;

	/**		
		If `true`, the camera only moves when reaching the vertical drag margins. If `false`, the camera moves vertically regardless of margins.
	**/
	@:native("DragMarginVEnabled")
	public var dragMarginVEnabled:Bool;

	/**		
		If `true`, the camera only moves when reaching the horizontal drag margins. If `false`, the camera moves horizontally regardless of margins.
	**/
	@:native("DragMarginHEnabled")
	public var dragMarginHEnabled:Bool;

	/**		
		If `true`, the camera smoothly stops when reaches its limits.
		
		This has no effect if smoothing is disabled.
		
		Note: To immediately update the camera's position to be within limits without smoothing, even with this setting enabled, invoke `godot.Camera2D.resetSmoothing`.
	**/
	@:native("LimitSmoothed")
	public var limitSmoothed:Bool;

	/**		
		Bottom scroll limit in pixels. The camera stops moving when reaching this value.
	**/
	@:native("LimitBottom")
	public var limitBottom:Int;

	/**		
		Right scroll limit in pixels. The camera stops moving when reaching this value.
	**/
	@:native("LimitRight")
	public var limitRight:Int;

	/**		
		Top scroll limit in pixels. The camera stops moving when reaching this value.
	**/
	@:native("LimitTop")
	public var limitTop:Int;

	/**		
		Left scroll limit in pixels. The camera stops moving when reaching this value.
	**/
	@:native("LimitLeft")
	public var limitLeft:Int;

	/**		
		The camera's process callback. See `godot.Camera2D_Camera2DProcessMode`.
	**/
	@:native("ProcessMode")
	public var processMode:godot.Camera2D_Camera2DProcessMode;

	/**		
		The custom `godot.Viewport` node attached to the `godot.Camera2D`. If `null` or not a `godot.Viewport`, uses the default viewport instead.
	**/
	@:native("CustomViewport")
	public var customViewport:godot.Node;

	/**		
		The camera's zoom relative to the viewport. Values larger than `Vector2(1, 1)` zoom out and smaller values zoom in. For an example, use `Vector2(0.5, 0.5)` for a 2× zoom-in, and `Vector2(4, 4)` for a 4× zoom-out.
	**/
	@:native("Zoom")
	public var zoom:godot.Vector2;

	/**		
		If `true`, the camera is the active camera for the current scene. Only one camera can be current, so setting a different camera `current` will disable this one.
	**/
	@:native("Current")
	public var current:Bool;

	/**		
		If `true`, the camera rotates with the target.
	**/
	@:native("Rotating")
	public var rotating:Bool;

	/**		
		The Camera2D's anchor point. See `godot.Camera2D_AnchorModeEnum` constants.
	**/
	@:native("AnchorMode")
	public var anchorMode:godot.Camera2D_AnchorModeEnum;

	/**		
		The camera's offset, useful for looking around or camera shake animations.
	**/
	@:native("Offset")
	public var offset:godot.Vector2;

	@:native("new")
	public function new():Void;

	@:native("SetOffset")
	public function setOffset(offset:godot.Vector2):Void;

	@:native("GetOffset")
	public function getOffset():godot.Vector2;

	@:native("SetAnchorMode")
	public function setAnchorMode(anchorMode:godot.Camera2D_AnchorModeEnum):Void;

	@:native("GetAnchorMode")
	public function getAnchorMode():godot.Camera2D_AnchorModeEnum;

	@:native("SetRotating")
	public function setRotating(rotating:Bool):Void;

	@:native("IsRotating")
	public function isRotating():Bool;

	/**		
		Make this the current 2D camera for the scene (viewport and layer), in case there are many cameras in the scene.
	**/
	@:native("MakeCurrent")
	public function makeCurrent():Void;

	/**		
		Removes any `godot.Camera2D` from the ancestor `godot.Viewport`'s internal currently-assigned camera.
	**/
	@:native("ClearCurrent")
	public function clearCurrent():Void;

	@:native("SetProcessMode")
	public function setProcessMode(mode:godot.Camera2D_Camera2DProcessMode):Void;

	@:native("GetProcessMode")
	public function getProcessMode():godot.Camera2D_Camera2DProcessMode;

	@:native("IsCurrent")
	public function isCurrent():Bool;

	/**		
		Sets the specified camera limit. See also `godot.Camera2D.limitBottom`, `godot.Camera2D.limitTop`, `godot.Camera2D.limitLeft`, and `godot.Camera2D.limitRight`.
	**/
	@:native("SetLimit")
	public function setLimit(margin:godot.Margin, limit:Int):Void;

	/**		
		Returns the specified camera limit. See also `godot.Camera2D.limitBottom`, `godot.Camera2D.limitTop`, `godot.Camera2D.limitLeft`, and `godot.Camera2D.limitRight`.
	**/
	@:native("GetLimit")
	public function getLimit(margin:godot.Margin):Int;

	@:native("SetLimitSmoothingEnabled")
	public function setLimitSmoothingEnabled(limitSmoothingEnabled:Bool):Void;

	@:native("IsLimitSmoothingEnabled")
	public function isLimitSmoothingEnabled():Bool;

	@:native("SetVDragEnabled")
	public function setVDragEnabled(enabled:Bool):Void;

	@:native("IsVDragEnabled")
	public function isVDragEnabled():Bool;

	@:native("SetHDragEnabled")
	public function setHDragEnabled(enabled:Bool):Void;

	@:native("IsHDragEnabled")
	public function isHDragEnabled():Bool;

	@:native("SetVOffset")
	public function setVOffset(ofs:Single):Void;

	@:native("GetVOffset")
	public function getVOffset():Single;

	@:native("SetHOffset")
	public function setHOffset(ofs:Single):Void;

	@:native("GetHOffset")
	public function getHOffset():Single;

	/**		
		Sets the specified margin. See also `godot.Camera2D.dragMarginBottom`, `godot.Camera2D.dragMarginTop`, `godot.Camera2D.dragMarginLeft`, and `godot.Camera2D.dragMarginRight`.
	**/
	@:native("SetDragMargin")
	public function setDragMargin(margin:godot.Margin, dragMargin:Single):Void;

	/**		
		Returns the specified margin. See also `godot.Camera2D.dragMarginBottom`, `godot.Camera2D.dragMarginTop`, `godot.Camera2D.dragMarginLeft`, and `godot.Camera2D.dragMarginRight`.
	**/
	@:native("GetDragMargin")
	public function getDragMargin(margin:godot.Margin):Single;

	/**		
		Returns the camera position.
	**/
	@:native("GetCameraPosition")
	public function getCameraPosition():godot.Vector2;

	/**		
		Returns the location of the `godot.Camera2D`'s screen-center, relative to the origin.
	**/
	@:native("GetCameraScreenCenter")
	public function getCameraScreenCenter():godot.Vector2;

	@:native("SetZoom")
	public function setZoom(zoom:godot.Vector2):Void;

	@:native("GetZoom")
	public function getZoom():godot.Vector2;

	@:native("SetCustomViewport")
	public function setCustomViewport(viewport:godot.Node):Void;

	@:native("GetCustomViewport")
	public function getCustomViewport():godot.Node;

	@:native("SetFollowSmoothing")
	public function setFollowSmoothing(followSmoothing:Single):Void;

	@:native("GetFollowSmoothing")
	public function getFollowSmoothing():Single;

	@:native("SetEnableFollowSmoothing")
	public function setEnableFollowSmoothing(followSmoothing:Bool):Void;

	@:native("IsFollowSmoothingEnabled")
	public function isFollowSmoothingEnabled():Bool;

	/**		
		Forces the camera to update scroll immediately.
	**/
	@:native("ForceUpdateScroll")
	public function forceUpdateScroll():Void;

	/**		
		Sets the camera's position immediately to its current smoothing destination.
		
		This has no effect if smoothing is disabled.
	**/
	@:native("ResetSmoothing")
	public function resetSmoothing():Void;

	/**		
		Aligns the camera to the tracked node.
	**/
	@:native("Align")
	public function align():Void;

	@:native("SetScreenDrawingEnabled")
	public function setScreenDrawingEnabled(screenDrawingEnabled:Bool):Void;

	@:native("IsScreenDrawingEnabled")
	public function isScreenDrawingEnabled():Bool;

	@:native("SetLimitDrawingEnabled")
	public function setLimitDrawingEnabled(limitDrawingEnabled:Bool):Void;

	@:native("IsLimitDrawingEnabled")
	public function isLimitDrawingEnabled():Bool;

	@:native("SetMarginDrawingEnabled")
	public function setMarginDrawingEnabled(marginDrawingEnabled:Bool):Void;

	@:native("IsMarginDrawingEnabled")
	public function isMarginDrawingEnabled():Bool;
}
