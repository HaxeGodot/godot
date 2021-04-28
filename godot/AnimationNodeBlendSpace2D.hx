// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
A resource to add to an `godot.AnimationNodeBlendTree`.

This node allows you to blend linearly between three animations using a `godot.Vector2` weight.

You can add vertices to the blend space with `godot.AnimationNodeBlendSpace2D.addBlendPoint` and automatically triangulate it by setting `godot.AnimationNodeBlendSpace2D.autoTriangles` to `true`. Otherwise, use `godot.AnimationNodeBlendSpace2D.addTriangle` and `godot.AnimationNodeBlendSpace2D.removeTriangle` to create up the blend space by hand.
**/
@:libType
@:csNative
@:native("Godot.AnimationNodeBlendSpace2D")
@:autoBuild(godot.Godot.buildUserClass())
extern class AnimationNodeBlendSpace2D extends godot.AnimationRootNode {
	/**
		`triangles_updated` signal.
		
		Emitted every time the blend space's triangles are created, removed, or when one of their vertices changes position.
	**/
	public var onTrianglesUpdated(get, never):Signal<Void->Void>;
	@:dox(hide) @:noCompletion inline function get_onTrianglesUpdated():Signal<Void->Void> {
		return new Signal(this, "triangles_updated", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	/**		
		Controls the interpolation between animations. See `godot.AnimationNodeBlendSpace2D_BlendModeEnum` constants.
	**/
	@:native("BlendMode")
	public var blendMode:godot.AnimationNodeBlendSpace2D_BlendModeEnum;

	/**		
		Name of the blend space's Y axis.
	**/
	@:native("YLabel")
	public var yLabel:std.String;

	/**		
		Name of the blend space's X axis.
	**/
	@:native("XLabel")
	public var xLabel:std.String;

	/**		
		Position increment to snap to when moving a point.
	**/
	@:native("Snap")
	public var snap:godot.Vector2;

	/**		
		The blend space's X and Y axes' upper limit for the points' position. See `godot.AnimationNodeBlendSpace2D.addBlendPoint`.
	**/
	@:native("MaxSpace")
	public var maxSpace:godot.Vector2;

	/**		
		The blend space's X and Y axes' lower limit for the points' position. See `godot.AnimationNodeBlendSpace2D.addBlendPoint`.
	**/
	@:native("MinSpace")
	public var minSpace:godot.Vector2;

	@:native("Triangles")
	public var triangles:cs.NativeArray<Int>;

	@:native("BlendPoint63__pos")
	public var blendPoint63__pos:godot.Vector2;

	@:native("BlendPoint63__node")
	public var blendPoint63__node:godot.AnimationRootNode;

	@:native("BlendPoint62__pos")
	public var blendPoint62__pos:godot.Vector2;

	@:native("BlendPoint62__node")
	public var blendPoint62__node:godot.AnimationRootNode;

	@:native("BlendPoint61__pos")
	public var blendPoint61__pos:godot.Vector2;

	@:native("BlendPoint61__node")
	public var blendPoint61__node:godot.AnimationRootNode;

	@:native("BlendPoint60__pos")
	public var blendPoint60__pos:godot.Vector2;

	@:native("BlendPoint60__node")
	public var blendPoint60__node:godot.AnimationRootNode;

	@:native("BlendPoint59__pos")
	public var blendPoint59__pos:godot.Vector2;

	@:native("BlendPoint59__node")
	public var blendPoint59__node:godot.AnimationRootNode;

	@:native("BlendPoint58__pos")
	public var blendPoint58__pos:godot.Vector2;

	@:native("BlendPoint58__node")
	public var blendPoint58__node:godot.AnimationRootNode;

	@:native("BlendPoint57__pos")
	public var blendPoint57__pos:godot.Vector2;

	@:native("BlendPoint57__node")
	public var blendPoint57__node:godot.AnimationRootNode;

	@:native("BlendPoint56__pos")
	public var blendPoint56__pos:godot.Vector2;

	@:native("BlendPoint56__node")
	public var blendPoint56__node:godot.AnimationRootNode;

	@:native("BlendPoint55__pos")
	public var blendPoint55__pos:godot.Vector2;

	@:native("BlendPoint55__node")
	public var blendPoint55__node:godot.AnimationRootNode;

	@:native("BlendPoint54__pos")
	public var blendPoint54__pos:godot.Vector2;

	@:native("BlendPoint54__node")
	public var blendPoint54__node:godot.AnimationRootNode;

	@:native("BlendPoint53__pos")
	public var blendPoint53__pos:godot.Vector2;

	@:native("BlendPoint53__node")
	public var blendPoint53__node:godot.AnimationRootNode;

	@:native("BlendPoint52__pos")
	public var blendPoint52__pos:godot.Vector2;

	@:native("BlendPoint52__node")
	public var blendPoint52__node:godot.AnimationRootNode;

	@:native("BlendPoint51__pos")
	public var blendPoint51__pos:godot.Vector2;

	@:native("BlendPoint51__node")
	public var blendPoint51__node:godot.AnimationRootNode;

	@:native("BlendPoint50__pos")
	public var blendPoint50__pos:godot.Vector2;

	@:native("BlendPoint50__node")
	public var blendPoint50__node:godot.AnimationRootNode;

	@:native("BlendPoint49__pos")
	public var blendPoint49__pos:godot.Vector2;

	@:native("BlendPoint49__node")
	public var blendPoint49__node:godot.AnimationRootNode;

	@:native("BlendPoint48__pos")
	public var blendPoint48__pos:godot.Vector2;

	@:native("BlendPoint48__node")
	public var blendPoint48__node:godot.AnimationRootNode;

	@:native("BlendPoint47__pos")
	public var blendPoint47__pos:godot.Vector2;

	@:native("BlendPoint47__node")
	public var blendPoint47__node:godot.AnimationRootNode;

	@:native("BlendPoint46__pos")
	public var blendPoint46__pos:godot.Vector2;

	@:native("BlendPoint46__node")
	public var blendPoint46__node:godot.AnimationRootNode;

	@:native("BlendPoint45__pos")
	public var blendPoint45__pos:godot.Vector2;

	@:native("BlendPoint45__node")
	public var blendPoint45__node:godot.AnimationRootNode;

	@:native("BlendPoint44__pos")
	public var blendPoint44__pos:godot.Vector2;

	@:native("BlendPoint44__node")
	public var blendPoint44__node:godot.AnimationRootNode;

	@:native("BlendPoint43__pos")
	public var blendPoint43__pos:godot.Vector2;

	@:native("BlendPoint43__node")
	public var blendPoint43__node:godot.AnimationRootNode;

	@:native("BlendPoint42__pos")
	public var blendPoint42__pos:godot.Vector2;

	@:native("BlendPoint42__node")
	public var blendPoint42__node:godot.AnimationRootNode;

	@:native("BlendPoint41__pos")
	public var blendPoint41__pos:godot.Vector2;

	@:native("BlendPoint41__node")
	public var blendPoint41__node:godot.AnimationRootNode;

	@:native("BlendPoint40__pos")
	public var blendPoint40__pos:godot.Vector2;

	@:native("BlendPoint40__node")
	public var blendPoint40__node:godot.AnimationRootNode;

	@:native("BlendPoint39__pos")
	public var blendPoint39__pos:godot.Vector2;

	@:native("BlendPoint39__node")
	public var blendPoint39__node:godot.AnimationRootNode;

	@:native("BlendPoint38__pos")
	public var blendPoint38__pos:godot.Vector2;

	@:native("BlendPoint38__node")
	public var blendPoint38__node:godot.AnimationRootNode;

	@:native("BlendPoint37__pos")
	public var blendPoint37__pos:godot.Vector2;

	@:native("BlendPoint37__node")
	public var blendPoint37__node:godot.AnimationRootNode;

	@:native("BlendPoint36__pos")
	public var blendPoint36__pos:godot.Vector2;

	@:native("BlendPoint36__node")
	public var blendPoint36__node:godot.AnimationRootNode;

	@:native("BlendPoint35__pos")
	public var blendPoint35__pos:godot.Vector2;

	@:native("BlendPoint35__node")
	public var blendPoint35__node:godot.AnimationRootNode;

	@:native("BlendPoint34__pos")
	public var blendPoint34__pos:godot.Vector2;

	@:native("BlendPoint34__node")
	public var blendPoint34__node:godot.AnimationRootNode;

	@:native("BlendPoint33__pos")
	public var blendPoint33__pos:godot.Vector2;

	@:native("BlendPoint33__node")
	public var blendPoint33__node:godot.AnimationRootNode;

	@:native("BlendPoint32__pos")
	public var blendPoint32__pos:godot.Vector2;

	@:native("BlendPoint32__node")
	public var blendPoint32__node:godot.AnimationRootNode;

	@:native("BlendPoint31__pos")
	public var blendPoint31__pos:godot.Vector2;

	@:native("BlendPoint31__node")
	public var blendPoint31__node:godot.AnimationRootNode;

	@:native("BlendPoint30__pos")
	public var blendPoint30__pos:godot.Vector2;

	@:native("BlendPoint30__node")
	public var blendPoint30__node:godot.AnimationRootNode;

	@:native("BlendPoint29__pos")
	public var blendPoint29__pos:godot.Vector2;

	@:native("BlendPoint29__node")
	public var blendPoint29__node:godot.AnimationRootNode;

	@:native("BlendPoint28__pos")
	public var blendPoint28__pos:godot.Vector2;

	@:native("BlendPoint28__node")
	public var blendPoint28__node:godot.AnimationRootNode;

	@:native("BlendPoint27__pos")
	public var blendPoint27__pos:godot.Vector2;

	@:native("BlendPoint27__node")
	public var blendPoint27__node:godot.AnimationRootNode;

	@:native("BlendPoint26__pos")
	public var blendPoint26__pos:godot.Vector2;

	@:native("BlendPoint26__node")
	public var blendPoint26__node:godot.AnimationRootNode;

	@:native("BlendPoint25__pos")
	public var blendPoint25__pos:godot.Vector2;

	@:native("BlendPoint25__node")
	public var blendPoint25__node:godot.AnimationRootNode;

	@:native("BlendPoint24__pos")
	public var blendPoint24__pos:godot.Vector2;

	@:native("BlendPoint24__node")
	public var blendPoint24__node:godot.AnimationRootNode;

	@:native("BlendPoint23__pos")
	public var blendPoint23__pos:godot.Vector2;

	@:native("BlendPoint23__node")
	public var blendPoint23__node:godot.AnimationRootNode;

	@:native("BlendPoint22__pos")
	public var blendPoint22__pos:godot.Vector2;

	@:native("BlendPoint22__node")
	public var blendPoint22__node:godot.AnimationRootNode;

	@:native("BlendPoint21__pos")
	public var blendPoint21__pos:godot.Vector2;

	@:native("BlendPoint21__node")
	public var blendPoint21__node:godot.AnimationRootNode;

	@:native("BlendPoint20__pos")
	public var blendPoint20__pos:godot.Vector2;

	@:native("BlendPoint20__node")
	public var blendPoint20__node:godot.AnimationRootNode;

	@:native("BlendPoint19__pos")
	public var blendPoint19__pos:godot.Vector2;

	@:native("BlendPoint19__node")
	public var blendPoint19__node:godot.AnimationRootNode;

	@:native("BlendPoint18__pos")
	public var blendPoint18__pos:godot.Vector2;

	@:native("BlendPoint18__node")
	public var blendPoint18__node:godot.AnimationRootNode;

	@:native("BlendPoint17__pos")
	public var blendPoint17__pos:godot.Vector2;

	@:native("BlendPoint17__node")
	public var blendPoint17__node:godot.AnimationRootNode;

	@:native("BlendPoint16__pos")
	public var blendPoint16__pos:godot.Vector2;

	@:native("BlendPoint16__node")
	public var blendPoint16__node:godot.AnimationRootNode;

	@:native("BlendPoint15__pos")
	public var blendPoint15__pos:godot.Vector2;

	@:native("BlendPoint15__node")
	public var blendPoint15__node:godot.AnimationRootNode;

	@:native("BlendPoint14__pos")
	public var blendPoint14__pos:godot.Vector2;

	@:native("BlendPoint14__node")
	public var blendPoint14__node:godot.AnimationRootNode;

	@:native("BlendPoint13__pos")
	public var blendPoint13__pos:godot.Vector2;

	@:native("BlendPoint13__node")
	public var blendPoint13__node:godot.AnimationRootNode;

	@:native("BlendPoint12__pos")
	public var blendPoint12__pos:godot.Vector2;

	@:native("BlendPoint12__node")
	public var blendPoint12__node:godot.AnimationRootNode;

	@:native("BlendPoint11__pos")
	public var blendPoint11__pos:godot.Vector2;

	@:native("BlendPoint11__node")
	public var blendPoint11__node:godot.AnimationRootNode;

	@:native("BlendPoint10__pos")
	public var blendPoint10__pos:godot.Vector2;

	@:native("BlendPoint10__node")
	public var blendPoint10__node:godot.AnimationRootNode;

	@:native("BlendPoint9__pos")
	public var blendPoint9__pos:godot.Vector2;

	@:native("BlendPoint9__node")
	public var blendPoint9__node:godot.AnimationRootNode;

	@:native("BlendPoint8__pos")
	public var blendPoint8__pos:godot.Vector2;

	@:native("BlendPoint8__node")
	public var blendPoint8__node:godot.AnimationRootNode;

	@:native("BlendPoint7__pos")
	public var blendPoint7__pos:godot.Vector2;

	@:native("BlendPoint7__node")
	public var blendPoint7__node:godot.AnimationRootNode;

	@:native("BlendPoint6__pos")
	public var blendPoint6__pos:godot.Vector2;

	@:native("BlendPoint6__node")
	public var blendPoint6__node:godot.AnimationRootNode;

	@:native("BlendPoint5__pos")
	public var blendPoint5__pos:godot.Vector2;

	@:native("BlendPoint5__node")
	public var blendPoint5__node:godot.AnimationRootNode;

	@:native("BlendPoint4__pos")
	public var blendPoint4__pos:godot.Vector2;

	@:native("BlendPoint4__node")
	public var blendPoint4__node:godot.AnimationRootNode;

	@:native("BlendPoint3__pos")
	public var blendPoint3__pos:godot.Vector2;

	@:native("BlendPoint3__node")
	public var blendPoint3__node:godot.AnimationRootNode;

	@:native("BlendPoint2__pos")
	public var blendPoint2__pos:godot.Vector2;

	@:native("BlendPoint2__node")
	public var blendPoint2__node:godot.AnimationRootNode;

	@:native("BlendPoint1__pos")
	public var blendPoint1__pos:godot.Vector2;

	@:native("BlendPoint1__node")
	public var blendPoint1__node:godot.AnimationRootNode;

	@:native("BlendPoint0__pos")
	public var blendPoint0__pos:godot.Vector2;

	@:native("BlendPoint0__node")
	public var blendPoint0__node:godot.AnimationRootNode;

	/**		
		If `true`, the blend space is triangulated automatically. The mesh updates every time you add or remove points with `godot.AnimationNodeBlendSpace2D.addBlendPoint` and `godot.AnimationNodeBlendSpace2D.removeBlendPoint`.
	**/
	@:native("AutoTriangles")
	public var autoTriangles:Bool;

	@:native("new")
	public function new():Void;

	#if doc_gen
	/**		
		Adds a new point that represents a `node` at the position set by `pos`. You can insert it at a specific index using the `at_index` argument. If you use the default value for `at_index`, the point is inserted at the end of the blend points array.
	**/
	@:native("AddBlendPoint")
	public function addBlendPoint(node:godot.AnimationRootNode, pos:godot.Vector2, ?atIndex:Int):Void;
	#else
	/**		
		Adds a new point that represents a `node` at the position set by `pos`. You can insert it at a specific index using the `at_index` argument. If you use the default value for `at_index`, the point is inserted at the end of the blend points array.
	**/
	@:native("AddBlendPoint")
	public overload function addBlendPoint(node:godot.AnimationRootNode, pos:godot.Vector2):Void;

	/**		
		Adds a new point that represents a `node` at the position set by `pos`. You can insert it at a specific index using the `at_index` argument. If you use the default value for `at_index`, the point is inserted at the end of the blend points array.
	**/
	@:native("AddBlendPoint")
	public overload function addBlendPoint(node:godot.AnimationRootNode, pos:godot.Vector2, atIndex:Int):Void;
	#end

	/**		
		Updates the position of the point at index `point` on the blend axis.
	**/
	@:native("SetBlendPointPosition")
	public function setBlendPointPosition(point:Int, pos:godot.Vector2):Void;

	/**		
		Returns the position of the point at index `point`.
	**/
	@:native("GetBlendPointPosition")
	public function getBlendPointPosition(point:Int):godot.Vector2;

	/**		
		Changes the `godot.AnimationNode` referenced by the point at index `point`.
	**/
	@:native("SetBlendPointNode")
	public function setBlendPointNode(point:Int, node:godot.AnimationRootNode):Void;

	/**		
		Returns the `godot.AnimationRootNode` referenced by the point at index `point`.
	**/
	@:native("GetBlendPointNode")
	public function getBlendPointNode(point:Int):godot.AnimationRootNode;

	/**		
		Removes the point at index `point` from the blend space.
	**/
	@:native("RemoveBlendPoint")
	public function removeBlendPoint(point:Int):Void;

	/**		
		Returns the number of points in the blend space.
	**/
	@:native("GetBlendPointCount")
	public function getBlendPointCount():Int;

	#if doc_gen
	/**		
		Creates a new triangle using three points `x`, `y`, and `z`. Triangles can overlap. You can insert the triangle at a specific index using the `at_index` argument. If you use the default value for `at_index`, the point is inserted at the end of the blend points array.
	**/
	@:native("AddTriangle")
	public function addTriangle(x:Int, y:Int, z:Int, ?atIndex:Int):Void;
	#else
	/**		
		Creates a new triangle using three points `x`, `y`, and `z`. Triangles can overlap. You can insert the triangle at a specific index using the `at_index` argument. If you use the default value for `at_index`, the point is inserted at the end of the blend points array.
	**/
	@:native("AddTriangle")
	public overload function addTriangle(x:Int, y:Int, z:Int):Void;

	/**		
		Creates a new triangle using three points `x`, `y`, and `z`. Triangles can overlap. You can insert the triangle at a specific index using the `at_index` argument. If you use the default value for `at_index`, the point is inserted at the end of the blend points array.
	**/
	@:native("AddTriangle")
	public overload function addTriangle(x:Int, y:Int, z:Int, atIndex:Int):Void;
	#end

	/**		
		Returns the position of the point at index `point` in the triangle of index `triangle`.
	**/
	@:native("GetTrianglePoint")
	public function getTrianglePoint(triangle:Int, point:Int):Int;

	/**		
		Removes the triangle at index `triangle` from the blend space.
	**/
	@:native("RemoveTriangle")
	public function removeTriangle(triangle:Int):Void;

	/**		
		Returns the number of triangles in the blend space.
	**/
	@:native("GetTriangleCount")
	public function getTriangleCount():Int;

	@:native("SetMinSpace")
	public function setMinSpace(minSpace:godot.Vector2):Void;

	@:native("GetMinSpace")
	public function getMinSpace():godot.Vector2;

	@:native("SetMaxSpace")
	public function setMaxSpace(maxSpace:godot.Vector2):Void;

	@:native("GetMaxSpace")
	public function getMaxSpace():godot.Vector2;

	@:native("SetSnap")
	public function setSnap(snap:godot.Vector2):Void;

	@:native("GetSnap")
	public function getSnap():godot.Vector2;

	@:native("SetXLabel")
	public function setXLabel(text:std.String):Void;

	@:native("GetXLabel")
	public function getXLabel():std.String;

	@:native("SetYLabel")
	public function setYLabel(text:std.String):Void;

	@:native("GetYLabel")
	public function getYLabel():std.String;

	@:native("SetAutoTriangles")
	public function setAutoTriangles(enable:Bool):Void;

	@:native("GetAutoTriangles")
	public function getAutoTriangles():Bool;

	@:native("SetBlendMode")
	public function setBlendMode(mode:godot.AnimationNodeBlendSpace2D_BlendModeEnum):Void;

	@:native("GetBlendMode")
	public function getBlendMode():godot.AnimationNodeBlendSpace2D_BlendModeEnum;
}
