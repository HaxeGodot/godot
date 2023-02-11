// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Contains the results of a single `godot.RegEx` match returned by `godot.RegEx.search` and `godot.RegEx.searchAll`. It can be used to find the position and range of the match and its capturing groups, and it can extract its substring for you.
**/
@:libType
@:csNative
@:native("Godot.RegExMatch")
@:autoBuild(godot.Godot.buildUserClass())
extern class RegExMatch extends godot.Reference {
	/**		
		An `godot.Collections_Array` of the match and its capturing groups.
	**/
	@:native("Strings") @:readOnly
	public var strings(default, never):godot.collections.Array;

	/**		
		A dictionary of named groups and its corresponding group number. Only groups that were matched are included. If multiple groups have the same name, that name would refer to the first matching one.
	**/
	@:native("Names") @:readOnly
	public var names(default, never):godot.collections.Dictionary;

	/**		
		The source string used with the search pattern to find this matching result.
	**/
	@:native("Subject") @:readOnly
	public var subject(default, never):std.String;

	@:native("new")
	public function new():Void;

	@:native("GetSubject")
	public function getSubject():std.String;

	/**		
		Returns the number of capturing groups.
	**/
	@:native("GetGroupCount")
	public function getGroupCount():Int;

	@:native("GetNames")
	public function getNames():godot.collections.Dictionary;

	@:native("GetStrings")
	public function getStrings():godot.collections.Array;

	#if doc_gen
	/**		
		Returns the substring of the match from the source string. Capturing groups can be retrieved by providing its group number as an integer or its string name (if it's a named group). The default value of 0 refers to the whole pattern.
		
		Returns an empty string if the group did not match or doesn't exist.
		
		@param name If the parameter is null, then the default value is (object)0
	**/
	@:native("GetString")
	public function getString(?name:Dynamic):std.String;
	#else
	/**		
		Returns the substring of the match from the source string. Capturing groups can be retrieved by providing its group number as an integer or its string name (if it's a named group). The default value of 0 refers to the whole pattern.
		
		Returns an empty string if the group did not match or doesn't exist.
		
		@param name If the parameter is null, then the default value is (object)0
	**/
	@:native("GetString")
	public overload function getString():std.String;

	/**		
		Returns the substring of the match from the source string. Capturing groups can be retrieved by providing its group number as an integer or its string name (if it's a named group). The default value of 0 refers to the whole pattern.
		
		Returns an empty string if the group did not match or doesn't exist.
		
		@param name If the parameter is null, then the default value is (object)0
	**/
	@:native("GetString")
	public overload function getString(name:Dynamic):std.String;
	#end

	#if doc_gen
	/**		
		Returns the starting position of the match within the source string. The starting position of capturing groups can be retrieved by providing its group number as an integer or its string name (if it's a named group). The default value of 0 refers to the whole pattern.
		
		Returns -1 if the group did not match or doesn't exist.
		
		@param name If the parameter is null, then the default value is (object)0
	**/
	@:native("GetStart")
	public function getStart(?name:Dynamic):Int;
	#else
	/**		
		Returns the starting position of the match within the source string. The starting position of capturing groups can be retrieved by providing its group number as an integer or its string name (if it's a named group). The default value of 0 refers to the whole pattern.
		
		Returns -1 if the group did not match or doesn't exist.
		
		@param name If the parameter is null, then the default value is (object)0
	**/
	@:native("GetStart")
	public overload function getStart():Int;

	/**		
		Returns the starting position of the match within the source string. The starting position of capturing groups can be retrieved by providing its group number as an integer or its string name (if it's a named group). The default value of 0 refers to the whole pattern.
		
		Returns -1 if the group did not match or doesn't exist.
		
		@param name If the parameter is null, then the default value is (object)0
	**/
	@:native("GetStart")
	public overload function getStart(name:Dynamic):Int;
	#end

	#if doc_gen
	/**		
		Returns the end position of the match within the source string. The end position of capturing groups can be retrieved by providing its group number as an integer or its string name (if it's a named group). The default value of 0 refers to the whole pattern.
		
		Returns -1 if the group did not match or doesn't exist.
		
		@param name If the parameter is null, then the default value is (object)0
	**/
	@:native("GetEnd")
	public function getEnd(?name:Dynamic):Int;
	#else
	/**		
		Returns the end position of the match within the source string. The end position of capturing groups can be retrieved by providing its group number as an integer or its string name (if it's a named group). The default value of 0 refers to the whole pattern.
		
		Returns -1 if the group did not match or doesn't exist.
		
		@param name If the parameter is null, then the default value is (object)0
	**/
	@:native("GetEnd")
	public overload function getEnd():Int;

	/**		
		Returns the end position of the match within the source string. The end position of capturing groups can be retrieved by providing its group number as an integer or its string name (if it's a named group). The default value of 0 refers to the whole pattern.
		
		Returns -1 if the group did not match or doesn't exist.
		
		@param name If the parameter is null, then the default value is (object)0
	**/
	@:native("GetEnd")
	public overload function getEnd(name:Dynamic):Int;
	#end
}
