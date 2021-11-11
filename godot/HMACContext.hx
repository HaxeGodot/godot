// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
The HMACContext class is useful for advanced HMAC use cases, such as streaming the message as it supports creating the message over time rather than providing it all at once.

```

extends Node
var ctx = HMACContext.new()

func _ready():
var key = "supersecret".to_utf8()
var err = ctx.start(HashingContext.HASH_SHA256, key)
assert(err == OK)
var msg1 = "this is ".to_utf8()
var msg2 = "vewy vewy secret".to_utf8()
err = ctx.update(msg1)
assert(err == OK)
err = ctx.update(msg2)
assert(err == OK)
var hmac = ctx.finish()
print(hmac.hex_encode())

```

And in C# we can use the following.

```

using Godot;
using System;
using System.Diagnostics;

public class CryptoNode : Node
{
private HMACContext ctx = new HMACContext();
public override void _Ready()
{
PoolByteArray key = String("supersecret").to_utf8();
Error err = ctx.Start(HashingContext.HASH_SHA256, key);
GD.Assert(err == OK);
PoolByteArray msg1 = String("this is ").to_utf8();
PoolByteArray msg2 = String("vewy vew secret").to_utf8();
err = ctx.Update(msg1);
GD.Assert(err == OK);
err = ctx.Update(msg2);
GD.Assert(err == OK);
PoolByteArray hmac = ctx.Finish();
GD.Print(hmac.HexEncode());
}
}

```

Note: Not available in HTML5 exports.
**/
@:libType
@:csNative
@:native("Godot.HMACContext")
@:autoBuild(godot.Godot.buildUserClass())
extern class HMACContext extends godot.Reference {
	@:native("new")
	public function new():Void;

	/**		
		Initializes the HMACContext. This method cannot be called again on the same HMACContext until `godot.HMACContext.finish` has been called.
	**/
	@:native("Start")
	public function start(hashType:godot.HashingContext_HashType, key:HaxeArray<cs.types.UInt8>):godot.Error;

	/**		
		Updates the message to be HMACed. This can be called multiple times before `godot.HMACContext.finish` is called to append `data` to the message, but cannot be called until `godot.HMACContext.start` has been called.
	**/
	@:native("Update")
	public function update(data:HaxeArray<cs.types.UInt8>):godot.Error;

	/**		
		Returns the resulting HMAC. If the HMAC failed, an empty `cs.UInt8` is returned.
	**/
	public extern inline function finish():std.Array<cs.types.UInt8> {
		return cs.Lib.array(cs.Syntax.code("{0}.Finish()", this));
	}
}
