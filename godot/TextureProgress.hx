// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
TextureProgress works like `godot.ProgressBar`, but uses up to 3 textures instead of Godot's `godot.Theme` resource. It can be used to create horizontal, vertical and radial progress bars.
**/
@:libType
@:csNative
@:native("Godot.TextureProgress")
@:autoBuild(godot.Godot.buildUserClass())
extern class TextureProgress extends godot.Range {
	/**		
		The height of the 9-patch's bottom row. A margin of 16 means the 9-slice's bottom corners and side will have a height of 16 pixels. You can set all 4 margin values individually to create panels with non-uniform borders.
	**/
	@:native("StretchMarginBottom")
	public var stretchMarginBottom:Int;

	/**		
		The width of the 9-patch's right column.
	**/
	@:native("StretchMarginRight")
	public var stretchMarginRight:Int;

	/**		
		The height of the 9-patch's top row.
	**/
	@:native("StretchMarginTop")
	public var stretchMarginTop:Int;

	/**		
		The width of the 9-patch's left column.
	**/
	@:native("StretchMarginLeft")
	public var stretchMarginLeft:Int;

	/**		
		If `true`, Godot treats the bar's textures like in `godot.NinePatchRect`. Use the `stretch_margin_*` properties like `godot.TextureProgress.stretchMarginBottom` to set up the nine patch's 3×3 grid. When using a radial `godot.TextureProgress.fillMode`, this setting will enable stretching.
	**/
	@:native("NinePatchStretch")
	public var ninePatchStretch:Bool;

	/**		
		Offsets `godot.TextureProgress.textureProgress_` if `godot.TextureProgress.fillMode` is `godot.TextureProgress_FillModeEnum.clockwise` or `godot.TextureProgress_FillModeEnum.counterClockwise`.
	**/
	@:native("RadialCenterOffset")
	public var radialCenterOffset:godot.Vector2;

	/**		
		Upper limit for the fill of `godot.TextureProgress.textureProgress_` if `godot.TextureProgress.fillMode` is `godot.TextureProgress_FillModeEnum.clockwise` or `godot.TextureProgress_FillModeEnum.counterClockwise`. When the node's `value` is equal to its `max_value`, the texture fills up to this angle.
		
		See `godot.Range.value`, `godot.Range.maxValue`.
	**/
	@:native("RadialFillDegrees")
	public var radialFillDegrees:Single;

	/**		
		Starting angle for the fill of `godot.TextureProgress.textureProgress_` if `godot.TextureProgress.fillMode` is `godot.TextureProgress_FillModeEnum.clockwise` or `godot.TextureProgress_FillModeEnum.counterClockwise`. When the node's `value` is equal to its `min_value`, the texture doesn't show up at all. When the `value` increases, the texture fills and tends towards `godot.TextureProgress.radialFillDegrees`.
	**/
	@:native("RadialInitialAngle")
	public var radialInitialAngle:Single;

	/**		
		Multiplies the color of the bar's `texture_progress` texture.
	**/
	@:native("TintProgress")
	public var tintProgress:godot.Color;

	/**		
		Multiplies the color of the bar's `texture_over` texture. The effect is similar to `godot.CanvasItem.modulate`, except it only affects this specific texture instead of the entire node.
	**/
	@:native("TintOver")
	public var tintOver:godot.Color;

	/**		
		Multiplies the color of the bar's `texture_under` texture.
	**/
	@:native("TintUnder")
	public var tintUnder:godot.Color;

	/**		
		The fill direction. See `godot.TextureProgress_FillModeEnum` for possible values.
	**/
	@:native("FillMode")
	public var fillMode:Int;

	/**		
		The offset of `godot.TextureProgress.textureProgress_`. Useful for `godot.TextureProgress.textureOver` and `godot.TextureProgress.textureUnder` with fancy borders, to avoid transparent margins in your progress texture.
	**/
	@:native("TextureProgressOffset")
	public var textureProgressOffset:godot.Vector2;

	/**		
		`godot.Texture` that clips based on the node's `value` and `godot.TextureProgress.fillMode`. As `value` increased, the texture fills up. It shows entirely when `value` reaches `max_value`. It doesn't show at all if `value` is equal to `min_value`.
		
		The `value` property comes from `godot.Range`. See `godot.Range.value`, `godot.Range.minValue`, `godot.Range.maxValue`.
	**/
	@:native("TextureProgress_")
	public var textureProgress_:godot.Texture;

	/**		
		`godot.Texture` that draws over the progress bar. Use it to add highlights or an upper-frame that hides part of `godot.TextureProgress.textureProgress_`.
	**/
	@:native("TextureOver")
	public var textureOver:godot.Texture;

	/**		
		`godot.Texture` that draws under the progress bar. The bar's background.
	**/
	@:native("TextureUnder")
	public var textureUnder:godot.Texture;

	@:native("new")
	public function new():Void;

	@:native("SetUnderTexture")
	public function setUnderTexture(tex:godot.Texture):Void;

	@:native("GetUnderTexture")
	public function getUnderTexture():godot.Texture;

	@:native("SetProgressTexture")
	public function setProgressTexture(tex:godot.Texture):Void;

	@:native("GetProgressTexture")
	public function getProgressTexture():godot.Texture;

	@:native("SetOverTexture")
	public function setOverTexture(tex:godot.Texture):Void;

	@:native("GetOverTexture")
	public function getOverTexture():godot.Texture;

	@:native("SetFillMode")
	public function setFillMode(mode:Int):Void;

	@:native("GetFillMode")
	public function getFillMode():Int;

	@:native("SetTintUnder")
	public function setTintUnder(tint:godot.Color):Void;

	@:native("GetTintUnder")
	public function getTintUnder():godot.Color;

	@:native("SetTintProgress")
	public function setTintProgress(tint:godot.Color):Void;

	@:native("GetTintProgress")
	public function getTintProgress():godot.Color;

	@:native("SetTintOver")
	public function setTintOver(tint:godot.Color):Void;

	@:native("GetTintOver")
	public function getTintOver():godot.Color;

	@:native("SetTextureProgressOffset")
	public function setTextureProgressOffset(offset:godot.Vector2):Void;

	@:native("GetTextureProgressOffset")
	public function getTextureProgressOffset():godot.Vector2;

	@:native("SetRadialInitialAngle")
	public function setRadialInitialAngle(mode:Single):Void;

	@:native("GetRadialInitialAngle")
	public function getRadialInitialAngle():Single;

	@:native("SetRadialCenterOffset")
	public function setRadialCenterOffset(mode:godot.Vector2):Void;

	@:native("GetRadialCenterOffset")
	public function getRadialCenterOffset():godot.Vector2;

	@:native("SetFillDegrees")
	public function setFillDegrees(mode:Single):Void;

	@:native("GetFillDegrees")
	public function getFillDegrees():Single;

	@:native("SetStretchMargin")
	public function setStretchMargin(margin:godot.Margin, value:Int):Void;

	@:native("GetStretchMargin")
	public function getStretchMargin(margin:godot.Margin):Int;

	@:native("SetNinePatchStretch")
	public function setNinePatchStretch(stretch:Bool):Void;

	@:native("GetNinePatchStretch")
	public function getNinePatchStretch():Bool;
}
