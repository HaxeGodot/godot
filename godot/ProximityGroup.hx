// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
General-purpose proximity detection node. `godot.ProximityGroup` can be used for approximate distance checks, which are faster than exact distance checks using `Vector3.distance_to` or `Vector3.distance_squared_to`.

`godot.ProximityGroup` nodes are automatically grouped together, as long as they share the same `godot.ProximityGroup.groupName` and intersect with each other. By calling the `godot.ProximityGroup.broadcast`, you can invoke a specified method with various parameters to all intersecting members.

`godot.ProximityGroup` is cuboid-shaped and consists of a cluster of `godot.Vector3` coordinates. The coordinates are automatically calculated by calling `godot.ProximityGroup.gridRadius`. To allow `godot.ProximityGroup` to find its peers (and perform automatic grouping), you need to define its `godot.ProximityGroup.groupName` to a non-empty `String`. As soon as this object's shape intersects with another `godot.ProximityGroup` object' shape, and both share the same `godot.ProximityGroup.groupName`, they will belong together for as long as they intersect.

Since `godot.ProximityGroup` doesn't rely the physics engine, you don't need to add any other node as a child (unlike `godot.PhysicsBody`).

The `godot.ProximityGroup` uses the `godot.SceneTree` groups in the background by calling the method `godot.Node.addToGroup` internally. The `godot.SceneTree` group names are constructed by combining the `godot.ProximityGroup.groupName` with its coordinates, which are calculated using the `godot.ProximityGroup.gridRadius` you defined beforehand.

Example: A `godot.ProximityGroup` node named `"PlanetEarth"` at position `Vector3(6, 6, 6)` with a `godot.ProximityGroup.groupName` set to `"planets"` and a `godot.ProximityGroup.gridRadius` of `Vector3(1, 2, 3)` will create the following `godot.SceneTree` group names:

```

- "planets|5|4|3"
- "planets|5|4|4"
- "planets|5|4|5"
- "planets|5|4|6"
- "planets|5|4|7"
- "planets|5|4|8"
- "planets|5|4|9"
- ...

```

If there is another `godot.ProximityGroup` named `"PlanetMars"` with group name `"planets"`, and one of its coordinates is `Vector3(5, 4, 7)`, it would normally create the `godot.SceneTree` group called `"planets|5|4|7"`. However, since this group name already exists, this `godot.ProximityGroup` object will be added to the existing one. `"PlanetEarth"` is already in this group. As long as both nodes don't change their transform and stop intersecting (or exit the scene tree), they are grouped together. As long as this intersection exists, any call to `godot.ProximityGroup.broadcast` will affect both `godot.ProximityGroup` nodes.

There are 3 caveats to keep in mind when using `godot.ProximityGroup`:

- The larger the grid radius, the more coordinates and the more `godot.SceneTree` groups are created. This can have a performance impact if too many groups are created.

- If the `godot.ProximityGroup` node is transformed in any way (or is removed from the scene tree), the groupings will have to be recalculated. This can also have a performance impact.

- If your `godot.ProximityGroup.gridRadius` is smaller than `Vector3(1, 1, 1)`, it will be rounded up to `Vector3(1, 1, 1)`. Therefore, small grid radius values may lead to unwanted groupings.

Note: `godot.ProximityGroup` will be removed in Godot 4.0 in favor of more effective and faster `godot.VisibilityNotifier` functionality. For most use cases, `Vector3.distance_to` or `Vector3.distance_squared_to` are fast enough too, especially if you call them less often using a `godot.Timer` node.
**/
@:libType
@:csNative
@:native("Godot.ProximityGroup")
@:autoBuild(godot.Godot.buildUserClass())
extern class ProximityGroup extends godot.Spatial {
	/**
		`broadcast` signal.
	**/
	public var onBroadcast(get, never):Signal<(method:std.String, parameters:godot.collections.Array)->Void>;
	@:dox(hide) @:noCompletion inline function get_onBroadcast():Signal<(method:std.String, parameters:godot.collections.Array)->Void> {
		return new Signal(this, "broadcast", Signal.SignalHandlerStringArrayVoid.connectSignal, Signal.SignalHandlerStringArrayVoid.disconnectSignal, Signal.SignalHandlerStringArrayVoid.isSignalConnected);
	}

	/**		
		The size of the space in 3D units. This also sets the amount of coordinates required to calculate whether two `godot.ProximityGroup` nodes are intersecting or not. Smaller `godot.ProximityGroup.gridRadius` values can be used for more precise proximity checks at the cost of performance, since more groups will be created.
	**/
	@:native("GridRadius")
	public var gridRadius:godot.Vector3;

	/**		
		Specifies which node gets contacted on a call of method `godot.ProximityGroup.broadcast`.
	**/
	@:native("DispatchMode")
	public var dispatchMode:godot.ProximityGroup_DispatchModeEnum;

	/**		
		Specify the common group name, to let other `godot.ProximityGroup` nodes know, if they should be auto-grouped with this node in case they intersect with each other.
		
		For example, if you have a `godot.ProximityGroup` node named `"Earth"` and another called `"Mars"`, with both nodes having `"planet"` as their `godot.ProximityGroup.groupName`. Give both planets a significantly larger `godot.ProximityGroup.gridRadius` than their actual radius, position them close enough and they'll be automatically grouped.
	**/
	@:native("GroupName")
	public var groupName:std.String;

	@:native("new")
	public function new():Void;

	@:native("SetGroupName")
	public function setGroupName(name:std.String):Void;

	@:native("GetGroupName")
	public function getGroupName():std.String;

	@:native("SetDispatchMode")
	public function setDispatchMode(mode:godot.ProximityGroup_DispatchModeEnum):Void;

	@:native("GetDispatchMode")
	public function getDispatchMode():godot.ProximityGroup_DispatchModeEnum;

	@:native("SetGridRadius")
	public function setGridRadius(radius:godot.Vector3):Void;

	@:native("GetGridRadius")
	public function getGridRadius():godot.Vector3;

	/**		
		Calls on all intersecting `godot.ProximityGroup` the given method and parameters.
		
		If the `godot.ProximityGroup.dispatchMode` is set to `godot.ProximityGroup_DispatchModeEnum.proxy` (the default), all calls are delegated to their respective parent `godot.Node`.
	**/
	@:native("Broadcast")
	public function broadcast(method:std.String, parameters:Dynamic):Void;
}
