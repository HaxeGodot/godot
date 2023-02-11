// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Displays a color picker widget. Useful for selecting a color from an RGB/RGBA colorspace.

Note: This control is the color picker widget itself. You can use a `godot.ColorPickerButton` instead if you need a button that brings up a `godot.ColorPicker` in a pop-up.
**/
@:libType
@:csNative
@:native("Godot.ColorPicker")
@:autoBuild(godot.Godot.buildUserClass())
extern class ColorPicker extends godot.BoxContainer {
	/**
		`color_changed` signal.
	**/
	public var onColorChanged(get, never):Signal<(color:Color)->Void>;
	@:dox(hide) @:noCompletion inline function get_onColorChanged():Signal<(color:Color)->Void> {
		return new Signal(this, "color_changed", Signal.SignalHandlerColorVoid.connectSignal, Signal.SignalHandlerColorVoid.disconnectSignal, Signal.SignalHandlerColorVoid.isSignalConnected);
	}

	/**
		`preset_added` signal.
	**/
	public var onPresetAdded(get, never):Signal<(color:Color)->Void>;
	@:dox(hide) @:noCompletion inline function get_onPresetAdded():Signal<(color:Color)->Void> {
		return new Signal(this, "preset_added", Signal.SignalHandlerColorVoid.connectSignal, Signal.SignalHandlerColorVoid.disconnectSignal, Signal.SignalHandlerColorVoid.isSignalConnected);
	}

	/**
		`preset_removed` signal.
	**/
	public var onPresetRemoved(get, never):Signal<(color:Color)->Void>;
	@:dox(hide) @:noCompletion inline function get_onPresetRemoved():Signal<(color:Color)->Void> {
		return new Signal(this, "preset_removed", Signal.SignalHandlerColorVoid.connectSignal, Signal.SignalHandlerColorVoid.disconnectSignal, Signal.SignalHandlerColorVoid.isSignalConnected);
	}

	/**		
		If `true`, saved color presets are visible.
	**/
	@:native("PresetsVisible")
	public var presetsVisible:Bool;

	/**		
		If `true`, the "add preset" button is enabled.
	**/
	@:native("PresetsEnabled")
	public var presetsEnabled:Bool;

	/**		
		If `true`, the color will apply only after the user releases the mouse button, otherwise it will apply immediately even in mouse motion event (which can cause performance issues).
	**/
	@:native("DeferredMode")
	public var deferredMode:Bool;

	/**		
		If `true`, allows the color R, G, B component values to go beyond 1.0, which can be used for certain special operations that require it (like tinting without darkening or rendering sprites in HDR).
		
		Note: Cannot be enabled if HSV mode is on.
	**/
	@:native("RawMode")
	public var rawMode:Bool;

	/**		
		If `true`, allows editing the color with Hue/Saturation/Value sliders.
		
		Note: Cannot be enabled if raw mode is on.
	**/
	@:native("HsvMode")
	public var hsvMode:Bool;

	/**		
		If `true`, shows an alpha channel slider (opacity).
	**/
	@:native("EditAlpha")
	public var editAlpha:Bool;

	/**		
		The currently selected color.
	**/
	@:native("Color")
	public var color:godot.Color;

	@:native("new")
	public function new():Void;

	@:native("SetPickColor")
	public function setPickColor(color:godot.Color):Void;

	@:native("GetPickColor")
	public function getPickColor():godot.Color;

	@:native("SetHsvMode")
	public function setHsvMode(mode:Bool):Void;

	@:native("IsHsvMode")
	public function isHsvMode():Bool;

	@:native("SetRawMode")
	public function setRawMode(mode:Bool):Void;

	@:native("IsRawMode")
	public function isRawMode():Bool;

	@:native("SetDeferredMode")
	public function setDeferredMode(mode:Bool):Void;

	@:native("IsDeferredMode")
	public function isDeferredMode():Bool;

	@:native("SetEditAlpha")
	public function setEditAlpha(show:Bool):Void;

	@:native("IsEditingAlpha")
	public function isEditingAlpha():Bool;

	@:native("SetPresetsEnabled")
	public function setPresetsEnabled(enabled:Bool):Void;

	@:native("ArePresetsEnabled")
	public function arePresetsEnabled():Bool;

	@:native("SetPresetsVisible")
	public function setPresetsVisible(visible:Bool):Void;

	@:native("ArePresetsVisible")
	public function arePresetsVisible():Bool;

	/**		
		Adds the given color to a list of color presets. The presets are displayed in the color picker and the user will be able to select them.
		
		Note: The presets list is only for this color picker.
	**/
	@:native("AddPreset")
	public function addPreset(color:godot.Color):Void;

	/**		
		Removes the given color from the list of color presets of this color picker.
	**/
	@:native("ErasePreset")
	public function erasePreset(color:godot.Color):Void;

	/**		
		Returns the list of colors in the presets of the color picker.
	**/
	public extern inline function getPresets():std.Array<godot.Color> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetPresets()", this));
	}
}
