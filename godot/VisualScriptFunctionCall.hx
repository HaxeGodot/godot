// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
`godot.VisualScriptFunctionCall` is created when you add or drag and drop a function onto the Visual Script graph. It allows to tweak parameters of the call, e.g. what object the function is called on.
**/
@:libType
@:csNative
@:native("Godot.VisualScriptFunctionCall")
@:autoBuild(godot.Godot.buildUserClass())
extern class VisualScriptFunctionCall extends godot.VisualScriptNode {
	/**		
		The mode for RPC calls. See `godot.Node.rpc` for more details and `godot.VisualScriptFunctionCall_RPCCallMode` for available options.
	**/
	@:native("RpcCallMode")
	public var rpcCallMode:godot.VisualScriptFunctionCall_RPCCallMode;

	/**		
		If `false`, call errors (e.g. wrong number of arguments) will be ignored.
	**/
	@:native("Validate")
	public var validate:Bool;

	/**		
		Number of default arguments that will be used when calling the function. Can't be higher than the number of available default arguments in the method's declaration.
	**/
	@:native("UseDefaultArgs")
	public var useDefaultArgs:Int;

	/**		
		The name of the function to be called.
	**/
	@:native("Function")
	public var function_:std.String;

	@:native("ArgumentCache")
	public var argumentCache:godot.collections.Dictionary;

	/**		
		The node path to use when `godot.VisualScriptFunctionCall.callMode` is set to `godot.VisualScriptFunctionCall_CallModeEnum.nodePath`.
	**/
	@:native("NodePath")
	public var nodePath:godot.NodePath;

	/**		
		The type to be used when `godot.VisualScriptFunctionCall.callMode` is set to `godot.VisualScriptFunctionCall_CallModeEnum.basicType`.
	**/
	@:native("BasicType")
	public var basicType:godot.Variant_Type;

	/**		
		The singleton to call the method on. Used when `godot.VisualScriptFunctionCall.callMode` is set to `godot.VisualScriptFunctionCall_CallModeEnum.singleton`.
	**/
	@:native("Singleton")
	public var singleton:std.String;

	/**		
		The script to be used when `godot.VisualScriptFunctionCall.callMode` is set to `godot.VisualScriptFunctionCall_CallModeEnum.instance`.
	**/
	@:native("BaseScript")
	public var baseScript:std.String;

	/**		
		The base type to be used when `godot.VisualScriptFunctionCall.callMode` is set to `godot.VisualScriptFunctionCall_CallModeEnum.instance`.
	**/
	@:native("BaseType")
	public var baseType:std.String;

	/**		
		`call_mode` determines the target object on which the method will be called. See `godot.VisualScriptFunctionCall_CallModeEnum` for options.
	**/
	@:native("CallMode")
	public var callMode:godot.VisualScriptFunctionCall_CallModeEnum;

	@:native("new")
	public function new():Void;

	@:native("SetBaseType")
	public function setBaseType(baseType:std.String):Void;

	@:native("GetBaseType")
	public function getBaseType():std.String;

	@:native("SetBaseScript")
	public function setBaseScript(baseScript:std.String):Void;

	@:native("GetBaseScript")
	public function getBaseScript():std.String;

	@:native("SetBasicType")
	public function setBasicType(basicType:godot.Variant_Type):Void;

	@:native("GetBasicType")
	public function getBasicType():godot.Variant_Type;

	@:native("SetSingleton")
	public function setSingleton(singleton:std.String):Void;

	@:native("GetSingleton")
	public function getSingleton():std.String;

	@:native("SetFunction")
	public function setFunction(function_:std.String):Void;

	@:native("GetFunction")
	public function getFunction():std.String;

	@:native("SetCallMode")
	public function setCallMode(mode:godot.VisualScriptFunctionCall_CallModeEnum):Void;

	@:native("GetCallMode")
	public function getCallMode():godot.VisualScriptFunctionCall_CallModeEnum;

	@:native("SetBasePath")
	public function setBasePath(basePath:godot.NodePath):Void;

	@:native("GetBasePath")
	public function getBasePath():godot.NodePath;

	@:native("SetUseDefaultArgs")
	public function setUseDefaultArgs(amount:Int):Void;

	@:native("GetUseDefaultArgs")
	public function getUseDefaultArgs():Int;

	@:native("SetRpcCallMode")
	public function setRpcCallMode(mode:godot.VisualScriptFunctionCall_RPCCallMode):Void;

	@:native("GetRpcCallMode")
	public function getRpcCallMode():godot.VisualScriptFunctionCall_RPCCallMode;

	@:native("SetValidate")
	public function setValidate(enable:Bool):Void;

	@:native("GetValidate")
	public function getValidate():Bool;
}
