// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Plugins are used by the editor to extend functionality. The most common types of plugins are those which edit a given node or resource type, import plugins and export plugins. See also `godot.EditorScript` to add functions to the editor.
**/
@:libType
@:csNative
@:native("Godot.EditorPlugin")
@:autoBuild(godot.Godot.buildUserClass())
extern class EditorPlugin extends godot.Node {
	/**
		`main_screen_changed` signal.
	**/
	public var onMainScreenChanged(get, never):Signal<(screenName:std.String)->Void>;
	@:dox(hide) @:noCompletion inline function get_onMainScreenChanged():Signal<(screenName:std.String)->Void> {
		return new Signal(this, "main_screen_changed", Signal.SignalHandlerStringVoid.connectSignal, Signal.SignalHandlerStringVoid.disconnectSignal, Signal.SignalHandlerStringVoid.isSignalConnected);
	}

	/**
		`resource_saved` signal.
	**/
	public var onResourceSaved(get, never):Signal<(resource:Resource)->Void>;
	@:dox(hide) @:noCompletion inline function get_onResourceSaved():Signal<(resource:Resource)->Void> {
		return new Signal(this, "resource_saved", Signal.SignalHandlerResourceVoid.connectSignal, Signal.SignalHandlerResourceVoid.disconnectSignal, Signal.SignalHandlerResourceVoid.isSignalConnected);
	}

	/**
		`scene_changed` signal.
	**/
	public var onSceneChanged(get, never):Signal<(sceneRoot:Node)->Void>;
	@:dox(hide) @:noCompletion inline function get_onSceneChanged():Signal<(sceneRoot:Node)->Void> {
		return new Signal(this, "scene_changed", Signal.SignalHandlerNodeVoid.connectSignal, Signal.SignalHandlerNodeVoid.disconnectSignal, Signal.SignalHandlerNodeVoid.isSignalConnected);
	}

	/**
		`scene_closed` signal.
	**/
	public var onSceneClosed(get, never):Signal<(filepath:std.String)->Void>;
	@:dox(hide) @:noCompletion inline function get_onSceneClosed():Signal<(filepath:std.String)->Void> {
		return new Signal(this, "scene_closed", Signal.SignalHandlerStringVoid.connectSignal, Signal.SignalHandlerStringVoid.disconnectSignal, Signal.SignalHandlerStringVoid.isSignalConnected);
	}

	@:native("new")
	public function new():Void;

	/**		
		This method is called when the editor is about to save the project, switch to another tab, etc. It asks the plugin to apply any pending state changes to ensure consistency.
		
		This is used, for example, in shader editors to let the plugin know that it must apply the shader code being written by the user to the object.
	**/
	@:native("ApplyChanges")
	public function applyChanges():Void;

	/**		
		This method is called when the editor is about to run the project. The plugin can then perform required operations before the project runs.
		
		This method must return a boolean. If this method returns `false`, the project will not run. The run is aborted immediately, so this also prevents all other plugins' `godot.EditorPlugin.build` methods from running.
	**/
	@:native("Build")
	public function build():Bool;

	/**		
		Clear all the state and reset the object being edited to zero. This ensures your plugin does not keep editing a currently existing node, or a node from the wrong scene.
	**/
	@:native("Clear")
	public function clear():Void;

	/**		
		Called by the engine when the user disables the `godot.EditorPlugin` in the Plugin tab of the project settings window.
	**/
	@:native("DisablePlugin")
	public function disablePlugin():Void;

	/**		
		This function is used for plugins that edit specific object types (nodes or resources). It requests the editor to edit the given object.
	**/
	@:native("Edit")
	public function edit(object:godot.Object):Void;

	/**		
		Called by the engine when the user enables the `godot.EditorPlugin` in the Plugin tab of the project settings window.
	**/
	@:native("EnablePlugin")
	public function enablePlugin():Void;

	/**		
		Called by the engine when the 2D editor's viewport is updated. Use the `overlay` `godot.Control` for drawing. You can update the viewport manually by calling `godot.EditorPlugin.updateOverlays`.
		
		```
		
		func forward_canvas_draw_over_viewport(overlay):
		# Draw a circle at cursor position.
		overlay.draw_circle(overlay.get_local_mouse_position(), 64, Color.white)
		
		func forward_canvas_gui_input(event):
		if event is InputEventMouseMotion:
		# Redraw viewport when cursor is moved.
		update_overlays()
		return true
		return false
		
		```
	**/
	@:native("ForwardCanvasDrawOverViewport")
	public function forwardCanvasDrawOverViewport(overlay:godot.Control):Void;

	/**		
		This method is the same as `godot.EditorPlugin.forwardCanvasDrawOverViewport`, except it draws on top of everything. Useful when you need an extra layer that shows over anything else.
		
		You need to enable calling of this method by using `godot.EditorPlugin.setForceDrawOverForwardingEnabled`.
	**/
	@:native("ForwardCanvasForceDrawOverViewport")
	public function forwardCanvasForceDrawOverViewport(overlay:godot.Control):Void;

	/**		
		Called when there is a root node in the current edited scene, `godot.EditorPlugin.handles` is implemented and an `godot.InputEvent` happens in the 2D viewport. Intercepts the `godot.InputEvent`, if `return true` `godot.EditorPlugin` consumes the `event`, otherwise forwards `event` to other Editor classes. Example:
		
		```
		
		# Prevents the InputEvent to reach other Editor classes
		func forward_canvas_gui_input(event):
		var forward = true
		return forward
		
		```
		
		Must `return false` in order to forward the `godot.InputEvent` to other Editor classes. Example:
		
		```
		
		# Consumes InputEventMouseMotion and forwards other InputEvent types
		func forward_canvas_gui_input(event):
		var forward = false
		if event is InputEventMouseMotion:
		forward = true
		return forward
		
		```
	**/
	@:native("ForwardCanvasGuiInput")
	public function forwardCanvasGuiInput(event:godot.InputEvent):Bool;

	/**		
		Called by the engine when the 3D editor's viewport is updated. Use the `overlay` `godot.Control` for drawing. You can update the viewport manually by calling `godot.EditorPlugin.updateOverlays`.
		
		```
		
		func forward_spatial_draw_over_viewport(overlay):
		# Draw a circle at cursor position.
		overlay.draw_circle(overlay.get_local_mouse_position(), 64)
		
		func forward_spatial_gui_input(camera, event):
		if event is InputEventMouseMotion:
		# Redraw viewport when cursor is moved.
		update_overlays()
		return true
		return false
		
		```
	**/
	@:native("ForwardSpatialDrawOverViewport")
	public function forwardSpatialDrawOverViewport(overlay:godot.Control):Void;

	/**		
		This method is the same as `godot.EditorPlugin.forwardSpatialDrawOverViewport`, except it draws on top of everything. Useful when you need an extra layer that shows over anything else.
		
		You need to enable calling of this method by using `godot.EditorPlugin.setForceDrawOverForwardingEnabled`.
	**/
	@:native("ForwardSpatialForceDrawOverViewport")
	public function forwardSpatialForceDrawOverViewport(overlay:godot.Control):Void;

	/**		
		Called when there is a root node in the current edited scene, `godot.EditorPlugin.handles` is implemented and an `godot.InputEvent` happens in the 3D viewport. Intercepts the `godot.InputEvent`, if `return true` `godot.EditorPlugin` consumes the `event`, otherwise forwards `event` to other Editor classes. Example:
		
		```
		
		# Prevents the InputEvent to reach other Editor classes
		func forward_spatial_gui_input(camera, event):
		var forward = true
		return forward
		
		```
		
		Must `return false` in order to forward the `godot.InputEvent` to other Editor classes. Example:
		
		```
		
		# Consumes InputEventMouseMotion and forwards other InputEvent types
		func forward_spatial_gui_input(camera, event):
		var forward = false
		if event is InputEventMouseMotion:
		forward = true
		return forward
		
		```
	**/
	@:native("ForwardSpatialGuiInput")
	public function forwardSpatialGuiInput(camera:godot.Camera, event:godot.InputEvent):Bool;

	/**		
		This is for editors that edit script-based objects. You can return a list of breakpoints in the format (`script:line`), for example: `res://path_to_script.gd:25`.
	**/
	public extern inline function getBreakpoints():std.Array<std.String> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetBreakpoints()", this));
	}

	/**		
		Override this method in your plugin to return a `godot.Texture` in order to give it an icon.
		
		For main screen plugins, this appears at the top of the screen, to the right of the "2D", "3D", "Script", and "AssetLib" buttons.
		
		Ideally, the plugin icon should be white with a transparent background and 16x16 pixels in size.
		
		```
		
		func get_plugin_icon():
		# You can use a custom icon:
		return preload("res://addons/my_plugin/my_plugin_icon.svg")
		# Or use a built-in icon:
		return get_editor_interface().get_base_control().get_icon("Node", "EditorIcons")
		
		```
	**/
	@:native("GetPluginIcon")
	public function getPluginIcon():godot.Texture;

	/**		
		Override this method in your plugin to provide the name of the plugin when displayed in the Godot editor.
		
		For main screen plugins, this appears at the top of the screen, to the right of the "2D", "3D", "Script", and "AssetLib" buttons.
	**/
	@:native("GetPluginName")
	public function getPluginName():std.String;

	/**		
		Gets the state of your plugin editor. This is used when saving the scene (so state is kept when opening it again) and for switching tabs (so state can be restored when the tab returns).
	**/
	@:native("GetState")
	public function getState():godot.collections.Dictionary;

	/**		
		Gets the GUI layout of the plugin. This is used to save the project's editor layout when `godot.EditorPlugin.queueSaveLayout` is called or the editor layout was changed(For example changing the position of a dock).
	**/
	@:native("GetWindowLayout")
	public function getWindowLayout(layout:godot.ConfigFile):Void;

	/**		
		Implement this function if your plugin edits a specific type of object (Resource or Node). If you return `true`, then you will get the functions `godot.EditorPlugin.edit` and `godot.EditorPlugin.makeVisible` called when the editor requests them. If you have declared the methods `godot.EditorPlugin.forwardCanvasGuiInput` and `godot.EditorPlugin.forwardSpatialGuiInput` these will be called too.
	**/
	@:native("Handles")
	public function handles(object:godot.Object):Bool;

	/**		
		Returns `true` if this is a main screen editor plugin (it goes in the workspace selector together with 2D, 3D, Script and AssetLib).
	**/
	@:native("HasMainScreen")
	public function hasMainScreen():Bool;

	/**		
		This function will be called when the editor is requested to become visible. It is used for plugins that edit a specific object type.
		
		Remember that you have to manage the visibility of all your editor controls manually.
	**/
	@:native("MakeVisible")
	public function makeVisible(visible:Bool):Void;

	/**		
		This method is called after the editor saves the project or when it's closed. It asks the plugin to save edited external scenes/resources.
	**/
	@:native("SaveExternalData")
	public function saveExternalData():Void;

	/**		
		Restore the state saved by `godot.EditorPlugin.getState`.
	**/
	@:native("SetState")
	public function setState(state:godot.collections.Dictionary):Void;

	/**		
		Restore the plugin GUI layout saved by `godot.EditorPlugin.getWindowLayout`.
	**/
	@:native("SetWindowLayout")
	public function setWindowLayout(layout:godot.ConfigFile):Void;

	/**		
		Adds a custom control to a container (see `godot.EditorPlugin_CustomControlContainer`). There are many locations where custom controls can be added in the editor UI.
		
		Please remember that you have to manage the visibility of your custom controls yourself (and likely hide it after adding it).
		
		When your plugin is deactivated, make sure to remove your custom control with `godot.EditorPlugin.removeControlFromContainer` and free it with `godot.Node.queueFree`.
	**/
	@:native("AddControlToContainer")
	public function addControlToContainer(container:godot.EditorPlugin_CustomControlContainer, control:godot.Control):Void;

	/**		
		Adds a control to the bottom panel (together with Output, Debug, Animation, etc). Returns a reference to the button added. It's up to you to hide/show the button when needed. When your plugin is deactivated, make sure to remove your custom control with `godot.EditorPlugin.removeControlFromBottomPanel` and free it with `godot.Node.queueFree`.
	**/
	@:native("AddControlToBottomPanel")
	public function addControlToBottomPanel(control:godot.Control, title:std.String):godot.ToolButton;

	/**		
		Adds the control to a specific dock slot (see `godot.EditorPlugin_DockSlot` for options).
		
		If the dock is repositioned and as long as the plugin is active, the editor will save the dock position on further sessions.
		
		When your plugin is deactivated, make sure to remove your custom control with `godot.EditorPlugin.removeControlFromDocks` and free it with `godot.Node.queueFree`.
	**/
	@:native("AddControlToDock")
	public function addControlToDock(slot:godot.EditorPlugin_DockSlot, control:godot.Control):Void;

	/**		
		Removes the control from the dock. You have to manually `godot.Node.queueFree` the control.
	**/
	@:native("RemoveControlFromDocks")
	public function removeControlFromDocks(control:godot.Control):Void;

	/**		
		Removes the control from the bottom panel. You have to manually `godot.Node.queueFree` the control.
	**/
	@:native("RemoveControlFromBottomPanel")
	public function removeControlFromBottomPanel(control:godot.Control):Void;

	/**		
		Removes the control from the specified container. You have to manually `godot.Node.queueFree` the control.
	**/
	@:native("RemoveControlFromContainer")
	public function removeControlFromContainer(container:godot.EditorPlugin_CustomControlContainer, control:godot.Control):Void;

	#if doc_gen
	/**		
		Adds a custom menu item to Project &gt; Tools as `name` that calls `callback` on an instance of `handler` with a parameter `ud` when user activates it.
	**/
	@:native("AddToolMenuItem")
	public function addToolMenuItem(name:std.String, handler:godot.Object, callback:std.String, ?ud:Dynamic):Void;
	#else
	/**		
		Adds a custom menu item to Project &gt; Tools as `name` that calls `callback` on an instance of `handler` with a parameter `ud` when user activates it.
	**/
	@:native("AddToolMenuItem")
	public overload function addToolMenuItem(name:std.String, handler:godot.Object, callback:std.String):Void;

	/**		
		Adds a custom menu item to Project &gt; Tools as `name` that calls `callback` on an instance of `handler` with a parameter `ud` when user activates it.
	**/
	@:native("AddToolMenuItem")
	public overload function addToolMenuItem(name:std.String, handler:godot.Object, callback:std.String, ud:Dynamic):Void;
	#end

	/**		
		Adds a custom submenu under Project &gt; Tools &gt; `name`. `submenu` should be an object of class `godot.PopupMenu`. This submenu should be cleaned up using `remove_tool_menu_item(name)`.
	**/
	@:native("AddToolSubmenuItem")
	public function addToolSubmenuItem(name:std.String, submenu:godot.Object):Void;

	/**		
		Removes a menu `name` from Project &gt; Tools.
	**/
	@:native("RemoveToolMenuItem")
	public function removeToolMenuItem(name:std.String):Void;

	/**		
		Adds a custom type, which will appear in the list of nodes or resources. An icon can be optionally passed.
		
		When given node or resource is selected, the base type will be instanced (ie, "Spatial", "Control", "Resource"), then the script will be loaded and set to this object.
		
		You can use the virtual method `godot.EditorPlugin.handles` to check if your custom object is being edited by checking the script or using the `is` keyword.
		
		During run-time, this will be a simple object with a script so this function does not need to be called then.
	**/
	@:native("AddCustomType")
	public function addCustomType(type:std.String, base:std.String, script:godot.Script, icon:godot.Texture):Void;

	/**		
		Removes a custom type added by `godot.EditorPlugin.addCustomType`.
	**/
	@:native("RemoveCustomType")
	public function removeCustomType(type:std.String):Void;

	/**		
		Adds a script at `path` to the Autoload list as `name`.
	**/
	@:native("AddAutoloadSingleton")
	public function addAutoloadSingleton(name:std.String, path:std.String):Void;

	/**		
		Removes an Autoload `name` from the list.
	**/
	@:native("RemoveAutoloadSingleton")
	public function removeAutoloadSingleton(name:std.String):Void;

	/**		
		Updates the overlays of the 2D and 3D editor viewport. Causes methods `godot.EditorPlugin.forwardCanvasDrawOverViewport`, `godot.EditorPlugin.forwardCanvasForceDrawOverViewport`, `godot.EditorPlugin.forwardSpatialDrawOverViewport` and `godot.EditorPlugin.forwardSpatialForceDrawOverViewport` to be called.
	**/
	@:native("UpdateOverlays")
	public function updateOverlays():Int;

	/**		
		Makes a specific item in the bottom panel visible.
	**/
	@:native("MakeBottomPanelItemVisible")
	public function makeBottomPanelItemVisible(item:godot.Control):Void;

	/**		
		Minimizes the bottom panel.
	**/
	@:native("HideBottomPanel")
	public function hideBottomPanel():Void;

	/**		
		Gets the undo/redo object. Most actions in the editor can be undoable, so use this object to make sure this happens when it's worth it.
	**/
	@:native("GetUndoRedo")
	public function getUndoRedo():godot.UndoRedo;

	/**		
		Queue save the project's editor layout.
	**/
	@:native("QueueSaveLayout")
	public function queueSaveLayout():Void;

	/**		
		Registers a new `godot.EditorImportPlugin`. Import plugins are used to import custom and unsupported assets as a custom `godot.Resource` type.
		
		Note: If you want to import custom 3D asset formats use `godot.EditorPlugin.addSceneImportPlugin` instead.
		
		See `godot.EditorPlugin.addInspectorPlugin` for an example of how to register a plugin.
	**/
	@:native("AddImportPlugin")
	public function addImportPlugin(importer:godot.EditorImportPlugin):Void;

	/**		
		Removes an import plugin registered by `godot.EditorPlugin.addImportPlugin`.
	**/
	@:native("RemoveImportPlugin")
	public function removeImportPlugin(importer:godot.EditorImportPlugin):Void;

	/**		
		Registers a new `godot.EditorSceneImporter`. Scene importers are used to import custom 3D asset formats as scenes.
	**/
	@:native("AddSceneImportPlugin")
	public function addSceneImportPlugin(sceneImporter:godot.EditorSceneImporter):Void;

	/**		
		Removes a scene importer registered by `godot.EditorPlugin.addSceneImportPlugin`.
	**/
	@:native("RemoveSceneImportPlugin")
	public function removeSceneImportPlugin(sceneImporter:godot.EditorSceneImporter):Void;

	/**		
		Registers a new `godot.EditorExportPlugin`. Export plugins are used to perform tasks when the project is being exported.
		
		See `godot.EditorPlugin.addInspectorPlugin` for an example of how to register a plugin.
	**/
	@:native("AddExportPlugin")
	public function addExportPlugin(plugin:godot.EditorExportPlugin):Void;

	/**		
		Removes an export plugin registered by `godot.EditorPlugin.addExportPlugin`.
	**/
	@:native("RemoveExportPlugin")
	public function removeExportPlugin(plugin:godot.EditorExportPlugin):Void;

	/**		
		Registers a new `godot.EditorSpatialGizmoPlugin`. Gizmo plugins are used to add custom gizmos to the 3D preview viewport for a `godot.Spatial`.
		
		See `godot.EditorPlugin.addInspectorPlugin` for an example of how to register a plugin.
	**/
	@:native("AddSpatialGizmoPlugin")
	public function addSpatialGizmoPlugin(plugin:godot.EditorSpatialGizmoPlugin):Void;

	/**		
		Removes a gizmo plugin registered by `godot.EditorPlugin.addSpatialGizmoPlugin`.
	**/
	@:native("RemoveSpatialGizmoPlugin")
	public function removeSpatialGizmoPlugin(plugin:godot.EditorSpatialGizmoPlugin):Void;

	/**		
		Registers a new `godot.EditorInspectorPlugin`. Inspector plugins are used to extend `godot.EditorInspector` and provide custom configuration tools for your object's properties.
		
		Note: Always use `godot.EditorPlugin.removeInspectorPlugin` to remove the registered `godot.EditorInspectorPlugin` when your `godot.EditorPlugin` is disabled to prevent leaks and an unexpected behavior.
		
		```
		
		const MyInspectorPlugin = preload("res://addons/your_addon/path/to/your/script.gd")
		var inspector_plugin = MyInspectorPlugin.new()
		
		func _enter_tree():
		add_inspector_plugin(inspector_plugin)
		
		func _exit_tree():
		remove_inspector_plugin(inspector_plugin)
		
		```
	**/
	@:native("AddInspectorPlugin")
	public function addInspectorPlugin(plugin:godot.EditorInspectorPlugin):Void;

	/**		
		Removes an inspector plugin registered by `godot.EditorPlugin.addImportPlugin`
	**/
	@:native("RemoveInspectorPlugin")
	public function removeInspectorPlugin(plugin:godot.EditorInspectorPlugin):Void;

	/**		
		Use this method if you always want to receive inputs from 3D view screen inside `godot.EditorPlugin.forwardSpatialGuiInput`. It might be especially usable if your plugin will want to use raycast in the scene.
	**/
	@:native("SetInputEventForwardingAlwaysEnabled")
	public function setInputEventForwardingAlwaysEnabled():Void;

	/**		
		Enables calling of `godot.EditorPlugin.forwardCanvasForceDrawOverViewport` for the 2D editor and `godot.EditorPlugin.forwardSpatialForceDrawOverViewport` for the 3D editor when their viewports are updated. You need to call this method only once and it will work permanently for this plugin.
	**/
	@:native("SetForceDrawOverForwardingEnabled")
	public function setForceDrawOverForwardingEnabled():Void;

	/**		
		Returns the `godot.EditorInterface` object that gives you control over Godot editor's window and its functionalities.
	**/
	@:native("GetEditorInterface")
	public function getEditorInterface():godot.EditorInterface;

	/**		
		Gets the Editor's dialogue used for making scripts.
		
		Note: Users can configure it before use.
		
		Warning: Removing and freeing this node will render a part of the editor useless and may cause a crash.
	**/
	@:native("GetScriptCreateDialog")
	public function getScriptCreateDialog():godot.ScriptCreateDialog;
}
