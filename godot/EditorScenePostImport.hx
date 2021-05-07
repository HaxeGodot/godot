// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Imported scenes can be automatically modified right after import by setting their Custom Script Import property to a `tool` script that inherits from this class.

The `godot.EditorScenePostImport.postImport` callback receives the imported scene's root node and returns the modified version of the scene. Usage example:

```

tool # Needed so it runs in editor
extends EditorScenePostImport

# This sample changes all node names

# Called right after the scene is imported and gets the root node
func post_import(scene):
# Change all node names to "modified_[oldnodename]"
iterate(scene)
return scene # Remember to return the imported scene

func iterate(node):
if node != null:
node.name = "modified_" + node.name
for child in node.get_children():
iterate(child)

```
**/
@:libType
@:csNative
@:native("Godot.EditorScenePostImport")
@:autoBuild(godot.Godot.buildUserClass())
extern class EditorScenePostImport extends godot.Reference {
	@:native("new")
	public function new():Void;

	/**		
		Called after the scene was imported. This method must return the modified version of the scene.
	**/
	@:native("PostImport")
	public function postImport(scene:godot.Object):godot.Object;

	/**		
		Returns the resource folder the imported scene file is located in.
	**/
	@:native("GetSourceFolder")
	public function getSourceFolder():std.String;

	/**		
		Returns the source file path which got imported (e.g. `res://scene.dae`).
	**/
	@:native("GetSourceFile")
	public function getSourceFile():std.String;
}
