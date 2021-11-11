// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Godot's global functions.
**/
@:libType
@:csNative
@:native("Godot.GD")
@:autoBuild(godot.Godot.buildUserClass())
extern class GD {
	@:native("UnhandledException") @:keep @:skipReflection
	public static var UNHANDLED_EXCEPTION:cs.system.EventHandler_1<godot.UnhandledExceptionArgs>;

	/**		
		Scancodes with this bit applied are non-printable.
	**/
	@:native("Spkey")
	public static var SPKEY(default, never):Int;

	#if doc_gen
	/**		
		Decodes a byte array back to a `Variant` value.
		If `allowObjects` is `true` decoding objects is allowed.
		
		WARNING: Deserialized object can contain code which gets executed.
		Do not set `allowObjects` to `true`
		if the serialized object comes from untrusted sources to avoid
		potential security threats (remote code execution).
		
		@param bytes Byte array that will be decoded to a `Variant`.
		@param allowObjects If objects should be decoded.
		@returns The decoded `Variant`.
	**/
	@:native("Bytes2Var")
	public static function bytes2Var(bytes:std.Array<cs.types.UInt8>, ?allowObjects:Bool):Dynamic;
	#else
	/**		
		Decodes a byte array back to a `Variant` value.
		If `allowObjects` is `true` decoding objects is allowed.
		
		WARNING: Deserialized object can contain code which gets executed.
		Do not set `allowObjects` to `true`
		if the serialized object comes from untrusted sources to avoid
		potential security threats (remote code execution).
		
		@param bytes Byte array that will be decoded to a `Variant`.
		@param allowObjects If objects should be decoded.
		@returns The decoded `Variant`.
	**/
	@:native("Bytes2Var")
	public static overload function bytes2Var(bytes:HaxeArray<cs.types.UInt8>):Dynamic;

	/**		
		Decodes a byte array back to a `Variant` value.
		If `allowObjects` is `true` decoding objects is allowed.
		
		WARNING: Deserialized object can contain code which gets executed.
		Do not set `allowObjects` to `true`
		if the serialized object comes from untrusted sources to avoid
		potential security threats (remote code execution).
		
		@param bytes Byte array that will be decoded to a `Variant`.
		@param allowObjects If objects should be decoded.
		@returns The decoded `Variant`.
	**/
	@:native("Bytes2Var")
	public static overload function bytes2Var(bytes:HaxeArray<cs.types.UInt8>, allowObjects:Bool):Dynamic;
	#end

	/**		
		Converts from a `Variant` type to another in the best way possible.
		The `type` parameter uses the `godot.Variant_Type` values.
		
		```
		
		var a = new Vector2(1, 0);
		// Prints 1
		GD.Print(a.Length());
		var b = GD.Convert(a, Variant.Type.String)
		// Prints 6 as "(1, 0)" is 6 characters
		GD.Print(b.Length);
		
		```
		
		@returns The `Variant` converted to the given `type`.
	**/
	@:native("Convert")
	public static function convert(what:Dynamic, type:godot.Variant_Type):Dynamic;

	/**		
		Converts from decibels to linear energy (audio).
		@see `godot.GD.linear2Db`
		@param db Decibels to convert.
		@returns Audio volume as linear energy.
	**/
	@:native("Db2Linear")
	public static function db2Linear(db:Single):Single;

	/**		
		Returns the result of `value` decreased by
		`step` * `amount`.
		
		```
		
		// a = 59;
		// float a = GD.DecTime(60, 10, 0.1f);
		
		```
		
		@param value Value that will be decreased.
		@param amount
		Amount that will be decreased from `value` for every `step`.
		
		@param step Times the `value` will be decreased by `amount`
		@returns The decreased value.
	**/
	@:native("DecTime")
	public static function decTime(value:Single, amount:Single, step:Single):Single;

	/**		
		Get the `godot.GD.funcRef` that refers to the function
		with the given name `funcname` in the
		given object `instance`.
		
		@param instance The object that contains the function.
		@param funcname The name of the function.
		@returns A reference to the given object's function.
	**/
	@:native("FuncRef")
	public static function funcRef(instance:godot.Object, funcname:std.String):godot.FuncRef;

	/**		
		Returns the integer hash of the variable passed.
		
		```
		
		GD.Print(GD.Hash("a")); // Prints 177670
		
		```
		
		@param var Variable that will be hashed.
		@returns Hash of the variable passed.
	**/
	@:native("Hash")
	public static function hash(var_:Dynamic):Int;

	/**		
		Returns the `godot.Object` that corresponds to `instanceId`.
		All Objects have a unique instance ID.
		
		```
		
		public class MyNode : Node
		{
		public string foo = "bar";
		
		public override void _Ready()
		{
		ulong id = GetInstanceId();
		var inst = (MyNode)GD.InstanceFromId(Id);
		GD.Print(inst.foo); // Prints bar
		}
		}
		
		```
		
		@param instanceId Instance ID of the Object to retrieve.
		@returns The `godot.Object` instance.
	**/
	@:native("InstanceFromId")
	public static function instanceFromId(instanceId:cs.types.UInt64):godot.Object;

	/**		
		Converts from linear energy to decibels (audio).
		This can be used to implement volume sliders that behave as expected (since volume isn't linear).
		@see `godot.GD.db2Linear`
		
		```
		
		// "slider" refers to a node that inherits Range such as HSlider or VSlider.
		// Its range must be configured to go from 0 to 1.
		// Change the bus name if you'd like to change the volume of a specific bus only.
		AudioServer.SetBusVolumeDb(AudioServer.GetBusIndex("Master"), GD.Linear2Db(slider.value));
		
		```
		
		@param linear The linear energy to convert.
		@returns Audio as decibels.
	**/
	@:native("Linear2Db")
	public static function linear2Db(linear:Single):Single;

	/**		
		Loads a resource from the filesystem located at `path`.
		The resource is loaded on the method call (unless it's referenced already
		elsewhere, e.g. in another script or in the scene), which might cause slight delay,
		especially when loading scenes. To avoid unnecessary delays when loading something
		multiple times, either store the resource in a variable.
		
		Note: Resource paths can be obtained by right-clicking on a resource in the FileSystem
		dock and choosing "Copy Path" or by dragging the file from the FileSystem dock into the script.
		
		Important: The path must be absolute, a local path will just return `null`.
		This method is a simplified version of `godot.ResourceLoader.load`, which can be used
		for more advanced scenarios.
		
		```
		
		// Load a scene called main located in the root of the project directory and cache it in a variable.
		var main = GD.Load("res://main.tscn"); // main will contain a PackedScene resource.
		
		```
		
		@param path Path of the `godot.Resource` to load.
		@returns The loaded `godot.Resource`.
	**/
	@:native("Load")
	public static function load<M0>(path:std.String):M0;

	/**		
		Pushes an error message to Godot's built-in debugger and to the OS terminal.
		
		Note: Errors printed this way will not pause project execution.
		To print an error message and pause project execution in debug builds,
		use [code]assert(false, "test error")[/code] instead.
		
		```
		
		GD.PushError("test_error"); // Prints "test error" to debugger and terminal as error call
		
		```
		
		@param message Error message.
	**/
	@:native("PushError")
	public static function pushError(message:std.String):Void;

	/**		
		Pushes a warning message to Godot's built-in debugger and to the OS terminal.
		
		GD.PushWarning("test warning"); // Prints "test warning" to debugger and terminal as warning call
		
		@param message Warning message.
	**/
	@:native("PushWarning")
	public static function pushWarning(message:std.String):Void;

	/**		
		Converts one or more arguments of any type to string in the best way possible
		and prints them to the console.
		
		Note: Consider using `godot.GD.pushError` and `godot.GD.pushWarning`
		to print error and warning messages instead of `godot.GD.print`.
		This distinguishes them from print messages used for debugging purposes,
		while also displaying a stack trace when an error or warning is printed.
		
		```
		
		var a = new int[] { 1, 2, 3 };
		GD.Print("a", "b", a); // Prints ab[1, 2, 3]
		
		```
		
		@param what Arguments that will be printed.
	**/
	@:native("Print")
	public static function print(what:haxe.Rest<Dynamic>):Void;

	/**		
		Prints the current stack trace information to the console.
	**/
	@:native("PrintStack")
	public static function printStack():Void;

	/**		
		Prints one or more arguments to strings in the best way possible to standard error line.
		
		```
		
		GD.PrintErr("prints to stderr");
		
		```
		
		@param what Arguments that will be printed.
	**/
	@:native("PrintErr")
	public static function printErr(what:haxe.Rest<Dynamic>):Void;

	/**		
		Prints one or more arguments to strings in the best way possible to console.
		No newline is added at the end.
		
		Note: Due to limitations with Godot's built-in console, this only prints to the terminal.
		If you need to print in the editor, use another method, such as `godot.GD.print`.
		
		```
		
		GD.PrintRaw("A");
		GD.PrintRaw("B");
		// Prints AB
		
		```
		
		@param what Arguments that will be printed.
	**/
	@:native("PrintRaw")
	public static function printRaw(what:haxe.Rest<Dynamic>):Void;

	/**		
		Prints one or more arguments to the console with a space between each argument.
		
		```
		
		GD.PrintS("A", "B", "C"); // Prints A B C
		
		```
		
		@param what Arguments that will be printed.
	**/
	@:native("PrintS")
	public static function printS(what:haxe.Rest<Dynamic>):Void;

	/**		
		Prints one or more arguments to the console with a tab between each argument.
		
		```
		
		GD.PrintT("A", "B", "C"); // Prints A       B       C
		
		```
		
		@param what Arguments that will be printed.
	**/
	@:native("PrintT")
	public static function printT(what:haxe.Rest<Dynamic>):Void;

	/**		
		Returns a random floating point value between `0.0` and `1.0` (inclusive).
		
		```
		
		GD.Randf(); // Returns e.g. 0.375671
		
		```
		
		@returns A random `float` number.
	**/
	@:native("Randf")
	public static function randf():Single;

	/**		
		Returns a random unsigned 32-bit integer.
		Use remainder to obtain a random value in the interval `[0, N - 1]` (where N is smaller than 2^32).
		
		```
		
		GD.Randi();           // Returns random integer between 0 and 2^32 - 1
		GD.Randi() % 20;      // Returns random integer between 0 and 19
		GD.Randi() % 100;     // Returns random integer between 0 and 99
		GD.Randi() % 100 + 1; // Returns random integer between 1 and 100
		
		```
		
		@returns A random `uint` number.
	**/
	@:native("Randi")
	public static function randi():UInt;

	/**		
		Randomizes the seed (or the internal state) of the random number generator.
		Current implementation reseeds using a number based on time.
		
		Note: This method is called automatically when the project is run.
		If you need to fix the seed to have reproducible results, use `godot.GD.seed`
		to initialize the random number generator.
	**/
	@:native("Randomize")
	public static function randomize():Void;

	/**		
		Returns a random floating point value on the interval between `from`
		and `to` (inclusive).
		
		```
		
		GD.PrintS(GD.RandRange(-10.0, 10.0), GD.RandRange(-10.0, 10.0)); // Prints e.g. -3.844535 7.45315
		
		```
		
		@returns A random `double` number inside the given range.
	**/
	@:native("RandRange")
	public static function randRange(from:Float, to:Float):Float;

	/**		
		Returns a random unsigned 32-bit integer, using the given `seed`.
		The `newSeed` will return the new seed.
		
		@param seed Seed to use to generate the random number.
		@param newSeed Seed used by the random number generator.
		@returns A random `uint` number.
	**/
	@:native("RandSeed")
	public static function randSeed(seed:cs.types.UInt64, newSeed:cs.Out<cs.types.UInt64>):UInt;

	/**		
		Returns a `cs.system.collections.generic.IEnumerable`1` that iterates from
		`0` to `end` in steps of `1`.
		
		@param end The last index.
	**/
	@:native("Range")
	public static overload function range(end:Int):cs.system.collections.generic.IEnumerable_1<Int>;

	/**		
		Returns a `cs.system.collections.generic.IEnumerable`1` that iterates from
		`start` to `end` in steps of `1`.
		
		@param start The first index.
		@param end The last index.
	**/
	@:native("Range")
	public static overload function range(start:Int, end:Int):cs.system.collections.generic.IEnumerable_1<Int>;

	/**		
		Returns a `cs.system.collections.generic.IEnumerable`1` that iterates from
		`start` to `end` in steps of `step`.
		
		@param start The first index.
		@param end The last index.
		@param step The amount by which to increment the index on each iteration.
	**/
	@:native("Range")
	public static overload function range(start:Int, end:Int, step:Int):cs.system.collections.generic.IEnumerable_1<Int>;

	/**		
		Sets seed for the random number generator.
		
		@param seed Seed that will be used.
	**/
	@:native("Seed")
	public static function seed(seed:cs.types.UInt64):Void;

	/**		
		Converts one or more arguments of any type to string in the best way possible.
		
		@param what Arguments that will converted to string.
		@returns The string formed by the given arguments.
	**/
	@:native("Str")
	public static function str(what:haxe.Rest<Dynamic>):std.String;

	/**		
		Converts a formatted string that was returned by `godot.GD.var2Str` to the original value.
		
		```
		
		string a = "{\"a\": 1, \"b\": 2 }";
		var b = (Godot.Collections.Dictionary)GD.Str2Var(a);
		GD.Print(b["a"]); // Prints 1
		
		```
		
		@param str String that will be converted to Variant.
		@returns The decoded `Variant`.
	**/
	@:native("Str2Var")
	public static function str2Var(str:std.String):Dynamic;

	/**		
		Returns whether the given class exists in `godot.ClassDB`.
		
		@returns If the class exists in `godot.ClassDB`.
	**/
	@:native("TypeExists")
	public static function typeExists(type:std.String):Bool;

	#if doc_gen
	/**		
		Encodes a `Variant` value to a byte array.
		If `fullObjects` is `true` encoding objects is allowed
		(and can potentially include code).
		Deserialization can be done with `godot.GD.bytes2Var`.
		
		@param var Variant that will be encoded.
		@param fullObjects If objects should be serialized.
		@returns The `Variant` encoded as an array of bytes.
	**/
	public static extern inline function var2Bytes(var_:Dynamic, ?fullObjects:Bool):std.Array<cs.types.UInt8> {
		return cs.Lib.array(cs.Syntax.code("Var2Bytes({0}, {1})", var_, fullObjects));
	}
	#else
	/**		
		Encodes a `Variant` value to a byte array.
		If `fullObjects` is `true` encoding objects is allowed
		(and can potentially include code).
		Deserialization can be done with `godot.GD.bytes2Var`.
		
		@param var Variant that will be encoded.
		@param fullObjects If objects should be serialized.
		@returns The `Variant` encoded as an array of bytes.
	**/
	public static overload extern inline function var2Bytes(var_:Dynamic):std.Array<cs.types.UInt8> {
		return cs.Lib.array(cs.Syntax.code("Var2Bytes({0})", var_));
	}

	/**		
		Encodes a `Variant` value to a byte array.
		If `fullObjects` is `true` encoding objects is allowed
		(and can potentially include code).
		Deserialization can be done with `godot.GD.bytes2Var`.
		
		@param var Variant that will be encoded.
		@param fullObjects If objects should be serialized.
		@returns The `Variant` encoded as an array of bytes.
	**/
	public static overload extern inline function var2Bytes(var_:Dynamic, fullObjects:Bool):std.Array<cs.types.UInt8> {
		return cs.Lib.array(cs.Syntax.code("Var2Bytes({0}, {1})", var_, fullObjects));
	}
	#end

	/**		
		Converts a `Variant` `var` to a formatted string that
		can later be parsed using `godot.GD.str2Var`.
		
		```
		
		var a = new Godot.Collections.Dictionary { ["a"] = 1, ["b"] = 2 };
		GD.Print(GD.Var2Str(a));
		// Prints
		// {
		//    "a": 1,
		//    "b": 2
		// }
		
		```
		
		@param var Variant that will be converted to string.
		@returns The `Variant` encoded as a string.
	**/
	@:native("Var2Str")
	public static function var2Str(var_:Dynamic):std.String;

	@:native("add_UnhandledException")
	public static function add_UnhandledException(value:cs.system.EventHandler_1<godot.UnhandledExceptionArgs>):Void;

	@:native("remove_UnhandledException")
	public static function remove_UnhandledException(value:cs.system.EventHandler_1<godot.UnhandledExceptionArgs>):Void;
}
