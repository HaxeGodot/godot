// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Visual shader graphs consist of various nodes. Each node in the graph is a separate object and they are represented as a rectangular boxes with title and a set of properties. Each node has also connection ports that allow to connect it to another nodes and control the flow of the shader.
**/
@:libType
@:csNative
@:native("Godot.VisualShaderNode")
@:autoBuild(godot.Godot.buildUserClass())
extern abstract class VisualShaderNode extends godot.Resource {
	/**
		`editor_refresh_request` signal.
	**/
	public var onEditorRefreshRequest(get, never):Signal<Void->Void>;
	@:dox(hide) @:noCompletion inline function get_onEditorRefreshRequest():Signal<Void->Void> {
		return new Signal(this, "editor_refresh_request", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	@:native("DefaultInputValues")
	public var defaultInputValues:godot.collections.Array;

	/**		
		Sets the output port index which will be showed for preview. If set to `-1` no port will be open for preview.
	**/
	@:native("OutputPortForPreview")
	public var outputPortForPreview:Int;

	@:native("SetOutputPortForPreview")
	public function setOutputPortForPreview(port:Int):Void;

	@:native("GetOutputPortForPreview")
	public function getOutputPortForPreview():Int;

	/**		
		Sets the default value for the selected input `port`.
	**/
	@:native("SetInputPortDefaultValue")
	public function setInputPortDefaultValue(port:Int, value:Dynamic):Void;

	/**		
		Returns the default value of the input `port`.
	**/
	@:native("GetInputPortDefaultValue")
	public function getInputPortDefaultValue(port:Int):Dynamic;

	/**		
		Sets the default input ports values using an `godot.Collections_Array` of the form `[index0, value0, index1, value1, ...]`. For example: `[0, Vector3(0, 0, 0), 1, Vector3(0, 0, 0)]`.
	**/
	@:native("SetDefaultInputValues")
	public function setDefaultInputValues(values:godot.collections.Array):Void;

	/**		
		Returns an `godot.Collections_Array` containing default values for all of the input ports of the node in the form `[index0, value0, index1, value1, ...]`.
	**/
	@:native("GetDefaultInputValues")
	public function getDefaultInputValues():godot.collections.Array;
}
