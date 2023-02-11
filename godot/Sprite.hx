// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
A node that displays a 2D texture. The texture displayed can be a region from a larger atlas texture, or a frame from a sprite sheet animation.
**/
@:libType
@:csNative
@:native("Godot.Sprite")
@:autoBuild(godot.Godot.buildUserClass())
extern class Sprite extends godot.Node2D {
	/**
		`frame_changed` signal.
	**/
	public var onFrameChanged(get, never):Signal<Void->Void>;
	@:dox(hide) @:noCompletion inline function get_onFrameChanged():Signal<Void->Void> {
		return new Signal(this, "frame_changed", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	/**
		`texture_changed` signal.
	**/
	public var onTextureChanged(get, never):Signal<Void->Void>;
	@:dox(hide) @:noCompletion inline function get_onTextureChanged():Signal<Void->Void> {
		return new Signal(this, "texture_changed", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	/**		
		If `true`, the outermost pixels get blurred out.
	**/
	@:native("RegionFilterClip")
	public var regionFilterClip:Bool;

	/**		
		The region of the atlas texture to display. `godot.Sprite.regionEnabled` must be `true`.
	**/
	@:native("RegionRect")
	public var regionRect:godot.Rect2;

	/**		
		If `true`, texture is cut from a larger atlas texture. See `godot.Sprite.regionRect`.
	**/
	@:native("RegionEnabled")
	public var regionEnabled:Bool;

	/**		
		Coordinates of the frame to display from sprite sheet. This is as an alias for the `godot.Sprite.frame` property. `godot.Sprite.hframes` or `godot.Sprite.vframes` must be greater than 1.
	**/
	@:native("FrameCoords")
	public var frameCoords:godot.Vector2;

	/**		
		Current frame to display from sprite sheet. `godot.Sprite.hframes` or `godot.Sprite.vframes` must be greater than 1.
	**/
	@:native("Frame")
	public var frame:Int;

	/**		
		The number of rows in the sprite sheet.
	**/
	@:native("Vframes")
	public var vframes:Int;

	/**		
		The number of columns in the sprite sheet.
	**/
	@:native("Hframes")
	public var hframes:Int;

	/**		
		If `true`, texture is flipped vertically.
	**/
	@:native("FlipV")
	public var flipV:Bool;

	/**		
		If `true`, texture is flipped horizontally.
	**/
	@:native("FlipH")
	public var flipH:Bool;

	/**		
		The texture's drawing offset.
	**/
	@:native("Offset")
	public var offset:godot.Vector2;

	/**		
		If `true`, texture is centered.
	**/
	@:native("Centered")
	public var centered:Bool;

	/**		
		The normal map gives depth to the Sprite.
		
		Note: Godot expects the normal map to use X+, Y-, and Z+ coordinates. See [http://wiki.polycount.com/wiki/Normal_Map_Technical_Details#Common_Swizzle_Coordinates](this page) for a comparison of normal map coordinates expected by popular engines.
	**/
	@:native("NormalMap")
	public var normalMap:godot.Texture;

	/**		
		`godot.Texture` object to draw.
	**/
	@:native("Texture")
	public var texture:godot.Texture;

	@:native("new")
	public function new():Void;

	@:native("SetTexture")
	public function setTexture(texture:godot.Texture):Void;

	@:native("GetTexture")
	public function getTexture():godot.Texture;

	@:native("SetNormalMap")
	public function setNormalMap(normalMap:godot.Texture):Void;

	@:native("GetNormalMap")
	public function getNormalMap():godot.Texture;

	@:native("SetCentered")
	public function setCentered(centered:Bool):Void;

	@:native("IsCentered")
	public function isCentered():Bool;

	@:native("SetOffset")
	public function setOffset(offset:godot.Vector2):Void;

	@:native("GetOffset")
	public function getOffset():godot.Vector2;

	@:native("SetFlipH")
	public function setFlipH(flipH:Bool):Void;

	@:native("IsFlippedH")
	public function isFlippedH():Bool;

	@:native("SetFlipV")
	public function setFlipV(flipV:Bool):Void;

	@:native("IsFlippedV")
	public function isFlippedV():Bool;

	@:native("SetRegion")
	public function setRegion(enabled:Bool):Void;

	@:native("IsRegion")
	public function isRegion():Bool;

	/**		
		Returns `true`, if the pixel at the given position is opaque and `false` in other case.
		
		Note: It also returns `false`, if the sprite's texture is `null` or if the given position is invalid.
	**/
	@:native("IsPixelOpaque")
	public function isPixelOpaque(pos:godot.Vector2):Bool;

	@:native("SetRegionRect")
	public function setRegionRect(rect:godot.Rect2):Void;

	@:native("GetRegionRect")
	public function getRegionRect():godot.Rect2;

	@:native("SetRegionFilterClip")
	public function setRegionFilterClip(enabled:Bool):Void;

	@:native("IsRegionFilterClipEnabled")
	public function isRegionFilterClipEnabled():Bool;

	@:native("SetFrame")
	public function setFrame(frame:Int):Void;

	@:native("GetFrame")
	public function getFrame():Int;

	@:native("SetFrameCoords")
	public function setFrameCoords(coords:godot.Vector2):Void;

	@:native("GetFrameCoords")
	public function getFrameCoords():godot.Vector2;

	@:native("SetVframes")
	public function setVframes(vframes:Int):Void;

	@:native("GetVframes")
	public function getVframes():Int;

	@:native("SetHframes")
	public function setHframes(hframes:Int):Void;

	@:native("GetHframes")
	public function getHframes():Int;

	/**		
		Returns a `godot.Rect2` representing the Sprite's boundary in local coordinates. Can be used to detect if the Sprite was clicked. Example:
		
		```
		
		func _input(event):
		if event is InputEventMouseButton and event.pressed and event.button_index == BUTTON_LEFT:
		if get_rect().has_point(to_local(event.position)):
		print("A click!")
		
		```
	**/
	@:native("GetRect")
	public function getRect():godot.Rect2;
}
