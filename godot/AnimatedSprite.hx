// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Animations are created using a `godot.SpriteFrames` resource, which can be configured in the editor via the SpriteFrames panel.

Note: You can associate a set of normal maps by creating additional `godot.SpriteFrames` resources with a `_normal` suffix. For example, having 2 `godot.SpriteFrames` resources `run` and `run_normal` will make it so the `run` animation uses the normal map.
**/
@:libType
@:csNative
@:native("Godot.AnimatedSprite")
@:autoBuild(godot.Godot.buildUserClass())
extern class AnimatedSprite extends godot.Node2D {
	/**
		`animation_finished` signal.
		
		Emitted when the animation is finished (when it plays the last frame). If the animation is looping, this signal is emitted every time the last frame is drawn.
	**/
	public var onAnimationFinished(get, never):Signal<Void->Void>;
	@:dox(hide) inline function get_onAnimationFinished():Signal<Void->Void> {
		return new Signal(this, "animation_finished", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	/**
		`frame_changed` signal.
		
		Emitted when `frame` changed.
	**/
	public var onFrameChanged(get, never):Signal<Void->Void>;
	@:dox(hide) inline function get_onFrameChanged():Signal<Void->Void> {
		return new Signal(this, "frame_changed", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	/**		
		If `true`, texture is flipped vertically.
	**/
	@:native("FlipV")
	public var flipV:Bool;

	/**		
		If `true`, texture is flipped horizontally.
	**/
	@:native("FlipH")
	public var flipH:Bool;

	/**		
		The texture's drawing offset.
	**/
	@:native("Offset")
	public var offset:godot.Vector2;

	/**		
		If `true`, texture will be centered.
	**/
	@:native("Centered")
	public var centered:Bool;

	/**		
		If `true`, the `godot.AnimatedSprite.animation` is currently playing.
	**/
	@:native("Playing")
	public var playing:Bool;

	/**		
		The animation speed is multiplied by this value.
	**/
	@:native("SpeedScale")
	public var speedScale:Single;

	/**		
		The displayed animation frame's index.
	**/
	@:native("Frame")
	public var frame:Int;

	/**		
		The current animation from the `frames` resource. If this value changes, the `frame` counter is reset.
	**/
	@:native("Animation")
	public var animation:std.String;

	/**		
		The `godot.SpriteFrames` resource containing the animation(s).
	**/
	@:native("Frames")
	public var frames:godot.SpriteFrames;

	@:native("new")
	public function new():Void;

	@:native("SetSpriteFrames")
	public function setSpriteFrames(spriteFrames:godot.SpriteFrames):Void;

	@:native("GetSpriteFrames")
	public function getSpriteFrames():godot.SpriteFrames;

	@:native("SetAnimation")
	public function setAnimation(animation:std.String):Void;

	@:native("GetAnimation")
	public function getAnimation():std.String;

	#if doc_gen
	/**		
		Plays the animation named `anim`. If no `anim` is provided, the current animation is played. If `backwards` is `true`, the animation will be played in reverse.
	**/
	@:native("Play")
	public function play(?anim:std.String, ?backwards:Bool):Void;
	#else
	/**		
		Plays the animation named `anim`. If no `anim` is provided, the current animation is played. If `backwards` is `true`, the animation will be played in reverse.
	**/
	@:native("Play")
	public overload function play():Void;

	/**		
		Plays the animation named `anim`. If no `anim` is provided, the current animation is played. If `backwards` is `true`, the animation will be played in reverse.
	**/
	@:native("Play")
	public overload function play(anim:std.String):Void;

	/**		
		Plays the animation named `anim`. If no `anim` is provided, the current animation is played. If `backwards` is `true`, the animation will be played in reverse.
	**/
	@:native("Play")
	public overload function play(anim:std.String, backwards:Bool):Void;
	#end

	/**		
		Stops the current animation (does not reset the frame counter).
	**/
	@:native("Stop")
	public function stop():Void;

	/**		
		Returns `true` if an animation is currently being played.
	**/
	@:native("IsPlaying")
	public function isPlaying():Bool;

	@:native("SetCentered")
	public function setCentered(centered:Bool):Void;

	@:native("IsCentered")
	public function isCentered():Bool;

	@:native("SetOffset")
	public function setOffset(offset:godot.Vector2):Void;

	@:native("GetOffset")
	public function getOffset():godot.Vector2;

	@:native("SetFlipH")
	public function setFlipH(flipH:Bool):Void;

	@:native("IsFlippedH")
	public function isFlippedH():Bool;

	@:native("SetFlipV")
	public function setFlipV(flipV:Bool):Void;

	@:native("IsFlippedV")
	public function isFlippedV():Bool;

	@:native("SetFrame")
	public function setFrame(frame:Int):Void;

	@:native("GetFrame")
	public function getFrame():Int;

	@:native("SetSpeedScale")
	public function setSpeedScale(speedScale:Single):Void;

	@:native("GetSpeedScale")
	public function getSpeedScale():Single;
}
