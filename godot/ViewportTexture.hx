// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Displays the content of a `godot.Viewport` node as a dynamic `godot.Texture`. This can be used to mix controls, 2D, and 3D elements in the same scene.

To create a ViewportTexture in code, use the `godot.Viewport.getTexture` method on the target viewport.
**/
@:libType
@:csNative
@:native("Godot.ViewportTexture")
@:autoBuild(godot.Godot.buildUserClass())
extern class ViewportTexture extends godot.Texture {
	/**		
		The path to the `godot.Viewport` node to display. This is relative to the scene root, not to the node which uses the texture.
	**/
	@:native("ViewportPath")
	public var viewportPath:godot.NodePath;

	@:native("new")
	public function new():Void;

	@:native("SetViewportPathInScene")
	public function setViewportPathInScene(path:godot.NodePath):Void;

	@:native("GetViewportPathInScene")
	public function getViewportPathInScene():godot.NodePath;
}
