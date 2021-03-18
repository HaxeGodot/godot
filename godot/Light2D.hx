// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Casts light in a 2D environment. Light is defined by a (usually grayscale) texture, a color, an energy value, a mode (see constants), and various other parameters (range and shadows-related).

Note: Light2D can also be used as a mask.
**/
@:libType
@:csNative
@:native("Godot.Light2D")
@:autoBuild(godot.Godot.buildUserClass())
extern class Light2D extends godot.Node2D {
	/**		
		The shadow mask. Used with `godot.LightOccluder2D` to cast shadows. Only occluders with a matching light mask will cast shadows.
	**/
	@:native("ShadowItemCullMask")
	public var shadowItemCullMask:Int;

	/**		
		Smoothing value for shadows.
	**/
	@:native("ShadowFilterSmooth")
	public var shadowFilterSmooth:Single;

	/**		
		Shadow filter type. See `godot.Light2D_ShadowFilterEnum` for possible values.
	**/
	@:native("ShadowFilter")
	public var shadowFilter:godot.Light2D_ShadowFilterEnum;

	/**		
		Smooth shadow gradient length.
	**/
	@:native("ShadowGradientLength")
	public var shadowGradientLength:Single;

	/**		
		Shadow buffer size.
	**/
	@:native("ShadowBufferSize")
	public var shadowBufferSize:Int;

	/**		
		`godot.Color` of shadows cast by the Light2D.
	**/
	@:native("ShadowColor")
	public var shadowColor:godot.Color;

	/**		
		If `true`, the Light2D will cast shadows.
	**/
	@:native("ShadowEnabled")
	public var shadowEnabled:Bool;

	/**		
		The layer mask. Only objects with a matching mask will be affected by the Light2D.
	**/
	@:native("RangeItemCullMask")
	public var rangeItemCullMask:Int;

	/**		
		Maximum layer value of objects that are affected by the Light2D.
	**/
	@:native("RangeLayerMax")
	public var rangeLayerMax:Int;

	/**		
		Minimum layer value of objects that are affected by the Light2D.
	**/
	@:native("RangeLayerMin")
	public var rangeLayerMin:Int;

	/**		
		Maximum `z` value of objects that are affected by the Light2D.
	**/
	@:native("RangeZMax")
	public var rangeZMax:Int;

	/**		
		Minimum `z` value of objects that are affected by the Light2D.
	**/
	@:native("RangeZMin")
	public var rangeZMin:Int;

	/**		
		The height of the Light2D. Used with 2D normal mapping.
	**/
	@:native("RangeHeight")
	public var rangeHeight:Single;

	/**		
		The Light2D's mode. See `godot.Light2D_ModeEnum` constants for values.
	**/
	@:native("Mode")
	public var mode:godot.Light2D_ModeEnum;

	/**		
		The Light2D's energy value. The larger the value, the stronger the light.
	**/
	@:native("Energy")
	public var energy:Single;

	/**		
		The Light2D's `godot.Color`.
	**/
	@:native("Color")
	public var color:godot.Color;

	/**		
		The `texture`'s scale factor.
	**/
	@:native("TextureScale")
	public var textureScale:Single;

	/**		
		The offset of the Light2D's `texture`.
	**/
	@:native("Offset")
	public var offset:godot.Vector2;

	/**		
		`godot.Texture` used for the Light2D's appearance.
	**/
	@:native("Texture")
	public var texture:godot.Texture;

	/**		
		If `true`, Light2D will only appear when editing the scene.
	**/
	@:native("EditorOnly")
	public var editorOnly:Bool;

	/**		
		If `true`, Light2D will emit light.
	**/
	@:native("Enabled")
	public var enabled:Bool;

	@:native("new")
	public function new():Void;

	@:native("SetEnabled")
	public function setEnabled(enabled:Bool):Void;

	@:native("IsEnabled")
	public function isEnabled():Bool;

	@:native("SetEditorOnly")
	public function setEditorOnly(editorOnly:Bool):Void;

	@:native("IsEditorOnly")
	public function isEditorOnly():Bool;

	@:native("SetTexture")
	public function setTexture(texture:godot.Texture):Void;

	@:native("GetTexture")
	public function getTexture():godot.Texture;

	@:native("SetTextureOffset")
	public function setTextureOffset(textureOffset:godot.Vector2):Void;

	@:native("GetTextureOffset")
	public function getTextureOffset():godot.Vector2;

	@:native("SetColor")
	public function setColor(color:godot.Color):Void;

	@:native("GetColor")
	public function getColor():godot.Color;

	@:native("SetHeight")
	public function setHeight(height:Single):Void;

	@:native("GetHeight")
	public function getHeight():Single;

	@:native("SetEnergy")
	public function setEnergy(energy:Single):Void;

	@:native("GetEnergy")
	public function getEnergy():Single;

	@:native("SetTextureScale")
	public function setTextureScale(textureScale:Single):Void;

	@:native("GetTextureScale")
	public function getTextureScale():Single;

	@:native("SetZRangeMin")
	public function setZRangeMin(z:Int):Void;

	@:native("GetZRangeMin")
	public function getZRangeMin():Int;

	@:native("SetZRangeMax")
	public function setZRangeMax(z:Int):Void;

	@:native("GetZRangeMax")
	public function getZRangeMax():Int;

	@:native("SetLayerRangeMin")
	public function setLayerRangeMin(layer:Int):Void;

	@:native("GetLayerRangeMin")
	public function getLayerRangeMin():Int;

	@:native("SetLayerRangeMax")
	public function setLayerRangeMax(layer:Int):Void;

	@:native("GetLayerRangeMax")
	public function getLayerRangeMax():Int;

	@:native("SetItemCullMask")
	public function setItemCullMask(itemCullMask:Int):Void;

	@:native("GetItemCullMask")
	public function getItemCullMask():Int;

	@:native("SetItemShadowCullMask")
	public function setItemShadowCullMask(itemShadowCullMask:Int):Void;

	@:native("GetItemShadowCullMask")
	public function getItemShadowCullMask():Int;

	@:native("SetMode")
	public function setMode(mode:godot.Light2D_ModeEnum):Void;

	@:native("GetMode")
	public function getMode():godot.Light2D_ModeEnum;

	@:native("SetShadowEnabled")
	public function setShadowEnabled(enabled:Bool):Void;

	@:native("IsShadowEnabled")
	public function isShadowEnabled():Bool;

	@:native("SetShadowBufferSize")
	public function setShadowBufferSize(size:Int):Void;

	@:native("GetShadowBufferSize")
	public function getShadowBufferSize():Int;

	@:native("SetShadowSmooth")
	public function setShadowSmooth(smooth:Single):Void;

	@:native("GetShadowSmooth")
	public function getShadowSmooth():Single;

	@:native("SetShadowGradientLength")
	public function setShadowGradientLength(multiplier:Single):Void;

	@:native("GetShadowGradientLength")
	public function getShadowGradientLength():Single;

	@:native("SetShadowFilter")
	public function setShadowFilter(filter:godot.Light2D_ShadowFilterEnum):Void;

	@:native("GetShadowFilter")
	public function getShadowFilter():godot.Light2D_ShadowFilterEnum;

	@:native("SetShadowColor")
	public function setShadowColor(shadowColor:godot.Color):Void;

	@:native("GetShadowColor")
	public function getShadowColor():godot.Color;
}
