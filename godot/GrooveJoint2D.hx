// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Groove constraint for 2D physics. This is useful for making a body "slide" through a segment placed in another.
**/
@:libType
@:csNative
@:native("Godot.GrooveJoint2D")
@:autoBuild(godot.Godot.buildUserClass())
extern class GrooveJoint2D extends godot.Joint2D {
	/**		
		The body B's initial anchor position defined by the joint's origin and a local offset `godot.GrooveJoint2D.initialOffset` along the joint's Y axis (along the groove).
	**/
	@:native("InitialOffset")
	public var initialOffset:Single;

	/**		
		The groove's length. The groove is from the joint's origin towards `godot.GrooveJoint2D.length` along the joint's local Y axis.
	**/
	@:native("Length")
	public var length:Single;

	@:native("new")
	public function new():Void;

	@:native("SetLength")
	public function setLength(length:Single):Void;

	@:native("GetLength")
	public function getLength():Single;

	@:native("SetInitialOffset")
	public function setInitialOffset(offset:Single):Void;

	@:native("GetInitialOffset")
	public function getInitialOffset():Single;
}
