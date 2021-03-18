// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
The CryptoKey class represents a cryptographic key. Keys can be loaded and saved like any other `godot.Resource`.

They can be used to generate a self-signed `godot.X509Certificate` via `godot.Crypto.generateSelfSignedCertificate` and as private key in `godot.StreamPeerSSL.acceptStream` along with the appropriate certificate.

Note: Not available in HTML5 exports.
**/
@:libType
@:csNative
@:native("Godot.CryptoKey")
@:autoBuild(godot.Godot.buildUserClass())
extern class CryptoKey extends godot.Resource {
	@:native("new")
	public function new():Void;

	/**		
		Saves a key to the given `path` (should be a "*.key" file).
	**/
	@:native("Save")
	public function save(path:std.String):godot.Error;

	/**		
		Loads a key from `path` ("*.key" file).
	**/
	@:native("Load")
	public function load(path:std.String):godot.Error;
}
