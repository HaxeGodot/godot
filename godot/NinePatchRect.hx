// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Also known as 9-slice panels, NinePatchRect produces clean panels of any size, based on a small texture. To do so, it splits the texture in a 3×3 grid. When you scale the node, it tiles the texture's sides horizontally or vertically, the center on both axes but it doesn't scale or tile the corners.
**/
@:libType
@:csNative
@:native("Godot.NinePatchRect")
@:autoBuild(godot.Godot.buildUserClass())
extern class NinePatchRect extends godot.Control {
	/**
		`texture_changed` signal.
		
		Emitted when the node's texture changes.
	**/
	public var onTextureChanged(get, never):Signal<Void->Void>;
	@:dox(hide) @:noCompletion inline function get_onTextureChanged():Signal<Void->Void> {
		return new Signal(this, "texture_changed", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	/**		
		The stretch mode to use for vertical stretching/tiling. See `godot.NinePatchRect_AxisStretchMode` for possible values.
	**/
	@:native("AxisStretchVertical")
	public var axisStretchVertical:godot.NinePatchRect_AxisStretchMode;

	/**		
		The stretch mode to use for horizontal stretching/tiling. See `godot.NinePatchRect_AxisStretchMode` for possible values.
	**/
	@:native("AxisStretchHorizontal")
	public var axisStretchHorizontal:godot.NinePatchRect_AxisStretchMode;

	/**		
		The height of the 9-slice's bottom row. A margin of 16 means the 9-slice's bottom corners and side will have a height of 16 pixels. You can set all 4 margin values individually to create panels with non-uniform borders.
	**/
	@:native("PatchMarginBottom")
	public var patchMarginBottom:Int;

	/**		
		The width of the 9-slice's right column. A margin of 16 means the 9-slice's right corners and side will have a width of 16 pixels. You can set all 4 margin values individually to create panels with non-uniform borders.
	**/
	@:native("PatchMarginRight")
	public var patchMarginRight:Int;

	/**		
		The height of the 9-slice's top row. A margin of 16 means the 9-slice's top corners and side will have a height of 16 pixels. You can set all 4 margin values individually to create panels with non-uniform borders.
	**/
	@:native("PatchMarginTop")
	public var patchMarginTop:Int;

	/**		
		The width of the 9-slice's left column. A margin of 16 means the 9-slice's left corners and side will have a width of 16 pixels. You can set all 4 margin values individually to create panels with non-uniform borders.
	**/
	@:native("PatchMarginLeft")
	public var patchMarginLeft:Int;

	/**		
		Rectangular region of the texture to sample from. If you're working with an atlas, use this property to define the area the 9-slice should use. All other properties are relative to this one. If the rect is empty, NinePatchRect will use the whole texture.
	**/
	@:native("RegionRect")
	public var regionRect:godot.Rect2;

	/**		
		If `true`, draw the panel's center. Else, only draw the 9-slice's borders.
	**/
	@:native("DrawCenter")
	public var drawCenter:Bool;

	/**		
		The node's texture resource.
	**/
	@:native("Texture")
	public var texture:godot.Texture;

	@:native("new")
	public function new():Void;

	@:native("SetTexture")
	public function setTexture(texture:godot.Texture):Void;

	@:native("GetTexture")
	public function getTexture():godot.Texture;

	/**		
		Sets the size of the margin identified by the given `godot.Margin` constant to `value` in pixels.
	**/
	@:native("SetPatchMargin")
	public function setPatchMargin(margin:godot.Margin, value:Int):Void;

	/**		
		Returns the size of the margin identified by the given `godot.Margin` constant.
	**/
	@:native("GetPatchMargin")
	public function getPatchMargin(margin:godot.Margin):Int;

	@:native("SetRegionRect")
	public function setRegionRect(rect:godot.Rect2):Void;

	@:native("GetRegionRect")
	public function getRegionRect():godot.Rect2;

	@:native("SetDrawCenter")
	public function setDrawCenter(drawCenter:Bool):Void;

	@:native("IsDrawCenterEnabled")
	public function isDrawCenterEnabled():Bool;

	@:native("SetHAxisStretchMode")
	public function setHAxisStretchMode(mode:godot.NinePatchRect_AxisStretchMode):Void;

	@:native("GetHAxisStretchMode")
	public function getHAxisStretchMode():godot.NinePatchRect_AxisStretchMode;

	@:native("SetVAxisStretchMode")
	public function setVAxisStretchMode(mode:godot.NinePatchRect_AxisStretchMode):Void;

	@:native("GetVAxisStretchMode")
	public function getVAxisStretchMode():godot.NinePatchRect_AxisStretchMode;
}
