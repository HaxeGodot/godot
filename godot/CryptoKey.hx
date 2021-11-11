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

	#if doc_gen
	/**		
		Saves a key to the given `path`. If `public_only` is `true`, only the public key will be saved.
		
		Note: `path` should be a "*.pub" file if `public_only` is `true`, a "*.key" file otherwise.
	**/
	@:native("Save")
	public function save(path:std.String, ?publicOnly:Bool):godot.Error;
	#else
	/**		
		Saves a key to the given `path`. If `public_only` is `true`, only the public key will be saved.
		
		Note: `path` should be a "*.pub" file if `public_only` is `true`, a "*.key" file otherwise.
	**/
	@:native("Save")
	public overload function save(path:std.String):godot.Error;

	/**		
		Saves a key to the given `path`. If `public_only` is `true`, only the public key will be saved.
		
		Note: `path` should be a "*.pub" file if `public_only` is `true`, a "*.key" file otherwise.
	**/
	@:native("Save")
	public overload function save(path:std.String, publicOnly:Bool):godot.Error;
	#end

	#if doc_gen
	/**		
		Loads a key from `path`. If `public_only` is `true`, only the public key will be loaded.
		
		Note: `path` should be a "*.pub" file if `public_only` is `true`, a "*.key" file otherwise.
	**/
	@:native("Load")
	public function load(path:std.String, ?publicOnly:Bool):godot.Error;
	#else
	/**		
		Loads a key from `path`. If `public_only` is `true`, only the public key will be loaded.
		
		Note: `path` should be a "*.pub" file if `public_only` is `true`, a "*.key" file otherwise.
	**/
	@:native("Load")
	public overload function load(path:std.String):godot.Error;

	/**		
		Loads a key from `path`. If `public_only` is `true`, only the public key will be loaded.
		
		Note: `path` should be a "*.pub" file if `public_only` is `true`, a "*.key" file otherwise.
	**/
	@:native("Load")
	public overload function load(path:std.String, publicOnly:Bool):godot.Error;
	#end

	/**		
		Return `true` if this CryptoKey only has the public part, and not the private one.
	**/
	@:native("IsPublicOnly")
	public function isPublicOnly():Bool;

	#if doc_gen
	/**		
		Returns a string containing the key in PEM format. If `public_only` is `true`, only the public key will be included.
	**/
	@:native("SaveToString")
	public function saveToString(?publicOnly:Bool):std.String;
	#else
	/**		
		Returns a string containing the key in PEM format. If `public_only` is `true`, only the public key will be included.
	**/
	@:native("SaveToString")
	public overload function saveToString():std.String;

	/**		
		Returns a string containing the key in PEM format. If `public_only` is `true`, only the public key will be included.
	**/
	@:native("SaveToString")
	public overload function saveToString(publicOnly:Bool):std.String;
	#end

	#if doc_gen
	/**		
		Loads a key from the given `string`. If `public_only` is `true`, only the public key will be loaded.
	**/
	@:native("LoadFromString")
	public function loadFromString(stringKey:std.String, ?publicOnly:Bool):godot.Error;
	#else
	/**		
		Loads a key from the given `string`. If `public_only` is `true`, only the public key will be loaded.
	**/
	@:native("LoadFromString")
	public overload function loadFromString(stringKey:std.String):godot.Error;

	/**		
		Loads a key from the given `string`. If `public_only` is `true`, only the public key will be loaded.
	**/
	@:native("LoadFromString")
	public overload function loadFromString(stringKey:std.String, publicOnly:Bool):godot.Error;
	#end
}
