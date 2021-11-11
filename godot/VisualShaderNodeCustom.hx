// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
By inheriting this class you can create a custom `godot.VisualShader` script addon which will be automatically added to the Visual Shader Editor. The `godot.VisualShaderNode`'s behavior is defined by overriding the provided virtual methods.

In order for the node to be registered as an editor addon, you must use the `tool` keyword and provide a `class_name` for your custom script. For example:

```

tool
extends VisualShaderNodeCustom
class_name VisualShaderNodeNoise

```
**/
@:libType
@:csNative
@:native("Godot.VisualShaderNodeCustom")
@:autoBuild(godot.Godot.buildUserClass())
extern class VisualShaderNodeCustom extends godot.VisualShaderNode {
	@:native("Initialized")
	public var initialized:Bool;

	@:native("new")
	public function new():Void;

	/**		
		Override this method to define the category of the associated custom node in the Visual Shader Editor's members dialog. The path may look like `"MyGame/MyFunctions/Noise"`.
		
		Defining this method is optional. If not overridden, the node will be filed under the "Custom" category.
	**/
	@:native("_GetCategory")
	public function _GetCategory():std.String;

	/**		
		Override this method to define the actual shader code of the associated custom node. The shader code should be returned as a string, which can have multiple lines (the `"""` multiline string construct can be used for convenience).
		
		The `input_vars` and `output_vars` arrays contain the string names of the various input and output variables, as defined by `_get_input_*` and `_get_output_*` virtual methods in this class.
		
		The output ports can be assigned values in the shader code. For example, `return output_vars[0] + " = " + input_vars[0] + ";"`.
		
		You can customize the generated code based on the shader `mode` (see `godot.Shader_Mode`) and/or `type` (see `godot.VisualShader_Type`).
		
		Defining this method is required.
	**/
	@:native("_GetCode")
	public function _GetCode(inputVars:godot.collections.Array, outputVars:godot.collections.Array, mode:Int, type:Int):std.String;

	/**		
		Override this method to define the description of the associated custom node in the Visual Shader Editor's members dialog.
		
		Defining this method is optional.
	**/
	@:native("_GetDescription")
	public function _GetDescription():std.String;

	/**		
		Override this method to add shader code on top of the global shader, to define your own standard library of reusable methods, varyings, constants, uniforms, etc. The shader code should be returned as a string, which can have multiple lines (the `"""` multiline string construct can be used for convenience).
		
		Be careful with this functionality as it can cause name conflicts with other custom nodes, so be sure to give the defined entities unique names.
		
		You can customize the generated code based on the shader `mode` (see `godot.Shader_Mode`).
		
		Defining this method is optional.
	**/
	@:native("_GetGlobalCode")
	public function _GetGlobalCode(mode:Int):std.String;

	/**		
		Override this method to define the amount of input ports of the associated custom node.
		
		Defining this method is required. If not overridden, the node has no input ports.
	**/
	@:native("_GetInputPortCount")
	public function _GetInputPortCount():Int;

	/**		
		Override this method to define the names of input ports of the associated custom node. The names are used both for the input slots in the editor and as identifiers in the shader code, and are passed in the `input_vars` array in `godot.VisualShaderNodeCustom._GetCode`.
		
		Defining this method is optional, but recommended. If not overridden, input ports are named as `"in" + str(port)`.
	**/
	@:native("_GetInputPortName")
	public function _GetInputPortName(port:Int):std.String;

	/**		
		Override this method to define the returned type of each input port of the associated custom node (see `godot.VisualShaderNode_PortType` for possible types).
		
		Defining this method is optional, but recommended. If not overridden, input ports will return the `godot.VisualShaderNode_PortType.scalar` type.
	**/
	@:native("_GetInputPortType")
	public function _GetInputPortType(port:Int):Int;

	/**		
		Override this method to define the name of the associated custom node in the Visual Shader Editor's members dialog and graph.
		
		Defining this method is optional, but recommended. If not overridden, the node will be named as "Unnamed".
	**/
	@:native("_GetName")
	public function _GetName():std.String;

	/**		
		Override this method to define the amount of output ports of the associated custom node.
		
		Defining this method is required. If not overridden, the node has no output ports.
	**/
	@:native("_GetOutputPortCount")
	public function _GetOutputPortCount():Int;

	/**		
		Override this method to define the names of output ports of the associated custom node. The names are used both for the output slots in the editor and as identifiers in the shader code, and are passed in the `output_vars` array in `godot.VisualShaderNodeCustom._GetCode`.
		
		Defining this method is optional, but recommended. If not overridden, output ports are named as `"out" + str(port)`.
	**/
	@:native("_GetOutputPortName")
	public function _GetOutputPortName(port:Int):std.String;

	/**		
		Override this method to define the returned type of each output port of the associated custom node (see `godot.VisualShaderNode_PortType` for possible types).
		
		Defining this method is optional, but recommended. If not overridden, output ports will return the `godot.VisualShaderNode_PortType.scalar` type.
	**/
	@:native("_GetOutputPortType")
	public function _GetOutputPortType(port:Int):Int;

	/**		
		Override this method to define the return icon of the associated custom node in the Visual Shader Editor's members dialog.
		
		Defining this method is optional. If not overridden, no return icon is shown.
	**/
	@:native("_GetReturnIconType")
	public function _GetReturnIconType():Int;

	/**		
		Override this method to define the subcategory of the associated custom node in the Visual Shader Editor's members dialog.
		
		Defining this method is optional. If not overridden, the node will be filed under the root of the main category (see `godot.VisualShaderNodeCustom._GetCategory`).
	**/
	@:native("_GetSubcategory")
	public function _GetSubcategory():std.String;
}
