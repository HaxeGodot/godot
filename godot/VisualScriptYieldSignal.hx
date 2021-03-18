// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

@:libType
@:csNative
@:native("Godot.VisualScriptYieldSignal")
@:autoBuild(godot.Godot.buildUserClass())
extern class VisualScriptYieldSignal extends godot.VisualScriptNode {
	@:native("Signal")
	public var signal:std.String;

	@:native("NodePath")
	public var nodePath:godot.NodePath;

	@:native("BaseType")
	public var baseType:std.String;

	@:native("CallMode")
	public var callMode:godot.VisualScriptYieldSignal_CallModeEnum;

	@:native("new")
	public function new():Void;

	@:native("SetBaseType")
	public function setBaseType(baseType:std.String):Void;

	@:native("GetBaseType")
	public function getBaseType():std.String;

	@:native("SetSignal")
	public function setSignal(signal:std.String):Void;

	@:native("GetSignal")
	public function getSignal():std.String;

	@:native("SetCallMode")
	public function setCallMode(mode:godot.VisualScriptYieldSignal_CallModeEnum):Void;

	@:native("GetCallMode")
	public function getCallMode():godot.VisualScriptYieldSignal_CallModeEnum;

	@:native("SetBasePath")
	public function setBasePath(basePath:godot.NodePath):Void;

	@:native("GetBasePath")
	public function getBasePath():godot.NodePath;
}
