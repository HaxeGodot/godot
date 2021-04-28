// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Texture-based nine-patch `godot.StyleBox`, in a way similar to `godot.NinePatchRect`. This stylebox performs a 3×3 scaling of a texture, where only the center cell is fully stretched. This makes it possible to design bordered styles regardless of the stylebox's size.
**/
@:libType
@:csNative
@:native("Godot.StyleBoxTexture")
@:autoBuild(godot.Godot.buildUserClass())
extern class StyleBoxTexture extends godot.StyleBox {
	/**
		`texture_changed` signal.
		
		Emitted when the stylebox's texture is changed.
	**/
	public var onTextureChanged(get, never):Signal<Void->Void>;
	@:dox(hide) @:noCompletion inline function get_onTextureChanged():Signal<Void->Void> {
		return new Signal(this, "texture_changed", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	/**		
		If `true`, the nine-patch texture's center tile will be drawn.
	**/
	@:native("DrawCenter")
	public var drawCenter:Bool;

	/**		
		Modulates the color of the texture when this style box is drawn.
	**/
	@:native("ModulateColor")
	public var modulateColor:godot.Color;

	/**		
		Controls how the stylebox's texture will be stretched or tiled vertically. See `godot.StyleBoxTexture_AxisStretchMode` for possible values.
	**/
	@:native("AxisStretchVertical")
	public var axisStretchVertical:godot.StyleBoxTexture_AxisStretchMode;

	/**		
		Controls how the stylebox's texture will be stretched or tiled horizontally. See `godot.StyleBoxTexture_AxisStretchMode` for possible values.
	**/
	@:native("AxisStretchHorizontal")
	public var axisStretchHorizontal:godot.StyleBoxTexture_AxisStretchMode;

	/**		
		Expands the bottom margin of this style box when drawing, causing it to be drawn larger than requested.
	**/
	@:native("ExpandMarginBottom")
	public var expandMarginBottom:Single;

	/**		
		Expands the top margin of this style box when drawing, causing it to be drawn larger than requested.
	**/
	@:native("ExpandMarginTop")
	public var expandMarginTop:Single;

	/**		
		Expands the right margin of this style box when drawing, causing it to be drawn larger than requested.
	**/
	@:native("ExpandMarginRight")
	public var expandMarginRight:Single;

	/**		
		Expands the left margin of this style box when drawing, causing it to be drawn larger than requested.
	**/
	@:native("ExpandMarginLeft")
	public var expandMarginLeft:Single;

	/**		
		Increases the bottom margin of the 3×3 texture box.
		
		A higher value means more of the source texture is considered to be part of the bottom border of the 3×3 box.
		
		This is also the value used as fallback for `godot.StyleBox.contentMarginBottom` if it is negative.
	**/
	@:native("MarginBottom")
	public var marginBottom:Single;

	/**		
		Increases the top margin of the 3×3 texture box.
		
		A higher value means more of the source texture is considered to be part of the top border of the 3×3 box.
		
		This is also the value used as fallback for `godot.StyleBox.contentMarginTop` if it is negative.
	**/
	@:native("MarginTop")
	public var marginTop:Single;

	/**		
		Increases the right margin of the 3×3 texture box.
		
		A higher value means more of the source texture is considered to be part of the right border of the 3×3 box.
		
		This is also the value used as fallback for `godot.StyleBox.contentMarginRight` if it is negative.
	**/
	@:native("MarginRight")
	public var marginRight:Single;

	/**		
		Increases the left margin of the 3×3 texture box.
		
		A higher value means more of the source texture is considered to be part of the left border of the 3×3 box.
		
		This is also the value used as fallback for `godot.StyleBox.contentMarginLeft` if it is negative.
	**/
	@:native("MarginLeft")
	public var marginLeft:Single;

	/**		
		Species a sub-region of the texture to use.
		
		This is equivalent to first wrapping the texture in an `godot.AtlasTexture` with the same region.
	**/
	@:native("RegionRect")
	public var regionRect:godot.Rect2;

	/**		
		The normal map to use when drawing this style box.
		
		Note: Godot expects the normal map to use X+, Y-, and Z+ coordinates. See [http://wiki.polycount.com/wiki/Normal_Map_Technical_Details#Common_Swizzle_Coordinates](this page) for a comparison of normal map coordinates expected by popular engines.
	**/
	@:native("NormalMap")
	public var normalMap:godot.Texture;

	/**		
		The texture to use when drawing this style box.
	**/
	@:native("Texture")
	public var texture:godot.Texture;

	@:native("new")
	public function new():Void;

	@:native("SetTexture")
	public function setTexture(texture:godot.Texture):Void;

	@:native("GetTexture")
	public function getTexture():godot.Texture;

	@:native("SetNormalMap")
	public function setNormalMap(normalMap:godot.Texture):Void;

	@:native("GetNormalMap")
	public function getNormalMap():godot.Texture;

	/**		
		Sets the margin to `size` pixels for the given `margin`. See `godot.Margin` for possible values.
	**/
	@:native("SetMarginSize")
	public function setMarginSize(margin:godot.Margin, size:Single):Void;

	/**		
		Returns the size of the given `margin`. See `godot.Margin` for possible values.
	**/
	@:native("GetMarginSize")
	public function getMarginSize(margin:godot.Margin):Single;

	/**		
		Sets the expand margin to `size` pixels for the given `margin`. See `godot.Margin` for possible values.
	**/
	@:native("SetExpandMarginSize")
	public function setExpandMarginSize(margin:godot.Margin, size:Single):Void;

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
	@:native("GetExpandMarginSize")
	public function getExpandMarginSize(margin:godot.Margin):Single;

	@:native("SetRegionRect")
	public function setRegionRect(region:godot.Rect2):Void;

	@:native("GetRegionRect")
	public function getRegionRect():godot.Rect2;

	@:native("SetDrawCenter")
	public function setDrawCenter(enable:Bool):Void;

	@:native("IsDrawCenterEnabled")
	public function isDrawCenterEnabled():Bool;

	@:native("SetModulate")
	public function setModulate(color:godot.Color):Void;

	@:native("GetModulate")
	public function getModulate():godot.Color;

	@:native("SetHAxisStretchMode")
	public function setHAxisStretchMode(mode:godot.StyleBoxTexture_AxisStretchMode):Void;

	@:native("GetHAxisStretchMode")
	public function getHAxisStretchMode():godot.StyleBoxTexture_AxisStretchMode;

	@:native("SetVAxisStretchMode")
	public function setVAxisStretchMode(mode:godot.StyleBoxTexture_AxisStretchMode):Void;

	@:native("GetVAxisStretchMode")
	public function getVAxisStretchMode():godot.StyleBoxTexture_AxisStretchMode;
}
