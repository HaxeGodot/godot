// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
RemoteTransform2D pushes its own `godot.Transform2D` to another `godot.CanvasItem` derived Node (called the remote node) in the scene.

It can be set to update another Node's position, rotation and/or scale. It can use either global or local coordinates.
**/
@:libType
@:csNative
@:native("Godot.RemoteTransform2D")
@:autoBuild(godot.Godot.buildUserClass())
extern class RemoteTransform2D extends godot.Node2D {
	/**		
		If `true`, the remote node's scale is updated.
	**/
	@:native("UpdateScale")
	public var updateScale:Bool;

	/**		
		If `true`, the remote node's rotation is updated.
	**/
	@:native("UpdateRotation")
	public var updateRotation:Bool;

	/**		
		If `true`, the remote node's position is updated.
	**/
	@:native("UpdatePosition")
	public var updatePosition:Bool;

	/**		
		If `true`, global coordinates are used. If `false`, local coordinates are used.
	**/
	@:native("UseGlobalCoordinates")
	public var useGlobalCoordinates:Bool;

	/**		
		The `godot.NodePath` to the remote node, relative to the RemoteTransform2D's position in the scene.
	**/
	@:native("RemotePath")
	public var remotePath:godot.NodePath;

	@:native("new")
	public function new():Void;

	@:native("SetRemoteNode")
	public function setRemoteNode(path:godot.NodePath):Void;

	@:native("GetRemoteNode")
	public function getRemoteNode():godot.NodePath;

	/**		
		`godot.RemoteTransform2D` caches the remote node. It may not notice if the remote node disappears; `godot.RemoteTransform2D.forceUpdateCache` forces it to update the cache again.
	**/
	@:native("ForceUpdateCache")
	public function forceUpdateCache():Void;

	@:native("SetUseGlobalCoordinates")
	public function setUseGlobalCoordinates(useGlobalCoordinates:Bool):Void;

	@:native("GetUseGlobalCoordinates")
	public function getUseGlobalCoordinates():Bool;

	@:native("SetUpdatePosition")
	public function setUpdatePosition(updateRemotePosition:Bool):Void;

	@:native("GetUpdatePosition")
	public function getUpdatePosition():Bool;

	@:native("SetUpdateRotation")
	public function setUpdateRotation(updateRemoteRotation:Bool):Void;

	@:native("GetUpdateRotation")
	public function getUpdateRotation():Bool;

	@:native("SetUpdateScale")
	public function setUpdateScale(updateRemoteScale:Bool):Void;

	@:native("GetUpdateScale")
	public function getUpdateScale():Bool;
}
