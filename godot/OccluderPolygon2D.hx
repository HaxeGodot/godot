// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Editor facility that helps you draw a 2D polygon used as resource for `godot.LightOccluder2D`.
**/
@:libType
@:csNative
@:native("Godot.OccluderPolygon2D")
@:autoBuild(godot.Godot.buildUserClass())
extern class OccluderPolygon2D extends godot.Resource {
	/**		
		A `godot.Vector2` array with the index for polygon's vertices positions.
		
		Note: The returned value is a copy of the underlying array, rather than a reference.
	**/
	@:native("Polygon")
	public var polygon:cs.NativeArray<godot.Vector2>;

	/**		
		The culling mode to use.
	**/
	@:native("CullMode")
	public var cullMode:godot.OccluderPolygon2D_CullModeEnum;

	/**		
		If `true`, closes the polygon. A closed OccluderPolygon2D occludes the light coming from any direction. An opened OccluderPolygon2D occludes the light only at its outline's direction.
	**/
	@:native("Closed")
	public var closed:Bool;

	@:native("new")
	public function new():Void;

	@:native("SetClosed")
	public function setClosed(closed:Bool):Void;

	@:native("IsClosed")
	public function isClosed():Bool;

	@:native("SetCullMode")
	public function setCullMode(cullMode:godot.OccluderPolygon2D_CullModeEnum):Void;

	@:native("GetCullMode")
	public function getCullMode():godot.OccluderPolygon2D_CullModeEnum;

	@:native("SetPolygon")
	public function setPolygon(polygon:HaxeArray<godot.Vector2>):Void;

	public extern inline function getPolygon():std.Array<godot.Vector2> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetPolygon()", this));
	}
}
