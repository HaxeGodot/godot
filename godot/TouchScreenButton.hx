// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
TouchScreenButton allows you to create on-screen buttons for touch devices. It's intended for gameplay use, such as a unit you have to touch to move. Unlike `godot.Button`, TouchScreenButton supports multitouch out of the box. Several TouchScreenButtons can be pressed at the same time with touch input.

This node inherits from `godot.Node2D`. Unlike with `godot.Control` nodes, you cannot set anchors on it. If you want to create menus or user interfaces, you may want to use `godot.Button` nodes instead. To make button nodes react to touch events, you can enable the Emulate Mouse option in the Project Settings.

You can configure TouchScreenButton to be visible only on touch devices, helping you develop your game both for desktop and mobile devices.
**/
@:libType
@:csNative
@:native("Godot.TouchScreenButton")
@:autoBuild(godot.Godot.buildUserClass())
extern class TouchScreenButton extends godot.Node2D {
	/**
		`pressed` signal.
		
		Emitted when the button is pressed (down).
	**/
	public var onPressed(get, never):Signal<Void->Void>;
	@:dox(hide) inline function get_onPressed():Signal<Void->Void> {
		return new Signal(this, "pressed", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	/**
		`released` signal.
		
		Emitted when the button is released (up).
	**/
	public var onReleased(get, never):Signal<Void->Void>;
	@:dox(hide) inline function get_onReleased():Signal<Void->Void> {
		return new Signal(this, "released", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	/**		
		The button's visibility mode. See `godot.TouchScreenButton_VisibilityModeEnum` for possible values.
	**/
	@:native("VisibilityMode")
	public var visibilityMode:godot.TouchScreenButton_VisibilityModeEnum;

	/**		
		The button's action. Actions can be handled with `godot.InputEventAction`.
	**/
	@:native("Action")
	public var action:std.String;

	/**		
		If `true`, the `pressed` and `released` signals are emitted whenever a pressed finger goes in and out of the button, even if the pressure started outside the active area of the button.
		
		Note: this is a "pass-by" (not "bypass") press mode.
	**/
	@:native("PassbyPress")
	public var passbyPress:Bool;

	/**		
		If `true`, the button's shape is visible.
	**/
	@:native("ShapeVisible")
	public var shapeVisible:Bool;

	/**		
		If `true`, the button's shape is centered in the provided texture. If no texture is used, this property has no effect.
	**/
	@:native("ShapeCentered")
	public var shapeCentered:Bool;

	/**		
		The button's shape.
	**/
	@:native("Shape")
	public var shape:godot.Shape2D;

	/**		
		The button's bitmask.
	**/
	@:native("Bitmask")
	public var bitmask:godot.BitMap;

	/**		
		The button's texture for the pressed state.
	**/
	@:native("Pressed")
	public var pressed:godot.Texture;

	/**		
		The button's texture for the normal state.
	**/
	@:native("Normal")
	public var normal:godot.Texture;

	@:native("new")
	public function new():Void;

	@:native("SetTexture")
	public function setTexture(texture:godot.Texture):Void;

	@:native("GetTexture")
	public function getTexture():godot.Texture;

	@:native("SetTexturePressed")
	public function setTexturePressed(texturePressed:godot.Texture):Void;

	@:native("GetTexturePressed")
	public function getTexturePressed():godot.Texture;

	@:native("SetBitmask")
	public function setBitmask(bitmask:godot.BitMap):Void;

	@:native("GetBitmask")
	public function getBitmask():godot.BitMap;

	@:native("SetShape")
	public function setShape(shape:godot.Shape2D):Void;

	@:native("GetShape")
	public function getShape():godot.Shape2D;

	@:native("SetShapeCentered")
	public function setShapeCentered(bool:Bool):Void;

	@:native("IsShapeCentered")
	public function isShapeCentered():Bool;

	@:native("SetShapeVisible")
	public function setShapeVisible(bool:Bool):Void;

	@:native("IsShapeVisible")
	public function isShapeVisible():Bool;

	@:native("SetAction")
	public function setAction(action:std.String):Void;

	@:native("GetAction")
	public function getAction():std.String;

	@:native("SetVisibilityMode")
	public function setVisibilityMode(mode:godot.TouchScreenButton_VisibilityModeEnum):Void;

	@:native("GetVisibilityMode")
	public function getVisibilityMode():godot.TouchScreenButton_VisibilityModeEnum;

	@:native("SetPassbyPress")
	public function setPassbyPress(enabled:Bool):Void;

	@:native("IsPassbyPressEnabled")
	public function isPassbyPressEnabled():Bool;

	/**		
		Returns `true` if this button is currently pressed.
	**/
	@:native("IsPressed")
	public function isPressed():Bool;
}
