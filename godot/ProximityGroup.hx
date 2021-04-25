// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
General-purpose proximity detection node.
**/
@:libType
@:csNative
@:native("Godot.ProximityGroup")
@:autoBuild(godot.Godot.buildUserClass())
extern class ProximityGroup extends godot.Spatial {
	/**
		`broadcast` signal.
	**/
	public var onBroadcast(get, never):Signal<(groupName:std.String, parameters:godot.collections.Array)->Void>;
	@:dox(hide) inline function get_onBroadcast():Signal<(groupName:std.String, parameters:godot.collections.Array)->Void> {
		return new Signal(this, "broadcast", Signal.SignalHandlerStringArrayVoid.connectSignal, Signal.SignalHandlerStringArrayVoid.disconnectSignal, Signal.SignalHandlerStringArrayVoid.isSignalConnected);
	}

	@:native("GridRadius")
	public var gridRadius:godot.Vector3;

	@:native("DispatchMode")
	public var dispatchMode:godot.ProximityGroup_DispatchModeEnum;

	@:native("GroupName")
	public var groupName:std.String;

	@:native("new")
	public function new():Void;

	@:native("SetGroupName")
	public function setGroupName(name:std.String):Void;

	@:native("GetGroupName")
	public function getGroupName():std.String;

	@:native("SetDispatchMode")
	public function setDispatchMode(mode:godot.ProximityGroup_DispatchModeEnum):Void;

	@:native("GetDispatchMode")
	public function getDispatchMode():godot.ProximityGroup_DispatchModeEnum;

	@:native("SetGridRadius")
	public function setGridRadius(radius:godot.Vector3):Void;

	@:native("GetGridRadius")
	public function getGridRadius():godot.Vector3;

	@:native("Broadcast")
	public function broadcast(name:std.String, parameters:Dynamic):Void;
}
