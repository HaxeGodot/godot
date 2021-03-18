// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
This node implements all the physics logic needed to simulate a car. It is based on the raycast vehicle system commonly found in physics engines. You will need to add a `godot.CollisionShape` for the main body of your vehicle and add `godot.VehicleWheel` nodes for the wheels. You should also add a `godot.MeshInstance` to this node for the 3D model of your car but this model should not include meshes for the wheels. You should control the vehicle by using the `godot.VehicleBody.brake`, `godot.VehicleBody.engineForce`, and `godot.VehicleBody.steering` properties and not change the position or orientation of this node directly.

Note: The origin point of your VehicleBody will determine the center of gravity of your vehicle so it is better to keep this low and move the `godot.CollisionShape` and `godot.MeshInstance` upwards.

Note: This class has known issues and isn't designed to provide realistic 3D vehicle physics. If you want advanced vehicle physics, you will probably have to write your own physics integration using another `godot.PhysicsBody` class.
**/
@:libType
@:csNative
@:native("Godot.VehicleBody")
@:autoBuild(godot.Godot.buildUserClass())
extern class VehicleBody extends godot.RigidBody {
	/**		
		The steering angle for the vehicle. Setting this to a non-zero value will result in the vehicle turning when it's moving. Wheels that have `godot.VehicleWheel.useAsSteering` set to `true` will automatically be rotated.
	**/
	@:native("Steering")
	public var steering:Single;

	/**		
		Slows down the vehicle by applying a braking force. The vehicle is only slowed down if the wheels are in contact with a surface. The force you need to apply to adequately slow down your vehicle depends on the `godot.RigidBody.mass` of the vehicle. For a vehicle with a mass set to 1000, try a value in the 25 - 30 range for hard braking.
	**/
	@:native("Brake")
	public var brake:Single;

	/**		
		Accelerates the vehicle by applying an engine force. The vehicle is only speed up if the wheels that have `godot.VehicleWheel.useAsTraction` set to `true` and are in contact with a surface. The `godot.RigidBody.mass` of the vehicle has an effect on the acceleration of the vehicle. For a vehicle with a mass set to 1000, try a value in the 25 - 50 range for acceleration.
		
		Note: The simulation does not take the effect of gears into account, you will need to add logic for this if you wish to simulate gears.
		
		A negative value will result in the vehicle reversing.
	**/
	@:native("EngineForce")
	public var engineForce:Single;

	@:native("new")
	public function new():Void;

	@:native("SetEngineForce")
	public function setEngineForce(engineForce:Single):Void;

	@:native("GetEngineForce")
	public function getEngineForce():Single;

	@:native("SetBrake")
	public function setBrake(brake:Single):Void;

	@:native("GetBrake")
	public function getBrake():Single;

	@:native("SetSteering")
	public function setSteering(steering:Single):Void;

	@:native("GetSteering")
	public function getSteering():Single;
}
