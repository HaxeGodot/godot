// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
RandomNumberGenerator is a class for generating pseudo-random numbers. It currently uses [http://www.pcg-random.org/](PCG32).

Note: The underlying algorithm is an implementation detail. As a result, it should not be depended upon for reproducible random streams across Godot versions.

To generate a random float number (within a given range) based on a time-dependant seed:

```

var rng = RandomNumberGenerator.new()
func _ready():
rng.randomize()
var my_random_number = rng.randf_range(-10.0, 10.0)

```

Note: The default values of `godot.RandomNumberGenerator.seed` and `godot.RandomNumberGenerator.state` properties are pseudo-random, and changes when calling `godot.RandomNumberGenerator.randomize`. The `0` value documented here is a placeholder, and not the actual default seed.
**/
@:libType
@:csNative
@:native("Godot.RandomNumberGenerator")
@:autoBuild(godot.Godot.buildUserClass())
extern class RandomNumberGenerator extends godot.Reference {
	/**		
		The current state of the random number generator. Save and restore this property to restore the generator to a previous state:
		
		```
		
		var rng = RandomNumberGenerator.new()
		print(rng.randf())
		var saved_state = rng.state # Store current state.
		print(rng.randf()) # Advance internal state.
		rng.state = saved_state # Restore the state.
		print(rng.randf()) # Prints the same value as in previous.
		
		```
		
		Note: Do not set state to arbitrary values, since the random number generator requires the state to have certain qualities to behave properly. It should only be set to values that came from the state property itself. To initialize the random number generator with arbitrary input, use `godot.RandomNumberGenerator.seed` instead.
	**/
	@:native("State")
	public var state:cs.types.UInt64;

	/**		
		Initializes the random number generator state based on the given seed value. A given seed will give a reproducible sequence of pseudo-random numbers.
		
		Note: The RNG does not have an avalanche effect, and can output similar random streams given similar seeds. Consider using a hash function to improve your seed quality if they're sourced externally.
		
		Note: Setting this property produces a side effect of changing the internal `godot.RandomNumberGenerator.state`, so make sure to initialize the seed before modifying the `godot.RandomNumberGenerator.state`:
		
		```
		
		var rng = RandomNumberGenerator.new()
		rng.seed = hash("Godot")
		rng.state = 100 # Restore to some previously saved state.
		
		```
		
		Warning: the getter of this property returns the previous `godot.RandomNumberGenerator.state`, and not the initial seed value, which is going to be fixed in Godot 4.0.
	**/
	@:native("Seed")
	public var seed:cs.types.UInt64;

	@:native("new")
	public function new():Void;

	@:native("SetSeed")
	public function setSeed(seed:cs.types.UInt64):Void;

	@:native("GetSeed")
	public function getSeed():cs.types.UInt64;

	@:native("SetState")
	public function setState(state:cs.types.UInt64):Void;

	@:native("GetState")
	public function getState():cs.types.UInt64;

	/**		
		Generates a pseudo-random 32-bit unsigned integer between `0` and `4294967295` (inclusive).
	**/
	@:native("Randi")
	public function randi():UInt;

	/**		
		Generates a pseudo-random float between `0.0` and `1.0` (inclusive).
	**/
	@:native("Randf")
	public function randf():Single;

	#if doc_gen
	/**		
		Generates a [https://en.wikipedia.org/wiki/Normal_distribution](normally-distributed) pseudo-random number, using Box-Muller transform with the specified `mean` and a standard `deviation`. This is also called Gaussian distribution.
	**/
	@:native("Randfn")
	public function randfn(?mean:Single, ?deviation:Single):Single;
	#else
	/**		
		Generates a [https://en.wikipedia.org/wiki/Normal_distribution](normally-distributed) pseudo-random number, using Box-Muller transform with the specified `mean` and a standard `deviation`. This is also called Gaussian distribution.
	**/
	@:native("Randfn")
	public overload function randfn():Single;

	/**		
		Generates a [https://en.wikipedia.org/wiki/Normal_distribution](normally-distributed) pseudo-random number, using Box-Muller transform with the specified `mean` and a standard `deviation`. This is also called Gaussian distribution.
	**/
	@:native("Randfn")
	public overload function randfn(mean:Single):Single;

	/**		
		Generates a [https://en.wikipedia.org/wiki/Normal_distribution](normally-distributed) pseudo-random number, using Box-Muller transform with the specified `mean` and a standard `deviation`. This is also called Gaussian distribution.
	**/
	@:native("Randfn")
	public overload function randfn(mean:Single, deviation:Single):Single;
	#end

	/**		
		Generates a pseudo-random float between `from` and `to` (inclusive).
	**/
	@:native("RandfRange")
	public function randfRange(from:Single, to:Single):Single;

	/**		
		Generates a pseudo-random 32-bit signed integer between `from` and `to` (inclusive).
	**/
	@:native("RandiRange")
	public function randiRange(from:Int, to:Int):Int;

	/**		
		Setups a time-based seed to generator.
	**/
	@:native("Randomize")
	public function randomize():Void;
}
