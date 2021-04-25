// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

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
	@:native("Bytes2Var")
	public static function bytes2Var(bytes:cs.NativeArray<cs.types.UInt8>, ?allow_objects:Bool):Dynamic;
	#else
	@:native("Bytes2Var")
	public static overload function bytes2Var(bytes:cs.NativeArray<cs.types.UInt8>):Dynamic;

	@:native("Bytes2Var")
	public static overload function bytes2Var(bytes:cs.NativeArray<cs.types.UInt8>, allow_objects:Bool):Dynamic;
	#end

	@:native("Convert")
	public static function convert(what:Dynamic, type:godot.Variant_Type):Dynamic;

	@:native("Db2Linear")
	public static function db2Linear(db:Single):Single;

	@:native("DecTime")
	public static function decTime(value:Single, amount:Single, step:Single):Single;

	@:native("FuncRef")
	public static function funcRef(instance:godot.Object, funcname:std.String):godot.FuncRef;

	@:native("Hash")
	public static function hash(var_:Dynamic):Int;

	@:native("InstanceFromId")
	public static function instanceFromId(instanceId:cs.types.UInt64):godot.Object;

	@:native("Linear2Db")
	public static function linear2Db(linear:Single):Single;

	@:native("Load")
	public static function load<M0>(path:std.String):M0;

	@:native("PushError")
	public static function pushError(message:std.String):Void;

	@:native("PushWarning")
	public static function pushWarning(message:std.String):Void;

	@:native("Print")
	public static function print(what:haxe.Rest<Dynamic>):Void;

	@:native("PrintStack")
	public static function printStack():Void;

	@:native("PrintErr")
	public static function printErr(what:haxe.Rest<Dynamic>):Void;

	@:native("PrintRaw")
	public static function printRaw(what:haxe.Rest<Dynamic>):Void;

	@:native("PrintS")
	public static function printS(what:haxe.Rest<Dynamic>):Void;

	@:native("PrintT")
	public static function printT(what:haxe.Rest<Dynamic>):Void;

	@:native("Randf")
	public static function randf():Single;

	@:native("Randi")
	public static function randi():UInt;

	@:native("Randomize")
	public static function randomize():Void;

	@:native("RandRange")
	public static function randRange(from:Float, to:Float):Float;

	@:native("RandSeed")
	public static function randSeed(seed:cs.types.UInt64, newSeed:cs.Out<cs.types.UInt64>):UInt;

	@:native("Range")
	public static overload function range(end:Int):cs.system.collections.generic.IEnumerable_1<Int>;

	@:native("Range")
	public static overload function range(start:Int, end:Int):cs.system.collections.generic.IEnumerable_1<Int>;

	@:native("Range")
	public static overload function range(start:Int, end:Int, step:Int):cs.system.collections.generic.IEnumerable_1<Int>;

	@:native("Seed")
	public static function seed(seed:cs.types.UInt64):Void;

	@:native("Str")
	public static function str(what:haxe.Rest<Dynamic>):std.String;

	@:native("Str2Var")
	public static function str2Var(str:std.String):Dynamic;

	@:native("TypeExists")
	public static function typeExists(type:std.String):Bool;

	#if doc_gen
	@:native("Var2Bytes")
	public static function var2Bytes(var_:Dynamic, ?full_objects:Bool):cs.NativeArray<cs.types.UInt8>;
	#else
	@:native("Var2Bytes")
	public static overload function var2Bytes(var_:Dynamic):cs.NativeArray<cs.types.UInt8>;

	@:native("Var2Bytes")
	public static overload function var2Bytes(var_:Dynamic, full_objects:Bool):cs.NativeArray<cs.types.UInt8>;
	#end

	@:native("Var2Str")
	public static function var2Str(var_:Dynamic):std.String;

	@:native("add_UnhandledException")
	public static function add_UnhandledException(value:cs.system.EventHandler_1<godot.UnhandledExceptionArgs>):Void;

	@:native("remove_UnhandledException")
	public static function remove_UnhandledException(value:cs.system.EventHandler_1<godot.UnhandledExceptionArgs>):Void;
}
