// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
`godot.MultiMeshInstance2D` is a specialized node to instance a `godot.MultiMesh` resource in 2D.

Usage is the same as `godot.MultiMeshInstance`.
**/
@:libType
@:csNative
@:native("Godot.MultiMeshInstance2D")
@:autoBuild(godot.Godot.buildUserClass())
extern class MultiMeshInstance2D extends godot.Node2D {
	/**
		`texture_changed` signal.
		
		Emitted when the `texture` is changed.
	**/
	public var onTextureChanged(get, never):Signal<Void->Void>;
	@:dox(hide) inline function get_onTextureChanged():Signal<Void->Void> {
		return new Signal(this, "texture_changed", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	/**		
		The normal map that will be used if using the default `godot.CanvasItemMaterial`.
		
		Note: Godot expects the normal map to use X+, Y-, and Z+ coordinates. See [http://wiki.polycount.com/wiki/Normal_Map_Technical_Details#Common_Swizzle_Coordinates](this page) for a comparison of normal map coordinates expected by popular engines.
	**/
	@:native("NormalMap")
	public var normalMap:godot.Texture;

	/**		
		The `godot.Texture` that will be used if using the default `godot.CanvasItemMaterial`. Can be accessed as `TEXTURE` in CanvasItem shader.
	**/
	@:native("Texture")
	public var texture:godot.Texture;

	/**		
		The `godot.MultiMesh` that will be drawn by the `godot.MultiMeshInstance2D`.
	**/
	@:native("Multimesh")
	public var multimesh:godot.MultiMesh;

	@:native("new")
	public function new():Void;

	@:native("SetMultimesh")
	public function setMultimesh(multimesh:godot.MultiMesh):Void;

	@:native("GetMultimesh")
	public function getMultimesh():godot.MultiMesh;

	@:native("SetTexture")
	public function setTexture(texture:godot.Texture):Void;

	@:native("GetTexture")
	public function getTexture():godot.Texture;

	@:native("SetNormalMap")
	public function setNormalMap(normalMap:godot.Texture):Void;

	@:native("GetNormalMap")
	public function getNormalMap():godot.Texture;
}
