// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.VisualShaderNodeColorOp.OperatorEnum")
@:csNative
extern enum VisualShaderNodeColorOp_OperatorEnum {
	/**		
		Produce a screen effect with the following formula:
		
		```
		
		result = vec3(1.0) - (vec3(1.0) - a) * (vec3(1.0) - b);
		
		```
	**/
	Screen;

	/**		
		Produce a difference effect with the following formula:
		
		```
		
		result = abs(a - b);
		
		```
	**/
	Difference;

	/**		
		Produce a darken effect with the following formula:
		
		```
		
		result = min(a, b);
		
		```
	**/
	Darken;

	/**		
		Produce a lighten effect with the following formula:
		
		```
		
		result = max(a, b);
		
		```
	**/
	Lighten;

	/**		
		Produce an overlay effect with the following formula:
		
		```
		
		for (int i = 0; i &lt; 3; i++) {
		float base = a[i];
		float blend = b[i];
		if (base &lt; 0.5) {
		result[i] = 2.0 * base * blend;
		} else {
		result[i] = 1.0 - 2.0 * (1.0 - blend) * (1.0 - base);
		}
		}
		
		```
	**/
	Overlay;

	/**		
		Produce a dodge effect with the following formula:
		
		```
		
		result = a / (vec3(1.0) - b);
		
		```
	**/
	Dodge;

	/**		
		Produce a burn effect with the following formula:
		
		```
		
		result = vec3(1.0) - (vec3(1.0) - a) / b;
		
		```
	**/
	Burn;

	/**		
		Produce a soft light effect with the following formula:
		
		```
		
		for (int i = 0; i &lt; 3; i++) {
		float base = a[i];
		float blend = b[i];
		if (base &lt; 0.5) {
		result[i] = base * (blend + 0.5);
		} else {
		result[i] = 1.0 - (1.0 - base) * (1.0 - (blend - 0.5));
		}
		}
		
		```
	**/
	SoftLight;

	/**		
		Produce a hard light effect with the following formula:
		
		```
		
		for (int i = 0; i &lt; 3; i++) {
		float base = a[i];
		float blend = b[i];
		if (base &lt; 0.5) {
		result[i] = base * (2.0 * blend);
		} else {
		result[i] = 1.0 - (1.0 - base) * (1.0 - 2.0 * (blend - 0.5));
		}
		}
		
		```
	**/
	HardLight;
}
