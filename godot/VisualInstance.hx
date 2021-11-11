// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
The `godot.VisualInstance` is used to connect a resource to a visual representation. All visual 3D nodes inherit from the `godot.VisualInstance`. In general, you should not access the `godot.VisualInstance` properties directly as they are accessed and managed by the nodes that inherit from `godot.VisualInstance`. `godot.VisualInstance` is the node representation of the `godot.VisualServer` instance.
**/
@:libType
@:csNative
@:native("Godot.VisualInstance")
@:autoBuild(godot.Godot.buildUserClass())
extern abstract class VisualInstance extends godot.CullInstance {
	/**		
		The render layer(s) this `godot.VisualInstance` is drawn on.
		
		This object will only be visible for `godot.Camera`s whose cull mask includes the render object this `godot.VisualInstance` is set to.
	**/
	@:native("Layers")
	public var layers:UInt;

	/**		
		Sets the resource that is instantiated by this `godot.VisualInstance`, which changes how the engine handles the `godot.VisualInstance` under the hood. Equivalent to `godot.VisualServer.instanceSetBase`.
	**/
	@:native("SetBase")
	public function setBase(base:godot.RID):Void;

	/**		
		Returns the RID of the resource associated with this `godot.VisualInstance`. For example, if the Node is a `godot.MeshInstance`, this will return the RID of the associated `godot.Mesh`.
	**/
	@:native("GetBase")
	public function getBase():godot.RID;

	/**		
		Returns the RID of this instance. This RID is the same as the RID returned by `godot.VisualServer.instanceCreate`. This RID is needed if you want to call `godot.VisualServer` functions directly on this `godot.VisualInstance`.
	**/
	@:native("GetInstance")
	public function getInstance():godot.RID;

	@:native("SetLayerMask")
	public function setLayerMask(mask:UInt):Void;

	@:native("GetLayerMask")
	public function getLayerMask():UInt;

	/**		
		Enables a particular layer in `godot.VisualInstance.layers`.
	**/
	@:native("SetLayerMaskBit")
	public function setLayerMaskBit(layer:Int, enabled:Bool):Void;

	/**		
		Returns `true` when the specified layer is enabled in `godot.VisualInstance.layers` and `false` otherwise.
	**/
	@:native("GetLayerMaskBit")
	public function getLayerMaskBit(layer:Int):Bool;

	/**		
		Returns the transformed `godot.AABB` (also known as the bounding box) for this `godot.VisualInstance`.
		
		Transformed in this case means the `godot.AABB` plus the position, rotation, and scale of the `godot.Spatial`'s `godot.Transform`. See also `godot.VisualInstance.getAabb`.
	**/
	@:native("GetTransformedAabb")
	public function getTransformedAabb():godot.AABB;

	/**		
		Returns the `godot.AABB` (also known as the bounding box) for this `godot.VisualInstance`. See also `godot.VisualInstance.getTransformedAabb`.
	**/
	@:native("GetAabb")
	public function getAabb():godot.AABB;
}
