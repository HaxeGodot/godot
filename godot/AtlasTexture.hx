// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
`godot.Texture` resource aimed at managing big textures files that pack multiple smaller textures. Consists of a `godot.Texture`, a margin that defines the border width, and a region that defines the actual area of the AtlasTexture.
**/
@:libType
@:csNative
@:native("Godot.AtlasTexture")
@:autoBuild(godot.Godot.buildUserClass())
extern class AtlasTexture extends godot.Texture {
	/**		
		If `true`, clips the area outside of the region to avoid bleeding of the surrounding texture pixels.
	**/
	@:native("FilterClip")
	public var filterClip:Bool;

	/**		
		The margin around the region. The `godot.Rect2`'s `Rect2.size` parameter ("w" and "h" in the editor) resizes the texture so it fits within the margin.
	**/
	@:native("Margin")
	public var margin:godot.Rect2;

	/**		
		The AtlasTexture's used region.
	**/
	@:native("Region")
	public var region:godot.Rect2;

	/**		
		The texture that contains the atlas. Can be any `godot.Texture` subtype.
	**/
	@:native("Atlas")
	public var atlas:godot.Texture;

	@:native("new")
	public function new():Void;

	@:native("SetAtlas")
	public function setAtlas(atlas:godot.Texture):Void;

	@:native("GetAtlas")
	public function getAtlas():godot.Texture;

	@:native("SetRegion")
	public function setRegion(region:godot.Rect2):Void;

	@:native("GetRegion")
	public function getRegion():godot.Rect2;

	@:native("SetMargin")
	public function setMargin(margin:godot.Rect2):Void;

	@:native("GetMargin")
	public function getMargin():godot.Rect2;

	@:native("SetFilterClip")
	public function setFilterClip(enable:Bool):Void;

	@:native("HasFilterClip")
	public function hasFilterClip():Bool;
}
