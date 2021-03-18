// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
A theme for skinning controls. Controls can be skinned individually, but for complex applications, it's more practical to just create a global theme that defines everything. This theme can be applied to any `godot.Control`; the Control and its children will automatically use it.

Theme resources can alternatively be loaded by writing them in a `.theme` file, see the documentation for more information.
**/
@:libType
@:csNative
@:native("Godot.Theme")
@:autoBuild(godot.Godot.buildUserClass())
extern class Theme extends godot.Resource {
	/**		
		The theme's default font.
	**/
	@:native("DefaultFont")
	public var defaultFont:godot.Font;

	@:native("new")
	public function new():Void;

	/**		
		Sets the theme's icon `godot.Texture` to `texture` at `name` in `type`.
		
		Does nothing if the theme does not have `type`.
	**/
	@:native("SetIcon")
	public function setIcon(name:std.String, type:std.String, texture:godot.Texture):Void;

	/**		
		Returns the icon `godot.Texture` at `name` if the theme has `type`.
	**/
	@:native("GetIcon")
	public function getIcon(name:std.String, type:std.String):godot.Texture;

	/**		
		Returns `true` if icon `godot.Texture` with `name` is in `type`.
		
		Returns `false` if the theme does not have `type`.
	**/
	@:native("HasIcon")
	public function hasIcon(name:std.String, type:std.String):Bool;

	/**		
		Clears the icon at `name` if the theme has `type`.
	**/
	@:native("ClearIcon")
	public function clearIcon(name:std.String, type:std.String):Void;

	/**		
		Returns all the icons as a `String` filled with each `godot.Texture`'s name, for use in `godot.Theme.getIcon`, if the theme has `type`.
	**/
	@:native("GetIconList")
	public function getIconList(type:std.String):cs.NativeArray<std.String>;

	/**		
		Sets theme's `godot.StyleBox` to `stylebox` at `name` in `type`.
		
		Does nothing if the theme does not have `type`.
	**/
	@:native("SetStylebox")
	public function setStylebox(name:std.String, type:std.String, texture:godot.StyleBox):Void;

	/**		
		Returns the icon `godot.StyleBox` at `name` if the theme has `type`.
	**/
	@:native("GetStylebox")
	public function getStylebox(name:std.String, type:std.String):godot.StyleBox;

	/**		
		Returns `true` if `godot.StyleBox` with `name` is in `type`.
		
		Returns `false` if the theme does not have `type`.
	**/
	@:native("HasStylebox")
	public function hasStylebox(name:std.String, type:std.String):Bool;

	/**		
		Clears `godot.StyleBox` at `name` if the theme has `type`.
	**/
	@:native("ClearStylebox")
	public function clearStylebox(name:std.String, type:std.String):Void;

	/**		
		Returns all the `godot.StyleBox`s as a `String` filled with each `godot.StyleBox`'s name, for use in `godot.Theme.getStylebox`, if the theme has `type`.
	**/
	@:native("GetStyleboxList")
	public function getStyleboxList(type:std.String):cs.NativeArray<std.String>;

	/**		
		Returns all the `godot.StyleBox` types as a `String` filled with each `godot.StyleBox`'s type, for use in `godot.Theme.getStylebox` and/or `godot.Theme.getStyleboxList`, if the theme has `type`.
	**/
	@:native("GetStyleboxTypes")
	public function getStyleboxTypes():cs.NativeArray<std.String>;

	/**		
		Sets the theme's `godot.Font` to `font` at `name` in `type`.
		
		Does nothing if the theme does not have `type`.
	**/
	@:native("SetFont")
	public function setFont(name:std.String, type:std.String, font:godot.Font):Void;

	/**		
		Returns the `godot.Font` at `name` if the theme has `type`.
	**/
	@:native("GetFont")
	public function getFont(name:std.String, type:std.String):godot.Font;

	/**		
		Returns `true` if `godot.Font` with `name` is in `type`.
		
		Returns `false` if the theme does not have `type`.
	**/
	@:native("HasFont")
	public function hasFont(name:std.String, type:std.String):Bool;

	/**		
		Clears the `godot.Font` at `name` if the theme has `type`.
	**/
	@:native("ClearFont")
	public function clearFont(name:std.String, type:std.String):Void;

	/**		
		Returns all the `godot.Font`s as a `String` filled with each `godot.Font`'s name, for use in `godot.Theme.getFont`, if the theme has `type`.
	**/
	@:native("GetFontList")
	public function getFontList(type:std.String):cs.NativeArray<std.String>;

	/**		
		Sets the theme's `godot.Color` to `color` at `name` in `type`.
		
		Does nothing if the theme does not have `type`.
	**/
	@:native("SetColor")
	public function setColor(name:std.String, type:std.String, color:godot.Color):Void;

	/**		
		Returns the `godot.Color` at `name` if the theme has `type`.
	**/
	@:native("GetColor")
	public function getColor(name:std.String, type:std.String):godot.Color;

	/**		
		Returns `true` if `godot.Color` with `name` is in `type`.
		
		Returns `false` if the theme does not have `type`.
	**/
	@:native("HasColor")
	public function hasColor(name:std.String, type:std.String):Bool;

	/**		
		Clears the `godot.Color` at `name` if the theme has `type`.
	**/
	@:native("ClearColor")
	public function clearColor(name:std.String, type:std.String):Void;

	/**		
		Returns all the `godot.Color`s as a `String` filled with each `godot.Color`'s name, for use in `godot.Theme.getColor`, if the theme has `type`.
	**/
	@:native("GetColorList")
	public function getColorList(type:std.String):cs.NativeArray<std.String>;

	/**		
		Sets the theme's constant to `constant` at `name` in `type`.
		
		Does nothing if the theme does not have `type`.
	**/
	@:native("SetConstant")
	public function setConstant(name:std.String, type:std.String, constant:Int):Void;

	/**		
		Returns the constant at `name` if the theme has `type`.
	**/
	@:native("GetConstant")
	public function getConstant(name:std.String, type:std.String):Int;

	/**		
		Returns `true` if constant with `name` is in `type`.
		
		Returns `false` if the theme does not have `type`.
	**/
	@:native("HasConstant")
	public function hasConstant(name:std.String, type:std.String):Bool;

	/**		
		Clears the constant at `name` if the theme has `type`.
	**/
	@:native("ClearConstant")
	public function clearConstant(name:std.String, type:std.String):Void;

	/**		
		Returns all the constants as a `String` filled with each constant's name, for use in `godot.Theme.getConstant`, if the theme has `type`.
	**/
	@:native("GetConstantList")
	public function getConstantList(type:std.String):cs.NativeArray<std.String>;

	/**		
		Clears all values on the theme.
	**/
	@:native("Clear")
	public function clear():Void;

	@:native("SetDefaultFont")
	public function setDefaultFont(font:godot.Font):Void;

	@:native("GetDefaultFont")
	public function getDefaultFont():godot.Font;

	/**		
		Returns all the types in `type` as a `String` for use in any of the `get_*` functions, if the theme has `type`.
	**/
	@:native("GetTypeList")
	public function getTypeList(type:std.String):cs.NativeArray<std.String>;

	/**		
		Sets the theme's values to a copy of the default theme values.
	**/
	@:native("CopyDefaultTheme")
	public function copyDefaultTheme():Void;

	/**		
		Sets the theme's values to a copy of a given theme.
	**/
	@:native("CopyTheme")
	public function copyTheme(other:godot.Theme):Void;
}
