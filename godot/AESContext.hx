// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
This class provides access to AES encryption/decryption of raw data. Both AES-ECB and AES-CBC mode are supported.

```

extends Node

var aes = AESContext.new()

func _ready():
var key = "My secret key!!!" # Key must be either 16 or 32 bytes.
var data = "My secret text!!" # Data size must be multiple of 16 bytes, apply padding if needed.
# Encrypt ECB
aes.start(AESContext.MODE_ECB_ENCRYPT, key.to_utf8())
var encrypted = aes.update(data.to_utf8())
aes.finish()
# Decrypt ECB
aes.start(AESContext.MODE_ECB_DECRYPT, key.to_utf8())
var decrypted = aes.update(encrypted)
aes.finish()
# Check ECB
assert(decrypted == data.to_utf8())

var iv = "My secret iv!!!!" # IV must be of exactly 16 bytes.
# Encrypt CBC
aes.start(AESContext.MODE_CBC_ENCRYPT, key.to_utf8(), iv.to_utf8())
encrypted = aes.update(data.to_utf8())
aes.finish()
# Decrypt CBC
aes.start(AESContext.MODE_CBC_DECRYPT, key.to_utf8(), iv.to_utf8())
decrypted = aes.update(encrypted)
aes.finish()
# Check CBC
assert(decrypted == data.to_utf8())

```
**/
@:libType
@:csNative
@:native("Godot.AESContext")
@:autoBuild(godot.Godot.buildUserClass())
extern class AESContext extends godot.Reference {
	@:native("new")
	public function new():Void;

	#if doc_gen
	/**		
		Start the AES context in the given `mode`. A `key` of either 16 or 32 bytes must always be provided, while an `iv` (initialization vector) of exactly 16 bytes, is only needed when `mode` is either `godot.AESContext_Mode.cbcEncrypt` or `godot.AESContext_Mode.cbcDecrypt`.
		
		@param iv If the parameter is null, then the default value is Array.Empty&lt;byte&gt;()
	**/
	@:native("Start")
	public function start(mode:godot.AESContext_Mode, key:std.Array<cs.types.UInt8>, ?iv:std.Array<cs.types.UInt8>):godot.Error;
	#else
	/**		
		Start the AES context in the given `mode`. A `key` of either 16 or 32 bytes must always be provided, while an `iv` (initialization vector) of exactly 16 bytes, is only needed when `mode` is either `godot.AESContext_Mode.cbcEncrypt` or `godot.AESContext_Mode.cbcDecrypt`.
		
		@param iv If the parameter is null, then the default value is Array.Empty&lt;byte&gt;()
	**/
	@:native("Start")
	public overload function start(mode:godot.AESContext_Mode, key:HaxeArray<cs.types.UInt8>):godot.Error;

	/**		
		Start the AES context in the given `mode`. A `key` of either 16 or 32 bytes must always be provided, while an `iv` (initialization vector) of exactly 16 bytes, is only needed when `mode` is either `godot.AESContext_Mode.cbcEncrypt` or `godot.AESContext_Mode.cbcDecrypt`.
		
		@param iv If the parameter is null, then the default value is Array.Empty&lt;byte&gt;()
	**/
	@:native("Start")
	public overload function start(mode:godot.AESContext_Mode, key:HaxeArray<cs.types.UInt8>, iv:HaxeArray<cs.types.UInt8>):godot.Error;
	#end

	/**		
		Run the desired operation for this AES context. Will return a `cs.UInt8` containing the result of encrypting (or decrypting) the given `src`. See `godot.AESContext.start` for mode of operation.
		
		Note: The size of `src` must be a multiple of 16. Apply some padding if needed.
	**/
	public extern inline function update(src:HaxeArray<cs.types.UInt8>):std.Array<cs.types.UInt8> {
		return cs.Lib.array(cs.Syntax.code("{0}.Update({1})", this, src));
	}

	/**		
		Get the current IV state for this context (IV gets updated when calling `godot.AESContext.update`). You normally don't need this function.
		
		Note: This function only makes sense when the context is started with `godot.AESContext_Mode.cbcEncrypt` or `godot.AESContext_Mode.cbcDecrypt`.
	**/
	public extern inline function getIvState():std.Array<cs.types.UInt8> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetIvState()", this));
	}

	/**		
		Close this AES context so it can be started again. See `godot.AESContext.start`.
	**/
	@:native("Finish")
	public function finish():Void;
}
