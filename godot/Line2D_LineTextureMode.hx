// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.Line2D.LineTextureMode")
@:csNative
extern enum Line2D_LineTextureMode {
	/**		
		Takes the left pixels of the texture and renders it over the whole line.
	**/
	None;

	/**		
		Tiles the texture over the line. The texture must be imported with Repeat enabled for it to work properly.
	**/
	Tile;

	/**		
		Stretches the texture across the line. Import the texture with Repeat disabled for best results.
	**/
	Stretch;
}
