// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
This resource allows you to configure and sample a fractal noise space. Here is a brief usage example that configures an OpenSimplexNoise and gets samples at various positions and dimensions:

```

var noise = OpenSimplexNoise.new()

# Configure
noise.seed = randi()
noise.octaves = 4
noise.period = 20.0
noise.persistence = 0.8

# Sample
print("Values:")
print(noise.get_noise_2d(1.0, 1.0))
print(noise.get_noise_3d(0.5, 3.0, 15.0))
print(noise.get_noise_4d(0.5, 1.9, 4.7, 0.0))

```
**/
@:libType
@:csNative
@:native("Godot.OpenSimplexNoise")
@:autoBuild(godot.Godot.buildUserClass())
extern class OpenSimplexNoise extends godot.Resource {
	/**		
		Difference in period between `godot.OpenSimplexNoise.octaves`.
	**/
	@:native("Lacunarity")
	public var lacunarity:Single;

	/**		
		Contribution factor of the different octaves. A `persistence` value of 1 means all the octaves have the same contribution, a value of 0.5 means each octave contributes half as much as the previous one.
	**/
	@:native("Persistence")
	public var persistence:Single;

	/**		
		Period of the base octave. A lower period results in a higher-frequency noise (more value changes across the same distance).
	**/
	@:native("Period")
	public var period:Single;

	/**		
		Number of OpenSimplex noise layers that are sampled to get the fractal noise. Higher values result in more detailed noise but take more time to generate.
		
		Note: The maximum allowed value is 9.
	**/
	@:native("Octaves")
	public var octaves:Int;

	/**		
		Seed used to generate random values, different seeds will generate different noise maps.
	**/
	@:native("Seed")
	public var seed:Int;

	@:native("new")
	public function new():Void;

	@:native("GetSeed")
	public function getSeed():Int;

	@:native("SetSeed")
	public function setSeed(seed:Int):Void;

	@:native("SetOctaves")
	public function setOctaves(octaveCount:Int):Void;

	@:native("GetOctaves")
	public function getOctaves():Int;

	@:native("SetPeriod")
	public function setPeriod(period:Single):Void;

	@:native("GetPeriod")
	public function getPeriod():Single;

	@:native("SetPersistence")
	public function setPersistence(persistence:Single):Void;

	@:native("GetPersistence")
	public function getPersistence():Single;

	@:native("SetLacunarity")
	public function setLacunarity(lacunarity:Single):Void;

	@:native("GetLacunarity")
	public function getLacunarity():Single;

	#if doc_gen
	/**		
		Generate a noise image in `godot.Image_Format.l8` format with the requested `width` and `height`, based on the current noise parameters. If `noise_offset` is specified, then the offset value is used as the coordinates of the top-left corner of the generated noise.
		
		@param noiseOffset If the parameter is null, then the default value is new Vector2(0, 0)
	**/
	@:native("GetImage")
	public function getImage(width:Int, height:Int, ?noiseOffset:Null<godot.Vector2>):godot.Image;
	#else
	/**		
		Generate a noise image in `godot.Image_Format.l8` format with the requested `width` and `height`, based on the current noise parameters. If `noise_offset` is specified, then the offset value is used as the coordinates of the top-left corner of the generated noise.
		
		@param noiseOffset If the parameter is null, then the default value is new Vector2(0, 0)
	**/
	@:native("GetImage")
	public overload function getImage(width:Int, height:Int):godot.Image;

	/**		
		Generate a noise image in `godot.Image_Format.l8` format with the requested `width` and `height`, based on the current noise parameters. If `noise_offset` is specified, then the offset value is used as the coordinates of the top-left corner of the generated noise.
		
		@param noiseOffset If the parameter is null, then the default value is new Vector2(0, 0)
	**/
	@:native("GetImage")
	public overload function getImage(width:Int, height:Int, noiseOffset:Nullable1<godot.Vector2>):godot.Image;
	#end

	/**		
		Generate a tileable noise image in `godot.Image_Format.l8` format, based on the current noise parameters. Generated seamless images are always square (`size` × `size`).
		
		Note: Seamless noise has a lower contrast compared to non-seamless noise. This is due to the way noise uses higher dimensions for generating seamless noise.
	**/
	@:native("GetSeamlessImage")
	public function getSeamlessImage(size:Int):godot.Image;

	/**		
		Returns the 1D noise value `[-1,1]` at the given x-coordinate.
		
		Note: This method actually returns the 2D noise value `[-1,1]` with fixed y-coordinate value 0.0.
	**/
	@:native("GetNoise1d")
	public function getNoise1d(x:Single):Single;

	/**		
		Returns the 2D noise value `[-1,1]` at the given position.
	**/
	@:native("GetNoise2d")
	public function getNoise2d(x:Single, y:Single):Single;

	/**		
		Returns the 3D noise value `[-1,1]` at the given position.
	**/
	@:native("GetNoise3d")
	public function getNoise3d(x:Single, y:Single, z:Single):Single;

	/**		
		Returns the 4D noise value `[-1,1]` at the given position.
	**/
	@:native("GetNoise4d")
	public function getNoise4d(x:Single, y:Single, z:Single, w:Single):Single;

	/**		
		Returns the 2D noise value `[-1,1]` at the given position.
	**/
	@:native("GetNoise2dv")
	public function getNoise2dv(pos:godot.Vector2):Single;

	/**		
		Returns the 3D noise value `[-1,1]` at the given position.
	**/
	@:native("GetNoise3dv")
	public function getNoise3dv(pos:godot.Vector3):Single;
}
