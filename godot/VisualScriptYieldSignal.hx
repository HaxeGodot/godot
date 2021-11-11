// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
`godot.VisualScriptYieldSignal` will pause the function execution until the provided signal is emitted.
**/
@:libType
@:csNative
@:native("Godot.VisualScriptYieldSignal")
@:autoBuild(godot.Godot.buildUserClass())
extern class VisualScriptYieldSignal extends godot.VisualScriptNode {
	/**		
		The signal name to be waited for.
	**/
	@:native("Signal")
	public var signal:std.String;

	/**		
		The node path to use when `godot.VisualScriptYieldSignal.callMode` is set to `godot.VisualScriptYieldSignal_CallModeEnum.nodePath`.
	**/
	@:native("NodePath")
	public var nodePath:godot.NodePath;

	/**		
		The base type to be used when `godot.VisualScriptYieldSignal.callMode` is set to `godot.VisualScriptYieldSignal_CallModeEnum.instance`.
	**/
	@:native("BaseType")
	public var baseType:std.String;

	/**		
		`call_mode` determines the target object to wait for the signal emission. See `godot.VisualScriptYieldSignal_CallModeEnum` for options.
	**/
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
