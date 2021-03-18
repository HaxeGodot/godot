// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
A 2D game object, with a transform (position, rotation, and scale). All 2D nodes, including physics objects and sprites, inherit from Node2D. Use Node2D as a parent node to move, scale and rotate children in a 2D project. Also gives control of the node's render order.
**/
@:libType
@:csNative
@:native("Godot.Node2D")
@:autoBuild(godot.Godot.buildUserClass())
extern class Node2D extends godot.CanvasItem {
	/**		
		If `true`, the node's Z index is relative to its parent's Z index. If this node's Z index is 2 and its parent's effective Z index is 3, then this node's effective Z index will be 2 + 3 = 5.
	**/
	@:native("ZAsRelative")
	public var zAsRelative:Bool;

	/**		
		Z index. Controls the order in which the nodes render. A node with a higher Z index will display in front of others.
	**/
	@:native("ZIndex")
	public var zIndex:Int;

	/**		
		Global `godot.Transform2D`.
	**/
	@:native("GlobalTransform")
	public var globalTransform:godot.Transform2D;

	/**		
		Global scale.
	**/
	@:native("GlobalScale")
	public var globalScale:godot.Vector2;

	/**		
		Global rotation in degrees.
	**/
	@:native("GlobalRotationDegrees")
	public var globalRotationDegrees:Single;

	/**		
		Global rotation in radians.
	**/
	@:native("GlobalRotation")
	public var globalRotation:Single;

	/**		
		Global position.
	**/
	@:native("GlobalPosition")
	public var globalPosition:godot.Vector2;

	/**		
		Local `godot.Transform2D`.
	**/
	@:native("Transform")
	public var transform:godot.Transform2D;

	/**		
		The node's scale. Unscaled value: `(1, 1)`.
	**/
	@:native("Scale")
	public var scale:godot.Vector2;

	/**		
		Rotation in degrees, relative to the node's parent.
	**/
	@:native("RotationDegrees")
	public var rotationDegrees:Single;

	/**		
		Rotation in radians, relative to the node's parent.
	**/
	@:native("Rotation")
	public var rotation:Single;

	/**		
		Position, relative to the node's parent.
	**/
	@:native("Position")
	public var position:godot.Vector2;

	@:native("new")
	public function new():Void;

	@:native("SetPosition")
	public function setPosition(position:godot.Vector2):Void;

	@:native("SetRotation")
	public function setRotation(radians:Single):Void;

	@:native("SetRotationDegrees")
	public function setRotationDegrees(degrees:Single):Void;

	@:native("SetScale")
	public function setScale(scale:godot.Vector2):Void;

	@:native("GetPosition")
	public function getPosition():godot.Vector2;

	@:native("GetRotation")
	public function getRotation():Single;

	@:native("GetRotationDegrees")
	public function getRotationDegrees():Single;

	@:native("GetScale")
	public function getScale():godot.Vector2;

	/**		
		Applies a rotation to the node, in radians, starting from its current rotation.
	**/
	@:native("Rotate")
	public function rotate(radians:Single):Void;

	#if doc_gen
	/**		
		Applies a local translation on the node's X axis based on the `godot.Node._Process`'s `delta`. If `scaled` is `false`, normalizes the movement.
	**/
	@:native("MoveLocalX")
	public function moveLocalX(delta:Single, ?scaled:Bool):Void;
	#else
	/**		
		Applies a local translation on the node's X axis based on the `godot.Node._Process`'s `delta`. If `scaled` is `false`, normalizes the movement.
	**/
	@:native("MoveLocalX")
	public overload function moveLocalX(delta:Single):Void;

	/**		
		Applies a local translation on the node's X axis based on the `godot.Node._Process`'s `delta`. If `scaled` is `false`, normalizes the movement.
	**/
	@:native("MoveLocalX")
	public overload function moveLocalX(delta:Single, scaled:Bool):Void;
	#end

	#if doc_gen
	/**		
		Applies a local translation on the node's Y axis based on the `godot.Node._Process`'s `delta`. If `scaled` is `false`, normalizes the movement.
	**/
	@:native("MoveLocalY")
	public function moveLocalY(delta:Single, ?scaled:Bool):Void;
	#else
	/**		
		Applies a local translation on the node's Y axis based on the `godot.Node._Process`'s `delta`. If `scaled` is `false`, normalizes the movement.
	**/
	@:native("MoveLocalY")
	public overload function moveLocalY(delta:Single):Void;

	/**		
		Applies a local translation on the node's Y axis based on the `godot.Node._Process`'s `delta`. If `scaled` is `false`, normalizes the movement.
	**/
	@:native("MoveLocalY")
	public overload function moveLocalY(delta:Single, scaled:Bool):Void;
	#end

	/**		
		Translates the node by the given `offset` in local coordinates.
	**/
	@:native("Translate")
	public function translate(offset:godot.Vector2):Void;

	/**		
		Adds the `offset` vector to the node's global position.
	**/
	@:native("GlobalTranslate")
	public function globalTranslate(offset:godot.Vector2):Void;

	/**		
		Multiplies the current scale by the `ratio` vector.
	**/
	@:native("ApplyScale")
	public function applyScale(ratio:godot.Vector2):Void;

	@:native("SetGlobalPosition")
	public function setGlobalPosition(position:godot.Vector2):Void;

	@:native("GetGlobalPosition")
	public function getGlobalPosition():godot.Vector2;

	@:native("SetGlobalRotation")
	public function setGlobalRotation(radians:Single):Void;

	@:native("GetGlobalRotation")
	public function getGlobalRotation():Single;

	@:native("SetGlobalRotationDegrees")
	public function setGlobalRotationDegrees(degrees:Single):Void;

	@:native("GetGlobalRotationDegrees")
	public function getGlobalRotationDegrees():Single;

	@:native("SetGlobalScale")
	public function setGlobalScale(scale:godot.Vector2):Void;

	@:native("GetGlobalScale")
	public function getGlobalScale():godot.Vector2;

	@:native("SetTransform")
	public function setTransform(xform:godot.Transform2D):Void;

	@:native("SetGlobalTransform")
	public function setGlobalTransform(xform:godot.Transform2D):Void;

	/**		
		Rotates the node so it points towards the `point`, which is expected to use global coordinates.
	**/
	@:native("LookAt")
	public function lookAt(point:godot.Vector2):Void;

	/**		
		Returns the angle between the node and the `point` in radians.
	**/
	@:native("GetAngleTo")
	public function getAngleTo(point:godot.Vector2):Single;

	/**		
		Transforms the provided global position into a position in local coordinate space. The output will be local relative to the `godot.Node2D` it is called on. e.g. It is appropriate for determining the positions of child nodes, but it is not appropriate for determining its own position relative to its parent.
	**/
	@:native("ToLocal")
	public function toLocal(globalPoint:godot.Vector2):godot.Vector2;

	/**		
		Transforms the provided local position into a position in global coordinate space. The input is expected to be local relative to the `godot.Node2D` it is called on. e.g. Applying this method to the positions of child nodes will correctly transform their positions into the global coordinate space, but applying it to a node's own position will give an incorrect result, as it will incorporate the node's own transformation into its global position.
	**/
	@:native("ToGlobal")
	public function toGlobal(localPoint:godot.Vector2):godot.Vector2;

	@:native("SetZIndex")
	public function setZIndex(zIndex:Int):Void;

	@:native("GetZIndex")
	public function getZIndex():Int;

	@:native("SetZAsRelative")
	public function setZAsRelative(enable:Bool):Void;

	@:native("IsZRelative")
	public function isZRelative():Bool;

	/**		
		Returns the `godot.Transform2D` relative to this node's parent.
	**/
	@:native("GetRelativeTransformToParent")
	public function getRelativeTransformToParent(parent:godot.Node):godot.Transform2D;
}
