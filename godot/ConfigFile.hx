// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
This helper class can be used to store `Variant` values on the filesystem using INI-style formatting. The stored values are identified by a section and a key:

```

[section]
some_key=42
string_example="Hello World!"
a_vector=Vector3( 1, 0, 2 )

```

The stored data can be saved to or parsed from a file, though ConfigFile objects can also be used directly without accessing the filesystem.

The following example shows how to create a simple `godot.ConfigFile` and save it on disk:

```

# Create new ConfigFile object.
var config = ConfigFile.new()

# Store some values.
config.set_value("Player1", "player_name", "Steve")
config.set_value("Player1", "best_score", 10)
config.set_value("Player2", "player_name", "V3geta")
config.set_value("Player2", "best_score", 9001)

# Save it to a file (overwrite if already exists).
config.save("user://scores.cfg")

```

This example shows how the above file could be loaded:

```

var score_data = {}
var config = ConfigFile.new()

# Load data from a file.
var err = config.load("user://scores.cfg")

# If the file didn't load, ignore it.
if err != OK:
return

# Iterate over all sections.
for player in config.get_sections():
# Fetch the data for each section.
var player_name = config.get_value(player, "player_name")
var player_score = config.get_value(player, "best_score")
score_data[player_name] = player_score

```

Any operation that mutates the ConfigFile such as `godot.ConfigFile.setValue`, `godot.ConfigFile.clear`, or `godot.ConfigFile.eraseSection`, only changes what is loaded in memory. If you want to write the change to a file, you have to save the changes with `godot.ConfigFile.save`, `godot.ConfigFile.saveEncrypted`, or `godot.ConfigFile.saveEncryptedPass`.

Keep in mind that section and property names can't contain spaces. Anything after a space will be ignored on save and on load.

ConfigFiles can also contain manually written comment lines starting with a semicolon (`;`). Those lines will be ignored when parsing the file. Note that comments will be lost when saving the ConfigFile. This can still be useful for dedicated server configuration files, which are typically never overwritten without explicit user action.

Note: The file extension given to a ConfigFile does not have any impact on its formatting or behavior. By convention, the `.cfg` extension is used here, but any other extension such as `.ini` is also valid. Since neither `.cfg` nor `.ini` are standardized, Godot's ConfigFile formatting may differ from files written by other programs.
**/
@:libType
@:csNative
@:native("Godot.ConfigFile")
@:autoBuild(godot.Godot.buildUserClass())
extern class ConfigFile extends godot.Reference {
	@:native("new")
	public function new():Void;

	/**		
		Assigns a value to the specified key of the specified section. If either the section or the key do not exist, they are created. Passing a `null` value deletes the specified key if it exists, and deletes the section if it ends up empty once the key has been removed.
	**/
	@:native("SetValue")
	public function setValue(section:std.String, key:std.String, value:Dynamic):Void;

	#if doc_gen
	/**		
		Returns the current value for the specified section and key. If either the section or the key do not exist, the method returns the fallback `default` value. If `default` is not specified or set to `null`, an error is also raised.
	**/
	@:native("GetValue")
	public function getValue(section:std.String, key:std.String, ?default_:Dynamic):Dynamic;
	#else
	/**		
		Returns the current value for the specified section and key. If either the section or the key do not exist, the method returns the fallback `default` value. If `default` is not specified or set to `null`, an error is also raised.
	**/
	@:native("GetValue")
	public overload function getValue(section:std.String, key:std.String):Dynamic;

	/**		
		Returns the current value for the specified section and key. If either the section or the key do not exist, the method returns the fallback `default` value. If `default` is not specified or set to `null`, an error is also raised.
	**/
	@:native("GetValue")
	public overload function getValue(section:std.String, key:std.String, default_:Dynamic):Dynamic;
	#end

	/**		
		Returns `true` if the specified section exists.
	**/
	@:native("HasSection")
	public function hasSection(section:std.String):Bool;

	/**		
		Returns `true` if the specified section-key pair exists.
	**/
	@:native("HasSectionKey")
	public function hasSectionKey(section:std.String, key:std.String):Bool;

	/**		
		Returns an array of all defined section identifiers.
	**/
	public extern inline function getSections():std.Array<std.String> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetSections()", this));
	}

	/**		
		Returns an array of all defined key identifiers in the specified section. Raises an error and returns an empty array if the section does not exist.
	**/
	public extern inline function getSectionKeys(section:std.String):std.Array<std.String> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetSectionKeys({1})", this, section));
	}

	/**		
		Deletes the specified section along with all the key-value pairs inside. Raises an error if the section does not exist.
	**/
	@:native("EraseSection")
	public function eraseSection(section:std.String):Void;

	/**		
		Deletes the specified key in a section. Raises an error if either the section or the key do not exist.
	**/
	@:native("EraseSectionKey")
	public function eraseSectionKey(section:std.String, key:std.String):Void;

	/**		
		Loads the config file specified as a parameter. The file's contents are parsed and loaded in the `godot.ConfigFile` object which the method was called on.
		
		Returns one of the `godot.Error` code constants (`OK` on success).
	**/
	@:native("Load")
	public function load(path:std.String):godot.Error;

	/**		
		Parses the passed string as the contents of a config file. The string is parsed and loaded in the ConfigFile object which the method was called on.
		
		Returns one of the `godot.Error` code constants (`OK` on success).
	**/
	@:native("Parse")
	public function parse(data:std.String):godot.Error;

	/**		
		Saves the contents of the `godot.ConfigFile` object to the file specified as a parameter. The output file uses an INI-style structure.
		
		Returns one of the `godot.Error` code constants (`OK` on success).
	**/
	@:native("Save")
	public function save(path:std.String):godot.Error;

	/**		
		Loads the encrypted config file specified as a parameter, using the provided `key` to decrypt it. The file's contents are parsed and loaded in the `godot.ConfigFile` object which the method was called on.
		
		Returns one of the `godot.Error` code constants (`OK` on success).
	**/
	@:native("LoadEncrypted")
	public function loadEncrypted(path:std.String, key:HaxeArray<cs.types.UInt8>):godot.Error;

	/**		
		Loads the encrypted config file specified as a parameter, using the provided `password` to decrypt it. The file's contents are parsed and loaded in the `godot.ConfigFile` object which the method was called on.
		
		Returns one of the `godot.Error` code constants (`OK` on success).
	**/
	@:native("LoadEncryptedPass")
	public function loadEncryptedPass(path:std.String, password:std.String):godot.Error;

	/**		
		Saves the contents of the `godot.ConfigFile` object to the AES-256 encrypted file specified as a parameter, using the provided `key` to encrypt it. The output file uses an INI-style structure.
		
		Returns one of the `godot.Error` code constants (`OK` on success).
	**/
	@:native("SaveEncrypted")
	public function saveEncrypted(path:std.String, key:HaxeArray<cs.types.UInt8>):godot.Error;

	/**		
		Saves the contents of the `godot.ConfigFile` object to the AES-256 encrypted file specified as a parameter, using the provided `password` to encrypt it. The output file uses an INI-style structure.
		
		Returns one of the `godot.Error` code constants (`OK` on success).
	**/
	@:native("SaveEncryptedPass")
	public function saveEncryptedPass(path:std.String, password:std.String):godot.Error;

	/**		
		Removes the entire contents of the config.
	**/
	@:native("Clear")
	public function clear():Void;
}
