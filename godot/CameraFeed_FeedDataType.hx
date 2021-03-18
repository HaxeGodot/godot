// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.CameraFeed.FeedDataType")
@:csNative
extern enum CameraFeed_FeedDataType {
	/**		
		No image set for the feed.
	**/
	Noimage;

	/**		
		Feed supplies RGB images.
	**/
	Rgb;

	/**		
		Feed supplies YCbCr images that need to be converted to RGB.
	**/
	Ycbcr;

	/**		
		Feed supplies separate Y and CbCr images that need to be combined and converted to RGB.
	**/
	YcbcrSep;
}
