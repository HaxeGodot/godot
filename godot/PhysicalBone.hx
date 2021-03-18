// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

@:libType
@:csNative
@:native("Godot.PhysicalBone")
@:autoBuild(godot.Godot.buildUserClass())
extern class PhysicalBone extends godot.PhysicsBody {
	@:native("GravityScale")
	public var gravityScale:Single;

	@:native("Bounce")
	public var bounce:Single;

	@:native("Friction")
	public var friction:Single;

	@:native("Weight")
	public var weight:Single;

	@:native("Mass")
	public var mass:Single;

	@:native("BodyOffset")
	public var bodyOffset:godot.Transform;

	@:native("JointOffset")
	public var jointOffset:godot.Transform;

	@:native("JointType")
	public var jointType:godot.PhysicalBone_JointTypeEnum;

	@:native("new")
	public function new():Void;

	@:native("ApplyCentralImpulse")
	public function applyCentralImpulse(impulse:godot.Vector3):Void;

	@:native("ApplyImpulse")
	public function applyImpulse(position:godot.Vector3, impulse:godot.Vector3):Void;

	@:native("SetJointType")
	public function setJointType(jointType:godot.PhysicalBone_JointTypeEnum):Void;

	@:native("GetJointType")
	public function getJointType():godot.PhysicalBone_JointTypeEnum;

	@:native("SetJointOffset")
	public function setJointOffset(offset:godot.Transform):Void;

	@:native("GetJointOffset")
	public function getJointOffset():godot.Transform;

	@:native("SetBodyOffset")
	public function setBodyOffset(offset:godot.Transform):Void;

	@:native("GetBodyOffset")
	public function getBodyOffset():godot.Transform;

	@:native("IsStaticBody")
	public function isStaticBody():Bool;

	@:native("GetSimulatePhysics")
	public function getSimulatePhysics():Bool;

	@:native("IsSimulatingPhysics")
	public function isSimulatingPhysics():Bool;

	@:native("GetBoneId")
	public function getBoneId():Int;

	@:native("SetMass")
	public function setMass(mass:Single):Void;

	@:native("GetMass")
	public function getMass():Single;

	@:native("SetWeight")
	public function setWeight(weight:Single):Void;

	@:native("GetWeight")
	public function getWeight():Single;

	@:native("SetFriction")
	public function setFriction(friction:Single):Void;

	@:native("GetFriction")
	public function getFriction():Single;

	@:native("SetBounce")
	public function setBounce(bounce:Single):Void;

	@:native("GetBounce")
	public function getBounce():Single;

	@:native("SetGravityScale")
	public function setGravityScale(gravityScale:Single):Void;

	@:native("GetGravityScale")
	public function getGravityScale():Single;
}
