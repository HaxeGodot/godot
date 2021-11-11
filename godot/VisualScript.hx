// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
A script implemented in the Visual Script programming environment. The script extends the functionality of all objects that instance it.

`godot.Object.setScript` extends an existing object, if that object's class matches one of the script's base classes.

You are most likely to use this class via the Visual Script editor or when writing plugins for it.
**/
@:libType
@:csNative
@:native("Godot.VisualScript")
@:autoBuild(godot.Godot.buildUserClass())
extern class VisualScript extends godot.Script {
	/**
		`node_ports_changed` signal.
	**/
	public var onNodePortsChanged(get, never):Signal<(function_:std.String, id:Int)->Void>;
	@:dox(hide) @:noCompletion inline function get_onNodePortsChanged():Signal<(function_:std.String, id:Int)->Void> {
		return new Signal(this, "node_ports_changed", Signal.SignalHandlerStringIntVoid.connectSignal, Signal.SignalHandlerStringIntVoid.disconnectSignal, Signal.SignalHandlerStringIntVoid.isSignalConnected);
	}

	@:native("Data")
	public var data:godot.collections.Dictionary;

	@:native("new")
	public function new():Void;

	/**		
		Add a function with the specified name to the VisualScript.
	**/
	@:native("AddFunction")
	public function addFunction(name:std.String):Void;

	/**		
		Returns whether a function exists with the specified name.
	**/
	@:native("HasFunction")
	public function hasFunction(name:std.String):Bool;

	/**		
		Remove a specific function and its nodes from the script.
	**/
	@:native("RemoveFunction")
	public function removeFunction(name:std.String):Void;

	/**		
		Change the name of a function.
	**/
	@:native("RenameFunction")
	public function renameFunction(name:std.String, newName:std.String):Void;

	/**		
		Position the center of the screen for a function.
	**/
	@:native("SetFunctionScroll")
	public function setFunctionScroll(name:std.String, ofs:godot.Vector2):Void;

	/**		
		Returns the position of the center of the screen for a given function.
	**/
	@:native("GetFunctionScroll")
	public function getFunctionScroll(name:std.String):godot.Vector2;

	#if doc_gen
	/**		
		Add a node to a function of the VisualScript.
		
		@param position If the parameter is null, then the default value is new Vector2(0, 0)
	**/
	@:native("AddNode")
	public function addNode(func:std.String, id:Int, node:godot.VisualScriptNode, ?position:Null<godot.Vector2>):Void;
	#else
	/**		
		Add a node to a function of the VisualScript.
		
		@param position If the parameter is null, then the default value is new Vector2(0, 0)
	**/
	@:native("AddNode")
	public overload function addNode(func:std.String, id:Int, node:godot.VisualScriptNode):Void;

	/**		
		Add a node to a function of the VisualScript.
		
		@param position If the parameter is null, then the default value is new Vector2(0, 0)
	**/
	@:native("AddNode")
	public overload function addNode(func:std.String, id:Int, node:godot.VisualScriptNode, position:Nullable1<godot.Vector2>):Void;
	#end

	/**		
		Remove a specific node.
	**/
	@:native("RemoveNode")
	public function removeNode(func:std.String, id:Int):Void;

	/**		
		Returns the id of a function's entry point node.
	**/
	@:native("GetFunctionNodeId")
	public function getFunctionNodeId(name:std.String):Int;

	/**		
		Returns a node given its id and its function.
	**/
	@:native("GetNode")
	public function getNode(func:std.String, id:Int):godot.VisualScriptNode;

	/**		
		Returns whether a node exists with the given id.
	**/
	@:native("HasNode")
	public function hasNode(func:std.String, id:Int):Bool;

	/**		
		Position a node on the screen.
	**/
	@:native("SetNodePosition")
	public function setNodePosition(func:std.String, id:Int, position:godot.Vector2):Void;

	/**		
		Returns a node's position in pixels.
	**/
	@:native("GetNodePosition")
	public function getNodePosition(func:std.String, id:Int):godot.Vector2;

	/**		
		Connect two sequence ports. The execution will flow from of `from_node`'s `from_output` into `to_node`.
		
		Unlike `godot.VisualScript.dataConnect`, there isn't a `to_port`, since the target node can have only one sequence port.
	**/
	@:native("SequenceConnect")
	public function sequenceConnect(func:std.String, fromNode:Int, fromOutput:Int, toNode:Int):Void;

	/**		
		Disconnect two sequence ports previously connected with `godot.VisualScript.sequenceConnect`.
	**/
	@:native("SequenceDisconnect")
	public function sequenceDisconnect(func:std.String, fromNode:Int, fromOutput:Int, toNode:Int):Void;

	/**		
		Returns whether the specified sequence ports are connected.
	**/
	@:native("HasSequenceConnection")
	public function hasSequenceConnection(func:std.String, fromNode:Int, fromOutput:Int, toNode:Int):Bool;

	/**		
		Connect two data ports. The value of `from_node`'s `from_port` would be fed into `to_node`'s `to_port`.
	**/
	@:native("DataConnect")
	public function dataConnect(func:std.String, fromNode:Int, fromPort:Int, toNode:Int, toPort:Int):Void;

	/**		
		Disconnect two data ports previously connected with `godot.VisualScript.dataConnect`.
	**/
	@:native("DataDisconnect")
	public function dataDisconnect(func:std.String, fromNode:Int, fromPort:Int, toNode:Int, toPort:Int):Void;

	/**		
		Returns whether the specified data ports are connected.
	**/
	@:native("HasDataConnection")
	public function hasDataConnection(func:std.String, fromNode:Int, fromPort:Int, toNode:Int, toPort:Int):Bool;

	#if doc_gen
	/**		
		Add a variable to the VisualScript, optionally giving it a default value or marking it as exported.
	**/
	@:native("AddVariable")
	public function addVariable(name:std.String, ?defaultValue:Dynamic, ?export:Bool):Void;
	#else
	/**		
		Add a variable to the VisualScript, optionally giving it a default value or marking it as exported.
	**/
	@:native("AddVariable")
	public overload function addVariable(name:std.String):Void;

	/**		
		Add a variable to the VisualScript, optionally giving it a default value or marking it as exported.
	**/
	@:native("AddVariable")
	public overload function addVariable(name:std.String, defaultValue:Dynamic):Void;

	/**		
		Add a variable to the VisualScript, optionally giving it a default value or marking it as exported.
	**/
	@:native("AddVariable")
	public overload function addVariable(name:std.String, defaultValue:Dynamic, export:Bool):Void;
	#end

	/**		
		Returns whether a variable exists with the specified name.
	**/
	@:native("HasVariable")
	public function hasVariable(name:std.String):Bool;

	/**		
		Remove a variable with the given name.
	**/
	@:native("RemoveVariable")
	public function removeVariable(name:std.String):Void;

	/**		
		Change the default (initial) value of a variable.
	**/
	@:native("SetVariableDefaultValue")
	public function setVariableDefaultValue(name:std.String, value:Dynamic):Void;

	/**		
		Returns the default (initial) value of a variable.
	**/
	@:native("GetVariableDefaultValue")
	public function getVariableDefaultValue(name:std.String):Dynamic;

	/**		
		Set a variable's info, using the same format as `godot.VisualScript.getVariableInfo`.
	**/
	@:native("SetVariableInfo")
	public function setVariableInfo(name:std.String, value:godot.collections.Dictionary):Void;

	/**		
		Returns the information for a given variable as a dictionary. The information includes its name, type, hint and usage.
	**/
	@:native("GetVariableInfo")
	public function getVariableInfo(name:std.String):godot.collections.Dictionary;

	/**		
		Change whether a variable is exported.
	**/
	@:native("SetVariableExport")
	public function setVariableExport(name:std.String, enable:Bool):Void;

	/**		
		Returns whether a variable is exported.
	**/
	@:native("GetVariableExport")
	public function getVariableExport(name:std.String):Bool;

	/**		
		Change the name of a variable.
	**/
	@:native("RenameVariable")
	public function renameVariable(name:std.String, newName:std.String):Void;

	/**		
		Add a custom signal with the specified name to the VisualScript.
	**/
	@:native("AddCustomSignal")
	public function addCustomSignal(name:std.String):Void;

	/**		
		Returns whether a signal exists with the specified name.
	**/
	@:native("HasCustomSignal")
	public function hasCustomSignal(name:std.String):Bool;

	#if doc_gen
	/**		
		Add an argument to a custom signal added with `godot.VisualScript.addCustomSignal`.
	**/
	@:native("CustomSignalAddArgument")
	public function customSignalAddArgument(name:std.String, type:godot.Variant_Type, argname:std.String, ?index:Int):Void;
	#else
	/**		
		Add an argument to a custom signal added with `godot.VisualScript.addCustomSignal`.
	**/
	@:native("CustomSignalAddArgument")
	public overload function customSignalAddArgument(name:std.String, type:godot.Variant_Type, argname:std.String):Void;

	/**		
		Add an argument to a custom signal added with `godot.VisualScript.addCustomSignal`.
	**/
	@:native("CustomSignalAddArgument")
	public overload function customSignalAddArgument(name:std.String, type:godot.Variant_Type, argname:std.String, index:Int):Void;
	#end

	/**		
		Change the type of a custom signal's argument.
	**/
	@:native("CustomSignalSetArgumentType")
	public function customSignalSetArgumentType(name:std.String, argidx:Int, type:godot.Variant_Type):Void;

	/**		
		Get the type of a custom signal's argument.
	**/
	@:native("CustomSignalGetArgumentType")
	public function customSignalGetArgumentType(name:std.String, argidx:Int):godot.Variant_Type;

	/**		
		Rename a custom signal's argument.
	**/
	@:native("CustomSignalSetArgumentName")
	public function customSignalSetArgumentName(name:std.String, argidx:Int, argname:std.String):Void;

	/**		
		Get the name of a custom signal's argument.
	**/
	@:native("CustomSignalGetArgumentName")
	public function customSignalGetArgumentName(name:std.String, argidx:Int):std.String;

	/**		
		Remove a specific custom signal's argument.
	**/
	@:native("CustomSignalRemoveArgument")
	public function customSignalRemoveArgument(name:std.String, argidx:Int):Void;

	/**		
		Get the count of a custom signal's arguments.
	**/
	@:native("CustomSignalGetArgumentCount")
	public function customSignalGetArgumentCount(name:std.String):Int;

	/**		
		Swap two of the arguments of a custom signal.
	**/
	@:native("CustomSignalSwapArgument")
	public function customSignalSwapArgument(name:std.String, argidx:Int, withidx:Int):Void;

	/**		
		Remove a custom signal with the given name.
	**/
	@:native("RemoveCustomSignal")
	public function removeCustomSignal(name:std.String):Void;

	/**		
		Change the name of a custom signal.
	**/
	@:native("RenameCustomSignal")
	public function renameCustomSignal(name:std.String, newName:std.String):Void;

	/**		
		Set the base type of the script.
	**/
	@:native("SetInstanceBaseType")
	public function setInstanceBaseType(type:std.String):Void;
}
