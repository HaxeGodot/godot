// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Material is a base `godot.Resource` used for coloring and shading geometry. All materials inherit from it and almost all `godot.VisualInstance` derived nodes carry a Material. A few flags and parameters are shared between all material types and are configured here.
**/
@:libType
@:csNative
@:native("Godot.Material")
@:autoBuild(godot.Godot.buildUserClass())
extern abstract class Material extends godot.Resource {
	/**		
		Sets the `godot.Material` to be used for the next pass. This renders the object again using a different material.
		
		Note: only applies to `godot.SpatialMaterial`s and `godot.ShaderMaterial`s with type "Spatial".
	**/
	@:native("NextPass")
	public var nextPass:godot.Material;

	/**		
		Sets the render priority for transparent objects in 3D scenes. Higher priority objects will be sorted in front of lower priority objects.
		
		Note: this only applies to sorting of transparent objects. This will not impact how transparent objects are sorted relative to opaque objects. This is because opaque objects are not sorted, while transparent objects are sorted from back to front (subject to priority).
	**/
	@:native("RenderPriority")
	public var renderPriority:Int;

	/**		
		Minimum value for the `godot.Material.renderPriority` parameter.
	**/
	@:native("RenderPriorityMin")
	public static var RENDER_PRIORITY_MIN(default, never):Int;

	/**		
		Maximum value for the `godot.Material.renderPriority` parameter.
	**/
	@:native("RenderPriorityMax")
	public static var RENDER_PRIORITY_MAX(default, never):Int;

	@:native("SetNextPass")
	public function setNextPass(nextPass:godot.Material):Void;

	@:native("GetNextPass")
	public function getNextPass():godot.Material;

	@:native("SetRenderPriority")
	public function setRenderPriority(priority:Int):Void;

	@:native("GetRenderPriority")
	public function getRenderPriority():Int;
}
