// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.Camera.ProjectionEnum")
@:csNative
extern enum Camera_ProjectionEnum {
	/**		
		Perspective projection. Objects on the screen becomes smaller when they are far away.
	**/
	Perspective;

	/**		
		Orthogonal projection, also known as orthographic projection. Objects remain the same size on the screen no matter how far away they are.
	**/
	Orthogonal;

	/**		
		Frustum projection. This mode allows adjusting `godot.Camera.frustumOffset` to create "tilted frustum" effects.
	**/
	Frustum;
}
