// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
This `godot.StyleBox` can be used to achieve all kinds of looks without the need of a texture. The following properties are customizable:

- Color

- Border width (individual width for each border)

- Rounded corners (individual radius for each corner)

- Shadow (with blur and offset)

Setting corner radius to high values is allowed. As soon as corners overlap, the stylebox will switch to a relative system. Example:

```

height = 30
corner_radius_top_left = 50
corner_radius_bottom_left = 100

```

The relative system now would take the 1:2 ratio of the two left corners to calculate the actual corner width. Both corners added will never be more than the height. Result:

```

corner_radius_top_left: 10
corner_radius_bottom_left: 20

```
**/
@:libType
@:csNative
@:native("Godot.StyleBoxFlat")
@:autoBuild(godot.Godot.buildUserClass())
extern class StyleBoxFlat extends godot.StyleBox {
	/**		
		This changes the size of the faded ring. Higher values can be used to achieve a "blurry" effect.
	**/
	@:native("AntiAliasingSize")
	public var antiAliasingSize:Int;

	/**		
		Antialiasing draws a small ring around the edges, which fades to transparency. As a result, edges look much smoother. This is only noticeable when using rounded corners.
	**/
	@:native("AntiAliasing")
	public var antiAliasing:Bool;

	/**		
		The shadow offset in pixels. Adjusts the position of the shadow relatively to the stylebox.
	**/
	@:native("ShadowOffset")
	public var shadowOffset:godot.Vector2;

	/**		
		The shadow size in pixels.
	**/
	@:native("ShadowSize")
	public var shadowSize:Int;

	/**		
		The color of the shadow. This has no effect if `godot.StyleBoxFlat.shadowSize` is lower than 1.
	**/
	@:native("ShadowColor")
	public var shadowColor:godot.Color;

	/**		
		Expands the stylebox outside of the control rect on the bottom edge. Useful in combination with `godot.StyleBoxFlat.borderWidthBottom` to draw a border outside the control rect.
	**/
	@:native("ExpandMarginBottom")
	public var expandMarginBottom:Single;

	/**		
		Expands the stylebox outside of the control rect on the top edge. Useful in combination with `godot.StyleBoxFlat.borderWidthTop` to draw a border outside the control rect.
	**/
	@:native("ExpandMarginTop")
	public var expandMarginTop:Single;

	/**		
		Expands the stylebox outside of the control rect on the right edge. Useful in combination with `godot.StyleBoxFlat.borderWidthRight` to draw a border outside the control rect.
	**/
	@:native("ExpandMarginRight")
	public var expandMarginRight:Single;

	/**		
		Expands the stylebox outside of the control rect on the left edge. Useful in combination with `godot.StyleBoxFlat.borderWidthLeft` to draw a border outside the control rect.
	**/
	@:native("ExpandMarginLeft")
	public var expandMarginLeft:Single;

	/**		
		This sets the number of vertices used for each corner. Higher values result in rounder corners but take more processing power to compute. When choosing a value, you should take the corner radius (`godot.StyleBoxFlat.setCornerRadiusAll`) into account.
		
		For corner radii less than 10, `4` or `5` should be enough. For corner radii less than 30, values between `8` and `12` should be enough.
		
		A corner detail of `1` will result in chamfered corners instead of rounded corners, which is useful for some artistic effects.
	**/
	@:native("CornerDetail")
	public var cornerDetail:Int;

	/**		
		The bottom-left corner's radius. If `0`, the corner is not rounded.
	**/
	@:native("CornerRadiusBottomLeft")
	public var cornerRadiusBottomLeft:Int;

	/**		
		The bottom-right corner's radius. If `0`, the corner is not rounded.
	**/
	@:native("CornerRadiusBottomRight")
	public var cornerRadiusBottomRight:Int;

	/**		
		The top-right corner's radius. If `0`, the corner is not rounded.
	**/
	@:native("CornerRadiusTopRight")
	public var cornerRadiusTopRight:Int;

	/**		
		The top-left corner's radius. If `0`, the corner is not rounded.
	**/
	@:native("CornerRadiusTopLeft")
	public var cornerRadiusTopLeft:Int;

	/**		
		If `true`, the border will fade into the background color.
	**/
	@:native("BorderBlend")
	public var borderBlend:Bool;

	/**		
		Sets the color of the border.
	**/
	@:native("BorderColor")
	public var borderColor:godot.Color;

	/**		
		Border width for the bottom border.
	**/
	@:native("BorderWidthBottom")
	public var borderWidthBottom:Int;

	/**		
		Border width for the right border.
	**/
	@:native("BorderWidthRight")
	public var borderWidthRight:Int;

	/**		
		Border width for the top border.
	**/
	@:native("BorderWidthTop")
	public var borderWidthTop:Int;

	/**		
		Border width for the left border.
	**/
	@:native("BorderWidthLeft")
	public var borderWidthLeft:Int;

	/**		
		Toggles drawing of the inner part of the stylebox.
	**/
	@:native("DrawCenter")
	public var drawCenter:Bool;

	/**		
		The background color of the stylebox.
	**/
	@:native("BgColor")
	public var bgColor:godot.Color;

	@:native("new")
	public function new():Void;

	@:native("SetBgColor")
	public function setBgColor(color:godot.Color):Void;

	@:native("GetBgColor")
	public function getBgColor():godot.Color;

	@:native("SetBorderColor")
	public function setBorderColor(color:godot.Color):Void;

	@:native("GetBorderColor")
	public function getBorderColor():godot.Color;

	/**		
		Sets the border width to `width` pixels for all margins.
	**/
	@:native("SetBorderWidthAll")
	public function setBorderWidthAll(width:Int):Void;

	/**		
		Returns the smallest border width out of all four borders.
	**/
	@:native("GetBorderWidthMin")
	public function getBorderWidthMin():Int;

	/**		
		Sets the border width to `width` pixels for the given `margin`. See `godot.Margin` for possible values.
	**/
	@:native("SetBorderWidth")
	public function setBorderWidth(margin:godot.Margin, width:Int):Void;

	/**		
		Returns the given `margin`'s border width. See `godot.Margin` for possible values.
	**/
	@:native("GetBorderWidth")
	public function getBorderWidth(margin:godot.Margin):Int;

	@:native("SetBorderBlend")
	public function setBorderBlend(blend:Bool):Void;

	@:native("GetBorderBlend")
	public function getBorderBlend():Bool;

	/**		
		Sets the corner radius for each corner to `radius_top_left`, `radius_top_right`, `radius_bottom_right`, and `radius_bottom_left` pixels.
	**/
	@:native("SetCornerRadiusIndividual")
	public function setCornerRadiusIndividual(radiusTopLeft:Int, radiusTopRight:Int, radiusBottomRight:Int, radiusBottomLeft:Int):Void;

	/**		
		Sets the corner radius to `radius` pixels for all corners.
	**/
	@:native("SetCornerRadiusAll")
	public function setCornerRadiusAll(radius:Int):Void;

	/**		
		Sets the corner radius to `radius` pixels for the given `corner`. See `godot.Corner` for possible values.
	**/
	@:native("SetCornerRadius")
	public function setCornerRadius(corner:godot.Corner, radius:Int):Void;

	/**		
		Returns the given `corner`'s radius. See `godot.Corner` for possible values.
	**/
	@:native("GetCornerRadius")
	public function getCornerRadius(corner:godot.Corner):Int;

	/**		
		Sets the expand margin to `size` pixels for the given `margin`. See `godot.Margin` for possible values.
	**/
	@:native("SetExpandMargin")
	public function setExpandMargin(margin:godot.Margin, size:Single):Void;

	/**		
		Sets the expand margin to `size` pixels for all margins.
	**/
	@:native("SetExpandMarginAll")
	public function setExpandMarginAll(size:Single):Void;

	/**		
		Sets the expand margin for each margin to `size_left`, `size_top`, `size_right`, and `size_bottom` pixels.
	**/
	@:native("SetExpandMarginIndividual")
	public function setExpandMarginIndividual(sizeLeft:Single, sizeTop:Single, sizeRight:Single, sizeBottom:Single):Void;

	/**		
		Returns the size of the given `margin`'s expand margin. See `godot.Margin` for possible values.
	**/
	@:native("GetExpandMargin")
	public function getExpandMargin(margin:godot.Margin):Single;

	@:native("SetDrawCenter")
	public function setDrawCenter(drawCenter:Bool):Void;

	@:native("IsDrawCenterEnabled")
	public function isDrawCenterEnabled():Bool;

	@:native("SetShadowColor")
	public function setShadowColor(color:godot.Color):Void;

	@:native("GetShadowColor")
	public function getShadowColor():godot.Color;

	@:native("SetShadowSize")
	public function setShadowSize(size:Int):Void;

	@:native("GetShadowSize")
	public function getShadowSize():Int;

	@:native("SetShadowOffset")
	public function setShadowOffset(offset:godot.Vector2):Void;

	@:native("GetShadowOffset")
	public function getShadowOffset():godot.Vector2;

	@:native("SetAntiAliased")
	public function setAntiAliased(antiAliased:Bool):Void;

	@:native("IsAntiAliased")
	public function isAntiAliased():Bool;

	@:native("SetAaSize")
	public function setAaSize(size:Int):Void;

	@:native("GetAaSize")
	public function getAaSize():Int;

	@:native("SetCornerDetail")
	public function setCornerDetail(detail:Int):Void;

	@:native("GetCornerDetail")
	public function getCornerDetail():Int;
}
