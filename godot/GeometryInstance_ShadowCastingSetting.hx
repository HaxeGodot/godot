// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.GeometryInstance.ShadowCastingSetting")
@:csNative
extern enum GeometryInstance_ShadowCastingSetting {
	/**		
		Will not cast any shadows.
	**/
	Off;

	/**		
		Will cast shadows from all visible faces in the GeometryInstance.
		
		Will take culling into account, so faces not being rendered will not be taken into account when shadow casting.
	**/
	On;

	/**		
		Will cast shadows from all visible faces in the GeometryInstance.
		
		Will not take culling into account, so all faces will be taken into account when shadow casting.
	**/
	DoubleSided;

	/**		
		Will only show the shadows casted from this object.
		
		In other words, the actual mesh will not be visible, only the shadows casted from the mesh will be.
	**/
	ShadowsOnly;
}
