// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
The Crypto class allows you to access some more advanced cryptographic functionalities in Godot.

For now, this includes generating cryptographically secure random bytes, RSA keys and self-signed X509 certificates generation, asymmetric key encryption/decryption, and signing/verification.

```

extends Node

var crypto = Crypto.new()
var key = CryptoKey.new()
var cert = X509Certificate.new()

func _ready():
# Generate new RSA key.
key = crypto.generate_rsa(4096)
# Generate new self-signed certificate with the given key.
cert = crypto.generate_self_signed_certificate(key, "CN=mydomain.com,O=My Game Company,C=IT")
# Save key and certificate in the user folder.
key.save("user://generated.key")
cert.save("user://generated.crt")
# Encryption
var data = "Some data"
var encrypted = crypto.encrypt(key, data.to_utf8())
# Decryption
var decrypted = crypto.decrypt(key, encrypted)
# Signing
var signature = crypto.sign(HashingContext.HASH_SHA256, data.sha256_buffer(), key)
# Verifying
var verified = crypto.verify(HashingContext.HASH_SHA256, data.sha256_buffer(), signature, key)
# Checks
assert(verified)
assert(data.to_utf8() == decrypted)

```

Note: Not available in HTML5 exports.
**/
@:libType
@:csNative
@:native("Godot.Crypto")
@:autoBuild(godot.Godot.buildUserClass())
extern class Crypto extends godot.Reference {
	@:native("new")
	public function new():Void;

	/**		
		Generates a `cs.UInt8` of cryptographically secure random bytes with given `size`.
	**/
	public extern inline function generateRandomBytes(size:Int):std.Array<cs.types.UInt8> {
		return cs.Lib.array(cs.Syntax.code("{0}.GenerateRandomBytes({1})", this, size));
	}

	/**		
		Generates an RSA `godot.CryptoKey` that can be used for creating self-signed certificates and passed to `godot.StreamPeerSSL.acceptStream`.
	**/
	@:native("GenerateRsa")
	public function generateRsa(size:Int):godot.CryptoKey;

	#if doc_gen
	/**		
		Generates a self-signed `godot.X509Certificate` from the given `godot.CryptoKey` and `issuer_name`. The certificate validity will be defined by `not_before` and `not_after` (first valid date and last valid date). The `issuer_name` must contain at least "CN=" (common name, i.e. the domain name), "O=" (organization, i.e. your company name), "C=" (country, i.e. 2 lettered ISO-3166 code of the country the organization is based in).
		
		A small example to generate an RSA key and a X509 self-signed certificate.
		
		```
		
		var crypto = Crypto.new()
		# Generate 4096 bits RSA key.
		var key = crypto.generate_rsa(4096)
		# Generate self-signed certificate using the given key.
		var cert = crypto.generate_self_signed_certificate(key, "CN=example.com,O=A Game Company,C=IT")
		
		```
	**/
	@:native("GenerateSelfSignedCertificate")
	public function generateSelfSignedCertificate(key:godot.CryptoKey, ?issuerName:std.String, ?notBefore:std.String, ?notAfter:std.String):godot.X509Certificate;
	#else
	/**		
		Generates a self-signed `godot.X509Certificate` from the given `godot.CryptoKey` and `issuer_name`. The certificate validity will be defined by `not_before` and `not_after` (first valid date and last valid date). The `issuer_name` must contain at least "CN=" (common name, i.e. the domain name), "O=" (organization, i.e. your company name), "C=" (country, i.e. 2 lettered ISO-3166 code of the country the organization is based in).
		
		A small example to generate an RSA key and a X509 self-signed certificate.
		
		```
		
		var crypto = Crypto.new()
		# Generate 4096 bits RSA key.
		var key = crypto.generate_rsa(4096)
		# Generate self-signed certificate using the given key.
		var cert = crypto.generate_self_signed_certificate(key, "CN=example.com,O=A Game Company,C=IT")
		
		```
	**/
	@:native("GenerateSelfSignedCertificate")
	public overload function generateSelfSignedCertificate(key:godot.CryptoKey):godot.X509Certificate;

	/**		
		Generates a self-signed `godot.X509Certificate` from the given `godot.CryptoKey` and `issuer_name`. The certificate validity will be defined by `not_before` and `not_after` (first valid date and last valid date). The `issuer_name` must contain at least "CN=" (common name, i.e. the domain name), "O=" (organization, i.e. your company name), "C=" (country, i.e. 2 lettered ISO-3166 code of the country the organization is based in).
		
		A small example to generate an RSA key and a X509 self-signed certificate.
		
		```
		
		var crypto = Crypto.new()
		# Generate 4096 bits RSA key.
		var key = crypto.generate_rsa(4096)
		# Generate self-signed certificate using the given key.
		var cert = crypto.generate_self_signed_certificate(key, "CN=example.com,O=A Game Company,C=IT")
		
		```
	**/
	@:native("GenerateSelfSignedCertificate")
	public overload function generateSelfSignedCertificate(key:godot.CryptoKey, issuerName:std.String):godot.X509Certificate;

	/**		
		Generates a self-signed `godot.X509Certificate` from the given `godot.CryptoKey` and `issuer_name`. The certificate validity will be defined by `not_before` and `not_after` (first valid date and last valid date). The `issuer_name` must contain at least "CN=" (common name, i.e. the domain name), "O=" (organization, i.e. your company name), "C=" (country, i.e. 2 lettered ISO-3166 code of the country the organization is based in).
		
		A small example to generate an RSA key and a X509 self-signed certificate.
		
		```
		
		var crypto = Crypto.new()
		# Generate 4096 bits RSA key.
		var key = crypto.generate_rsa(4096)
		# Generate self-signed certificate using the given key.
		var cert = crypto.generate_self_signed_certificate(key, "CN=example.com,O=A Game Company,C=IT")
		
		```
	**/
	@:native("GenerateSelfSignedCertificate")
	public overload function generateSelfSignedCertificate(key:godot.CryptoKey, issuerName:std.String, notBefore:std.String):godot.X509Certificate;

	/**		
		Generates a self-signed `godot.X509Certificate` from the given `godot.CryptoKey` and `issuer_name`. The certificate validity will be defined by `not_before` and `not_after` (first valid date and last valid date). The `issuer_name` must contain at least "CN=" (common name, i.e. the domain name), "O=" (organization, i.e. your company name), "C=" (country, i.e. 2 lettered ISO-3166 code of the country the organization is based in).
		
		A small example to generate an RSA key and a X509 self-signed certificate.
		
		```
		
		var crypto = Crypto.new()
		# Generate 4096 bits RSA key.
		var key = crypto.generate_rsa(4096)
		# Generate self-signed certificate using the given key.
		var cert = crypto.generate_self_signed_certificate(key, "CN=example.com,O=A Game Company,C=IT")
		
		```
	**/
	@:native("GenerateSelfSignedCertificate")
	public overload function generateSelfSignedCertificate(key:godot.CryptoKey, issuerName:std.String, notBefore:std.String, notAfter:std.String):godot.X509Certificate;
	#end

	/**		
		Sign a given `hash` of type `hash_type` with the provided private `key`.
	**/
	public extern inline function sign(hashType:godot.HashingContext_HashType, hash:HaxeArray<cs.types.UInt8>, key:godot.CryptoKey):std.Array<cs.types.UInt8> {
		return cs.Lib.array(cs.Syntax.code("{0}.Sign({1}, {2}, {3})", this, hashType, hash, key));
	}

	/**		
		Verify that a given `signature` for `hash` of type `hash_type` against the provided public `key`.
	**/
	@:native("Verify")
	public function verify(hashType:godot.HashingContext_HashType, hash:HaxeArray<cs.types.UInt8>, signature:HaxeArray<cs.types.UInt8>, key:godot.CryptoKey):Bool;

	/**		
		Encrypt the given `plaintext` with the provided public `key`.
		
		Note: The maximum size of accepted plaintext is limited by the key size.
	**/
	public extern inline function encrypt(key:godot.CryptoKey, plaintext:HaxeArray<cs.types.UInt8>):std.Array<cs.types.UInt8> {
		return cs.Lib.array(cs.Syntax.code("{0}.Encrypt({1}, {2})", this, key, plaintext));
	}

	/**		
		Decrypt the given `ciphertext` with the provided private `key`.
		
		Note: The maximum size of accepted ciphertext is limited by the key size.
	**/
	public extern inline function decrypt(key:godot.CryptoKey, ciphertext:HaxeArray<cs.types.UInt8>):std.Array<cs.types.UInt8> {
		return cs.Lib.array(cs.Syntax.code("{0}.Decrypt({1}, {2})", this, key, ciphertext));
	}

	/**		
		Generates an [https://en.wikipedia.org/wiki/HMAC](HMAC) digest of `msg` using `key`. The `hash_type` parameter is the hashing algorithm that is used for the inner and outer hashes.
		
		Currently, only `godot.HashingContext_HashType.sha256` and `godot.HashingContext_HashType.sha1` are supported.
	**/
	public extern inline function hmacDigest(hashType:godot.HashingContext_HashType, key:HaxeArray<cs.types.UInt8>, msg:HaxeArray<cs.types.UInt8>):std.Array<cs.types.UInt8> {
		return cs.Lib.array(cs.Syntax.code("{0}.HmacDigest({1}, {2}, {3})", this, hashType, key, msg));
	}

	/**		
		Compares two `cs.UInt8`s for equality without leaking timing information in order to prevent timing attacks.
		
		See [https://paragonie.com/blog/2015/11/preventing-timing-attacks-on-string-comparison-with-double-hmac-strategy](this blog post) for more information.
	**/
	@:native("ConstantTimeCompare")
	public function constantTimeCompare(trusted:HaxeArray<cs.types.UInt8>, received:HaxeArray<cs.types.UInt8>):Bool;
}
