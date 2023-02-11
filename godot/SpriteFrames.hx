// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Sprite frame library for an `godot.AnimatedSprite` or `godot.AnimatedSprite3D` node. Contains frames and animation data for playback.

Note: You can associate a set of normal maps by creating additional `godot.SpriteFrames` resources with a `_normal` suffix. For example, having 2 `godot.SpriteFrames` resources `run` and `run_normal` will make it so the `run` animation uses the normal map.
**/
@:libType
@:csNative
@:native("Godot.SpriteFrames")
@:autoBuild(godot.Godot.buildUserClass())
extern class SpriteFrames extends godot.Resource {
	@:native("Animations")
	public var animations:godot.collections.Array;

	/**		
		Compatibility property, always equals to an empty array.
	**/
	@:native("Frames")
	public var frames:godot.collections.Array;

	@:native("new")
	public function new():Void;

	/**		
		Adds a new animation to the library.
	**/
	@:native("AddAnimation")
	public function addAnimation(anim:std.String):Void;

	/**		
		If `true`, the named animation exists.
	**/
	@:native("HasAnimation")
	public function hasAnimation(anim:std.String):Bool;

	/**		
		Removes the given animation.
	**/
	@:native("RemoveAnimation")
	public function removeAnimation(anim:std.String):Void;

	/**		
		Changes the animation's name to `newname`.
	**/
	@:native("RenameAnimation")
	public function renameAnimation(anim:std.String, newname:std.String):Void;

	/**		
		Returns an array containing the names associated to each animation. Values are placed in alphabetical order.
	**/
	public extern inline function getAnimationNames():std.Array<std.String> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetAnimationNames()", this));
	}

	/**		
		The animation's speed in frames per second.
	**/
	@:native("SetAnimationSpeed")
	public function setAnimationSpeed(anim:std.String, speed:Single):Void;

	/**		
		The animation's speed in frames per second.
	**/
	@:native("GetAnimationSpeed")
	public function getAnimationSpeed(anim:std.String):Single;

	/**		
		If `true`, the animation will loop.
	**/
	@:native("SetAnimationLoop")
	public function setAnimationLoop(anim:std.String, loop:Bool):Void;

	/**		
		Returns `true` if the given animation is configured to loop when it finishes playing. Otherwise, returns `false`.
	**/
	@:native("GetAnimationLoop")
	public function getAnimationLoop(anim:std.String):Bool;

	#if doc_gen
	/**		
		Adds a frame to the given animation.
	**/
	@:native("AddFrame")
	public function addFrame(anim:std.String, frame:godot.Texture, ?atPosition:Int):Void;
	#else
	/**		
		Adds a frame to the given animation.
	**/
	@:native("AddFrame")
	public overload function addFrame(anim:std.String, frame:godot.Texture):Void;

	/**		
		Adds a frame to the given animation.
	**/
	@:native("AddFrame")
	public overload function addFrame(anim:std.String, frame:godot.Texture, atPosition:Int):Void;
	#end

	/**		
		Returns the number of frames in the animation.
	**/
	@:native("GetFrameCount")
	public function getFrameCount(anim:std.String):Int;

	/**		
		Returns the animation's selected frame.
	**/
	@:native("GetFrame")
	public function getFrame(anim:std.String, idx:Int):godot.Texture;

	/**		
		Sets the texture of the given frame.
	**/
	@:native("SetFrame")
	public function setFrame(anim:std.String, idx:Int, txt:godot.Texture):Void;

	/**		
		Removes the animation's selected frame.
	**/
	@:native("RemoveFrame")
	public function removeFrame(anim:std.String, idx:Int):Void;

	/**		
		Removes all frames from the given animation.
	**/
	@:native("Clear")
	public function clear(anim:std.String):Void;

	/**		
		Removes all animations. A "default" animation will be created.
	**/
	@:native("ClearAll")
	public function clearAll():Void;
}
