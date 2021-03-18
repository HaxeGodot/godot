// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Enable support for the OpenGL ES external texture extension as defined by [https://www.khronos.org/registry/OpenGL/extensions/OES/OES_EGL_image_external.txt](OES_EGL_image_external).

Note: This is only supported for Android platforms.
**/
@:libType
@:csNative
@:native("Godot.ExternalTexture")
@:autoBuild(godot.Godot.buildUserClass())
extern class ExternalTexture extends godot.Texture {
	/**		
		External texture size.
	**/
	@:native("Size")
	public var size:godot.Vector2;

	@:native("new")
	public function new():Void;

	@:native("SetSize")
	public function setSize(size:godot.Vector2):Void;

	/**		
		Returns the external texture name.
	**/
	@:native("GetExternalTextureId")
	public function getExternalTextureId():UInt;
}
