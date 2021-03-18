// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
For complex arrangements of shapes, it is sometimes needed to add structure to your CSG nodes. The CSGCombiner node allows you to create this structure. The node encapsulates the result of the CSG operations of its children. In this way, it is possible to do operations on one set of shapes that are children of one CSGCombiner node, and a set of separate operations on a second set of shapes that are children of a second CSGCombiner node, and then do an operation that takes the two end results as its input to create the final shape.
**/
@:libType
@:csNative
@:native("Godot.CSGCombiner")
@:autoBuild(godot.Godot.buildUserClass())
extern class CSGCombiner extends godot.CSGShape {
	@:native("new")
	public function new():Void;
}
