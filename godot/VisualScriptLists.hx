// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
A Visual Script virtual class that defines the shape and the default behavior of the nodes that have to be in-graph editable nodes.
**/
@:libType
@:csNative
@:native("Godot.VisualScriptLists")
@:autoBuild(godot.Godot.buildUserClass())
extern abstract class VisualScriptLists extends godot.VisualScriptNode {
	@:native("AddInputDataPort")
	public function addInputDataPort(type:godot.Variant_Type, name:std.String, index:Int):Void;

	@:native("SetInputDataPortName")
	public function setInputDataPortName(index:Int, name:std.String):Void;

	@:native("SetInputDataPortType")
	public function setInputDataPortType(index:Int, type:godot.Variant_Type):Void;

	@:native("RemoveInputDataPort")
	public function removeInputDataPort(index:Int):Void;

	@:native("AddOutputDataPort")
	public function addOutputDataPort(type:godot.Variant_Type, name:std.String, index:Int):Void;

	@:native("SetOutputDataPortName")
	public function setOutputDataPortName(index:Int, name:std.String):Void;

	@:native("SetOutputDataPortType")
	public function setOutputDataPortType(index:Int, type:godot.Variant_Type):Void;

	@:native("RemoveOutputDataPort")
	public function removeOutputDataPort(index:Int):Void;
}
