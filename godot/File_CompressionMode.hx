// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.File.CompressionMode")
@:csNative
extern enum File_CompressionMode {
	/**		
		Uses the [http://fastlz.org/](FastLZ) compression method.
	**/
	Fastlz;

	/**		
		Uses the [https://en.wikipedia.org/wiki/DEFLATE](DEFLATE) compression method.
	**/
	Deflate;

	/**		
		Uses the [https://facebook.github.io/zstd/](Zstandard) compression method.
	**/
	Zstd;

	/**		
		Uses the [https://www.gzip.org/](gzip) compression method.
	**/
	Gzip;
}
