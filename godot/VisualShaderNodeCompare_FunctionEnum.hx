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
		Comparison for greater than (`a &gt; b`). Cannot be used if `godot.VisualShaderNodeCompare.type` set to `godot.VisualShaderNodeCompare_ComparisonType.boolean` or `godot.VisualShaderNodeCompare_ComparisonType.transform`.
	**/
	GreaterThan;

	/**		
		Comparison for greater than or equal (`a &gt;= b`). Cannot be used if `godot.VisualShaderNodeCompare.type` set to `godot.VisualShaderNodeCompare_ComparisonType.boolean` or `godot.VisualShaderNodeCompare_ComparisonType.transform`.
	**/
	GreaterThanEqual;

	/**		
		Comparison for less than (`a &lt; b`). Cannot be used if `godot.VisualShaderNodeCompare.type` set to `godot.VisualShaderNodeCompare_ComparisonType.boolean` or `godot.VisualShaderNodeCompare_ComparisonType.transform`.
	**/
	LessThan;

	/**		
		Comparison for less than or equal (`a &lt; b`). Cannot be used if `godot.VisualShaderNodeCompare.type` set to `godot.VisualShaderNodeCompare_ComparisonType.boolean` or `godot.VisualShaderNodeCompare_ComparisonType.transform`.
	**/
	LessThanEqual;
}
