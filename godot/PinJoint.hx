// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Pin joint for 3D rigid bodies. It pins 2 bodies (rigid or static) together. See also `godot.Generic6DOFJoint`.
**/
@:libType
@:csNative
@:native("Godot.PinJoint")
@:autoBuild(godot.Godot.buildUserClass())
extern class PinJoint extends godot.Joint {
	/**		
		If above 0, this value is the maximum value for an impulse that this Joint produces.
	**/
	@:native("Params__impulseClamp")
	public var params__impulseClamp:Single;

	/**		
		The force with which the pinned objects stay in velocity relation to each other. The higher, the stronger.
	**/
	@:native("Params__damping")
	public var params__damping:Single;

	/**		
		The force with which the pinned objects stay in positional relation to each other. The higher, the stronger.
	**/
	@:native("Params__bias")
	public var params__bias:Single;

	@:native("new")
	public function new():Void;

	/**		
		Sets the value of the specified parameter.
	**/
	@:native("SetParam")
	public function setParam(param:godot.PinJoint_Param, value:Single):Void;

	/**		
		Returns the value of the specified parameter.
	**/
	@:native("GetParam")
	public function getParam(param:godot.PinJoint_Param):Single;
}
