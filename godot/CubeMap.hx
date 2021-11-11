// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
A 6-sided 3D texture typically used for faking reflections. It can be used to make an object look as if it's reflecting its surroundings. This usually delivers much better performance than other reflection methods.
**/
@:libType
@:csNative
@:native("Godot.CubeMap")
@:autoBuild(godot.Godot.buildUserClass())
extern class CubeMap extends godot.Resource {
	/**		
		The lossy storage quality of the `godot.CubeMap` if the storage mode is set to `godot.CubeMap_Storage.compressLossy`.
	**/
	@:native("LossyStorageQuality")
	public var lossyStorageQuality:Single;

	/**		
		The `godot.CubeMap`'s storage mode. See `godot.CubeMap_Storage` constants.
	**/
	@:native("StorageMode")
	public var storageMode:godot.CubeMap_Storage;

	/**		
		The render flags for the `godot.CubeMap`. See the `godot.CubeMap_FlagsEnum` constants for details.
	**/
	@:native("Flags")
	public var flags:UInt;

	@:native("new")
	public function new():Void;

	/**		
		Returns the `godot.CubeMap`'s width.
	**/
	@:native("GetWidth")
	public function getWidth():Int;

	/**		
		Returns the `godot.CubeMap`'s height.
	**/
	@:native("GetHeight")
	public function getHeight():Int;

	@:native("SetFlags")
	public function setFlags(flags:UInt):Void;

	@:native("GetFlags")
	public function getFlags():UInt;

	/**		
		Sets an `godot.Image` for a side of the `godot.CubeMap` using one of the `godot.CubeMap_Side` constants.
	**/
	@:native("SetSide")
	public function setSide(side:godot.CubeMap_Side, image:godot.Image):Void;

	/**		
		Returns an `godot.Image` for a side of the `godot.CubeMap` using one of the `godot.CubeMap_Side` constants.
	**/
	@:native("GetSide")
	public function getSide(side:godot.CubeMap_Side):godot.Image;

	@:native("SetStorage")
	public function setStorage(mode:godot.CubeMap_Storage):Void;

	@:native("GetStorage")
	public function getStorage():godot.CubeMap_Storage;

	@:native("SetLossyStorageQuality")
	public function setLossyStorageQuality(quality:Single):Void;

	@:native("GetLossyStorageQuality")
	public function getLossyStorageQuality():Single;
}
