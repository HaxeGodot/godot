// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.VisualScriptYield.YieldMode")
@:csNative
extern enum VisualScriptYield_YieldMode {
	/**		
		Yields during an idle frame.
	**/
	Frame;

	/**		
		Yields during a physics frame.
	**/
	PhysicsFrame;

	/**		
		Yields a function and waits the given time.
	**/
	Wait;
}
