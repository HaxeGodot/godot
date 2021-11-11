// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
JavaScriptObject is used to interact with JavaScript objects retrieved or created via `godot.JavaScript.getInterface`, `godot.JavaScript.createObject`, or `godot.JavaScript.createCallback`.

Example:

```

extends Node

var _my_js_callback = JavaScript.create_callback(self, "myCallback") # This reference must be kept
var console = JavaScript.get_interface("console")

func _init():
var buf = JavaScript.create_object("ArrayBuffer", 10) # new ArrayBuffer(10)
print(buf) # prints [JavaScriptObject:OBJECT_ID]
var uint8arr = JavaScript.create_object("Uint8Array", buf) # new Uint8Array(buf)
uint8arr[1] = 255
prints(uint8arr[1], uint8arr.byteLength) # prints 255 10
console.log(uint8arr) # prints in browser console "Uint8Array(10) [ 0, 255, 0, 0, 0, 0, 0, 0, 0, 0 ]"

# Equivalent of JavaScript: Array.from(uint8arr).forEach(myCallback)
JavaScript.get_interface("Array").from(uint8arr).forEach(_my_js_callback)

func myCallback(args):
# Will be called with the parameters passed to the "forEach" callback
# [0, 0, [JavaScriptObject:1173]]
# [255, 1, [JavaScriptObject:1173]]
# ...
# [0, 9, [JavaScriptObject:1180]]
print(args)

```

Note: Only available in the HTML5 platform.
**/
@:libType
@:csNative
@:native("Godot.JavaScriptObject")
@:autoBuild(godot.Godot.buildUserClass())
extern abstract class JavaScriptObject extends godot.Reference {}
