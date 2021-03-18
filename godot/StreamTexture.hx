// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
A texture that is loaded from a `.stex` file.
**/
@:libType
@:csNative
@:native("Godot.StreamTexture")
@:autoBuild(godot.Godot.buildUserClass())
extern class StreamTexture extends godot.Texture {
	/**		
		The StreamTexture's file path to a `.stex` file.
	**/
	@:native("LoadPath")
	public var loadPath:std.String;

	@:native("new")
	public function new():Void;

	/**		
		Loads the texture from the given path.
	**/
	@:native("Load")
	public function load(path:std.String):godot.Error;

	@:native("GetLoadPath")
	public function getLoadPath():std.String;
}
