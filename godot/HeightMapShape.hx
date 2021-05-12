// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Height map shape resource, which can be added to a `godot.PhysicsBody` or `godot.Area`.
**/
@:libType
@:csNative
@:native("Godot.HeightMapShape")
@:autoBuild(godot.Godot.buildUserClass())
extern class HeightMapShape extends godot.Shape {
	/**		
		Height map data, pool array must be of `godot.HeightMapShape.mapWidth` * `godot.HeightMapShape.mapDepth` size.
	**/
	@:native("MapData")
	public var mapData:cs.NativeArray<Single>;

	/**		
		Depth of the height map data. Changing this will resize the `godot.HeightMapShape.mapData`.
	**/
	@:native("MapDepth")
	public var mapDepth:Int;

	/**		
		Width of the height map data. Changing this will resize the `godot.HeightMapShape.mapData`.
	**/
	@:native("MapWidth")
	public var mapWidth:Int;

	@:native("new")
	public function new():Void;

	@:native("SetMapWidth")
	public function setMapWidth(width:Int):Void;

	@:native("GetMapWidth")
	public function getMapWidth():Int;

	@:native("SetMapDepth")
	public function setMapDepth(height:Int):Void;

	@:native("GetMapDepth")
	public function getMapDepth():Int;

	@:native("SetMapData")
	public function setMapData(data:HaxeArray<Single>):Void;

	public extern inline function getMapData():std.Array<Single> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetMapData()", this));
	}
}
