// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Currently, has no direct usage, use the derived classes instead.
**/
@:libType
@:csNative
@:native("Godot.VisualShaderNodeGroupBase")
@:autoBuild(godot.Godot.buildUserClass())
extern class VisualShaderNodeGroupBase extends godot.VisualShaderNode {
	/**		
		The size of the node in the visual shader graph.
	**/
	@:native("Size")
	public var size:godot.Vector2;

	@:native("new")
	public function new():Void;

	@:native("SetSize")
	public function setSize(size:godot.Vector2):Void;

	@:native("GetSize")
	public function getSize():godot.Vector2;

	/**		
		Defines all input ports using a `String` formatted as a colon-separated list: `id,type,name;` (see `godot.VisualShaderNodeGroupBase.addInputPort`).
	**/
	@:native("SetInputs")
	public function setInputs(inputs:std.String):Void;

	/**		
		Returns a `String` description of the input ports as as colon-separated list using the format `id,type,name;` (see `godot.VisualShaderNodeGroupBase.addInputPort`).
	**/
	@:native("GetInputs")
	public function getInputs():std.String;

	/**		
		Defines all output ports using a `String` formatted as a colon-separated list: `id,type,name;` (see `godot.VisualShaderNodeGroupBase.addOutputPort`).
	**/
	@:native("SetOutputs")
	public function setOutputs(outputs:std.String):Void;

	/**		
		Returns a `String` description of the output ports as as colon-separated list using the format `id,type,name;` (see `godot.VisualShaderNodeGroupBase.addOutputPort`).
	**/
	@:native("GetOutputs")
	public function getOutputs():std.String;

	/**		
		Returns `true` if the specified port name does not override an existed port name and is valid within the shader.
	**/
	@:native("IsValidPortName")
	public function isValidPortName(name:std.String):Bool;

	/**		
		Adds an input port with the specified `type` (see `godot.VisualShaderNode_PortType`) and `name`.
	**/
	@:native("AddInputPort")
	public function addInputPort(id:Int, type:Int, name:std.String):Void;

	/**		
		Removes the specified input port.
	**/
	@:native("RemoveInputPort")
	public function removeInputPort(id:Int):Void;

	/**		
		Returns the number of input ports in use. Alternative for `godot.VisualShaderNodeGroupBase.getFreeInputPortId`.
	**/
	@:native("GetInputPortCount")
	public function getInputPortCount():Int;

	/**		
		Returns `true` if the specified input port exists.
	**/
	@:native("HasInputPort")
	public function hasInputPort(id:Int):Bool;

	/**		
		Removes all previously specified input ports.
	**/
	@:native("ClearInputPorts")
	public function clearInputPorts():Void;

	/**		
		Adds an output port with the specified `type` (see `godot.VisualShaderNode_PortType`) and `name`.
	**/
	@:native("AddOutputPort")
	public function addOutputPort(id:Int, type:Int, name:std.String):Void;

	/**		
		Removes the specified output port.
	**/
	@:native("RemoveOutputPort")
	public function removeOutputPort(id:Int):Void;

	/**		
		Returns the number of output ports in use. Alternative for `godot.VisualShaderNodeGroupBase.getFreeOutputPortId`.
	**/
	@:native("GetOutputPortCount")
	public function getOutputPortCount():Int;

	/**		
		Returns `true` if the specified output port exists.
	**/
	@:native("HasOutputPort")
	public function hasOutputPort(id:Int):Bool;

	/**		
		Removes all previously specified output ports.
	**/
	@:native("ClearOutputPorts")
	public function clearOutputPorts():Void;

	/**		
		Renames the specified input port.
	**/
	@:native("SetInputPortName")
	public function setInputPortName(id:Int, name:std.String):Void;

	/**		
		Sets the specified input port's type (see `godot.VisualShaderNode_PortType`).
	**/
	@:native("SetInputPortType")
	public function setInputPortType(id:Int, type:Int):Void;

	/**		
		Renames the specified output port.
	**/
	@:native("SetOutputPortName")
	public function setOutputPortName(id:Int, name:std.String):Void;

	/**		
		Sets the specified output port's type (see `godot.VisualShaderNode_PortType`).
	**/
	@:native("SetOutputPortType")
	public function setOutputPortType(id:Int, type:Int):Void;

	/**		
		Returns a free input port ID which can be used in `godot.VisualShaderNodeGroupBase.addInputPort`.
	**/
	@:native("GetFreeInputPortId")
	public function getFreeInputPortId():Int;

	/**		
		Returns a free output port ID which can be used in `godot.VisualShaderNodeGroupBase.addOutputPort`.
	**/
	@:native("GetFreeOutputPortId")
	public function getFreeOutputPortId():Int;
}
