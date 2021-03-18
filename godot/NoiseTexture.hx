// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Uses an `godot.OpenSimplexNoise` to fill the texture data. You can specify the texture size but keep in mind that larger textures will take longer to generate and seamless noise only works with square sized textures.

NoiseTexture can also generate normalmap textures.

The class uses `godot.Thread`s to generate the texture data internally, so `godot.Texture.getData` may return `null` if the generation process has not completed yet. In that case, you need to wait for the texture to be generated before accessing the data:

```

var texture = preload("res://noise.tres")
yield(texture, "changed")
var image = texture.get_data()

```
**/
@:libType
@:csNative
@:native("Godot.NoiseTexture")
@:autoBuild(godot.Godot.buildUserClass())
extern class NoiseTexture extends godot.Texture {
	/**		
		The `godot.OpenSimplexNoise` instance used to generate the noise.
	**/
	@:native("Noise")
	public var noise:godot.OpenSimplexNoise;

	/**		
		Strength of the bump maps used in this texture. A higher value will make the bump maps appear larger while a lower value will make them appear softer.
	**/
	@:native("BumpStrength")
	public var bumpStrength:Single;

	/**		
		If `true`, the resulting texture contains a normal map created from the original noise interpreted as a bump map.
	**/
	@:native("AsNormalmap")
	public var asNormalmap:Bool;

	/**		
		Whether the texture can be tiled without visible seams or not. Seamless textures take longer to generate.
	**/
	@:native("Seamless")
	public var seamless:Bool;

	/**		
		Height of the generated texture.
	**/
	@:native("Height")
	public var height:Int;

	/**		
		Width of the generated texture.
	**/
	@:native("Width")
	public var width:Int;

	@:native("new")
	public function new():Void;

	@:native("SetWidth")
	public function setWidth(width:Int):Void;

	@:native("SetHeight")
	public function setHeight(height:Int):Void;

	@:native("SetNoise")
	public function setNoise(noise:godot.OpenSimplexNoise):Void;

	@:native("GetNoise")
	public function getNoise():godot.OpenSimplexNoise;

	@:native("SetSeamless")
	public function setSeamless(seamless:Bool):Void;

	@:native("GetSeamless")
	public function getSeamless():Bool;

	@:native("SetAsNormalmap")
	public function setAsNormalmap(asNormalmap:Bool):Void;

	@:native("IsNormalmap")
	public function isNormalmap():Bool;

	@:native("SetBumpStrength")
	public function setBumpStrength(bumpStrength:Single):Void;

	@:native("GetBumpStrength")
	public function getBumpStrength():Single;
}
