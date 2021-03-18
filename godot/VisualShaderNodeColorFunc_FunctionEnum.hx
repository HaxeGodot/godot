// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.VisualShaderNodeColorFunc.FunctionEnum")
@:csNative
extern enum VisualShaderNodeColorFunc_FunctionEnum {
	/**		
		Converts the color to grayscale using the following formula:
		
		```
		
		vec3 c = input;
		float max1 = max(c.r, c.g);
		float max2 = max(max1, c.b);
		float max3 = max(max1, max2);
		return vec3(max3, max3, max3);
		
		```
	**/
	Grayscale;

	/**		
		Applies sepia tone effect using the following formula:
		
		```
		
		vec3 c = input;
		float r = (c.r * 0.393) + (c.g * 0.769) + (c.b * 0.189);
		float g = (c.r * 0.349) + (c.g * 0.686) + (c.b * 0.168);
		float b = (c.r * 0.272) + (c.g * 0.534) + (c.b * 0.131);
		return vec3(r, g, b);
		
		```
	**/
	Sepia;
}
