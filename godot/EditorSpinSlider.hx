// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
This `godot.Control` node is used in the editor's Inspector dock to allow editing of numeric values. Can be used with `godot.EditorInspectorPlugin` to recreate the same behavior.
**/
@:libType
@:csNative
@:native("Godot.EditorSpinSlider")
@:autoBuild(godot.Godot.buildUserClass())
extern class EditorSpinSlider extends godot.Range {
	@:native("Flat")
	public var flat:Bool;

	@:native("ReadOnly")
	public var readOnly:Bool;

	@:native("Label")
	public var label:std.String;

	@:native("new")
	public function new():Void;

	@:native("SetLabel")
	public function setLabel(label:std.String):Void;

	@:native("GetLabel")
	public function getLabel():std.String;

	@:native("SetReadOnly")
	public function setReadOnly(readOnly:Bool):Void;

	@:native("IsReadOnly")
	public function isReadOnly():Bool;

	@:native("SetFlat")
	public function setFlat(flat:Bool):Void;

	@:native("IsFlat")
	public function isFlat():Bool;
}
