// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
A regular expression (or regex) is a compact language that can be used to recognise strings that follow a specific pattern, such as URLs, email addresses, complete sentences, etc. For instance, a regex of `ab[0-9]` would find any string that is `ab` followed by any number from `0` to `9`. For a more in-depth look, you can easily find various tutorials and detailed explanations on the Internet.

To begin, the RegEx object needs to be compiled with the search pattern using `godot.RegEx.compile` before it can be used.

```

var regex = RegEx.new()
regex.compile("\\w-(\\d+)")

```

The search pattern must be escaped first for GDScript before it is escaped for the expression. For example, `compile("\\d+")` would be read by RegEx as `\d+`. Similarly, `compile("\"(?:\\\\.|[^\"])*\"")` would be read as `"(?:\\.|[^"])*"`.

Using `godot.RegEx.search`, you can find the pattern within the given text. If a pattern is found, `godot.RegExMatch` is returned and you can retrieve details of the results using methods such as `godot.RegExMatch.getString` and `godot.RegExMatch.getStart`.

```

var regex = RegEx.new()
regex.compile("\\w-(\\d+)")
var result = regex.search("abc n-0123")
if result:
print(result.get_string()) # Would print n-0123

```

The results of capturing groups `()` can be retrieved by passing the group number to the various methods in `godot.RegExMatch`. Group 0 is the default and will always refer to the entire pattern. In the above example, calling `result.get_string(1)` would give you `0123`.

This version of RegEx also supports named capturing groups, and the names can be used to retrieve the results. If two or more groups have the same name, the name would only refer to the first one with a match.

```

var regex = RegEx.new()
regex.compile("d(?&lt;digit&gt;[0-9]+)|x(?&lt;digit&gt;[0-9a-f]+)")
var result = regex.search("the number is x2f")
if result:
print(result.get_string("digit")) # Would print 2f

```

If you need to process multiple results, `godot.RegEx.searchAll` generates a list of all non-overlapping results. This can be combined with a `for` loop for convenience.

```

for result in regex.search_all("d01, d03, d0c, x3f and x42"):
print(result.get_string("digit"))
# Would print 01 03 0 3f 42

```

Example of splitting a string using a RegEx:

```

var regex = RegEx.new()
regex.compile("\\S+") # Negated whitespace character class.
var results = []
for result in regex.search_all("One  Two \n\tThree"):
results.push_back(result.get_string())
# The `results` array now contains "One", "Two", "Three".

```

Note: Godot's regex implementation is based on the [https://www.pcre.org/](PCRE2) library. You can view the full pattern reference [https://www.pcre.org/current/doc/html/pcre2pattern.html](here).

Tip: You can use [https://regexr.com/](Regexr) to test regular expressions online.
**/
@:libType
@:csNative
@:native("Godot.RegEx")
@:autoBuild(godot.Godot.buildUserClass())
extern class RegEx extends godot.Reference {
	@:native("new")
	public function new():Void;

	/**		
		This method resets the state of the object, as if it was freshly created. Namely, it unassigns the regular expression of this object.
	**/
	@:native("Clear")
	public function clear():Void;

	/**		
		Compiles and assign the search pattern to use. Returns `OK` if the compilation is successful. If an error is encountered, details are printed to standard output and an error is returned.
	**/
	@:native("Compile")
	public function compile(pattern:std.String):godot.Error;

	#if doc_gen
	/**		
		Searches the text for the compiled pattern. Returns a `godot.RegExMatch` container of the first matching result if found, otherwise `null`. The region to search within can be specified without modifying where the start and end anchor would be.
	**/
	@:native("Search")
	public function search(subject:std.String, ?offset:Int, ?end:Int):godot.RegExMatch;
	#else
	/**		
		Searches the text for the compiled pattern. Returns a `godot.RegExMatch` container of the first matching result if found, otherwise `null`. The region to search within can be specified without modifying where the start and end anchor would be.
	**/
	@:native("Search")
	public overload function search(subject:std.String):godot.RegExMatch;

	/**		
		Searches the text for the compiled pattern. Returns a `godot.RegExMatch` container of the first matching result if found, otherwise `null`. The region to search within can be specified without modifying where the start and end anchor would be.
	**/
	@:native("Search")
	public overload function search(subject:std.String, offset:Int):godot.RegExMatch;

	/**		
		Searches the text for the compiled pattern. Returns a `godot.RegExMatch` container of the first matching result if found, otherwise `null`. The region to search within can be specified without modifying where the start and end anchor would be.
	**/
	@:native("Search")
	public overload function search(subject:std.String, offset:Int, end:Int):godot.RegExMatch;
	#end

	#if doc_gen
	/**		
		Searches the text for the compiled pattern. Returns an array of `godot.RegExMatch` containers for each non-overlapping result. If no results were found, an empty array is returned instead. The region to search within can be specified without modifying where the start and end anchor would be.
	**/
	@:native("SearchAll")
	public function searchAll(subject:std.String, ?offset:Int, ?end:Int):godot.collections.Array;
	#else
	/**		
		Searches the text for the compiled pattern. Returns an array of `godot.RegExMatch` containers for each non-overlapping result. If no results were found, an empty array is returned instead. The region to search within can be specified without modifying where the start and end anchor would be.
	**/
	@:native("SearchAll")
	public overload function searchAll(subject:std.String):godot.collections.Array;

	/**		
		Searches the text for the compiled pattern. Returns an array of `godot.RegExMatch` containers for each non-overlapping result. If no results were found, an empty array is returned instead. The region to search within can be specified without modifying where the start and end anchor would be.
	**/
	@:native("SearchAll")
	public overload function searchAll(subject:std.String, offset:Int):godot.collections.Array;

	/**		
		Searches the text for the compiled pattern. Returns an array of `godot.RegExMatch` containers for each non-overlapping result. If no results were found, an empty array is returned instead. The region to search within can be specified without modifying where the start and end anchor would be.
	**/
	@:native("SearchAll")
	public overload function searchAll(subject:std.String, offset:Int, end:Int):godot.collections.Array;
	#end

	#if doc_gen
	/**		
		Searches the text for the compiled pattern and replaces it with the specified string. Escapes and backreferences such as `$1` and `$name` are expanded and resolved. By default, only the first instance is replaced, but it can be changed for all instances (global replacement). The region to search within can be specified without modifying where the start and end anchor would be.
	**/
	@:native("Sub")
	public function sub(subject:std.String, replacement:std.String, ?all:Bool, ?offset:Int, ?end:Int):std.String;
	#else
	/**		
		Searches the text for the compiled pattern and replaces it with the specified string. Escapes and backreferences such as `$1` and `$name` are expanded and resolved. By default, only the first instance is replaced, but it can be changed for all instances (global replacement). The region to search within can be specified without modifying where the start and end anchor would be.
	**/
	@:native("Sub")
	public overload function sub(subject:std.String, replacement:std.String):std.String;

	/**		
		Searches the text for the compiled pattern and replaces it with the specified string. Escapes and backreferences such as `$1` and `$name` are expanded and resolved. By default, only the first instance is replaced, but it can be changed for all instances (global replacement). The region to search within can be specified without modifying where the start and end anchor would be.
	**/
	@:native("Sub")
	public overload function sub(subject:std.String, replacement:std.String, all:Bool):std.String;

	/**		
		Searches the text for the compiled pattern and replaces it with the specified string. Escapes and backreferences such as `$1` and `$name` are expanded and resolved. By default, only the first instance is replaced, but it can be changed for all instances (global replacement). The region to search within can be specified without modifying where the start and end anchor would be.
	**/
	@:native("Sub")
	public overload function sub(subject:std.String, replacement:std.String, all:Bool, offset:Int):std.String;

	/**		
		Searches the text for the compiled pattern and replaces it with the specified string. Escapes and backreferences such as `$1` and `$name` are expanded and resolved. By default, only the first instance is replaced, but it can be changed for all instances (global replacement). The region to search within can be specified without modifying where the start and end anchor would be.
	**/
	@:native("Sub")
	public overload function sub(subject:std.String, replacement:std.String, all:Bool, offset:Int, end:Int):std.String;
	#end

	/**		
		Returns whether this object has a valid search pattern assigned.
	**/
	@:native("IsValid")
	public function isValid():Bool;

	/**		
		Returns the original search pattern that was compiled.
	**/
	@:native("GetPattern")
	public function getPattern():std.String;

	/**		
		Returns the number of capturing groups in compiled pattern.
	**/
	@:native("GetGroupCount")
	public function getGroupCount():Int;

	/**		
		Returns an array of names of named capturing groups in the compiled pattern. They are ordered by appearance.
	**/
	@:native("GetNames")
	public function getNames():godot.collections.Array;
}
