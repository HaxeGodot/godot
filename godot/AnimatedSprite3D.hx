// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Animations are created using a `godot.SpriteFrames` resource, which can be configured in the editor via the SpriteFrames panel.
**/
@:libType
@:csNative
@:native("Godot.AnimatedSprite3D")
@:autoBuild(godot.Godot.buildUserClass())
extern class AnimatedSprite3D extends godot.SpriteBase3D {
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
		If `true`, the `godot.AnimatedSprite3D.animation` is currently playing.
	**/
	@:native("Playing")
	public var playing:Bool;

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
		Plays the animation named `anim`. If no `anim` is provided, the current animation is played.
	**/
	@:native("Play")
	public function play(?anim:std.String):Void;
	#else
	/**		
		Plays the animation named `anim`. If no `anim` is provided, the current animation is played.
	**/
	@:native("Play")
	public overload function play():Void;

	/**		
		Plays the animation named `anim`. If no `anim` is provided, the current animation is played.
	**/
	@:native("Play")
	public overload function play(anim:std.String):Void;
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

	@:native("SetFrame")
	public function setFrame(frame:Int):Void;

	@:native("GetFrame")
	public function getFrame():Int;
}
