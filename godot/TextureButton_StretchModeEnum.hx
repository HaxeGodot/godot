// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.TextureButton.StretchModeEnum")
@:csNative
extern enum TextureButton_StretchModeEnum {
	/**		
		Scale to fit the node's bounding rectangle.
	**/
	Scale;

	/**		
		Tile inside the node's bounding rectangle.
	**/
	Tile;

	/**		
		The texture keeps its original size and stays in the bounding rectangle's top-left corner.
	**/
	Keep;

	/**		
		The texture keeps its original size and stays centered in the node's bounding rectangle.
	**/
	KeepCentered;

	/**		
		Scale the texture to fit the node's bounding rectangle, but maintain the texture's aspect ratio.
	**/
	KeepAspect;

	/**		
		Scale the texture to fit the node's bounding rectangle, center it, and maintain its aspect ratio.
	**/
	KeepAspectCentered;

	/**		
		Scale the texture so that the shorter side fits the bounding rectangle. The other side clips to the node's limits.
	**/
	KeepAspectCovered;
}
