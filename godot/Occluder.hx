// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
`godot.Occluder`s that are placed within your scene will automatically cull objects that are hidden from view by the occluder. This can increase performance by decreasing the amount of objects drawn.

`godot.Occluder`s are totally dynamic, you can move them as you wish. This means you can for example, place occluders on a moving spaceship, and have it occlude objects as it flies past.

You can place a large number of `godot.Occluder`s within a scene. As it would be counterproductive to cull against hundreds of occluders, the system will automatically choose a selection of these for active use during any given frame, based a screen space metric. Larger occluders are favored, as well as those close to the camera. Note that a small occluder close to the camera may be a better occluder in terms of screen space than a large occluder far in the distance.

The type of occlusion primitive is determined by the `godot.OccluderShape` that you add to the `godot.Occluder`. Some `godot.OccluderShape`s may allow more than one primitive in a single, node, for greater efficiency.

Although `godot.Occluder`s work in general use, they also become even more powerful when used in conjunction with the portal system. Occluders are placed in rooms (based on their origin), and can block portals (and thus entire rooms) as well as objects from rendering.
**/
@:libType
@:csNative
@:native("Godot.Occluder")
@:autoBuild(godot.Godot.buildUserClass())
extern class Occluder extends godot.Spatial {
	@:native("Shape")
	public var shape:godot.OccluderShape;

	@:native("new")
	public function new():Void;

	@:native("ResourceChanged")
	public function resourceChanged(resource:godot.Resource):Void;

	@:native("SetShape")
	public function setShape(shape:godot.OccluderShape):Void;

	@:native("GetShape")
	public function getShape():godot.OccluderShape;
}
