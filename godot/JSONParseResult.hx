// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Returned by `godot.JSON.parse`, `godot.JSONParseResult` contains the decoded JSON or error information if the JSON source wasn't successfully parsed. You can check if the JSON source was successfully parsed with `if json_result.error == OK`.
**/
@:libType
@:csNative
@:native("Godot.JSONParseResult")
@:autoBuild(godot.Godot.buildUserClass())
extern class JSONParseResult extends godot.Reference {
	/**		
		A `Variant` containing the parsed JSON. Use `@GDScript.typeof` or the `is` keyword to check if it is what you expect. For example, if the JSON source starts with curly braces (`{}`), a `godot.Collections_Dictionary` will be returned. If the JSON source starts with brackets (`[]`), an `godot.Collections_Array` will be returned.
		
		Note: The JSON specification does not define integer or float types, but only a number type. Therefore, parsing a JSON text will convert all numerical values to `Single` types.
		
		Note: JSON objects do not preserve key order like Godot dictionaries, thus, you should not rely on keys being in a certain order if a dictionary is constructed from JSON. In contrast, JSON arrays retain the order of their elements:
		
		```
		
		var p = JSON.parse('["hello", "world", "!"]')
		if typeof(p.result) == TYPE_ARRAY:
		print(p.result[0]) # Prints "hello"
		else:
		push_error("Unexpected results.")
		
		```
	**/
	@:native("Result")
	public var result:Dynamic;

	/**		
		The line number where the error occurred if the JSON source was not successfully parsed.
	**/
	@:native("ErrorLine")
	public var errorLine:Int;

	/**		
		The error message if the JSON source was not successfully parsed. See the `godot.Error` constants.
	**/
	@:native("ErrorString")
	public var errorString:std.String;

	/**		
		The error type if the JSON source was not successfully parsed. See the `godot.Error` constants.
	**/
	@:native("Error")
	public var error:godot.Error;

	@:native("new")
	public function new():Void;

	@:native("GetError")
	public function getError():godot.Error;

	@:native("GetErrorString")
	public function getErrorString():std.String;

	@:native("GetErrorLine")
	public function getErrorLine():Int;

	@:native("GetResult")
	public function getResult():Dynamic;

	@:native("SetError")
	public function setError(error:godot.Error):Void;

	@:native("SetErrorString")
	public function setErrorString(errorString:std.String):Void;

	@:native("SetErrorLine")
	public function setErrorLine(errorLine:Int):Void;

	@:native("SetResult")
	public function setResult(result:Dynamic):Void;
}
