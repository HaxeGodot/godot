// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Helper class for parsing JSON data. For usage example and other important hints, see `godot.JSONParseResult`.
**/
@:libType
@:csNative
@:native("Godot.JSON")
@:autoBuild(godot.Godot.buildUserClass())
extern class JSON {
	@:native("Singleton") @:readOnly
	public static var SINGLETON(default, never):godot.Object;

	#if doc_gen
	/**		
		Converts a `Variant` var to JSON text and returns the result. Useful for serializing data to store or send over the network.
		
		Note: The JSON specification does not define integer or float types, but only a number type. Therefore, converting a Variant to JSON text will convert all numerical values to `Single` types.
		
		The `indent` parameter controls if and how something is indented, the string used for this parameter will be used where there should be an indent in the output, even spaces like `"   "` will work. `\t` and `\n` can also be used for a tab indent, or to make a newline for each indent respectively.
		
		Example output:
		
		```
		
		## JSON.print(my_dictionary)
		{"name":"my_dictionary","version":"1.0.0","entities":[{"name":"entity_0","value":"value_0"},{"name":"entity_1","value":"value_1"}]}
		
		## JSON.print(my_dictionary, "\t")
		{
		"name": "my_dictionary",
		"version": "1.0.0",
		"entities": [
		{
		"name": "entity_0",
		"value": "value_0"
		},
		{
		"name": "entity_1",
		"value": "value_1"
		}
		]
		}
		
		## JSON.print(my_dictionary, "...")
		{
		..."name": "my_dictionary",
		..."version": "1.0.0",
		..."entities": [
		......{
		........."name": "entity_0",
		........."value": "value_0"
		......},
		......{
		........."name": "entity_1",
		........."value": "value_1"
		......}
		...]
		}
		
		```
	**/
	@:native("Print")
	public static function print(value:Dynamic, ?indent:std.String, ?sortKeys:Bool):std.String;
	#else
	/**		
		Converts a `Variant` var to JSON text and returns the result. Useful for serializing data to store or send over the network.
		
		Note: The JSON specification does not define integer or float types, but only a number type. Therefore, converting a Variant to JSON text will convert all numerical values to `Single` types.
		
		The `indent` parameter controls if and how something is indented, the string used for this parameter will be used where there should be an indent in the output, even spaces like `"   "` will work. `\t` and `\n` can also be used for a tab indent, or to make a newline for each indent respectively.
		
		Example output:
		
		```
		
		## JSON.print(my_dictionary)
		{"name":"my_dictionary","version":"1.0.0","entities":[{"name":"entity_0","value":"value_0"},{"name":"entity_1","value":"value_1"}]}
		
		## JSON.print(my_dictionary, "\t")
		{
		"name": "my_dictionary",
		"version": "1.0.0",
		"entities": [
		{
		"name": "entity_0",
		"value": "value_0"
		},
		{
		"name": "entity_1",
		"value": "value_1"
		}
		]
		}
		
		## JSON.print(my_dictionary, "...")
		{
		..."name": "my_dictionary",
		..."version": "1.0.0",
		..."entities": [
		......{
		........."name": "entity_0",
		........."value": "value_0"
		......},
		......{
		........."name": "entity_1",
		........."value": "value_1"
		......}
		...]
		}
		
		```
	**/
	@:native("Print")
	public static overload function print(value:Dynamic):std.String;

	/**		
		Converts a `Variant` var to JSON text and returns the result. Useful for serializing data to store or send over the network.
		
		Note: The JSON specification does not define integer or float types, but only a number type. Therefore, converting a Variant to JSON text will convert all numerical values to `Single` types.
		
		The `indent` parameter controls if and how something is indented, the string used for this parameter will be used where there should be an indent in the output, even spaces like `"   "` will work. `\t` and `\n` can also be used for a tab indent, or to make a newline for each indent respectively.
		
		Example output:
		
		```
		
		## JSON.print(my_dictionary)
		{"name":"my_dictionary","version":"1.0.0","entities":[{"name":"entity_0","value":"value_0"},{"name":"entity_1","value":"value_1"}]}
		
		## JSON.print(my_dictionary, "\t")
		{
		"name": "my_dictionary",
		"version": "1.0.0",
		"entities": [
		{
		"name": "entity_0",
		"value": "value_0"
		},
		{
		"name": "entity_1",
		"value": "value_1"
		}
		]
		}
		
		## JSON.print(my_dictionary, "...")
		{
		..."name": "my_dictionary",
		..."version": "1.0.0",
		..."entities": [
		......{
		........."name": "entity_0",
		........."value": "value_0"
		......},
		......{
		........."name": "entity_1",
		........."value": "value_1"
		......}
		...]
		}
		
		```
	**/
	@:native("Print")
	public static overload function print(value:Dynamic, indent:std.String):std.String;

	/**		
		Converts a `Variant` var to JSON text and returns the result. Useful for serializing data to store or send over the network.
		
		Note: The JSON specification does not define integer or float types, but only a number type. Therefore, converting a Variant to JSON text will convert all numerical values to `Single` types.
		
		The `indent` parameter controls if and how something is indented, the string used for this parameter will be used where there should be an indent in the output, even spaces like `"   "` will work. `\t` and `\n` can also be used for a tab indent, or to make a newline for each indent respectively.
		
		Example output:
		
		```
		
		## JSON.print(my_dictionary)
		{"name":"my_dictionary","version":"1.0.0","entities":[{"name":"entity_0","value":"value_0"},{"name":"entity_1","value":"value_1"}]}
		
		## JSON.print(my_dictionary, "\t")
		{
		"name": "my_dictionary",
		"version": "1.0.0",
		"entities": [
		{
		"name": "entity_0",
		"value": "value_0"
		},
		{
		"name": "entity_1",
		"value": "value_1"
		}
		]
		}
		
		## JSON.print(my_dictionary, "...")
		{
		..."name": "my_dictionary",
		..."version": "1.0.0",
		..."entities": [
		......{
		........."name": "entity_0",
		........."value": "value_0"
		......},
		......{
		........."name": "entity_1",
		........."value": "value_1"
		......}
		...]
		}
		
		```
	**/
	@:native("Print")
	public static overload function print(value:Dynamic, indent:std.String, sortKeys:Bool):std.String;
	#end

	/**		
		Parses a JSON-encoded string and returns a `godot.JSONParseResult` containing the result.
	**/
	@:native("Parse")
	public static function parse(json:std.String):godot.JSONParseResult;
}
