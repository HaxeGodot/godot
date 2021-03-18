// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.Physics2DServer.CCDMode")
@:csNative
extern enum Physics2DServer_CCDMode {
	/**		
		Disables continuous collision detection. This is the fastest way to detect body collisions, but can miss small, fast-moving objects.
	**/
	Disabled;

	/**		
		Enables continuous collision detection by raycasting. It is faster than shapecasting, but less precise.
	**/
	CastRay;

	/**		
		Enables continuous collision detection by shapecasting. It is the slowest CCD method, and the most precise.
	**/
	CastShape;
}
