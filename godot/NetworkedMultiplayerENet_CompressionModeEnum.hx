// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.NetworkedMultiplayerENet.CompressionModeEnum")
@:csNative
extern enum NetworkedMultiplayerENet_CompressionModeEnum {
	/**		
		No compression. This uses the most bandwidth, but has the upside of requiring the fewest CPU resources.
	**/
	None;

	/**		
		ENet's built-in range encoding.
	**/
	RangeCoder;

	/**		
		[http://fastlz.org/](FastLZ) compression. This option uses less CPU resources compared to , at the expense of using more bandwidth.
	**/
	Fastlz;

	/**		
		[https://www.zlib.net/](Zlib) compression. This option uses less bandwidth compared to , at the expense of using more CPU resources.
	**/
	Zlib;

	/**		
		[https://facebook.github.io/zstd/](Zstandard) compression.
	**/
	Zstd;
}
