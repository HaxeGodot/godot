// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
A node that displays a 2D texture in a 3D environment. The texture displayed can be a region from a larger atlas texture, or a frame from a sprite sheet animation.
**/
@:libType
@:csNative
@:native("Godot.Sprite3D")
@:autoBuild(godot.Godot.buildUserClass())
extern class Sprite3D extends godot.SpriteBase3D {
	/**
		`frame_changed` signal.
		
		Emitted when the `frame` changes.
	**/
	public var onFrameChanged(get, never):Signal<Void->Void>;
	@:dox(hide) inline function get_onFrameChanged():Signal<Void->Void> {
		return new Signal(this, "frame_changed", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	/**		
		The region of the atlas texture to display. `godot.Sprite3D.regionEnabled` must be `true`.
	**/
	@:native("RegionRect")
	public var regionRect:godot.Rect2;

	/**		
		If `true`, texture will be cut from a larger atlas texture. See `godot.Sprite3D.regionRect`.
	**/
	@:native("RegionEnabled")
	public var regionEnabled:Bool;

	/**		
		Coordinates of the frame to display from sprite sheet. This is as an alias for the `godot.Sprite3D.frame` property. `godot.Sprite3D.hframes` or `godot.Sprite3D.vframes` must be greater than 1.
	**/
	@:native("FrameCoords")
	public var frameCoords:godot.Vector2;

	/**		
		Current frame to display from sprite sheet. `godot.Sprite3D.hframes` or `godot.Sprite3D.vframes` must be greater than 1.
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
		`godot.Texture` object to draw. If `godot.GeometryInstance.materialOverride` is used, this will be overridden.
	**/
	@:native("Texture")
	public var texture:godot.Texture;

	@:native("new")
	public function new():Void;

	@:native("SetTexture")
	public function setTexture(texture:godot.Texture):Void;

	@:native("GetTexture")
	public function getTexture():godot.Texture;

	@:native("SetRegion")
	public function setRegion(enabled:Bool):Void;

	@:native("IsRegion")
	public function isRegion():Bool;

	@:native("SetRegionRect")
	public function setRegionRect(rect:godot.Rect2):Void;

	@:native("GetRegionRect")
	public function getRegionRect():godot.Rect2;

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
}
