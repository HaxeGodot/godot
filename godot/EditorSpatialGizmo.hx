// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Custom gizmo that is used for providing custom visualization and editing (handles) for 3D Spatial objects. See `godot.EditorSpatialGizmoPlugin` for more information.
**/
@:libType
@:csNative
@:native("Godot.EditorSpatialGizmo")
@:autoBuild(godot.Godot.buildUserClass())
extern class EditorSpatialGizmo extends godot.SpatialGizmo {
	@:native("new")
	public function new():Void;

	/**		
		Commit a handle being edited (handles must have been previously added by `godot.EditorSpatialGizmo.addHandles`).
		
		If the `cancel` parameter is `true`, an option to restore the edited value to the original is provided.
	**/
	@:native("CommitHandle")
	public function commitHandle(index:Int, restore:Dynamic, cancel:Bool):Void;

	/**		
		Gets the name of an edited handle (handles must have been previously added by `godot.EditorSpatialGizmo.addHandles`).
		
		Handles can be named for reference to the user when editing.
	**/
	@:native("GetHandleName")
	public function getHandleName(index:Int):std.String;

	/**		
		Gets actual value of a handle. This value can be anything and used for eventually undoing the motion when calling `godot.EditorSpatialGizmo.commitHandle`.
	**/
	@:native("GetHandleValue")
	public function getHandleValue(index:Int):Dynamic;

	/**		
		Returns `true` if the handle at index `index` is highlighted by being hovered with the mouse.
	**/
	@:native("IsHandleHighlighted")
	public function isHandleHighlighted(index:Int):Bool;

	/**		
		This function is called when the `godot.Spatial` this gizmo refers to changes (the `godot.Spatial.updateGizmo` is called).
	**/
	@:native("Redraw")
	public function redraw():Void;

	/**		
		This function is used when the user drags a gizmo handle (previously added with `godot.EditorSpatialGizmo.addHandles`) in screen coordinates.
		
		The `godot.Camera` is also provided so screen coordinates can be converted to raycasts.
	**/
	@:native("SetHandle")
	public function setHandle(index:Int, camera:godot.Camera, point:godot.Vector2):Void;

	#if doc_gen
	/**		
		Adds lines to the gizmo (as sets of 2 points), with a given material. The lines are used for visualizing the gizmo. Call this function during `godot.EditorSpatialGizmo.redraw`.
		
		@param modulate If the parameter is null, then the default value is new Color(1, 1, 1, 1)
	**/
	@:native("AddLines")
	public function addLines(lines:std.Array<godot.Vector3>, material:godot.Material, ?billboard:Bool, ?modulate:Null<godot.Color>):Void;
	#else
	/**		
		Adds lines to the gizmo (as sets of 2 points), with a given material. The lines are used for visualizing the gizmo. Call this function during `godot.EditorSpatialGizmo.redraw`.
		
		@param modulate If the parameter is null, then the default value is new Color(1, 1, 1, 1)
	**/
	@:native("AddLines")
	public overload function addLines(lines:HaxeArray<godot.Vector3>, material:godot.Material):Void;

	/**		
		Adds lines to the gizmo (as sets of 2 points), with a given material. The lines are used for visualizing the gizmo. Call this function during `godot.EditorSpatialGizmo.redraw`.
		
		@param modulate If the parameter is null, then the default value is new Color(1, 1, 1, 1)
	**/
	@:native("AddLines")
	public overload function addLines(lines:HaxeArray<godot.Vector3>, material:godot.Material, billboard:Bool):Void;

	/**		
		Adds lines to the gizmo (as sets of 2 points), with a given material. The lines are used for visualizing the gizmo. Call this function during `godot.EditorSpatialGizmo.redraw`.
		
		@param modulate If the parameter is null, then the default value is new Color(1, 1, 1, 1)
	**/
	@:native("AddLines")
	public overload function addLines(lines:HaxeArray<godot.Vector3>, material:godot.Material, billboard:Bool, modulate:Nullable1<godot.Color>):Void;
	#end

	#if doc_gen
	/**		
		Adds a mesh to the gizmo with the specified `billboard` state, `skeleton` and `material`. If `billboard` is `true`, the mesh will rotate to always face the camera. Call this function during `godot.EditorSpatialGizmo.redraw`.
	**/
	@:native("AddMesh")
	public function addMesh(mesh:godot.ArrayMesh, ?billboard:Bool, ?skeleton:godot.SkinReference, ?material:godot.Material):Void;
	#else
	/**		
		Adds a mesh to the gizmo with the specified `billboard` state, `skeleton` and `material`. If `billboard` is `true`, the mesh will rotate to always face the camera. Call this function during `godot.EditorSpatialGizmo.redraw`.
	**/
	@:native("AddMesh")
	public overload function addMesh(mesh:godot.ArrayMesh):Void;

	/**		
		Adds a mesh to the gizmo with the specified `billboard` state, `skeleton` and `material`. If `billboard` is `true`, the mesh will rotate to always face the camera. Call this function during `godot.EditorSpatialGizmo.redraw`.
	**/
	@:native("AddMesh")
	public overload function addMesh(mesh:godot.ArrayMesh, billboard:Bool):Void;

	/**		
		Adds a mesh to the gizmo with the specified `billboard` state, `skeleton` and `material`. If `billboard` is `true`, the mesh will rotate to always face the camera. Call this function during `godot.EditorSpatialGizmo.redraw`.
	**/
	@:native("AddMesh")
	public overload function addMesh(mesh:godot.ArrayMesh, billboard:Bool, skeleton:godot.SkinReference):Void;

	/**		
		Adds a mesh to the gizmo with the specified `billboard` state, `skeleton` and `material`. If `billboard` is `true`, the mesh will rotate to always face the camera. Call this function during `godot.EditorSpatialGizmo.redraw`.
	**/
	@:native("AddMesh")
	public overload function addMesh(mesh:godot.ArrayMesh, billboard:Bool, skeleton:godot.SkinReference, material:godot.Material):Void;
	#end

	/**		
		Adds the specified `segments` to the gizmo's collision shape for picking. Call this function during `godot.EditorSpatialGizmo.redraw`.
	**/
	@:native("AddCollisionSegments")
	public function addCollisionSegments(segments:haxe.Rest<godot.Vector3>):Void;

	/**		
		Adds collision triangles to the gizmo for picking. A `godot.TriangleMesh` can be generated from a regular `godot.Mesh` too. Call this function during `godot.EditorSpatialGizmo.redraw`.
	**/
	@:native("AddCollisionTriangles")
	public function addCollisionTriangles(triangles:godot.TriangleMesh):Void;

	#if doc_gen
	/**		
		Adds an unscaled billboard for visualization. Call this function during `godot.EditorSpatialGizmo.redraw`.
		
		@param modulate If the parameter is null, then the default value is new Color(1, 1, 1, 1)
	**/
	@:native("AddUnscaledBillboard")
	public function addUnscaledBillboard(material:godot.Material, ?defaultScale:Single, ?modulate:Null<godot.Color>):Void;
	#else
	/**		
		Adds an unscaled billboard for visualization. Call this function during `godot.EditorSpatialGizmo.redraw`.
		
		@param modulate If the parameter is null, then the default value is new Color(1, 1, 1, 1)
	**/
	@:native("AddUnscaledBillboard")
	public overload function addUnscaledBillboard(material:godot.Material):Void;

	/**		
		Adds an unscaled billboard for visualization. Call this function during `godot.EditorSpatialGizmo.redraw`.
		
		@param modulate If the parameter is null, then the default value is new Color(1, 1, 1, 1)
	**/
	@:native("AddUnscaledBillboard")
	public overload function addUnscaledBillboard(material:godot.Material, defaultScale:Single):Void;

	/**		
		Adds an unscaled billboard for visualization. Call this function during `godot.EditorSpatialGizmo.redraw`.
		
		@param modulate If the parameter is null, then the default value is new Color(1, 1, 1, 1)
	**/
	@:native("AddUnscaledBillboard")
	public overload function addUnscaledBillboard(material:godot.Material, defaultScale:Single, modulate:Nullable1<godot.Color>):Void;
	#end

	#if doc_gen
	/**		
		Adds a list of handles (points) which can be used to deform the object being edited.
		
		There are virtual functions which will be called upon editing of these handles. Call this function during `godot.EditorSpatialGizmo.redraw`.
	**/
	@:native("AddHandles")
	public function addHandles(handles:std.Array<godot.Vector3>, material:godot.Material, ?billboard:Bool, ?secondary:Bool):Void;
	#else
	/**		
		Adds a list of handles (points) which can be used to deform the object being edited.
		
		There are virtual functions which will be called upon editing of these handles. Call this function during `godot.EditorSpatialGizmo.redraw`.
	**/
	@:native("AddHandles")
	public overload function addHandles(handles:HaxeArray<godot.Vector3>, material:godot.Material):Void;

	/**		
		Adds a list of handles (points) which can be used to deform the object being edited.
		
		There are virtual functions which will be called upon editing of these handles. Call this function during `godot.EditorSpatialGizmo.redraw`.
	**/
	@:native("AddHandles")
	public overload function addHandles(handles:HaxeArray<godot.Vector3>, material:godot.Material, billboard:Bool):Void;

	/**		
		Adds a list of handles (points) which can be used to deform the object being edited.
		
		There are virtual functions which will be called upon editing of these handles. Call this function during `godot.EditorSpatialGizmo.redraw`.
	**/
	@:native("AddHandles")
	public overload function addHandles(handles:HaxeArray<godot.Vector3>, material:godot.Material, billboard:Bool, secondary:Bool):Void;
	#end

	/**		
		Sets the reference `godot.Spatial` node for the gizmo. `node` must inherit from `godot.Spatial`.
	**/
	@:native("SetSpatialNode")
	public function setSpatialNode(node:godot.Node):Void;

	/**		
		Returns the Spatial node associated with this gizmo.
	**/
	@:native("GetSpatialNode")
	public function getSpatialNode():godot.Spatial;

	/**		
		Returns the `godot.EditorSpatialGizmoPlugin` that owns this gizmo. It's useful to retrieve materials using `godot.EditorSpatialGizmoPlugin.getMaterial`.
	**/
	@:native("GetPlugin")
	public function getPlugin():godot.EditorSpatialGizmoPlugin;

	/**		
		Removes everything in the gizmo including meshes, collisions and handles.
	**/
	@:native("Clear")
	public function clear():Void;

	/**		
		Sets the gizmo's hidden state. If `true`, the gizmo will be hidden. If `false`, it will be shown.
	**/
	@:native("SetHidden")
	public function setHidden(hidden:Bool):Void;
}
