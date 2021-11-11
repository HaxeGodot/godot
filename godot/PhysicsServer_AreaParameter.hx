// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.PhysicsServer.AreaParameter")
@:csNative
extern enum PhysicsServer_AreaParameter {
	/**		
		Constant to set/get gravity strength in an area.
	**/
	Gravity;

	/**		
		Constant to set/get gravity vector/center in an area.
	**/
	GravityVector;

	/**		
		Constant to set/get whether the gravity vector of an area is a direction, or a center point.
	**/
	GravityIsPoint;

	/**		
		Constant to set/get the falloff factor for point gravity of an area. The greater this value is, the faster the strength of gravity decreases with the square of distance.
	**/
	GravityDistanceScale;

	/**		
		This constant was used to set/get the falloff factor for point gravity. It has been superseded by `godot.PhysicsServer_AreaParameter.gravityDistanceScale`.
	**/
	GravityPointAttenuation;

	/**		
		Constant to set/get the linear dampening factor of an area.
	**/
	LinearDamp;

	/**		
		Constant to set/get the angular dampening factor of an area.
	**/
	AngularDamp;

	/**		
		Constant to set/get the priority (order of processing) of an area.
	**/
	Priority;
}
