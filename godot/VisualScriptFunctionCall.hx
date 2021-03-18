// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

@:libType
@:csNative
@:native("Godot.VisualScriptFunctionCall")
@:autoBuild(godot.Godot.buildUserClass())
extern class VisualScriptFunctionCall extends godot.VisualScriptNode {
	@:native("RpcCallMode")
	public var rpcCallMode:godot.VisualScriptFunctionCall_RPCCallMode;

	@:native("Validate")
	public var validate:Bool;

	@:native("UseDefaultArgs")
	public var useDefaultArgs:Int;

	@:native("Function")
	public var function_:std.String;

	@:native("ArgumentCache")
	public var argumentCache:godot.collections.Dictionary;

	@:native("NodePath")
	public var nodePath:godot.NodePath;

	@:native("BasicType")
	public var basicType:godot.Variant_Type;

	@:native("Singleton")
	public var singleton:std.String;

	@:native("BaseScript")
	public var baseScript:std.String;

	@:native("BaseType")
	public var baseType:std.String;

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
