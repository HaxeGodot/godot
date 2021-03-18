// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.Viewport.ShadowAtlasQuadrantSubdiv")
@:csNative
extern enum Viewport_ShadowAtlasQuadrantSubdiv {
	/**		
		This quadrant will not be used.
	**/
	Disabled;

	/**		
		This quadrant will only be used by one shadow map.
	**/
	Subdiv1;

	/**		
		This quadrant will be split in 4 and used by up to 4 shadow maps.
	**/
	Subdiv4;

	/**		
		This quadrant will be split 16 ways and used by up to 16 shadow maps.
	**/
	Subdiv16;

	/**		
		This quadrant will be split 64 ways and used by up to 64 shadow maps.
	**/
	Subdiv64;

	/**		
		This quadrant will be split 256 ways and used by up to 256 shadow maps. Unless the `godot.Viewport.shadowAtlasSize` is very high, the shadows in this quadrant will be very low resolution.
	**/
	Subdiv256;

	/**		
		This quadrant will be split 1024 ways and used by up to 1024 shadow maps. Unless the `godot.Viewport.shadowAtlasSize` is very high, the shadows in this quadrant will be very low resolution.
	**/
	Subdiv1024;

	/**		
		Represents the size of the `godot.Viewport_ShadowAtlasQuadrantSubdiv` enum.
	**/
	Max;
}
