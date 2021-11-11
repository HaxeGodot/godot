// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
EditorSpatialGizmoPlugin allows you to define a new type of Gizmo. There are two main ways to do so: extending `godot.EditorSpatialGizmoPlugin` for the simpler gizmos, or creating a new `godot.EditorSpatialGizmo` type. See the tutorial in the documentation for more info.
**/
@:libType
@:csNative
@:native("Godot.EditorSpatialGizmoPlugin")
@:autoBuild(godot.Godot.buildUserClass())
extern class EditorSpatialGizmoPlugin extends godot.Resource {
	@:native("new")
	public function new():Void;

	/**		
		Override this method to define whether the gizmo can be hidden or not. Returns `true` if not overridden.
	**/
	@:native("CanBeHidden")
	public function canBeHidden():Bool;

	/**		
		Override this method to commit gizmo handles. Called for this plugin's active gizmos.
	**/
	@:native("CommitHandle")
	public function commitHandle(gizmo:godot.EditorSpatialGizmo, index:Int, restore:Dynamic, cancel:Bool):Void;

	/**		
		Override this method to return a custom `godot.EditorSpatialGizmo` for the spatial nodes of your choice, return `null` for the rest of nodes. See also `godot.EditorSpatialGizmoPlugin.hasGizmo`.
	**/
	@:native("CreateGizmo")
	public function createGizmo(spatial:godot.Spatial):godot.EditorSpatialGizmo;

	/**		
		Override this method to provide gizmo's handle names. Called for this plugin's active gizmos.
	**/
	@:native("GetHandleName")
	public function getHandleName(gizmo:godot.EditorSpatialGizmo, index:Int):std.String;

	/**		
		Gets actual value of a handle from gizmo. Called for this plugin's active gizmos.
	**/
	@:native("GetHandleValue")
	public function getHandleValue(gizmo:godot.EditorSpatialGizmo, index:Int):Dynamic;

	/**		
		Override this method to provide the name that will appear in the gizmo visibility menu.
	**/
	@:native("GetName")
	public function getName():std.String;

	/**		
		Override this method to set the gizmo's priority. Higher values correspond to higher priority. If a gizmo with higher priority conflicts with another gizmo, only the gizmo with higher priority will be used.
		
		All built-in editor gizmos return a priority of `-1`. If not overridden, this method will return `0`, which means custom gizmos will automatically override built-in gizmos.
	**/
	@:native("GetPriority")
	public function getPriority():Int;

	/**		
		Override this method to define which Spatial nodes have a gizmo from this plugin. Whenever a `godot.Spatial` node is added to a scene this method is called, if it returns `true` the node gets a generic `godot.EditorSpatialGizmo` assigned and is added to this plugin's list of active gizmos.
	**/
	@:native("HasGizmo")
	public function hasGizmo(spatial:godot.Spatial):Bool;

	/**		
		Gets whether a handle is highlighted or not. Called for this plugin's active gizmos.
	**/
	@:native("IsHandleHighlighted")
	public function isHandleHighlighted(gizmo:godot.EditorSpatialGizmo, index:Int):Bool;

	/**		
		Override this method to define whether a Spatial with this gizmo should be selectable even when the gizmo is hidden.
	**/
	@:native("IsSelectableWhenHidden")
	public function isSelectableWhenHidden():Bool;

	/**		
		Callback to redraw the provided gizmo. Called for this plugin's active gizmos.
	**/
	@:native("Redraw")
	public function redraw(gizmo:godot.EditorSpatialGizmo):Void;

	/**		
		Update the value of a handle after it has been updated. Called for this plugin's active gizmos.
	**/
	@:native("SetHandle")
	public function setHandle(gizmo:godot.EditorSpatialGizmo, index:Int, camera:godot.Camera, point:godot.Vector2):Void;

	#if doc_gen
	/**		
		Creates an unshaded material with its variants (selected and/or editable) and adds them to the internal material list. They can then be accessed with `godot.EditorSpatialGizmoPlugin.getMaterial` and used in `godot.EditorSpatialGizmo.addMesh` and `godot.EditorSpatialGizmo.addLines`. Should not be overridden.
	**/
	@:native("CreateMaterial")
	public function createMaterial(name:std.String, color:godot.Color, ?billboard:Bool, ?onTop:Bool, ?useVertexColor:Bool):Void;
	#else
	/**		
		Creates an unshaded material with its variants (selected and/or editable) and adds them to the internal material list. They can then be accessed with `godot.EditorSpatialGizmoPlugin.getMaterial` and used in `godot.EditorSpatialGizmo.addMesh` and `godot.EditorSpatialGizmo.addLines`. Should not be overridden.
	**/
	@:native("CreateMaterial")
	public overload function createMaterial(name:std.String, color:godot.Color):Void;

	/**		
		Creates an unshaded material with its variants (selected and/or editable) and adds them to the internal material list. They can then be accessed with `godot.EditorSpatialGizmoPlugin.getMaterial` and used in `godot.EditorSpatialGizmo.addMesh` and `godot.EditorSpatialGizmo.addLines`. Should not be overridden.
	**/
	@:native("CreateMaterial")
	public overload function createMaterial(name:std.String, color:godot.Color, billboard:Bool):Void;

	/**		
		Creates an unshaded material with its variants (selected and/or editable) and adds them to the internal material list. They can then be accessed with `godot.EditorSpatialGizmoPlugin.getMaterial` and used in `godot.EditorSpatialGizmo.addMesh` and `godot.EditorSpatialGizmo.addLines`. Should not be overridden.
	**/
	@:native("CreateMaterial")
	public overload function createMaterial(name:std.String, color:godot.Color, billboard:Bool, onTop:Bool):Void;

	/**		
		Creates an unshaded material with its variants (selected and/or editable) and adds them to the internal material list. They can then be accessed with `godot.EditorSpatialGizmoPlugin.getMaterial` and used in `godot.EditorSpatialGizmo.addMesh` and `godot.EditorSpatialGizmo.addLines`. Should not be overridden.
	**/
	@:native("CreateMaterial")
	public overload function createMaterial(name:std.String, color:godot.Color, billboard:Bool, onTop:Bool, useVertexColor:Bool):Void;
	#end

	#if doc_gen
	/**		
		Creates an icon material with its variants (selected and/or editable) and adds them to the internal material list. They can then be accessed with `godot.EditorSpatialGizmoPlugin.getMaterial` and used in `godot.EditorSpatialGizmo.addUnscaledBillboard`. Should not be overridden.
		
		@param color If the parameter is null, then the default value is new Color(1, 1, 1, 1)
	**/
	@:native("CreateIconMaterial")
	public function createIconMaterial(name:std.String, texture:godot.Texture, ?onTop:Bool, ?color:Null<godot.Color>):Void;
	#else
	/**		
		Creates an icon material with its variants (selected and/or editable) and adds them to the internal material list. They can then be accessed with `godot.EditorSpatialGizmoPlugin.getMaterial` and used in `godot.EditorSpatialGizmo.addUnscaledBillboard`. Should not be overridden.
		
		@param color If the parameter is null, then the default value is new Color(1, 1, 1, 1)
	**/
	@:native("CreateIconMaterial")
	public overload function createIconMaterial(name:std.String, texture:godot.Texture):Void;

	/**		
		Creates an icon material with its variants (selected and/or editable) and adds them to the internal material list. They can then be accessed with `godot.EditorSpatialGizmoPlugin.getMaterial` and used in `godot.EditorSpatialGizmo.addUnscaledBillboard`. Should not be overridden.
		
		@param color If the parameter is null, then the default value is new Color(1, 1, 1, 1)
	**/
	@:native("CreateIconMaterial")
	public overload function createIconMaterial(name:std.String, texture:godot.Texture, onTop:Bool):Void;

	/**		
		Creates an icon material with its variants (selected and/or editable) and adds them to the internal material list. They can then be accessed with `godot.EditorSpatialGizmoPlugin.getMaterial` and used in `godot.EditorSpatialGizmo.addUnscaledBillboard`. Should not be overridden.
		
		@param color If the parameter is null, then the default value is new Color(1, 1, 1, 1)
	**/
	@:native("CreateIconMaterial")
	public overload function createIconMaterial(name:std.String, texture:godot.Texture, onTop:Bool, color:Nullable1<godot.Color>):Void;
	#end

	#if doc_gen
	/**		
		Creates a handle material with its variants (selected and/or editable) and adds them to the internal material list. They can then be accessed with `godot.EditorSpatialGizmoPlugin.getMaterial` and used in `godot.EditorSpatialGizmo.addHandles`. Should not be overridden.
		
		You can optionally provide a texture to use instead of the default icon.
	**/
	@:native("CreateHandleMaterial")
	public function createHandleMaterial(name:std.String, ?billboard:Bool, ?texture:godot.Texture):Void;
	#else
	/**		
		Creates a handle material with its variants (selected and/or editable) and adds them to the internal material list. They can then be accessed with `godot.EditorSpatialGizmoPlugin.getMaterial` and used in `godot.EditorSpatialGizmo.addHandles`. Should not be overridden.
		
		You can optionally provide a texture to use instead of the default icon.
	**/
	@:native("CreateHandleMaterial")
	public overload function createHandleMaterial(name:std.String):Void;

	/**		
		Creates a handle material with its variants (selected and/or editable) and adds them to the internal material list. They can then be accessed with `godot.EditorSpatialGizmoPlugin.getMaterial` and used in `godot.EditorSpatialGizmo.addHandles`. Should not be overridden.
		
		You can optionally provide a texture to use instead of the default icon.
	**/
	@:native("CreateHandleMaterial")
	public overload function createHandleMaterial(name:std.String, billboard:Bool):Void;

	/**		
		Creates a handle material with its variants (selected and/or editable) and adds them to the internal material list. They can then be accessed with `godot.EditorSpatialGizmoPlugin.getMaterial` and used in `godot.EditorSpatialGizmo.addHandles`. Should not be overridden.
		
		You can optionally provide a texture to use instead of the default icon.
	**/
	@:native("CreateHandleMaterial")
	public overload function createHandleMaterial(name:std.String, billboard:Bool, texture:godot.Texture):Void;
	#end

	/**		
		Adds a new material to the internal material list for the plugin. It can then be accessed with `godot.EditorSpatialGizmoPlugin.getMaterial`. Should not be overridden.
	**/
	@:native("AddMaterial")
	public function addMaterial(name:std.String, material:godot.SpatialMaterial):Void;

	#if doc_gen
	/**		
		Gets material from the internal list of materials. If an `godot.EditorSpatialGizmo` is provided, it will try to get the corresponding variant (selected and/or editable).
	**/
	@:native("GetMaterial")
	public function getMaterial(name:std.String, ?gizmo:godot.EditorSpatialGizmo):godot.SpatialMaterial;
	#else
	/**		
		Gets material from the internal list of materials. If an `godot.EditorSpatialGizmo` is provided, it will try to get the corresponding variant (selected and/or editable).
	**/
	@:native("GetMaterial")
	public overload function getMaterial(name:std.String):godot.SpatialMaterial;

	/**		
		Gets material from the internal list of materials. If an `godot.EditorSpatialGizmo` is provided, it will try to get the corresponding variant (selected and/or editable).
	**/
	@:native("GetMaterial")
	public overload function getMaterial(name:std.String, gizmo:godot.EditorSpatialGizmo):godot.SpatialMaterial;
	#end
}
