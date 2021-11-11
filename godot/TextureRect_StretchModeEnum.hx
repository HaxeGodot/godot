// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.TextureRect.StretchModeEnum")
@:csNative
extern enum TextureRect_StretchModeEnum {
	/**		
		Scale to fit the node's bounding rectangle, only if `expand` is `true`. Default `stretch_mode`, for backwards compatibility. Until you set `expand` to `true`, the texture will behave like `godot.TextureRect_StretchModeEnum.keep`.
	**/
	ScaleOnExpand;

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
		Scale the texture to fit the node's bounding rectangle, center it and maintain its aspect ratio.
	**/
	KeepAspectCentered;

	/**		
		Scale the texture so that the shorter side fits the bounding rectangle. The other side clips to the node's limits.
	**/
	KeepAspectCovered;
}
