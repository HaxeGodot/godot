// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.StyleBoxTexture.AxisStretchMode")
@:csNative
extern enum StyleBoxTexture_AxisStretchMode {
	/**		
		Stretch the stylebox's texture. This results in visible distortion unless the texture size matches the stylebox's size perfectly.
	**/
	Stretch;

	/**		
		Repeats the stylebox's texture to match the stylebox's size according to the nine-patch system.
	**/
	Tile;

	/**		
		Repeats the stylebox's texture to match the stylebox's size according to the nine-patch system. Unlike , the texture may be slightly stretched to make the nine-patch texture tile seamlessly.
	**/
	TileFit;
}
