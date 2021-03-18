// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
A texture works by registering an image in the video hardware, which then can be used in 3D models or 2D `godot.Sprite` or GUI `godot.Control`.

Textures are often created by loading them from a file. See `@GDScript.load`.

`godot.Texture` is a base for other resources. It cannot be used directly.
**/
@:libType
@:csNative
@:native("Godot.Texture")
@:autoBuild(godot.Godot.buildUserClass())
extern abstract class Texture extends godot.Resource {
	/**		
		The texture's `godot.Texture_FlagsEnum`. `godot.Texture_FlagsEnum` are used to set various properties of the `godot.Texture`.
	**/
	@:native("Flags")
	public var flags:UInt;

	/**		
		Returns the texture width.
	**/
	@:native("GetWidth")
	public function getWidth():Int;

	/**		
		Returns the texture height.
	**/
	@:native("GetHeight")
	public function getHeight():Int;

	/**		
		Returns the texture size.
	**/
	@:native("GetSize")
	public function getSize():godot.Vector2;

	/**		
		Returns `true` if this `godot.Texture` has an alpha channel.
	**/
	@:native("HasAlpha")
	public function hasAlpha():Bool;

	@:native("SetFlags")
	public function setFlags(flags:UInt):Void;

	@:native("GetFlags")
	public function getFlags():UInt;

	#if doc_gen
	/**		
		Draws the texture using a `godot.CanvasItem` with the `godot.VisualServer` API at the specified `position`. Equivalent to `godot.VisualServer.canvasItemAddTextureRect` with a rect at `position` and the size of this `godot.Texture`.
		
		@param modulate If the parameter is null, then the default value is new Color(1, 1, 1, 1)
	**/
	@:native("Draw")
	public function draw(canvasItem:godot.RID, position:godot.Vector2, ?modulate:Nullable1<godot.Color>, ?transpose:Bool, ?normalMap:godot.Texture):Void;
	#else
	/**		
		Draws the texture using a `godot.CanvasItem` with the `godot.VisualServer` API at the specified `position`. Equivalent to `godot.VisualServer.canvasItemAddTextureRect` with a rect at `position` and the size of this `godot.Texture`.
		
		@param modulate If the parameter is null, then the default value is new Color(1, 1, 1, 1)
	**/
	@:native("Draw")
	public overload function draw(canvasItem:godot.RID, position:godot.Vector2):Void;

	/**		
		Draws the texture using a `godot.CanvasItem` with the `godot.VisualServer` API at the specified `position`. Equivalent to `godot.VisualServer.canvasItemAddTextureRect` with a rect at `position` and the size of this `godot.Texture`.
		
		@param modulate If the parameter is null, then the default value is new Color(1, 1, 1, 1)
	**/
	@:native("Draw")
	public overload function draw(canvasItem:godot.RID, position:godot.Vector2, modulate:Nullable1<godot.Color>):Void;

	/**		
		Draws the texture using a `godot.CanvasItem` with the `godot.VisualServer` API at the specified `position`. Equivalent to `godot.VisualServer.canvasItemAddTextureRect` with a rect at `position` and the size of this `godot.Texture`.
		
		@param modulate If the parameter is null, then the default value is new Color(1, 1, 1, 1)
	**/
	@:native("Draw")
	public overload function draw(canvasItem:godot.RID, position:godot.Vector2, modulate:Nullable1<godot.Color>, transpose:Bool):Void;

	/**		
		Draws the texture using a `godot.CanvasItem` with the `godot.VisualServer` API at the specified `position`. Equivalent to `godot.VisualServer.canvasItemAddTextureRect` with a rect at `position` and the size of this `godot.Texture`.
		
		@param modulate If the parameter is null, then the default value is new Color(1, 1, 1, 1)
	**/
	@:native("Draw")
	public overload function draw(canvasItem:godot.RID, position:godot.Vector2, modulate:Nullable1<godot.Color>, transpose:Bool, normalMap:godot.Texture):Void;
	#end

	#if doc_gen
	/**		
		Draws the texture using a `godot.CanvasItem` with the `godot.VisualServer` API. Equivalent to `godot.VisualServer.canvasItemAddTextureRect`.
		
		@param modulate If the parameter is null, then the default value is new Color(1, 1, 1, 1)
	**/
	@:native("DrawRect")
	public function drawRect(canvasItem:godot.RID, rect:godot.Rect2, tile:Bool, ?modulate:Nullable1<godot.Color>, ?transpose:Bool, ?normalMap:godot.Texture):Void;
	#else
	/**		
		Draws the texture using a `godot.CanvasItem` with the `godot.VisualServer` API. Equivalent to `godot.VisualServer.canvasItemAddTextureRect`.
		
		@param modulate If the parameter is null, then the default value is new Color(1, 1, 1, 1)
	**/
	@:native("DrawRect")
	public overload function drawRect(canvasItem:godot.RID, rect:godot.Rect2, tile:Bool):Void;

	/**		
		Draws the texture using a `godot.CanvasItem` with the `godot.VisualServer` API. Equivalent to `godot.VisualServer.canvasItemAddTextureRect`.
		
		@param modulate If the parameter is null, then the default value is new Color(1, 1, 1, 1)
	**/
	@:native("DrawRect")
	public overload function drawRect(canvasItem:godot.RID, rect:godot.Rect2, tile:Bool, modulate:Nullable1<godot.Color>):Void;

	/**		
		Draws the texture using a `godot.CanvasItem` with the `godot.VisualServer` API. Equivalent to `godot.VisualServer.canvasItemAddTextureRect`.
		
		@param modulate If the parameter is null, then the default value is new Color(1, 1, 1, 1)
	**/
	@:native("DrawRect")
	public overload function drawRect(canvasItem:godot.RID, rect:godot.Rect2, tile:Bool, modulate:Nullable1<godot.Color>, transpose:Bool):Void;

	/**		
		Draws the texture using a `godot.CanvasItem` with the `godot.VisualServer` API. Equivalent to `godot.VisualServer.canvasItemAddTextureRect`.
		
		@param modulate If the parameter is null, then the default value is new Color(1, 1, 1, 1)
	**/
	@:native("DrawRect")
	public overload function drawRect(canvasItem:godot.RID, rect:godot.Rect2, tile:Bool, modulate:Nullable1<godot.Color>, transpose:Bool, normalMap:godot.Texture):Void;
	#end

	#if doc_gen
	/**		
		Draws a part of the texture using a `godot.CanvasItem` with the `godot.VisualServer` API. Equivalent to `godot.VisualServer.canvasItemAddTextureRectRegion`.
		
		@param modulate If the parameter is null, then the default value is new Color(1, 1, 1, 1)
	**/
	@:native("DrawRectRegion")
	public function drawRectRegion(canvasItem:godot.RID, rect:godot.Rect2, srcRect:godot.Rect2, ?modulate:Nullable1<godot.Color>, ?transpose:Bool, ?normalMap:godot.Texture, ?clipUv:Bool):Void;
	#else
	/**		
		Draws a part of the texture using a `godot.CanvasItem` with the `godot.VisualServer` API. Equivalent to `godot.VisualServer.canvasItemAddTextureRectRegion`.
		
		@param modulate If the parameter is null, then the default value is new Color(1, 1, 1, 1)
	**/
	@:native("DrawRectRegion")
	public overload function drawRectRegion(canvasItem:godot.RID, rect:godot.Rect2, srcRect:godot.Rect2):Void;

	/**		
		Draws a part of the texture using a `godot.CanvasItem` with the `godot.VisualServer` API. Equivalent to `godot.VisualServer.canvasItemAddTextureRectRegion`.
		
		@param modulate If the parameter is null, then the default value is new Color(1, 1, 1, 1)
	**/
	@:native("DrawRectRegion")
	public overload function drawRectRegion(canvasItem:godot.RID, rect:godot.Rect2, srcRect:godot.Rect2, modulate:Nullable1<godot.Color>):Void;

	/**		
		Draws a part of the texture using a `godot.CanvasItem` with the `godot.VisualServer` API. Equivalent to `godot.VisualServer.canvasItemAddTextureRectRegion`.
		
		@param modulate If the parameter is null, then the default value is new Color(1, 1, 1, 1)
	**/
	@:native("DrawRectRegion")
	public overload function drawRectRegion(canvasItem:godot.RID, rect:godot.Rect2, srcRect:godot.Rect2, modulate:Nullable1<godot.Color>, transpose:Bool):Void;

	/**		
		Draws a part of the texture using a `godot.CanvasItem` with the `godot.VisualServer` API. Equivalent to `godot.VisualServer.canvasItemAddTextureRectRegion`.
		
		@param modulate If the parameter is null, then the default value is new Color(1, 1, 1, 1)
	**/
	@:native("DrawRectRegion")
	public overload function drawRectRegion(canvasItem:godot.RID, rect:godot.Rect2, srcRect:godot.Rect2, modulate:Nullable1<godot.Color>, transpose:Bool, normalMap:godot.Texture):Void;

	/**		
		Draws a part of the texture using a `godot.CanvasItem` with the `godot.VisualServer` API. Equivalent to `godot.VisualServer.canvasItemAddTextureRectRegion`.
		
		@param modulate If the parameter is null, then the default value is new Color(1, 1, 1, 1)
	**/
	@:native("DrawRectRegion")
	public overload function drawRectRegion(canvasItem:godot.RID, rect:godot.Rect2, srcRect:godot.Rect2, modulate:Nullable1<godot.Color>, transpose:Bool, normalMap:godot.Texture, clipUv:Bool):Void;
	#end

	/**		
		Returns an `godot.Image` that is a copy of data from this `godot.Texture`. `godot.Image`s can be accessed and manipulated directly.
	**/
	@:native("GetData")
	public function getData():godot.Image;
}
