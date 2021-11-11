// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.NinePatchRect.AxisStretchMode")
@:csNative
extern enum NinePatchRect_AxisStretchMode {
	/**		
		Stretches the center texture across the NinePatchRect. This may cause the texture to be distorted.
	**/
	Stretch;

	/**		
		Repeats the center texture across the NinePatchRect. This won't cause any visible distortion. The texture must be seamless for this to work without displaying artifacts between edges.
		
		Note: Only supported when using the GLES3 renderer. When using the GLES2 renderer, this will behave like `godot.NinePatchRect_AxisStretchMode.stretch`.
	**/
	Tile;

	/**		
		Repeats the center texture across the NinePatchRect, but will also stretch the texture to make sure each tile is visible in full. This may cause the texture to be distorted, but less than `godot.NinePatchRect_AxisStretchMode.stretch`. The texture must be seamless for this to work without displaying artifacts between edges.
		
		Note: Only supported when using the GLES3 renderer. When using the GLES2 renderer, this will behave like `godot.NinePatchRect_AxisStretchMode.stretch`.
	**/
	TileFit;
}
