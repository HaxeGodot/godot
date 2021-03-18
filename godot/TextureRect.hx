// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Used to draw icons and sprites in a user interface. The texture's placement can be controlled with the `godot.TextureRect.stretchMode` property. It can scale, tile, or stay centered inside its bounding rectangle.

Note: You should enable `godot.TextureRect.flipV` when using a TextureRect to display a `godot.ViewportTexture`. Alternatively, you can enable `godot.Viewport.renderTargetVFlip` on the Viewport. Otherwise, the image will appear upside down.
**/
@:libType
@:csNative
@:native("Godot.TextureRect")
@:autoBuild(godot.Godot.buildUserClass())
extern class TextureRect extends godot.Control {
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
		Controls the texture's behavior when resizing the node's bounding rectangle. See `godot.TextureRect_StretchModeEnum`.
	**/
	@:native("StretchMode")
	public var stretchMode:godot.TextureRect_StretchModeEnum;

	/**		
		If `true`, the texture scales to fit its bounding rectangle.
	**/
	@:native("Expand")
	public var expand:Bool;

	/**		
		The node's `godot.Texture` resource.
	**/
	@:native("Texture")
	public var texture:godot.Texture;

	@:native("new")
	public function new():Void;

	@:native("SetTexture")
	public function setTexture(texture:godot.Texture):Void;

	@:native("GetTexture")
	public function getTexture():godot.Texture;

	@:native("SetExpand")
	public function setExpand(enable:Bool):Void;

	@:native("HasExpand")
	public function hasExpand():Bool;

	@:native("SetFlipH")
	public function setFlipH(enable:Bool):Void;

	@:native("IsFlippedH")
	public function isFlippedH():Bool;

	@:native("SetFlipV")
	public function setFlipV(enable:Bool):Void;

	@:native("IsFlippedV")
	public function isFlippedV():Bool;

	@:native("SetStretchMode")
	public function setStretchMode(stretchMode:godot.TextureRect_StretchModeEnum):Void;

	@:native("GetStretchMode")
	public function getStretchMode():godot.TextureRect_StretchModeEnum;
}
