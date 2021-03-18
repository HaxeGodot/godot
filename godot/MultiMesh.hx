// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
MultiMesh provides low-level mesh instancing. Drawing thousands of `godot.MeshInstance` nodes can be slow, since each object is submitted to the GPU then drawn individually.

MultiMesh is much faster as it can draw thousands of instances with a single draw call, resulting in less API overhead.

As a drawback, if the instances are too far away of each other, performance may be reduced as every single instance will always rendered (they are spatially indexed as one, for the whole object).

Since instances may have any behavior, the AABB used for visibility must be provided by the user.
**/
@:libType
@:csNative
@:native("Godot.MultiMesh")
@:autoBuild(godot.Godot.buildUserClass())
extern class MultiMesh extends godot.Resource {
	@:native("CustomDataArray")
	public var customDataArray:cs.NativeArray<godot.Color>;

	@:native("ColorArray")
	public var colorArray:cs.NativeArray<godot.Color>;

	@:native("Transform2dArray")
	public var transform2dArray:cs.NativeArray<godot.Vector2>;

	@:native("TransformArray")
	public var transformArray:cs.NativeArray<godot.Vector3>;

	/**		
		Mesh to be drawn.
	**/
	@:native("Mesh")
	public var mesh:godot.Mesh;

	/**		
		Limits the number of instances drawn, -1 draws all instances. Changing this does not change the sizes of the buffers.
	**/
	@:native("VisibleInstanceCount")
	public var visibleInstanceCount:Int;

	/**		
		Number of instances that will get drawn. This clears and (re)sizes the buffers. By default, all instances are drawn but you can limit this with `godot.MultiMesh.visibleInstanceCount`.
	**/
	@:native("InstanceCount")
	public var instanceCount:Int;

	/**		
		Format of custom data in custom data array that gets passed to shader.
	**/
	@:native("CustomDataFormat")
	public var customDataFormat:godot.MultiMesh_CustomDataFormatEnum;

	/**		
		Format of transform used to transform mesh, either 2D or 3D.
	**/
	@:native("TransformFormat")
	public var transformFormat:godot.MultiMesh_TransformFormatEnum;

	/**		
		Format of colors in color array that gets passed to shader.
	**/
	@:native("ColorFormat")
	public var colorFormat:godot.MultiMesh_ColorFormatEnum;

	@:native("new")
	public function new():Void;

	@:native("SetMesh")
	public function setMesh(mesh:godot.Mesh):Void;

	@:native("GetMesh")
	public function getMesh():godot.Mesh;

	@:native("SetColorFormat")
	public function setColorFormat(format:godot.MultiMesh_ColorFormatEnum):Void;

	@:native("GetColorFormat")
	public function getColorFormat():godot.MultiMesh_ColorFormatEnum;

	@:native("SetCustomDataFormat")
	public function setCustomDataFormat(format:godot.MultiMesh_CustomDataFormatEnum):Void;

	@:native("GetCustomDataFormat")
	public function getCustomDataFormat():godot.MultiMesh_CustomDataFormatEnum;

	@:native("SetTransformFormat")
	public function setTransformFormat(format:godot.MultiMesh_TransformFormatEnum):Void;

	@:native("GetTransformFormat")
	public function getTransformFormat():godot.MultiMesh_TransformFormatEnum;

	@:native("SetInstanceCount")
	public function setInstanceCount(count:Int):Void;

	@:native("GetInstanceCount")
	public function getInstanceCount():Int;

	@:native("SetVisibleInstanceCount")
	public function setVisibleInstanceCount(count:Int):Void;

	@:native("GetVisibleInstanceCount")
	public function getVisibleInstanceCount():Int;

	/**		
		Sets the `godot.Transform` for a specific instance.
	**/
	@:native("SetInstanceTransform")
	public function setInstanceTransform(instance:Int, transform:godot.Transform):Void;

	/**		
		Sets the `godot.Transform2D` for a specific instance.
	**/
	@:native("SetInstanceTransform2d")
	public function setInstanceTransform2d(instance:Int, transform:godot.Transform2D):Void;

	/**		
		Returns the `godot.Transform` of a specific instance.
	**/
	@:native("GetInstanceTransform")
	public function getInstanceTransform(instance:Int):godot.Transform;

	/**		
		Returns the `godot.Transform2D` of a specific instance.
	**/
	@:native("GetInstanceTransform2d")
	public function getInstanceTransform2d(instance:Int):godot.Transform2D;

	/**		
		Sets the color of a specific instance.
		
		For the color to take effect, ensure that `godot.MultiMesh.colorFormat` is non-`null` on the `godot.MultiMesh` and `godot.SpatialMaterial.vertexColorUseAsAlbedo` is `true` on the material.
	**/
	@:native("SetInstanceColor")
	public function setInstanceColor(instance:Int, color:godot.Color):Void;

	/**		
		Gets a specific instance's color.
	**/
	@:native("GetInstanceColor")
	public function getInstanceColor(instance:Int):godot.Color;

	/**		
		Sets custom data for a specific instance. Although `godot.Color` is used, it is just a container for 4 floating point numbers. The format of the number can change depending on the `godot.MultiMesh_CustomDataFormatEnum` used.
	**/
	@:native("SetInstanceCustomData")
	public function setInstanceCustomData(instance:Int, customData:godot.Color):Void;

	/**		
		Returns the custom data that has been set for a specific instance.
	**/
	@:native("GetInstanceCustomData")
	public function getInstanceCustomData(instance:Int):godot.Color;

	/**		
		Sets all data related to the instances in one go. This is especially useful when loading the data from disk or preparing the data from GDNative.
		
		All data is packed in one large float array. An array may look like this: Transform for instance 1, color data for instance 1, custom data for instance 1, transform for instance 2, color data for instance 2, etc...
		
		`godot.Transform` is stored as 12 floats, `godot.Transform2D` is stored as 8 floats, `COLOR_8BIT` / `CUSTOM_DATA_8BIT` is stored as 1 float (4 bytes as is) and `COLOR_FLOAT` / `CUSTOM_DATA_FLOAT` is stored as 4 floats.
	**/
	@:native("SetAsBulkArray")
	public function setAsBulkArray(array:haxe.Rest<Single>):Void;

	/**		
		Returns the visibility axis-aligned bounding box in local space. See also `godot.VisualInstance.getTransformedAabb`.
	**/
	@:native("GetAabb")
	public function getAabb():godot.AABB;
}
