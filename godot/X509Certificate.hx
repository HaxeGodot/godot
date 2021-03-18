// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
The X509Certificate class represents an X509 certificate. Certificates can be loaded and saved like any other `godot.Resource`.

They can be used as the server certificate in `godot.StreamPeerSSL.acceptStream` (along with the proper `godot.CryptoKey`), and to specify the only certificate that should be accepted when connecting to an SSL server via `godot.StreamPeerSSL.connectToStream`.

Note: Not available in HTML5 exports.
**/
@:libType
@:csNative
@:native("Godot.X509Certificate")
@:autoBuild(godot.Godot.buildUserClass())
extern class X509Certificate extends godot.Resource {
	@:native("new")
	public function new():Void;

	/**		
		Saves a certificate to the given `path` (should be a "*.crt" file).
	**/
	@:native("Save")
	public function save(path:std.String):godot.Error;

	/**		
		Loads a certificate from `path` ("*.crt" file).
	**/
	@:native("Load")
	public function load(path:std.String):godot.Error;
}
