// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Provides access to metadata stored for every available class.
**/
@:libType
@:csNative
@:native("Godot.ClassDB")
@:autoBuild(godot.Godot.buildUserClass())
extern class ClassDB {
	@:native("Singleton")
	public static var SINGLETON(default, never):godot.Object;

	/**		
		Returns the names of all the classes available.
	**/
	public static extern inline function getClassList():std.Array<std.String> {
		return cs.Lib.array(cs.Syntax.code("GetClassList()"));
	}

	/**		
		Returns the names of all the classes that directly or indirectly inherit from `class`.
	**/
	public static extern inline function getInheritersFromClass(class_:std.String):std.Array<std.String> {
		return cs.Lib.array(cs.Syntax.code("GetInheritersFromClass({0})", class_));
	}

	/**		
		Returns the parent class of `class`.
	**/
	@:native("GetParentClass")
	public static function getParentClass(class_:std.String):std.String;

	/**		
		Returns whether the specified `class` is available or not.
	**/
	@:native("ClassExists")
	public static function classExists(class_:std.String):Bool;

	/**		
		Returns whether `inherits` is an ancestor of `class` or not.
	**/
	@:native("IsParentClass")
	public static function isParentClass(class_:std.String, inherits:std.String):Bool;

	/**		
		Returns `true` if you can instance objects from the specified `class`, `false` in other case.
	**/
	@:native("CanInstance")
	public static function canInstance(class_:std.String):Bool;

	/**		
		Creates an instance of `class`.
	**/
	@:native("Instance")
	public static function instance(class_:std.String):Dynamic;

	/**		
		Returns whether `class` or its ancestry has a signal called `signal` or not.
	**/
	@:native("ClassHasSignal")
	public static function classHasSignal(class_:std.String, signal:std.String):Bool;

	/**		
		Returns the `signal` data of `class` or its ancestry. The returned value is a `godot.Collections_Dictionary` with the following keys: `args`, `default_args`, `flags`, `id`, `name`, `return: (class_name, hint, hint_string, name, type, usage)`.
	**/
	@:native("ClassGetSignal")
	public static function classGetSignal(class_:std.String, signal:std.String):godot.collections.Dictionary;

	#if doc_gen
	/**		
		Returns an array with all the signals of `class` or its ancestry if `no_inheritance` is `false`. Every element of the array is a `godot.Collections_Dictionary` as described in `godot.ClassDB.classGetSignal`.
	**/
	@:native("ClassGetSignalList")
	public static function classGetSignalList(class_:std.String, ?noInheritance:Bool):godot.collections.Array;
	#else
	/**		
		Returns an array with all the signals of `class` or its ancestry if `no_inheritance` is `false`. Every element of the array is a `godot.Collections_Dictionary` as described in `godot.ClassDB.classGetSignal`.
	**/
	@:native("ClassGetSignalList")
	public static overload function classGetSignalList(class_:std.String):godot.collections.Array;

	/**		
		Returns an array with all the signals of `class` or its ancestry if `no_inheritance` is `false`. Every element of the array is a `godot.Collections_Dictionary` as described in `godot.ClassDB.classGetSignal`.
	**/
	@:native("ClassGetSignalList")
	public static overload function classGetSignalList(class_:std.String, noInheritance:Bool):godot.collections.Array;
	#end

	#if doc_gen
	/**		
		Returns an array with all the properties of `class` or its ancestry if `no_inheritance` is `false`.
	**/
	@:native("ClassGetPropertyList")
	public static function classGetPropertyList(class_:std.String, ?noInheritance:Bool):godot.collections.Array;
	#else
	/**		
		Returns an array with all the properties of `class` or its ancestry if `no_inheritance` is `false`.
	**/
	@:native("ClassGetPropertyList")
	public static overload function classGetPropertyList(class_:std.String):godot.collections.Array;

	/**		
		Returns an array with all the properties of `class` or its ancestry if `no_inheritance` is `false`.
	**/
	@:native("ClassGetPropertyList")
	public static overload function classGetPropertyList(class_:std.String, noInheritance:Bool):godot.collections.Array;
	#end

	/**		
		Returns the value of `property` of `class` or its ancestry.
	**/
	@:native("ClassGetProperty")
	public static function classGetProperty(object:godot.Object, property:std.String):Dynamic;

	/**		
		Sets `property` value of `class` to `value`.
	**/
	@:native("ClassSetProperty")
	public static function classSetProperty(object:godot.Object, property:std.String, value:Dynamic):godot.Error;

	#if doc_gen
	/**		
		Returns whether `class` (or its ancestry if `no_inheritance` is `false`) has a method called `method` or not.
	**/
	@:native("ClassHasMethod")
	public static function classHasMethod(class_:std.String, method:std.String, ?noInheritance:Bool):Bool;
	#else
	/**		
		Returns whether `class` (or its ancestry if `no_inheritance` is `false`) has a method called `method` or not.
	**/
	@:native("ClassHasMethod")
	public static overload function classHasMethod(class_:std.String, method:std.String):Bool;

	/**		
		Returns whether `class` (or its ancestry if `no_inheritance` is `false`) has a method called `method` or not.
	**/
	@:native("ClassHasMethod")
	public static overload function classHasMethod(class_:std.String, method:std.String, noInheritance:Bool):Bool;
	#end

	#if doc_gen
	/**		
		Returns an array with all the methods of `class` or its ancestry if `no_inheritance` is `false`. Every element of the array is a `godot.Collections_Dictionary` with the following keys: `args`, `default_args`, `flags`, `id`, `name`, `return: (class_name, hint, hint_string, name, type, usage)`.
		
		Note: In exported release builds the debug info is not available, so the returned dictionaries will contain only method names.
	**/
	@:native("ClassGetMethodList")
	public static function classGetMethodList(class_:std.String, ?noInheritance:Bool):godot.collections.Array;
	#else
	/**		
		Returns an array with all the methods of `class` or its ancestry if `no_inheritance` is `false`. Every element of the array is a `godot.Collections_Dictionary` with the following keys: `args`, `default_args`, `flags`, `id`, `name`, `return: (class_name, hint, hint_string, name, type, usage)`.
		
		Note: In exported release builds the debug info is not available, so the returned dictionaries will contain only method names.
	**/
	@:native("ClassGetMethodList")
	public static overload function classGetMethodList(class_:std.String):godot.collections.Array;

	/**		
		Returns an array with all the methods of `class` or its ancestry if `no_inheritance` is `false`. Every element of the array is a `godot.Collections_Dictionary` with the following keys: `args`, `default_args`, `flags`, `id`, `name`, `return: (class_name, hint, hint_string, name, type, usage)`.
		
		Note: In exported release builds the debug info is not available, so the returned dictionaries will contain only method names.
	**/
	@:native("ClassGetMethodList")
	public static overload function classGetMethodList(class_:std.String, noInheritance:Bool):godot.collections.Array;
	#end

	#if doc_gen
	/**		
		Returns an array with the names all the integer constants of `class` or its ancestry.
	**/
	public static extern inline function classGetIntegerConstantList(class_:std.String, ?noInheritance:Bool):std.Array<std.String> {
		return cs.Lib.array(cs.Syntax.code("ClassGetIntegerConstantList({0}, {1})", class_, noInheritance));
	}
	#else
	/**		
		Returns an array with the names all the integer constants of `class` or its ancestry.
	**/
	public static overload extern inline function classGetIntegerConstantList(class_:std.String):std.Array<std.String> {
		return cs.Lib.array(cs.Syntax.code("ClassGetIntegerConstantList({0})", class_));
	}

	/**		
		Returns an array with the names all the integer constants of `class` or its ancestry.
	**/
	public static overload extern inline function classGetIntegerConstantList(class_:std.String, noInheritance:Bool):std.Array<std.String> {
		return cs.Lib.array(cs.Syntax.code("ClassGetIntegerConstantList({0}, {1})", class_, noInheritance));
	}
	#end

	/**		
		Returns whether `class` or its ancestry has an integer constant called `name` or not.
	**/
	@:native("ClassHasIntegerConstant")
	public static function classHasIntegerConstant(class_:std.String, name:std.String):Bool;

	/**		
		Returns the value of the integer constant `name` of `class` or its ancestry. Always returns 0 when the constant could not be found.
	**/
	@:native("ClassGetIntegerConstant")
	public static function classGetIntegerConstant(class_:std.String, name:std.String):Int;

	#if doc_gen
	/**		
		Returns whether `class` or its ancestry has an enum called `name` or not.
	**/
	@:native("ClassHasEnum")
	public static function classHasEnum(class_:std.String, name:std.String, ?noInheritance:Bool):Bool;
	#else
	/**		
		Returns whether `class` or its ancestry has an enum called `name` or not.
	**/
	@:native("ClassHasEnum")
	public static overload function classHasEnum(class_:std.String, name:std.String):Bool;

	/**		
		Returns whether `class` or its ancestry has an enum called `name` or not.
	**/
	@:native("ClassHasEnum")
	public static overload function classHasEnum(class_:std.String, name:std.String, noInheritance:Bool):Bool;
	#end

	#if doc_gen
	/**		
		Returns an array with all the enums of `class` or its ancestry.
	**/
	public static extern inline function classGetEnumList(class_:std.String, ?noInheritance:Bool):std.Array<std.String> {
		return cs.Lib.array(cs.Syntax.code("ClassGetEnumList({0}, {1})", class_, noInheritance));
	}
	#else
	/**		
		Returns an array with all the enums of `class` or its ancestry.
	**/
	public static overload extern inline function classGetEnumList(class_:std.String):std.Array<std.String> {
		return cs.Lib.array(cs.Syntax.code("ClassGetEnumList({0})", class_));
	}

	/**		
		Returns an array with all the enums of `class` or its ancestry.
	**/
	public static overload extern inline function classGetEnumList(class_:std.String, noInheritance:Bool):std.Array<std.String> {
		return cs.Lib.array(cs.Syntax.code("ClassGetEnumList({0}, {1})", class_, noInheritance));
	}
	#end

	#if doc_gen
	/**		
		Returns an array with all the keys in `enum` of `class` or its ancestry.
	**/
	public static extern inline function classGetEnumConstants(class_:std.String, enum_:std.String, ?noInheritance:Bool):std.Array<std.String> {
		return cs.Lib.array(cs.Syntax.code("ClassGetEnumConstants({0}, {1}, {2})", class_, enum_, noInheritance));
	}
	#else
	/**		
		Returns an array with all the keys in `enum` of `class` or its ancestry.
	**/
	public static overload extern inline function classGetEnumConstants(class_:std.String, enum_:std.String):std.Array<std.String> {
		return cs.Lib.array(cs.Syntax.code("ClassGetEnumConstants({0}, {1})", class_, enum_));
	}

	/**		
		Returns an array with all the keys in `enum` of `class` or its ancestry.
	**/
	public static overload extern inline function classGetEnumConstants(class_:std.String, enum_:std.String, noInheritance:Bool):std.Array<std.String> {
		return cs.Lib.array(cs.Syntax.code("ClassGetEnumConstants({0}, {1}, {2})", class_, enum_, noInheritance));
	}
	#end

	#if doc_gen
	/**		
		Returns which enum the integer constant `name` of `class` or its ancestry belongs to.
	**/
	@:native("ClassGetIntegerConstantEnum")
	public static function classGetIntegerConstantEnum(class_:std.String, name:std.String, ?noInheritance:Bool):std.String;
	#else
	/**		
		Returns which enum the integer constant `name` of `class` or its ancestry belongs to.
	**/
	@:native("ClassGetIntegerConstantEnum")
	public static overload function classGetIntegerConstantEnum(class_:std.String, name:std.String):std.String;

	/**		
		Returns which enum the integer constant `name` of `class` or its ancestry belongs to.
	**/
	@:native("ClassGetIntegerConstantEnum")
	public static overload function classGetIntegerConstantEnum(class_:std.String, name:std.String, noInheritance:Bool):std.String;
	#end

	/**		
		Returns a category associated with the class for use in documentation and the Asset Library. Debug mode required.
	**/
	@:native("ClassGetCategory")
	public static function classGetCategory(class_:std.String):std.String;

	/**		
		Returns whether this `class` is enabled or not.
	**/
	@:native("IsClassEnabled")
	public static function isClassEnabled(class_:std.String):Bool;
}
