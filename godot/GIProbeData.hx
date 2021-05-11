// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

@:libType
@:csNative
@:native("Godot.GIProbeData")
@:autoBuild(godot.Godot.buildUserClass())
extern class GIProbeData extends godot.Resource {
	@:native("Compress")
	public var compress:Bool;

	@:native("Interior")
	public var interior:Bool;

	@:native("Propagation")
	public var propagation:Single;

	@:native("NormalBias")
	public var normalBias:Single;

	@:native("Bias")
	public var bias:Single;

	@:native("Energy")
	public var energy:Single;

	@:native("DynamicRange")
	public var dynamicRange:Int;

	@:native("DynamicData")
	public var dynamicData:cs.NativeArray<Int>;

	@:native("ToCellXform")
	public var toCellXform:godot.Transform;

	@:native("CellSize")
	public var cellSize:Single;

	@:native("Bounds")
	public var bounds:godot.AABB;

	@:native("new")
	public function new():Void;

	@:native("SetBounds")
	public function setBounds(bounds:godot.AABB):Void;

	@:native("GetBounds")
	public function getBounds():godot.AABB;

	@:native("SetCellSize")
	public function setCellSize(cellSize:Single):Void;

	@:native("GetCellSize")
	public function getCellSize():Single;

	@:native("SetToCellXform")
	public function setToCellXform(toCellXform:godot.Transform):Void;

	@:native("GetToCellXform")
	public function getToCellXform():godot.Transform;

	@:native("SetDynamicData")
	public function setDynamicData(dynamicData:haxe.Rest<Int>):Void;

	public extern inline function getDynamicData():std.Array<Int> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetDynamicData()", this));
	}

	@:native("SetDynamicRange")
	public function setDynamicRange(dynamicRange:Int):Void;

	@:native("GetDynamicRange")
	public function getDynamicRange():Int;

	@:native("SetEnergy")
	public function setEnergy(energy:Single):Void;

	@:native("GetEnergy")
	public function getEnergy():Single;

	@:native("SetBias")
	public function setBias(bias:Single):Void;

	@:native("GetBias")
	public function getBias():Single;

	@:native("SetNormalBias")
	public function setNormalBias(bias:Single):Void;

	@:native("GetNormalBias")
	public function getNormalBias():Single;

	@:native("SetPropagation")
	public function setPropagation(propagation:Single):Void;

	@:native("GetPropagation")
	public function getPropagation():Single;

	@:native("SetInterior")
	public function setInterior(interior:Bool):Void;

	@:native("IsInterior")
	public function isInterior():Bool;

	@:native("SetCompress")
	public function setCompress(compress:Bool):Void;

	@:native("IsCompressed")
	public function isCompressed():Bool;
}
