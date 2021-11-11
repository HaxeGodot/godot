// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
SpinBox is a numerical input text field. It allows entering integers and floats.

Example:

```

var spin_box = SpinBox.new()
add_child(spin_box)
var line_edit = spin_box.get_line_edit()
line_edit.context_menu_enabled = false
spin_box.align = LineEdit.ALIGN_RIGHT

```

The above code will create a `godot.SpinBox`, disable context menu on it and set the text alignment to right.

See `godot.Range` class for more options over the `godot.SpinBox`.

Note: `godot.SpinBox` relies on an underlying `godot.LineEdit` node. To theme a `godot.SpinBox`'s background, add theme items for `godot.LineEdit` and customize them.
**/
@:libType
@:csNative
@:native("Godot.SpinBox")
@:autoBuild(godot.Godot.buildUserClass())
extern class SpinBox extends godot.Range {
	/**		
		Adds the specified `suffix` string after the numerical value of the `godot.SpinBox`.
	**/
	@:native("Suffix")
	public var suffix:std.String;

	/**		
		Adds the specified `prefix` string before the numerical value of the `godot.SpinBox`.
	**/
	@:native("Prefix")
	public var prefix:std.String;

	/**		
		If `true`, the `godot.SpinBox` will be editable. Otherwise, it will be read only.
	**/
	@:native("Editable")
	public var editable:Bool;

	/**		
		Sets the text alignment of the `godot.SpinBox`.
	**/
	@:native("Align")
	public var align:godot.LineEdit_AlignEnum;

	@:native("new")
	public function new():Void;

	@:native("SetAlign")
	public function setAlign(align:godot.LineEdit_AlignEnum):Void;

	@:native("GetAlign")
	public function getAlign():godot.LineEdit_AlignEnum;

	@:native("SetSuffix")
	public function setSuffix(suffix:std.String):Void;

	@:native("GetSuffix")
	public function getSuffix():std.String;

	@:native("SetPrefix")
	public function setPrefix(prefix:std.String):Void;

	@:native("GetPrefix")
	public function getPrefix():std.String;

	@:native("SetEditable")
	public function setEditable(editable:Bool):Void;

	@:native("IsEditable")
	public function isEditable():Bool;

	/**		
		Applies the current value of this `godot.SpinBox`.
	**/
	@:native("Apply")
	public function apply():Void;

	/**		
		Returns the `godot.LineEdit` instance from this `godot.SpinBox`. You can use it to access properties and methods of `godot.LineEdit`.
		
		Warning: This is a required internal node, removing and freeing it may cause a crash. If you wish to hide it or any of its children, use their `godot.CanvasItem.visible` property.
	**/
	@:native("GetLineEdit")
	public function getLineEdit():godot.LineEdit;
}
