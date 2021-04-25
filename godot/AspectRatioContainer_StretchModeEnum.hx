// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.AspectRatioContainer.StretchModeEnum")
@:csNative
extern enum AspectRatioContainer_StretchModeEnum {
	/**		
		The height of child controls is automatically adjusted based on the width of the container.
	**/
	WidthControlsHeight;

	/**		
		The width of child controls is automatically adjusted based on the height of the container.
	**/
	HeightControlsWidth;

	/**		
		The bounding rectangle of child controls is automatically adjusted to fit inside the container while keeping the aspect ratio.
	**/
	Fit;

	/**		
		The width and height of child controls is automatically adjusted to make their bounding rectangle cover the entire area of the container while keeping the aspect ratio.
		
		When the bounding rectangle of child controls exceed the container's size and `godot.Control.rectClipContent` is enabled, this allows to show only the container's area restricted by its own bounding rectangle.
	**/
	Cover;
}
