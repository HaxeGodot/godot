// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.CubeMap.Storage")
@:csNative
extern enum CubeMap_Storage {
	/**		
		Store the `godot.CubeMap` without any compression.
	**/
	Raw;

	/**		
		Store the `godot.CubeMap` with strong compression that reduces image quality.
	**/
	CompressLossy;

	/**		
		Store the `godot.CubeMap` with moderate compression that doesn't reduce image quality.
	**/
	CompressLossless;
}
