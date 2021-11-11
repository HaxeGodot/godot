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
	/**		
		Adds an input port to the Visual Script node.
	**/
	@:native("AddInputDataPort")
	public function addInputDataPort(type:godot.Variant_Type, name:std.String, index:Int):Void;

	/**		
		Sets the name of an input port.
	**/
	@:native("SetInputDataPortName")
	public function setInputDataPortName(index:Int, name:std.String):Void;

	/**		
		Sets the type of an input port.
	**/
	@:native("SetInputDataPortType")
	public function setInputDataPortType(index:Int, type:godot.Variant_Type):Void;

	/**		
		Removes an input port from the Visual Script node.
	**/
	@:native("RemoveInputDataPort")
	public function removeInputDataPort(index:Int):Void;

	/**		
		Adds an output port to the Visual Script node.
	**/
	@:native("AddOutputDataPort")
	public function addOutputDataPort(type:godot.Variant_Type, name:std.String, index:Int):Void;

	/**		
		Sets the name of an output port.
	**/
	@:native("SetOutputDataPortName")
	public function setOutputDataPortName(index:Int, name:std.String):Void;

	/**		
		Sets the type of an output port.
	**/
	@:native("SetOutputDataPortType")
	public function setOutputDataPortType(index:Int, type:godot.Variant_Type):Void;

	/**		
		Removes an output port from the Visual Script node.
	**/
	@:native("RemoveOutputDataPort")
	public function removeOutputDataPort(index:Int):Void;
}
