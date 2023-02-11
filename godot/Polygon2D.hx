// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
A Polygon2D is defined by a set of points. Each point is connected to the next, with the final point being connected to the first, resulting in a closed polygon. Polygon2Ds can be filled with color (solid or gradient) or filled with a given texture.

Note: By default, Godot can only draw up to 4,096 polygon points at a time. To increase this limit, open the Project Settings and increase  and .
**/
@:libType
@:csNative
@:native("Godot.Polygon2D")
@:autoBuild(godot.Godot.buildUserClass())
extern class Polygon2D extends godot.Node2D {
	@:native("InternalVertexCount")
	public var internalVertexCount:Int;

	@:native("Bones")
	public var bones:godot.collections.Array;

	@:native("Polygons")
	public var polygons:godot.collections.Array;

	/**		
		Color for each vertex. Colors are interpolated between vertices, resulting in smooth gradients. There should be one per polygon vertex. If there are fewer, undefined vertices will use `color`.
	**/
	@:native("VertexColors")
	public var vertexColors:cs.NativeArray<godot.Color>;

	/**		
		Texture coordinates for each vertex of the polygon. There should be one `uv` per polygon vertex. If there are fewer, undefined vertices will use `(0, 0)`.
	**/
	@:native("Uv")
	public var uv:cs.NativeArray<godot.Vector2>;

	/**		
		The polygon's list of vertices. The final point will be connected to the first.
		
		Note: This returns a copy of the `godot.Vector2` rather than a reference.
	**/
	@:native("Polygon")
	public var polygon:cs.NativeArray<godot.Vector2>;

	/**		
		Added padding applied to the bounding box when using `invert`. Setting this value too small may result in a "Bad Polygon" error.
	**/
	@:native("InvertBorder")
	public var invertBorder:Single;

	/**		
		If `true`, polygon will be inverted, containing the area outside the defined points and extending to the `invert_border`.
	**/
	@:native("InvertEnable")
	public var invertEnable:Bool;

	@:native("Skeleton")
	public var skeleton:godot.NodePath;

	/**		
		The texture's rotation in radians.
	**/
	@:native("TextureRotation")
	public var textureRotation:Single;

	/**		
		The texture's rotation in degrees.
	**/
	@:native("TextureRotationDegrees")
	public var textureRotationDegrees:Single;

	/**		
		Amount to multiply the `uv` coordinates when using a `texture`. Larger values make the texture smaller, and vice versa.
	**/
	@:native("TextureScale")
	public var textureScale:godot.Vector2;

	/**		
		Amount to offset the polygon's `texture`. If `(0, 0)` the texture's origin (its top-left corner) will be placed at the polygon's `position`.
	**/
	@:native("TextureOffset")
	public var textureOffset:godot.Vector2;

	/**		
		The polygon's fill texture. Use `uv` to set texture coordinates.
	**/
	@:native("Texture")
	public var texture:godot.Texture;

	/**		
		If `true`, attempts to perform antialiasing for polygon edges by drawing a thin OpenGL smooth line on the edges.
		
		Note: Due to how it works, built-in antialiasing will not look correct for translucent polygons and may not work on certain platforms. As a workaround, install the [https://github.com/godot-extended-libraries/godot-antialiased-line2d](Antialiased Line2D) add-on then create an AntialiasedPolygon2D node. That node relies on a texture with custom mipmaps to perform antialiasing.
	**/
	@:native("Antialiased")
	public var antialiased:Bool;

	/**		
		The offset applied to each vertex.
	**/
	@:native("Offset")
	public var offset:godot.Vector2;

	/**		
		The polygon's fill color. If `texture` is defined, it will be multiplied by this color. It will also be the default color for vertices not set in `vertex_colors`.
	**/
	@:native("Color")
	public var color:godot.Color;

	@:native("new")
	public function new():Void;

	@:native("SetPolygon")
	public function setPolygon(polygon:HaxeArray<godot.Vector2>):Void;

	public extern inline function getPolygon():std.Array<godot.Vector2> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetPolygon()", this));
	}

	@:native("SetUv")
	public function setUv(uv:HaxeArray<godot.Vector2>):Void;

	public extern inline function getUv():std.Array<godot.Vector2> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetUv()", this));
	}

	@:native("SetColor")
	public function setColor(color:godot.Color):Void;

	@:native("GetColor")
	public function getColor():godot.Color;

	@:native("SetPolygons")
	public function setPolygons(polygons:godot.collections.Array):Void;

	@:native("GetPolygons")
	public function getPolygons():godot.collections.Array;

	@:native("SetVertexColors")
	public function setVertexColors(vertexColors:HaxeArray<godot.Color>):Void;

	public extern inline function getVertexColors():std.Array<godot.Color> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetVertexColors()", this));
	}

	@:native("SetTexture")
	public function setTexture(texture:godot.Texture):Void;

	@:native("GetTexture")
	public function getTexture():godot.Texture;

	@:native("SetTextureOffset")
	public function setTextureOffset(textureOffset:godot.Vector2):Void;

	@:native("GetTextureOffset")
	public function getTextureOffset():godot.Vector2;

	@:native("SetTextureRotation")
	public function setTextureRotation(textureRotation:Single):Void;

	@:native("GetTextureRotation")
	public function getTextureRotation():Single;

	@:native("SetTextureRotationDegrees")
	public function setTextureRotationDegrees(textureRotation:Single):Void;

	@:native("GetTextureRotationDegrees")
	public function getTextureRotationDegrees():Single;

	@:native("SetTextureScale")
	public function setTextureScale(textureScale:godot.Vector2):Void;

	@:native("GetTextureScale")
	public function getTextureScale():godot.Vector2;

	@:native("SetInvert")
	public function setInvert(invert:Bool):Void;

	@:native("GetInvert")
	public function getInvert():Bool;

	@:native("SetAntialiased")
	public function setAntialiased(antialiased:Bool):Void;

	@:native("GetAntialiased")
	public function getAntialiased():Bool;

	@:native("SetInvertBorder")
	public function setInvertBorder(invertBorder:Single):Void;

	@:native("GetInvertBorder")
	public function getInvertBorder():Single;

	@:native("SetOffset")
	public function setOffset(offset:godot.Vector2):Void;

	@:native("GetOffset")
	public function getOffset():godot.Vector2;

	/**		
		Adds a bone with the specified `path` and `weights`.
	**/
	@:native("AddBone")
	public function addBone(path:godot.NodePath, weights:HaxeArray<Single>):Void;

	/**		
		Returns the number of bones in this `godot.Polygon2D`.
	**/
	@:native("GetBoneCount")
	public function getBoneCount():Int;

	/**		
		Returns the path to the node associated with the specified bone.
	**/
	@:native("GetBonePath")
	public function getBonePath(index:Int):godot.NodePath;

	/**		
		Returns the height values of the specified bone.
	**/
	public extern inline function getBoneWeights(index:Int):std.Array<Single> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetBoneWeights({1})", this, index));
	}

	/**		
		Removes the specified bone from this `godot.Polygon2D`.
	**/
	@:native("EraseBone")
	public function eraseBone(index:Int):Void;

	/**		
		Removes all bones from this `godot.Polygon2D`.
	**/
	@:native("ClearBones")
	public function clearBones():Void;

	/**		
		Sets the path to the node associated with the specified bone.
	**/
	@:native("SetBonePath")
	public function setBonePath(index:Int, path:godot.NodePath):Void;

	/**		
		Sets the weight values for the specified bone.
	**/
	@:native("SetBoneWeights")
	public function setBoneWeights(index:Int, weights:HaxeArray<Single>):Void;

	@:native("SetSkeleton")
	public function setSkeleton(skeleton:godot.NodePath):Void;

	@:native("GetSkeleton")
	public function getSkeleton():godot.NodePath;

	@:native("SetInternalVertexCount")
	public function setInternalVertexCount(internalVertexCount:Int):Void;

	@:native("GetInternalVertexCount")
	public function getInternalVertexCount():Int;
}
