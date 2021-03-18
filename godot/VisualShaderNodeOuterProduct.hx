// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
`OuterProduct` treats the first parameter `c` as a column vector (matrix with one column) and the second parameter `r` as a row vector (matrix with one row) and does a linear algebraic matrix multiply `c * r`, yielding a matrix whose number of rows is the number of components in `c` and whose number of columns is the number of components in `r`.
**/
@:libType
@:csNative
@:native("Godot.VisualShaderNodeOuterProduct")
@:autoBuild(godot.Godot.buildUserClass())
extern class VisualShaderNodeOuterProduct extends godot.VisualShaderNode {
	@:native("new")
	public function new():Void;
}
