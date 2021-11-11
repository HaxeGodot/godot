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
		The default font of this `godot.Theme` resource. Used as a fallback value for font items defined in this theme, but having invalid values. If this value is also invalid, the global default value is used.
		
		Use `godot.Theme.hasDefaultFont` to check if this value is valid.
	**/
	@:native("DefaultFont")
	public var defaultFont:godot.Font;

	@:native("new")
	public function new():Void;

	/**		
		Sets the theme's icon `godot.Texture` to `texture` at `name` in `node_type`.
		
		Creates `node_type` if the theme does not have it.
	**/
	@:native("SetIcon")
	public function setIcon(name:std.String, nodeType:std.String, texture:godot.Texture):Void;

	/**		
		Returns the icon `godot.Texture` at `name` if the theme has `node_type`.
	**/
	@:native("GetIcon")
	public function getIcon(name:std.String, nodeType:std.String):godot.Texture;

	/**		
		Returns `true` if icon `godot.Texture` with `name` is in `node_type`.
		
		Returns `false` if the theme does not have `node_type`.
	**/
	@:native("HasIcon")
	public function hasIcon(name:std.String, nodeType:std.String):Bool;

	/**		
		Renames the icon at `old_name` to `name` if the theme has `node_type`. If `name` is already taken, this method fails.
	**/
	@:native("RenameIcon")
	public function renameIcon(oldName:std.String, name:std.String, nodeType:std.String):Void;

	/**		
		Clears the icon at `name` if the theme has `node_type`.
	**/
	@:native("ClearIcon")
	public function clearIcon(name:std.String, nodeType:std.String):Void;

	/**		
		Returns all the icons as a `String` filled with each `godot.Texture`'s name, for use in `godot.Theme.getIcon`, if the theme has `node_type`.
	**/
	public extern inline function getIconList(nodeType:std.String):std.Array<std.String> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetIconList({1})", this, nodeType));
	}

	/**		
		Returns all the icon types as a `String` filled with unique type names, for use in `godot.Theme.getIcon` and/or `godot.Theme.getIconList`.
	**/
	public extern inline function getIconTypes():std.Array<std.String> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetIconTypes()", this));
	}

	/**		
		Sets theme's `godot.StyleBox` to `stylebox` at `name` in `node_type`.
		
		Creates `node_type` if the theme does not have it.
	**/
	@:native("SetStylebox")
	public function setStylebox(name:std.String, nodeType:std.String, texture:godot.StyleBox):Void;

	/**		
		Returns the `godot.StyleBox` at `name` if the theme has `node_type`.
		
		Valid `name`s may be found using `godot.Theme.getStyleboxList`. Valid `node_type`s may be found using `godot.Theme.getStyleboxTypes`.
	**/
	@:native("GetStylebox")
	public function getStylebox(name:std.String, nodeType:std.String):godot.StyleBox;

	/**		
		Returns `true` if `godot.StyleBox` with `name` is in `node_type`.
		
		Returns `false` if the theme does not have `node_type`.
	**/
	@:native("HasStylebox")
	public function hasStylebox(name:std.String, nodeType:std.String):Bool;

	/**		
		Renames `godot.StyleBox` at `old_name` to `name` if the theme has `node_type`. If `name` is already taken, this method fails.
	**/
	@:native("RenameStylebox")
	public function renameStylebox(oldName:std.String, name:std.String, nodeType:std.String):Void;

	/**		
		Clears `godot.StyleBox` at `name` if the theme has `node_type`.
	**/
	@:native("ClearStylebox")
	public function clearStylebox(name:std.String, nodeType:std.String):Void;

	/**		
		Returns all the `godot.StyleBox`s as a `String` filled with each `godot.StyleBox`'s name, for use in `godot.Theme.getStylebox`, if the theme has `node_type`.
		
		Valid `node_type`s may be found using `godot.Theme.getStyleboxTypes`.
	**/
	public extern inline function getStyleboxList(nodeType:std.String):std.Array<std.String> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetStyleboxList({1})", this, nodeType));
	}

	/**		
		Returns all the `godot.StyleBox` types as a `String` filled with unique type names, for use in `godot.Theme.getStylebox` and/or `godot.Theme.getStyleboxList`.
	**/
	public extern inline function getStyleboxTypes():std.Array<std.String> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetStyleboxTypes()", this));
	}

	/**		
		Sets the theme's `godot.Font` to `font` at `name` in `node_type`.
		
		Creates `node_type` if the theme does not have it.
	**/
	@:native("SetFont")
	public function setFont(name:std.String, nodeType:std.String, font:godot.Font):Void;

	/**		
		Returns the `godot.Font` at `name` if the theme has `node_type`.
	**/
	@:native("GetFont")
	public function getFont(name:std.String, nodeType:std.String):godot.Font;

	/**		
		Returns `true` if `godot.Font` with `name` is in `node_type`.
		
		Returns `false` if the theme does not have `node_type`.
	**/
	@:native("HasFont")
	public function hasFont(name:std.String, nodeType:std.String):Bool;

	/**		
		Renames the `godot.Font` at `old_name` to `name` if the theme has `node_type`. If `name` is already taken, this method fails.
	**/
	@:native("RenameFont")
	public function renameFont(oldName:std.String, name:std.String, nodeType:std.String):Void;

	/**		
		Clears the `godot.Font` at `name` if the theme has `node_type`.
	**/
	@:native("ClearFont")
	public function clearFont(name:std.String, nodeType:std.String):Void;

	/**		
		Returns all the `godot.Font`s as a `String` filled with each `godot.Font`'s name, for use in `godot.Theme.getFont`, if the theme has `node_type`.
	**/
	public extern inline function getFontList(nodeType:std.String):std.Array<std.String> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetFontList({1})", this, nodeType));
	}

	/**		
		Returns all the `godot.Font` types as a `String` filled with unique type names, for use in `godot.Theme.getFont` and/or `godot.Theme.getFontList`.
	**/
	public extern inline function getFontTypes():std.Array<std.String> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetFontTypes()", this));
	}

	/**		
		Sets the theme's `godot.Color` to `color` at `name` in `node_type`.
		
		Creates `node_type` if the theme does not have it.
	**/
	@:native("SetColor")
	public function setColor(name:std.String, nodeType:std.String, color:godot.Color):Void;

	/**		
		Returns the `godot.Color` at `name` if the theme has `node_type`.
	**/
	@:native("GetColor")
	public function getColor(name:std.String, nodeType:std.String):godot.Color;

	/**		
		Returns `true` if `godot.Color` with `name` is in `node_type`.
		
		Returns `false` if the theme does not have `node_type`.
	**/
	@:native("HasColor")
	public function hasColor(name:std.String, nodeType:std.String):Bool;

	/**		
		Renames the `godot.Color` at `old_name` to `name` if the theme has `node_type`. If `name` is already taken, this method fails.
	**/
	@:native("RenameColor")
	public function renameColor(oldName:std.String, name:std.String, nodeType:std.String):Void;

	/**		
		Clears the `godot.Color` at `name` if the theme has `node_type`.
	**/
	@:native("ClearColor")
	public function clearColor(name:std.String, nodeType:std.String):Void;

	/**		
		Returns all the `godot.Color`s as a `String` filled with each `godot.Color`'s name, for use in `godot.Theme.getColor`, if the theme has `node_type`.
	**/
	public extern inline function getColorList(nodeType:std.String):std.Array<std.String> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetColorList({1})", this, nodeType));
	}

	/**		
		Returns all the `godot.Color` types as a `String` filled with unique type names, for use in `godot.Theme.getColor` and/or `godot.Theme.getColorList`.
	**/
	public extern inline function getColorTypes():std.Array<std.String> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetColorTypes()", this));
	}

	/**		
		Sets the theme's constant to `constant` at `name` in `node_type`.
		
		Creates `node_type` if the theme does not have it.
	**/
	@:native("SetConstant")
	public function setConstant(name:std.String, nodeType:std.String, constant:Int):Void;

	/**		
		Returns the constant at `name` if the theme has `node_type`.
	**/
	@:native("GetConstant")
	public function getConstant(name:std.String, nodeType:std.String):Int;

	/**		
		Returns `true` if constant with `name` is in `node_type`.
		
		Returns `false` if the theme does not have `node_type`.
	**/
	@:native("HasConstant")
	public function hasConstant(name:std.String, nodeType:std.String):Bool;

	/**		
		Renames the constant at `old_name` to `name` if the theme has `node_type`. If `name` is already taken, this method fails.
	**/
	@:native("RenameConstant")
	public function renameConstant(oldName:std.String, name:std.String, nodeType:std.String):Void;

	/**		
		Clears the constant at `name` if the theme has `node_type`.
	**/
	@:native("ClearConstant")
	public function clearConstant(name:std.String, nodeType:std.String):Void;

	/**		
		Returns all the constants as a `String` filled with each constant's name, for use in `godot.Theme.getConstant`, if the theme has `node_type`.
	**/
	public extern inline function getConstantList(nodeType:std.String):std.Array<std.String> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetConstantList({1})", this, nodeType));
	}

	/**		
		Returns all the constant types as a `String` filled with unique type names, for use in `godot.Theme.getConstant` and/or `godot.Theme.getConstantList`.
	**/
	public extern inline function getConstantTypes():std.Array<std.String> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetConstantTypes()", this));
	}

	@:native("SetDefaultFont")
	public function setDefaultFont(font:godot.Font):Void;

	@:native("GetDefaultFont")
	public function getDefaultFont():godot.Font;

	/**		
		Returns `true` if this theme has a valid `godot.Theme.defaultFont` value.
	**/
	@:native("HasDefaultFont")
	public function hasDefaultFont():Bool;

	/**		
		Sets the theme item of `data_type` to `value` at `name` in `node_type`.
		
		Does nothing if the `value` type does not match `data_type`.
		
		Creates `node_type` if the theme does not have it.
	**/
	@:native("SetThemeItem")
	public function setThemeItem(dataType:godot.Theme_DataType, name:std.String, nodeType:std.String, value:Dynamic):Void;

	/**		
		Returns the theme item of `data_type` at `name` if the theme has `node_type`.
		
		Valid `name`s may be found using `godot.Theme.getThemeItemList` or a data type specific method. Valid `node_type`s may be found using `godot.Theme.getThemeItemTypes` or a data type specific method.
	**/
	@:native("GetThemeItem")
	public function getThemeItem(dataType:godot.Theme_DataType, name:std.String, nodeType:std.String):Dynamic;

	/**		
		Returns `true` if a theme item of `data_type` with `name` is in `node_type`.
		
		Returns `false` if the theme does not have `node_type`.
	**/
	@:native("HasThemeItem")
	public function hasThemeItem(dataType:godot.Theme_DataType, name:std.String, nodeType:std.String):Bool;

	/**		
		Renames the theme item of `data_type` at `old_name` to `name` if the theme has `node_type`. If `name` is already taken, this method fails.
	**/
	@:native("RenameThemeItem")
	public function renameThemeItem(dataType:godot.Theme_DataType, oldName:std.String, name:std.String, nodeType:std.String):Void;

	/**		
		Clears the theme item of `data_type` at `name` if the theme has `node_type`.
	**/
	@:native("ClearThemeItem")
	public function clearThemeItem(dataType:godot.Theme_DataType, name:std.String, nodeType:std.String):Void;

	/**		
		Returns all the theme items of `data_type` as a `String` filled with each theme items's name, for use in `godot.Theme.getThemeItem` or a data type specific method, if the theme has `node_type`.
		
		Valid `node_type`s may be found using `godot.Theme.getThemeItemTypes` or a data type specific method.
	**/
	public extern inline function getThemeItemList(dataType:godot.Theme_DataType, nodeType:std.String):std.Array<std.String> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetThemeItemList({1}, {2})", this, dataType, nodeType));
	}

	/**		
		Returns all the theme items of `data_type` types as a `String` filled with unique type names, for use in `godot.Theme.getThemeItem`, `godot.Theme.getThemeItemList` or data type specific methods.
	**/
	public extern inline function getThemeItemTypes(dataType:godot.Theme_DataType):std.Array<std.String> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetThemeItemTypes({1})", this, dataType));
	}

	/**		
		Returns all the theme types as a `String` filled with unique type names, for use in other `get_*` functions of this theme.
		
		Note: `node_type` has no effect and will be removed in future version.
	**/
	public extern inline function getTypeList(nodeType:std.String):std.Array<std.String> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetTypeList({1})", this, nodeType));
	}

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

	/**		
		Adds missing and overrides existing definitions with values from the `other` `godot.Theme`.
		
		Note: This modifies the current theme. If you want to merge two themes together without modifying either one, create a new empty theme and merge the other two into it one after another.
	**/
	@:native("MergeWith")
	public function mergeWith(other:godot.Theme):Void;

	/**		
		Clears all values on the theme.
	**/
	@:native("Clear")
	public function clear():Void;
}
