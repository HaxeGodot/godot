// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
A node which is part of a `godot.VisualScript`. Not to be confused with `godot.Node`, which is a part of a `godot.SceneTree`.
**/
@:libType
@:csNative
@:native("Godot.VisualScriptNode")
@:autoBuild(godot.Godot.buildUserClass())
extern abstract class VisualScriptNode extends godot.Resource {
	/**
		`ports_changed` signal.
	**/
	public var onPortsChanged(get, never):Signal<Void->Void>;
	@:dox(hide) inline function get_onPortsChanged():Signal<Void->Void> {
		return new Signal(this, "ports_changed", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	@:native("_DefaultInputValues")
	public var _DefaultInputValues:godot.collections.Array;

	/**		
		Returns the `godot.VisualScript` instance the node is bound to.
	**/
	@:native("GetVisualScript")
	public function getVisualScript():godot.VisualScript;

	/**		
		Change the default value of a given port.
	**/
	@:native("SetDefaultInputValue")
	public function setDefaultInputValue(portIdx:Int, value:Dynamic):Void;

	/**		
		Returns the default value of a given port. The default value is used when nothing is connected to the port.
	**/
	@:native("GetDefaultInputValue")
	public function getDefaultInputValue(portIdx:Int):Dynamic;

	/**		
		Notify that the node's ports have changed. Usually used in conjunction with `godot.VisualScriptCustomNode` .
	**/
	@:native("PortsChangedNotify")
	public function portsChangedNotify():Void;
}
