// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Capture its surroundings as a dual paraboloid image, and stores versions of it with increasing levels of blur to simulate different material roughnesses.

The `godot.ReflectionProbe` is used to create high-quality reflections at the cost of performance. It can be combined with `godot.GIProbe`s and Screen Space Reflections to achieve high quality reflections. `godot.ReflectionProbe`s render all objects within their `godot.ReflectionProbe.cullMask`, so updating them can be quite expensive. It is best to update them once with the important static objects and then leave them.

Note: By default Godot will only render 16 reflection probes. If you need more, increase the number of atlas subdivisions. This setting can be found in .

Note: The GLES2 backend will only display two reflection probes at the same time for a single mesh. If possible, split up large meshes that span over multiple reflection probes into smaller ones.
**/
@:libType
@:csNative
@:native("Godot.ReflectionProbe")
@:autoBuild(godot.Godot.buildUserClass())
extern class ReflectionProbe extends godot.VisualInstance {
	/**		
		Sets the contribution value for how much the reflection affects the ambient light for this reflection probe when set to `godot.ReflectionProbe.interiorEnable`. Useful so that ambient light matches the color of the room.
	**/
	@:native("InteriorAmbientContrib")
	public var interiorAmbientContrib:Single;

	/**		
		Sets the energy multiplier for this reflection probe's ambient light contribution when set to `godot.ReflectionProbe.interiorEnable`.
	**/
	@:native("InteriorAmbientEnergy")
	public var interiorAmbientEnergy:Single;

	/**		
		Sets the ambient light color to be used when this probe is set to `godot.ReflectionProbe.interiorEnable`.
	**/
	@:native("InteriorAmbientColor")
	public var interiorAmbientColor:godot.Color;

	/**		
		If `true`, reflections will ignore sky contribution. Ambient lighting is then controlled by the `interior_ambient_*` properties.
	**/
	@:native("InteriorEnable")
	public var interiorEnable:Bool;

	/**		
		Sets the cull mask which determines what objects are drawn by this probe. Every `godot.VisualInstance` with a layer included in this cull mask will be rendered by the probe. It is best to only include large objects which are likely to take up a lot of space in the reflection in order to save on rendering cost.
	**/
	@:native("CullMask")
	public var cullMask:UInt;

	/**		
		If `true`, computes shadows in the reflection probe. This makes the reflection probe slower to render; you may want to disable this if using the `godot.ReflectionProbe_UpdateModeEnum.always` `godot.ReflectionProbe.updateMode`.
	**/
	@:native("EnableShadows")
	public var enableShadows:Bool;

	/**		
		If `true`, enables box projection. This makes reflections look more correct in rectangle-shaped rooms by offsetting the reflection center depending on the camera's location.
	**/
	@:native("BoxProjection")
	public var boxProjection:Bool;

	/**		
		Sets the origin offset to be used when this reflection probe is in box project mode.
	**/
	@:native("OriginOffset")
	public var originOffset:godot.Vector3;

	/**		
		The size of the reflection probe. The larger the extents the more space covered by the probe which will lower the perceived resolution. It is best to keep the extents only as large as you need them.
	**/
	@:native("Extents")
	public var extents:godot.Vector3;

	/**		
		Sets the max distance away from the probe an object can be before it is culled.
	**/
	@:native("MaxDistance")
	public var maxDistance:Single;

	/**		
		Defines the reflection intensity. Intensity modulates the strength of the reflection.
	**/
	@:native("Intensity")
	public var intensity:Single;

	/**		
		Sets how frequently the probe is updated. Can be `godot.ReflectionProbe_UpdateModeEnum.once` or `godot.ReflectionProbe_UpdateModeEnum.always`.
	**/
	@:native("UpdateMode")
	public var updateMode:godot.ReflectionProbe_UpdateModeEnum;

	@:native("new")
	public function new():Void;

	@:native("SetIntensity")
	public function setIntensity(intensity:Single):Void;

	@:native("GetIntensity")
	public function getIntensity():Single;

	@:native("SetInteriorAmbient")
	public function setInteriorAmbient(ambient:godot.Color):Void;

	@:native("GetInteriorAmbient")
	public function getInteriorAmbient():godot.Color;

	@:native("SetInteriorAmbientEnergy")
	public function setInteriorAmbientEnergy(ambientEnergy:Single):Void;

	@:native("GetInteriorAmbientEnergy")
	public function getInteriorAmbientEnergy():Single;

	@:native("SetInteriorAmbientProbeContribution")
	public function setInteriorAmbientProbeContribution(ambientProbeContribution:Single):Void;

	@:native("GetInteriorAmbientProbeContribution")
	public function getInteriorAmbientProbeContribution():Single;

	@:native("SetMaxDistance")
	public function setMaxDistance(maxDistance:Single):Void;

	@:native("GetMaxDistance")
	public function getMaxDistance():Single;

	@:native("SetExtents")
	public function setExtents(extents:godot.Vector3):Void;

	@:native("GetExtents")
	public function getExtents():godot.Vector3;

	@:native("SetOriginOffset")
	public function setOriginOffset(originOffset:godot.Vector3):Void;

	@:native("GetOriginOffset")
	public function getOriginOffset():godot.Vector3;

	@:native("SetAsInterior")
	public function setAsInterior(enable:Bool):Void;

	@:native("IsSetAsInterior")
	public function isSetAsInterior():Bool;

	@:native("SetEnableBoxProjection")
	public function setEnableBoxProjection(enable:Bool):Void;

	@:native("IsBoxProjectionEnabled")
	public function isBoxProjectionEnabled():Bool;

	@:native("SetEnableShadows")
	public function setEnableShadows(enable:Bool):Void;

	@:native("AreShadowsEnabled")
	public function areShadowsEnabled():Bool;

	@:native("SetCullMask")
	public function setCullMask(layers:UInt):Void;

	@:native("GetCullMask")
	public function getCullMask():UInt;

	@:native("SetUpdateMode")
	public function setUpdateMode(mode:godot.ReflectionProbe_UpdateModeEnum):Void;

	@:native("GetUpdateMode")
	public function getUpdateMode():godot.ReflectionProbe_UpdateModeEnum;
}
