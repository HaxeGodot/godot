// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
The JNISingleton is implemented only in the Android export. It's used to call methods and connect signals from an Android plugin written in Java or Kotlin. Methods and signals can be called and connected to the JNISingleton as if it is a Node. See [https://en.wikipedia.org/wiki/Java_Native_Interface](Java Native Interface - Wikipedia) for more information.
**/
@:libType
@:csNative
@:native("Godot.JNISingleton")
@:autoBuild(godot.Godot.buildUserClass())
extern class JNISingleton extends godot.Object {
	@:native("new")
	public function new():Void;
}
