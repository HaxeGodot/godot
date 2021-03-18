// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.VisualShaderNodeCompare.FunctionEnum")
@:csNative
extern enum VisualShaderNodeCompare_FunctionEnum {
	/**		
		Comparison for equality (`a == b`).
	**/
	Equal;

	/**		
		Comparison for inequality (`a != b`).
	**/
	NotEqual;

	/**		
		Comparison for greater than (`a &gt; b`). Cannot be used if `godot.VisualShaderNodeCompare.type` set to  or .
	**/
	GreaterThan;

	/**		
		Comparison for greater than or equal (`a &gt;= b`). Cannot be used if `godot.VisualShaderNodeCompare.type` set to  or .
	**/
	GreaterThanEqual;

	/**		
		Comparison for less than (`a &lt; b`). Cannot be used if `godot.VisualShaderNodeCompare.type` set to  or .
	**/
	LessThan;

	/**		
		Comparison for less than or equal (`a &lt; b`). Cannot be used if `godot.VisualShaderNodeCompare.type` set to  or .
	**/
	LessThanEqual;
}
