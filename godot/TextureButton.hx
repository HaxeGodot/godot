// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
`godot.TextureButton` has the same functionality as `godot.Button`, except it uses sprites instead of Godot's `godot.Theme` resource. It is faster to create, but it doesn't support localization like more complex `godot.Control`s.

The "normal" state must contain a texture (`godot.TextureButton.textureNormal`); other textures are optional.
**/
@:libType
@:csNative
@:native("Godot.TextureButton")
@:autoBuild(godot.Godot.buildUserClass())
extern class TextureButton extends godot.BaseButton {
	/**		
		Controls the texture's behavior when you resize the node's bounding rectangle, only if `godot.TextureButton.expand` is `true`. Set it to one of the `godot.TextureButton_StretchModeEnum` constants. See the constants to learn more.
	**/
	@:native("StretchMode")
	public var stretchMode:godot.TextureButton_StretchModeEnum;

	/**		
		If `true`, the texture stretches to the edges of the node's bounding rectangle using the `godot.TextureButton.stretchMode`. If `false`, the texture will not scale with the node.
	**/
	@:native("Expand")
	public var expand:Bool;

	/**		
		Pure black and white `godot.BitMap` image to use for click detection. On the mask, white pixels represent the button's clickable area. Use it to create buttons with curved shapes.
	**/
	@:native("TextureClickMask")
	public var textureClickMask:godot.BitMap;

	/**		
		Texture to display when the node has mouse or keyboard focus.
	**/
	@:native("TextureFocused")
	public var textureFocused:godot.Texture;

	/**		
		Texture to display when the node is disabled. See `godot.BaseButton.disabled`.
	**/
	@:native("TextureDisabled")
	public var textureDisabled:godot.Texture;

	/**		
		Texture to display when the mouse hovers the node.
	**/
	@:native("TextureHover")
	public var textureHover:godot.Texture;

	/**		
		Texture to display on mouse down over the node, if the node has keyboard focus and the player presses the Enter key or if the player presses the `godot.BaseButton.shortcut` key.
	**/
	@:native("TexturePressed")
	public var texturePressed:godot.Texture;

	/**		
		Texture to display by default, when the node is not in the disabled, focused, hover or pressed state.
	**/
	@:native("TextureNormal")
	public var textureNormal:godot.Texture;

	@:native("new")
	public function new():Void;

	@:native("SetNormalTexture")
	public function setNormalTexture(texture:godot.Texture):Void;

	@:native("SetPressedTexture")
	public function setPressedTexture(texture:godot.Texture):Void;

	@:native("SetHoverTexture")
	public function setHoverTexture(texture:godot.Texture):Void;

	@:native("SetDisabledTexture")
	public function setDisabledTexture(texture:godot.Texture):Void;

	@:native("SetFocusedTexture")
	public function setFocusedTexture(texture:godot.Texture):Void;

	@:native("SetClickMask")
	public function setClickMask(mask:godot.BitMap):Void;

	@:native("SetExpand")
	public function setExpand(pExpand:Bool):Void;

	@:native("SetStretchMode")
	public function setStretchMode(pMode:godot.TextureButton_StretchModeEnum):Void;

	@:native("GetNormalTexture")
	public function getNormalTexture():godot.Texture;

	@:native("GetPressedTexture")
	public function getPressedTexture():godot.Texture;

	@:native("GetHoverTexture")
	public function getHoverTexture():godot.Texture;

	@:native("GetDisabledTexture")
	public function getDisabledTexture():godot.Texture;

	@:native("GetFocusedTexture")
	public function getFocusedTexture():godot.Texture;

	@:native("GetClickMask")
	public function getClickMask():godot.BitMap;

	@:native("GetExpand")
	public function getExpand():Bool;

	@:native("GetStretchMode")
	public function getStretchMode():godot.TextureButton_StretchModeEnum;
}
