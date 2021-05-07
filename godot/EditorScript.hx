// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Scripts extending this class and implementing its `godot.EditorScript._Run` method can be executed from the Script Editor's File &gt; Run menu option (or by pressing `Ctrl+Shift+X`) while the editor is running. This is useful for adding custom in-editor functionality to Godot. For more complex additions, consider using `godot.EditorPlugin`s instead.

Note: Extending scripts need to have `tool` mode enabled.

Example script:

```

tool
extends EditorScript

func _run():
print("Hello from the Godot Editor!")

```

Note: The script is run in the Editor context, which means the output is visible in the console window started with the Editor (stdout) instead of the usual Godot Output dock.
**/
@:libType
@:csNative
@:native("Godot.EditorScript")
@:autoBuild(godot.Godot.buildUserClass())
extern class EditorScript extends godot.Reference {
	@:native("new")
	public function new():Void;

	/**		
		This method is executed by the Editor when File &gt; Run is used.
	**/
	@:native("_Run")
	public function _Run():Void;

	/**		
		Adds `node` as a child of the root node in the editor context.
		
		Warning: The implementation of this method is currently disabled.
	**/
	@:native("AddRootNode")
	public function addRootNode(node:godot.Node):Void;

	/**		
		Returns the Editor's currently active scene.
	**/
	@:native("GetScene")
	public function getScene():godot.Node;

	/**		
		Returns the `godot.EditorInterface` singleton instance.
	**/
	@:native("GetEditorInterface")
	public function getEditorInterface():godot.EditorInterface;
}
