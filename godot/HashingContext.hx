// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
The HashingContext class provides an interface for computing cryptographic hashes over multiple iterations. This is useful for example when computing hashes of big files (so you don't have to load them all in memory), network streams, and data streams in general (so you don't have to hold buffers).

The `godot.HashingContext_HashType` enum shows the supported hashing algorithms.

```

const CHUNK_SIZE = 1024

func hash_file(path):
var ctx = HashingContext.new()
var file = File.new()
# Start a SHA-256 context.
ctx.start(HashingContext.HASH_SHA256)
# Check that file exists.
if not file.file_exists(path):
return
# Open the file to hash.
file.open(path, File.READ)
# Update the context after reading each chunk.
while not file.eof_reached():
ctx.update(file.get_buffer(CHUNK_SIZE))
# Get the computed hash.
var res = ctx.finish()
# Print the result as hex string and array.
printt(res.hex_encode(), Array(res))

```

Note: Not available in HTML5 exports.
**/
@:libType
@:csNative
@:native("Godot.HashingContext")
@:autoBuild(godot.Godot.buildUserClass())
extern class HashingContext extends godot.Reference {
	@:native("new")
	public function new():Void;

	/**		
		Starts a new hash computation of the given `type` (e.g.  to start computation of a SHA-256).
	**/
	@:native("Start")
	public function start(type:godot.HashingContext_HashType):godot.Error;

	/**		
		Updates the computation with the given `chunk` of data.
	**/
	@:native("Update")
	public function update(chunk:haxe.Rest<cs.types.UInt8>):godot.Error;

	/**		
		Closes the current context, and return the computed hash.
	**/
	@:native("Finish")
	public function finish():cs.NativeArray<cs.types.UInt8>;
}
