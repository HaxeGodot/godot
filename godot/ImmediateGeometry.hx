// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Draws simple geometry from code. Uses a drawing mode similar to OpenGL 1.x.

See also `godot.ArrayMesh`, `godot.MeshDataTool` and `godot.SurfaceTool` for procedural geometry generation.

Note: ImmediateGeometry3D is best suited to small amounts of mesh data that change every frame. It will be slow when handling large amounts of mesh data. If mesh data doesn't change often, use `godot.ArrayMesh`, `godot.MeshDataTool` or `godot.SurfaceTool` instead.

Note: Godot uses clockwise [https://learnopengl.com/Advanced-OpenGL/Face-culling](winding order) for front faces of triangle primitive modes.

Note: In case of missing points when handling large amounts of mesh data, try increasing its buffer size limit under .
**/
@:libType
@:csNative
@:native("Godot.ImmediateGeometry")
@:autoBuild(godot.Godot.buildUserClass())
extern class ImmediateGeometry extends godot.GeometryInstance {
	@:native("new")
	public function new():Void;

	#if doc_gen
	/**		
		Begin drawing (and optionally pass a texture override). When done call `godot.ImmediateGeometry.end`. For more information on how this works, search for `glBegin()` and `glEnd()` references.
		
		For the type of primitive, see the `godot.Mesh_PrimitiveType` enum.
	**/
	@:native("Begin")
	public function begin(primitive:godot.Mesh_PrimitiveType, ?texture:godot.Texture):Void;
	#else
	/**		
		Begin drawing (and optionally pass a texture override). When done call `godot.ImmediateGeometry.end`. For more information on how this works, search for `glBegin()` and `glEnd()` references.
		
		For the type of primitive, see the `godot.Mesh_PrimitiveType` enum.
	**/
	@:native("Begin")
	public overload function begin(primitive:godot.Mesh_PrimitiveType):Void;

	/**		
		Begin drawing (and optionally pass a texture override). When done call `godot.ImmediateGeometry.end`. For more information on how this works, search for `glBegin()` and `glEnd()` references.
		
		For the type of primitive, see the `godot.Mesh_PrimitiveType` enum.
	**/
	@:native("Begin")
	public overload function begin(primitive:godot.Mesh_PrimitiveType, texture:godot.Texture):Void;
	#end

	/**		
		The next vertex's normal.
	**/
	@:native("SetNormal")
	public function setNormal(normal:godot.Vector3):Void;

	/**		
		The next vertex's tangent (and binormal facing).
	**/
	@:native("SetTangent")
	public function setTangent(tangent:godot.Plane):Void;

	/**		
		The current drawing color.
	**/
	@:native("SetColor")
	public function setColor(color:godot.Color):Void;

	/**		
		The next vertex's UV.
	**/
	@:native("SetUv")
	public function setUv(uv:godot.Vector2):Void;

	/**		
		The next vertex's second layer UV.
	**/
	@:native("SetUv2")
	public function setUv2(uv:godot.Vector2):Void;

	/**		
		Adds a vertex in local coordinate space with the currently set color/uv/etc.
	**/
	@:native("AddVertex")
	public function addVertex(position:godot.Vector3):Void;

	#if doc_gen
	/**		
		Simple helper to draw an UV sphere with given latitude, longitude and radius.
	**/
	@:native("AddSphere")
	public function addSphere(lats:Int, lons:Int, radius:Single, ?addUv:Bool):Void;
	#else
	/**		
		Simple helper to draw an UV sphere with given latitude, longitude and radius.
	**/
	@:native("AddSphere")
	public overload function addSphere(lats:Int, lons:Int, radius:Single):Void;

	/**		
		Simple helper to draw an UV sphere with given latitude, longitude and radius.
	**/
	@:native("AddSphere")
	public overload function addSphere(lats:Int, lons:Int, radius:Single, addUv:Bool):Void;
	#end

	/**		
		Ends a drawing context and displays the results.
	**/
	@:native("End")
	public function end():Void;

	/**		
		Clears everything that was drawn using begin/end.
	**/
	@:native("Clear")
	public function clear():Void;
}
