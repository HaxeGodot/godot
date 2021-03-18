// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
The Crypto class allows you to access some more advanced cryptographic functionalities in Godot.

For now, this includes generating cryptographically secure random bytes, and RSA keys and self-signed X509 certificates generation. More functionalities are planned for future releases.

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
	@:native("GenerateRandomBytes")
	public function generateRandomBytes(size:Int):cs.NativeArray<cs.types.UInt8>;

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
}
