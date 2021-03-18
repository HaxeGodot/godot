// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Canvas drawing layer. `godot.CanvasItem` nodes that are direct or indirect children of a `godot.CanvasLayer` will be drawn in that layer. The layer is a numeric index that defines the draw order. The default 2D scene renders with index 0, so a `godot.CanvasLayer` with index -1 will be drawn below, and one with index 1 will be drawn above. This is very useful for HUDs (in layer 1+ or above), or backgrounds (in layer -1 or below).
**/
@:libType
@:csNative
@:native("Godot.CanvasLayer")
@:autoBuild(godot.Godot.buildUserClass())
extern class CanvasLayer extends godot.Node {
	/**		
		Scales the layer when using `godot.CanvasLayer.followViewportEnable`. Layers moving into the foreground should have increasing scales, while layers moving into the background should have decreasing scales.
	**/
	@:native("FollowViewportScale")
	public var followViewportScale:Single;

	/**		
		Sets the layer to follow the viewport in order to simulate a pseudo 3D effect.
	**/
	@:native("FollowViewportEnable")
	public var followViewportEnable:Bool;

	/**		
		The custom `godot.Viewport` node assigned to the `godot.CanvasLayer`. If `null`, uses the default viewport instead.
	**/
	@:native("CustomViewport")
	public var customViewport:godot.Node;

	/**		
		The layer's transform.
	**/
	@:native("Transform")
	public var transform:godot.Transform2D;

	/**		
		The layer's scale.
	**/
	@:native("Scale")
	public var scale:godot.Vector2;

	/**		
		The layer's rotation in radians.
	**/
	@:native("Rotation")
	public var rotation:Single;

	/**		
		The layer's rotation in degrees.
	**/
	@:native("RotationDegrees")
	public var rotationDegrees:Single;

	/**		
		The layer's base offset.
	**/
	@:native("Offset")
	public var offset:godot.Vector2;

	/**		
		Layer index for draw order. Lower values are drawn first.
	**/
	@:native("Layer")
	public var layer:Int;

	@:native("new")
	public function new():Void;

	@:native("SetLayer")
	public function setLayer(layer:Int):Void;

	@:native("GetLayer")
	public function getLayer():Int;

	@:native("SetTransform")
	public function setTransform(transform:godot.Transform2D):Void;

	@:native("GetTransform")
	public function getTransform():godot.Transform2D;

	@:native("SetOffset")
	public function setOffset(offset:godot.Vector2):Void;

	@:native("GetOffset")
	public function getOffset():godot.Vector2;

	@:native("SetRotation")
	public function setRotation(radians:Single):Void;

	@:native("GetRotation")
	public function getRotation():Single;

	@:native("SetRotationDegrees")
	public function setRotationDegrees(degrees:Single):Void;

	@:native("GetRotationDegrees")
	public function getRotationDegrees():Single;

	@:native("SetScale")
	public function setScale(scale:godot.Vector2):Void;

	@:native("GetScale")
	public function getScale():godot.Vector2;

	@:native("SetFollowViewport")
	public function setFollowViewport(enable:Bool):Void;

	@:native("IsFollowingViewport")
	public function isFollowingViewport():Bool;

	@:native("SetFollowViewportScale")
	public function setFollowViewportScale(scale:Single):Void;

	@:native("GetFollowViewportScale")
	public function getFollowViewportScale():Single;

	@:native("SetCustomViewport")
	public function setCustomViewport(viewport:godot.Node):Void;

	@:native("GetCustomViewport")
	public function getCustomViewport():godot.Node;

	/**		
		Returns the RID of the canvas used by this layer.
	**/
	@:native("GetCanvas")
	public function getCanvas():godot.RID;
}
