// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
A resource to add to an `godot.AnimationNodeBlendTree`.

This is a virtual axis on which you can add any type of `godot.AnimationNode` using `godot.AnimationNodeBlendSpace1D.addBlendPoint`.

Outputs the linear blend of the two `godot.AnimationNode`s closest to the node's current value.

You can set the extents of the axis using the `godot.AnimationNodeBlendSpace1D.minSpace` and `godot.AnimationNodeBlendSpace1D.maxSpace`.
**/
@:libType
@:csNative
@:native("Godot.AnimationNodeBlendSpace1D")
@:autoBuild(godot.Godot.buildUserClass())
extern class AnimationNodeBlendSpace1D extends godot.AnimationRootNode {
	/**		
		Label of the virtual axis of the blend space.
	**/
	@:native("ValueLabel")
	public var valueLabel:std.String;

	/**		
		Position increment to snap to when moving a point on the axis.
	**/
	@:native("Snap")
	public var snap:Single;

	/**		
		The blend space's axis's upper limit for the points' position. See `godot.AnimationNodeBlendSpace1D.addBlendPoint`.
	**/
	@:native("MaxSpace")
	public var maxSpace:Single;

	/**		
		The blend space's axis's lower limit for the points' position. See `godot.AnimationNodeBlendSpace1D.addBlendPoint`.
	**/
	@:native("MinSpace")
	public var minSpace:Single;

	@:native("BlendPoint63__pos")
	public var blendPoint63__pos:Single;

	@:native("BlendPoint63__node")
	public var blendPoint63__node:godot.AnimationRootNode;

	@:native("BlendPoint62__pos")
	public var blendPoint62__pos:Single;

	@:native("BlendPoint62__node")
	public var blendPoint62__node:godot.AnimationRootNode;

	@:native("BlendPoint61__pos")
	public var blendPoint61__pos:Single;

	@:native("BlendPoint61__node")
	public var blendPoint61__node:godot.AnimationRootNode;

	@:native("BlendPoint60__pos")
	public var blendPoint60__pos:Single;

	@:native("BlendPoint60__node")
	public var blendPoint60__node:godot.AnimationRootNode;

	@:native("BlendPoint59__pos")
	public var blendPoint59__pos:Single;

	@:native("BlendPoint59__node")
	public var blendPoint59__node:godot.AnimationRootNode;

	@:native("BlendPoint58__pos")
	public var blendPoint58__pos:Single;

	@:native("BlendPoint58__node")
	public var blendPoint58__node:godot.AnimationRootNode;

	@:native("BlendPoint57__pos")
	public var blendPoint57__pos:Single;

	@:native("BlendPoint57__node")
	public var blendPoint57__node:godot.AnimationRootNode;

	@:native("BlendPoint56__pos")
	public var blendPoint56__pos:Single;

	@:native("BlendPoint56__node")
	public var blendPoint56__node:godot.AnimationRootNode;

	@:native("BlendPoint55__pos")
	public var blendPoint55__pos:Single;

	@:native("BlendPoint55__node")
	public var blendPoint55__node:godot.AnimationRootNode;

	@:native("BlendPoint54__pos")
	public var blendPoint54__pos:Single;

	@:native("BlendPoint54__node")
	public var blendPoint54__node:godot.AnimationRootNode;

	@:native("BlendPoint53__pos")
	public var blendPoint53__pos:Single;

	@:native("BlendPoint53__node")
	public var blendPoint53__node:godot.AnimationRootNode;

	@:native("BlendPoint52__pos")
	public var blendPoint52__pos:Single;

	@:native("BlendPoint52__node")
	public var blendPoint52__node:godot.AnimationRootNode;

	@:native("BlendPoint51__pos")
	public var blendPoint51__pos:Single;

	@:native("BlendPoint51__node")
	public var blendPoint51__node:godot.AnimationRootNode;

	@:native("BlendPoint50__pos")
	public var blendPoint50__pos:Single;

	@:native("BlendPoint50__node")
	public var blendPoint50__node:godot.AnimationRootNode;

	@:native("BlendPoint49__pos")
	public var blendPoint49__pos:Single;

	@:native("BlendPoint49__node")
	public var blendPoint49__node:godot.AnimationRootNode;

	@:native("BlendPoint48__pos")
	public var blendPoint48__pos:Single;

	@:native("BlendPoint48__node")
	public var blendPoint48__node:godot.AnimationRootNode;

	@:native("BlendPoint47__pos")
	public var blendPoint47__pos:Single;

	@:native("BlendPoint47__node")
	public var blendPoint47__node:godot.AnimationRootNode;

	@:native("BlendPoint46__pos")
	public var blendPoint46__pos:Single;

	@:native("BlendPoint46__node")
	public var blendPoint46__node:godot.AnimationRootNode;

	@:native("BlendPoint45__pos")
	public var blendPoint45__pos:Single;

	@:native("BlendPoint45__node")
	public var blendPoint45__node:godot.AnimationRootNode;

	@:native("BlendPoint44__pos")
	public var blendPoint44__pos:Single;

	@:native("BlendPoint44__node")
	public var blendPoint44__node:godot.AnimationRootNode;

	@:native("BlendPoint43__pos")
	public var blendPoint43__pos:Single;

	@:native("BlendPoint43__node")
	public var blendPoint43__node:godot.AnimationRootNode;

	@:native("BlendPoint42__pos")
	public var blendPoint42__pos:Single;

	@:native("BlendPoint42__node")
	public var blendPoint42__node:godot.AnimationRootNode;

	@:native("BlendPoint41__pos")
	public var blendPoint41__pos:Single;

	@:native("BlendPoint41__node")
	public var blendPoint41__node:godot.AnimationRootNode;

	@:native("BlendPoint40__pos")
	public var blendPoint40__pos:Single;

	@:native("BlendPoint40__node")
	public var blendPoint40__node:godot.AnimationRootNode;

	@:native("BlendPoint39__pos")
	public var blendPoint39__pos:Single;

	@:native("BlendPoint39__node")
	public var blendPoint39__node:godot.AnimationRootNode;

	@:native("BlendPoint38__pos")
	public var blendPoint38__pos:Single;

	@:native("BlendPoint38__node")
	public var blendPoint38__node:godot.AnimationRootNode;

	@:native("BlendPoint37__pos")
	public var blendPoint37__pos:Single;

	@:native("BlendPoint37__node")
	public var blendPoint37__node:godot.AnimationRootNode;

	@:native("BlendPoint36__pos")
	public var blendPoint36__pos:Single;

	@:native("BlendPoint36__node")
	public var blendPoint36__node:godot.AnimationRootNode;

	@:native("BlendPoint35__pos")
	public var blendPoint35__pos:Single;

	@:native("BlendPoint35__node")
	public var blendPoint35__node:godot.AnimationRootNode;

	@:native("BlendPoint34__pos")
	public var blendPoint34__pos:Single;

	@:native("BlendPoint34__node")
	public var blendPoint34__node:godot.AnimationRootNode;

	@:native("BlendPoint33__pos")
	public var blendPoint33__pos:Single;

	@:native("BlendPoint33__node")
	public var blendPoint33__node:godot.AnimationRootNode;

	@:native("BlendPoint32__pos")
	public var blendPoint32__pos:Single;

	@:native("BlendPoint32__node")
	public var blendPoint32__node:godot.AnimationRootNode;

	@:native("BlendPoint31__pos")
	public var blendPoint31__pos:Single;

	@:native("BlendPoint31__node")
	public var blendPoint31__node:godot.AnimationRootNode;

	@:native("BlendPoint30__pos")
	public var blendPoint30__pos:Single;

	@:native("BlendPoint30__node")
	public var blendPoint30__node:godot.AnimationRootNode;

	@:native("BlendPoint29__pos")
	public var blendPoint29__pos:Single;

	@:native("BlendPoint29__node")
	public var blendPoint29__node:godot.AnimationRootNode;

	@:native("BlendPoint28__pos")
	public var blendPoint28__pos:Single;

	@:native("BlendPoint28__node")
	public var blendPoint28__node:godot.AnimationRootNode;

	@:native("BlendPoint27__pos")
	public var blendPoint27__pos:Single;

	@:native("BlendPoint27__node")
	public var blendPoint27__node:godot.AnimationRootNode;

	@:native("BlendPoint26__pos")
	public var blendPoint26__pos:Single;

	@:native("BlendPoint26__node")
	public var blendPoint26__node:godot.AnimationRootNode;

	@:native("BlendPoint25__pos")
	public var blendPoint25__pos:Single;

	@:native("BlendPoint25__node")
	public var blendPoint25__node:godot.AnimationRootNode;

	@:native("BlendPoint24__pos")
	public var blendPoint24__pos:Single;

	@:native("BlendPoint24__node")
	public var blendPoint24__node:godot.AnimationRootNode;

	@:native("BlendPoint23__pos")
	public var blendPoint23__pos:Single;

	@:native("BlendPoint23__node")
	public var blendPoint23__node:godot.AnimationRootNode;

	@:native("BlendPoint22__pos")
	public var blendPoint22__pos:Single;

	@:native("BlendPoint22__node")
	public var blendPoint22__node:godot.AnimationRootNode;

	@:native("BlendPoint21__pos")
	public var blendPoint21__pos:Single;

	@:native("BlendPoint21__node")
	public var blendPoint21__node:godot.AnimationRootNode;

	@:native("BlendPoint20__pos")
	public var blendPoint20__pos:Single;

	@:native("BlendPoint20__node")
	public var blendPoint20__node:godot.AnimationRootNode;

	@:native("BlendPoint19__pos")
	public var blendPoint19__pos:Single;

	@:native("BlendPoint19__node")
	public var blendPoint19__node:godot.AnimationRootNode;

	@:native("BlendPoint18__pos")
	public var blendPoint18__pos:Single;

	@:native("BlendPoint18__node")
	public var blendPoint18__node:godot.AnimationRootNode;

	@:native("BlendPoint17__pos")
	public var blendPoint17__pos:Single;

	@:native("BlendPoint17__node")
	public var blendPoint17__node:godot.AnimationRootNode;

	@:native("BlendPoint16__pos")
	public var blendPoint16__pos:Single;

	@:native("BlendPoint16__node")
	public var blendPoint16__node:godot.AnimationRootNode;

	@:native("BlendPoint15__pos")
	public var blendPoint15__pos:Single;

	@:native("BlendPoint15__node")
	public var blendPoint15__node:godot.AnimationRootNode;

	@:native("BlendPoint14__pos")
	public var blendPoint14__pos:Single;

	@:native("BlendPoint14__node")
	public var blendPoint14__node:godot.AnimationRootNode;

	@:native("BlendPoint13__pos")
	public var blendPoint13__pos:Single;

	@:native("BlendPoint13__node")
	public var blendPoint13__node:godot.AnimationRootNode;

	@:native("BlendPoint12__pos")
	public var blendPoint12__pos:Single;

	@:native("BlendPoint12__node")
	public var blendPoint12__node:godot.AnimationRootNode;

	@:native("BlendPoint11__pos")
	public var blendPoint11__pos:Single;

	@:native("BlendPoint11__node")
	public var blendPoint11__node:godot.AnimationRootNode;

	@:native("BlendPoint10__pos")
	public var blendPoint10__pos:Single;

	@:native("BlendPoint10__node")
	public var blendPoint10__node:godot.AnimationRootNode;

	@:native("BlendPoint9__pos")
	public var blendPoint9__pos:Single;

	@:native("BlendPoint9__node")
	public var blendPoint9__node:godot.AnimationRootNode;

	@:native("BlendPoint8__pos")
	public var blendPoint8__pos:Single;

	@:native("BlendPoint8__node")
	public var blendPoint8__node:godot.AnimationRootNode;

	@:native("BlendPoint7__pos")
	public var blendPoint7__pos:Single;

	@:native("BlendPoint7__node")
	public var blendPoint7__node:godot.AnimationRootNode;

	@:native("BlendPoint6__pos")
	public var blendPoint6__pos:Single;

	@:native("BlendPoint6__node")
	public var blendPoint6__node:godot.AnimationRootNode;

	@:native("BlendPoint5__pos")
	public var blendPoint5__pos:Single;

	@:native("BlendPoint5__node")
	public var blendPoint5__node:godot.AnimationRootNode;

	@:native("BlendPoint4__pos")
	public var blendPoint4__pos:Single;

	@:native("BlendPoint4__node")
	public var blendPoint4__node:godot.AnimationRootNode;

	@:native("BlendPoint3__pos")
	public var blendPoint3__pos:Single;

	@:native("BlendPoint3__node")
	public var blendPoint3__node:godot.AnimationRootNode;

	@:native("BlendPoint2__pos")
	public var blendPoint2__pos:Single;

	@:native("BlendPoint2__node")
	public var blendPoint2__node:godot.AnimationRootNode;

	@:native("BlendPoint1__pos")
	public var blendPoint1__pos:Single;

	@:native("BlendPoint1__node")
	public var blendPoint1__node:godot.AnimationRootNode;

	@:native("BlendPoint0__pos")
	public var blendPoint0__pos:Single;

	@:native("BlendPoint0__node")
	public var blendPoint0__node:godot.AnimationRootNode;

	@:native("new")
	public function new():Void;

	#if doc_gen
	/**		
		Adds a new point that represents a `node` on the virtual axis at a given position set by `pos`. You can insert it at a specific index using the `at_index` argument. If you use the default value for `at_index`, the point is inserted at the end of the blend points array.
	**/
	@:native("AddBlendPoint")
	public function addBlendPoint(node:godot.AnimationRootNode, pos:Single, ?atIndex:Int):Void;
	#else
	/**		
		Adds a new point that represents a `node` on the virtual axis at a given position set by `pos`. You can insert it at a specific index using the `at_index` argument. If you use the default value for `at_index`, the point is inserted at the end of the blend points array.
	**/
	@:native("AddBlendPoint")
	public overload function addBlendPoint(node:godot.AnimationRootNode, pos:Single):Void;

	/**		
		Adds a new point that represents a `node` on the virtual axis at a given position set by `pos`. You can insert it at a specific index using the `at_index` argument. If you use the default value for `at_index`, the point is inserted at the end of the blend points array.
	**/
	@:native("AddBlendPoint")
	public overload function addBlendPoint(node:godot.AnimationRootNode, pos:Single, atIndex:Int):Void;
	#end

	/**		
		Updates the position of the point at index `point` on the blend axis.
	**/
	@:native("SetBlendPointPosition")
	public function setBlendPointPosition(point:Int, pos:Single):Void;

	/**		
		Returns the position of the point at index `point`.
	**/
	@:native("GetBlendPointPosition")
	public function getBlendPointPosition(point:Int):Single;

	/**		
		Changes the `godot.AnimationNode` referenced by the point at index `point`.
	**/
	@:native("SetBlendPointNode")
	public function setBlendPointNode(point:Int, node:godot.AnimationRootNode):Void;

	/**		
		Returns the `godot.AnimationNode` referenced by the point at index `point`.
	**/
	@:native("GetBlendPointNode")
	public function getBlendPointNode(point:Int):godot.AnimationRootNode;

	/**		
		Removes the point at index `point` from the blend axis.
	**/
	@:native("RemoveBlendPoint")
	public function removeBlendPoint(point:Int):Void;

	/**		
		Returns the number of points on the blend axis.
	**/
	@:native("GetBlendPointCount")
	public function getBlendPointCount():Int;

	@:native("SetMinSpace")
	public function setMinSpace(minSpace:Single):Void;

	@:native("GetMinSpace")
	public function getMinSpace():Single;

	@:native("SetMaxSpace")
	public function setMaxSpace(maxSpace:Single):Void;

	@:native("GetMaxSpace")
	public function getMaxSpace():Single;

	@:native("SetSnap")
	public function setSnap(snap:Single):Void;

	@:native("GetSnap")
	public function getSnap():Single;

	@:native("SetValueLabel")
	public function setValueLabel(text:std.String):Void;

	@:native("GetValueLabel")
	public function getValueLabel():std.String;
}
