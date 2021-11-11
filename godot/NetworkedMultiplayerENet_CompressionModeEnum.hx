// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.NetworkedMultiplayerENet.CompressionModeEnum")
@:csNative
extern enum NetworkedMultiplayerENet_CompressionModeEnum {
	/**		
		No compression. This uses the most bandwidth, but has the upside of requiring the fewest CPU resources. This option may also be used to make network debugging using tools like Wireshark easier.
	**/
	None;

	/**		
		ENet's built-in range encoding. Works well on small packets, but is not the most efficient algorithm on packets larger than 4 KB.
	**/
	RangeCoder;

	/**		
		[http://fastlz.org/](FastLZ) compression. This option uses less CPU resources compared to `godot.NetworkedMultiplayerENet_CompressionModeEnum.zlib`, at the expense of using more bandwidth.
	**/
	Fastlz;

	/**		
		[https://www.zlib.net/](Zlib) compression. This option uses less bandwidth compared to `godot.NetworkedMultiplayerENet_CompressionModeEnum.fastlz`, at the expense of using more CPU resources. Note that this algorithm is not very efficient on packets smaller than 4 KB. Therefore, it's recommended to use other compression algorithms in most cases.
	**/
	Zlib;

	/**		
		[https://facebook.github.io/zstd/](Zstandard) compression.
	**/
	Zstd;
}
