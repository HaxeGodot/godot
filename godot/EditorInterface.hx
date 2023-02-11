// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
EditorInterface gives you control over Godot editor's window. It allows customizing the window, saving and (re-)loading scenes, rendering mesh previews, inspecting and editing resources and objects, and provides access to `godot.EditorSettings`, `godot.EditorFileSystem`, `godot.EditorResourcePreview`, `godot.ScriptEditor`, the editor viewport, and information about scenes.

Note: This class shouldn't be instantiated directly. Instead, access the singleton using `godot.EditorPlugin.getEditorInterface`.
**/
@:libType
@:csNative
@:native("Godot.EditorInterface")
@:autoBuild(godot.Godot.buildUserClass())
extern abstract class EditorInterface extends godot.Node {
	/**		
		If `true`, enables distraction-free mode which hides side docks to increase the space available for the main view.
	**/
	@:native("DistractionFreeMode")
	public var distractionFreeMode:Bool;

	#if doc_gen
	/**		
		Shows the given property on the given `object` in the editor's Inspector dock. If `inspector_only` is `true`, plugins will not attempt to edit `object`.
	**/
	@:native("InspectObject")
	public function inspectObject(object:godot.Object, ?forProperty:std.String, ?inspectorOnly:Bool):Void;
	#else
	/**		
		Shows the given property on the given `object` in the editor's Inspector dock. If `inspector_only` is `true`, plugins will not attempt to edit `object`.
	**/
	@:native("InspectObject")
	public overload function inspectObject(object:godot.Object):Void;

	/**		
		Shows the given property on the given `object` in the editor's Inspector dock. If `inspector_only` is `true`, plugins will not attempt to edit `object`.
	**/
	@:native("InspectObject")
	public overload function inspectObject(object:godot.Object, forProperty:std.String):Void;

	/**		
		Shows the given property on the given `object` in the editor's Inspector dock. If `inspector_only` is `true`, plugins will not attempt to edit `object`.
	**/
	@:native("InspectObject")
	public overload function inspectObject(object:godot.Object, forProperty:std.String, inspectorOnly:Bool):Void;
	#end

	/**		
		Returns the editor's `godot.EditorSelection` instance.
	**/
	@:native("GetSelection")
	public function getSelection():godot.EditorSelection;

	/**		
		Returns the editor's `godot.EditorSettings` instance.
	**/
	@:native("GetEditorSettings")
	public function getEditorSettings():godot.EditorSettings;

	/**		
		Returns the editor's `godot.ScriptEditor` instance.
		
		Warning: Removing and freeing this node will render a part of the editor useless and may cause a crash.
	**/
	@:native("GetScriptEditor")
	public function getScriptEditor():godot.ScriptEditor;

	/**		
		Returns the main container of Godot editor's window. For example, you can use it to retrieve the size of the container and place your controls accordingly.
		
		Warning: Removing and freeing this node will render the editor useless and may cause a crash.
	**/
	@:native("GetBaseControl")
	public function getBaseControl():godot.Control;

	/**		
		Returns the actual scale of the editor UI (`1.0` being 100% scale). This can be used to adjust position and dimensions of the UI added by plugins.
		
		Note: This value is set via the `interface/editor/display_scale` and `interface/editor/custom_display_scale` editor settings. Editor must be restarted for changes to be properly applied.
	**/
	@:native("GetEditorScale")
	public function getEditorScale():Single;

	/**		
		Edits the given `godot.Resource`. If the resource is a `godot.Script` you can also edit it with `godot.EditorInterface.editScript` to specify the line and column position.
	**/
	@:native("EditResource")
	public function editResource(resource:godot.Resource):Void;

	/**		
		Edits the given `godot.Node`. The node will be also selected if it's inside the scene tree.
	**/
	@:native("EditNode")
	public function editNode(node:godot.Node):Void;

	#if doc_gen
	/**		
		Edits the given `godot.Script`. The line and column on which to open the script can also be specified. The script will be open with the user-configured editor for the script's language which may be an external editor.
	**/
	@:native("EditScript")
	public function editScript(script:godot.Script, ?line:Int, ?column:Int, ?grabFocus:Bool):Void;
	#else
	/**		
		Edits the given `godot.Script`. The line and column on which to open the script can also be specified. The script will be open with the user-configured editor for the script's language which may be an external editor.
	**/
	@:native("EditScript")
	public overload function editScript(script:godot.Script):Void;

	/**		
		Edits the given `godot.Script`. The line and column on which to open the script can also be specified. The script will be open with the user-configured editor for the script's language which may be an external editor.
	**/
	@:native("EditScript")
	public overload function editScript(script:godot.Script, line:Int):Void;

	/**		
		Edits the given `godot.Script`. The line and column on which to open the script can also be specified. The script will be open with the user-configured editor for the script's language which may be an external editor.
	**/
	@:native("EditScript")
	public overload function editScript(script:godot.Script, line:Int, column:Int):Void;

	/**		
		Edits the given `godot.Script`. The line and column on which to open the script can also be specified. The script will be open with the user-configured editor for the script's language which may be an external editor.
	**/
	@:native("EditScript")
	public overload function editScript(script:godot.Script, line:Int, column:Int, grabFocus:Bool):Void;
	#end

	/**		
		Opens the scene at the given path.
	**/
	@:native("OpenSceneFromPath")
	public function openSceneFromPath(sceneFilepath:std.String):Void;

	/**		
		Reloads the scene at the given path.
	**/
	@:native("ReloadSceneFromPath")
	public function reloadSceneFromPath(sceneFilepath:std.String):Void;

	/**		
		Plays the main scene.
	**/
	@:native("PlayMainScene")
	public function playMainScene():Void;

	/**		
		Plays the currently active scene.
	**/
	@:native("PlayCurrentScene")
	public function playCurrentScene():Void;

	/**		
		Plays the scene specified by its filepath.
	**/
	@:native("PlayCustomScene")
	public function playCustomScene(sceneFilepath:std.String):Void;

	/**		
		Stops the scene that is currently playing.
	**/
	@:native("StopPlayingScene")
	public function stopPlayingScene():Void;

	/**		
		Returns `true` if a scene is currently being played, `false` otherwise. Paused scenes are considered as being played.
	**/
	@:native("IsPlayingScene")
	public function isPlayingScene():Bool;

	/**		
		Returns the name of the scene that is being played. If no scene is currently being played, returns an empty string.
	**/
	@:native("GetPlayingScene")
	public function getPlayingScene():std.String;

	/**		
		Returns an `godot.Collections_Array` with the file paths of the currently opened scenes.
	**/
	@:native("GetOpenScenes")
	public function getOpenScenes():godot.collections.Array;

	/**		
		Returns the edited (current) scene's root `godot.Node`.
	**/
	@:native("GetEditedSceneRoot")
	public function getEditedSceneRoot():godot.Node;

	/**		
		Returns the editor's `godot.EditorResourcePreview` instance.
	**/
	@:native("GetResourcePreviewer")
	public function getResourcePreviewer():godot.EditorResourcePreview;

	/**		
		Returns the editor's `godot.EditorFileSystem` instance.
	**/
	@:native("GetResourceFilesystem")
	public function getResourceFilesystem():godot.EditorFileSystem;

	/**		
		Returns the main editor control. Use this as a parent for main screens.
		
		Note: This returns the main editor control containing the whole editor, not the 2D or 3D viewports specifically.
		
		Warning: Removing and freeing this node will render a part of the editor useless and may cause a crash.
	**/
	@:native("GetEditorViewport")
	public function getEditorViewport():godot.Control;

	/**		
		Returns mesh previews rendered at the given size as an `godot.Collections_Array` of `godot.Texture`s.
	**/
	@:native("MakeMeshPreviews")
	public function makeMeshPreviews(meshes:godot.collections.Array, previewSize:Int):godot.collections.Array;

	/**		
		Selects the file, with the path provided by `file`, in the FileSystem dock.
	**/
	@:native("SelectFile")
	public function selectFile(file:std.String):Void;

	/**		
		Returns the path of the directory currently selected in the `godot.FileSystemDock`. If a file is selected, its base directory will be returned using `String.get_base_dir` instead.
	**/
	@:native("GetSelectedPath")
	public function getSelectedPath():std.String;

	/**		
		Returns the current path being viewed in the `godot.FileSystemDock`.
	**/
	@:native("GetCurrentPath")
	public function getCurrentPath():std.String;

	/**		
		Returns the editor's `godot.FileSystemDock` instance.
		
		Warning: Removing and freeing this node will render a part of the editor useless and may cause a crash.
	**/
	@:native("GetFileSystemDock")
	public function getFileSystemDock():godot.FileSystemDock;

	/**		
		Sets the enabled status of a plugin. The plugin name is the same as its directory name.
	**/
	@:native("SetPluginEnabled")
	public function setPluginEnabled(plugin:std.String, enabled:Bool):Void;

	/**		
		Returns `true` if the specified `plugin` is enabled. The plugin name is the same as its directory name.
	**/
	@:native("IsPluginEnabled")
	public function isPluginEnabled(plugin:std.String):Bool;

	/**		
		Returns the editor's `godot.EditorInspector` instance.
		
		Warning: Removing and freeing this node will render a part of the editor useless and may cause a crash.
	**/
	@:native("GetInspector")
	public function getInspector():godot.EditorInspector;

	/**		
		Saves the scene. Returns either `OK` or `ERR_CANT_CREATE` (see `@GlobalScope` constants).
	**/
	@:native("SaveScene")
	public function saveScene():godot.Error;

	#if doc_gen
	/**		
		Saves the scene as a file at `path`.
	**/
	@:native("SaveSceneAs")
	public function saveSceneAs(path:std.String, ?withPreview:Bool):Void;
	#else
	/**		
		Saves the scene as a file at `path`.
	**/
	@:native("SaveSceneAs")
	public overload function saveSceneAs(path:std.String):Void;

	/**		
		Saves the scene as a file at `path`.
	**/
	@:native("SaveSceneAs")
	public overload function saveSceneAs(path:std.String, withPreview:Bool):Void;
	#end

	/**		
		Sets the editor's current main screen to the one specified in `name`. `name` must match the text of the tab in question exactly (`2D`, `3D`, `Script`, `AssetLib`).
	**/
	@:native("SetMainScreenEditor")
	public function setMainScreenEditor(name:std.String):Void;

	@:native("SetDistractionFreeMode")
	public function setDistractionFreeMode(enter:Bool):Void;

	@:native("IsDistractionFreeModeEnabled")
	public function isDistractionFreeModeEnabled():Bool;
}
