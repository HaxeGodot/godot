// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
File type. This is used to permanently store data into the user device's file system and to read from it. This can be used to store game save data or player configuration files, for example.

Here's a sample on how to write and read from a file:

```

func save(content):
var file = File.new()
file.open("user://save_game.dat", File.WRITE)
file.store_string(content)
file.close()

func load():
var file = File.new()
file.open("user://save_game.dat", File.READ)
var content = file.get_as_text()
file.close()
return content

```

In the example above, the file will be saved in the user data folder as specified in the [https://docs.godotengine.org/en/3.3/tutorials/io/data_paths.html](Data paths) documentation.

Note: To access project resources once exported, it is recommended to use `godot.ResourceLoader` instead of the `godot.File` API, as some files are converted to engine-specific formats and their original source files might not be present in the exported PCK package.

Note: Files are automatically closed only if the process exits "normally" (such as by clicking the window manager's close button or pressing Alt + F4). If you stop the project execution by pressing F8 while the project is running, the file won't be closed as the game process will be killed. You can work around this by calling `godot.File.flush` at regular intervals.
**/
@:libType
@:csNative
@:native("Godot.File")
@:autoBuild(godot.Godot.buildUserClass())
extern class File extends godot.Reference {
	/**		
		If `true`, the file is read with big-endian [https://en.wikipedia.org/wiki/Endianness](endianness). If `false`, the file is read with little-endian endianness. If in doubt, leave this to `false` as most files are written with little-endian endianness.
		
		Note: `godot.File.endianSwap` is only about the file format, not the CPU type. The CPU endianness doesn't affect the default endianness for files written.
		
		Note: This is always reset to `false` whenever you open the file. Therefore, you must set `godot.File.endianSwap` after opening the file, not before.
	**/
	@:native("EndianSwap")
	public var endianSwap:Bool;

	@:native("new")
	public function new():Void;

	/**		
		Opens an encrypted file in write or read mode. You need to pass a binary key to encrypt/decrypt it.
		
		Note: The provided key must be 32 bytes long.
	**/
	@:native("OpenEncrypted")
	public function openEncrypted(path:std.String, modeFlags:godot.File_ModeFlags, key:haxe.Rest<cs.types.UInt8>):godot.Error;

	/**		
		Opens an encrypted file in write or read mode. You need to pass a password to encrypt/decrypt it.
	**/
	@:native("OpenEncryptedWithPass")
	public function openEncryptedWithPass(path:std.String, modeFlags:godot.File_ModeFlags, pass:std.String):godot.Error;

	#if doc_gen
	/**		
		Opens a compressed file for reading or writing.
	**/
	@:native("OpenCompressed")
	public function openCompressed(path:std.String, modeFlags:godot.File_ModeFlags, ?compressionMode:godot.File_CompressionMode):godot.Error;
	#else
	/**		
		Opens a compressed file for reading or writing.
	**/
	@:native("OpenCompressed")
	public overload function openCompressed(path:std.String, modeFlags:godot.File_ModeFlags):godot.Error;

	/**		
		Opens a compressed file for reading or writing.
	**/
	@:native("OpenCompressed")
	public overload function openCompressed(path:std.String, modeFlags:godot.File_ModeFlags, compressionMode:godot.File_CompressionMode):godot.Error;
	#end

	/**		
		Opens the file for writing or reading, depending on the flags.
	**/
	@:native("Open")
	public function open(path:std.String, flags:godot.File_ModeFlags):godot.Error;

	/**		
		Writes the file's buffer to disk. Flushing is automatically performed when the file is closed. This means you don't need to call `godot.File.flush` manually before closing a file using `godot.File.close`. Still, calling `godot.File.flush` can be used to ensure the data is safe even if the project crashes instead of being closed gracefully.
		
		Note: Only call `godot.File.flush` when you actually need it. Otherwise, it will decrease performance due to constant disk writes.
	**/
	@:native("Flush")
	public function flush():Void;

	/**		
		Closes the currently opened file and prevents subsequent read/write operations. Use `godot.File.flush` to persist the data to disk without closing the file.
	**/
	@:native("Close")
	public function close():Void;

	/**		
		Returns the path as a `String` for the current open file.
	**/
	@:native("GetPath")
	public function getPath():std.String;

	/**		
		Returns the absolute path as a `String` for the current open file.
	**/
	@:native("GetPathAbsolute")
	public function getPathAbsolute():std.String;

	/**		
		Returns `true` if the file is currently opened.
	**/
	@:native("IsOpen")
	public function isOpen():Bool;

	/**		
		Changes the file reading/writing cursor to the specified position (in bytes from the beginning of the file).
	**/
	@:native("Seek")
	public function seek(position:haxe.Int64):Void;

	#if doc_gen
	/**		
		Changes the file reading/writing cursor to the specified position (in bytes from the end of the file).
		
		Note: This is an offset, so you should use negative numbers or the cursor will be at the end of the file.
	**/
	@:native("SeekEnd")
	public function seekEnd(?position:haxe.Int64):Void;
	#else
	/**		
		Changes the file reading/writing cursor to the specified position (in bytes from the end of the file).
		
		Note: This is an offset, so you should use negative numbers or the cursor will be at the end of the file.
	**/
	@:native("SeekEnd")
	public overload function seekEnd():Void;

	/**		
		Changes the file reading/writing cursor to the specified position (in bytes from the end of the file).
		
		Note: This is an offset, so you should use negative numbers or the cursor will be at the end of the file.
	**/
	@:native("SeekEnd")
	public overload function seekEnd(position:haxe.Int64):Void;
	#end

	/**		
		Returns the file cursor's position.
	**/
	@:native("GetPosition")
	public function getPosition():haxe.Int64;

	/**		
		Returns the size of the file in bytes.
	**/
	@:native("GetLen")
	public function getLen():haxe.Int64;

	/**		
		Returns `true` if the file cursor has read past the end of the file.
		
		Note: This function will still return `false` while at the end of the file and only activates when reading past it. This can be confusing but it conforms to how low-level file access works in all operating systems. There is always `godot.File.getLen` and `godot.File.getPosition` to implement a custom logic.
	**/
	@:native("EofReached")
	public function eofReached():Bool;

	/**		
		Returns the next 8 bits from the file as an integer. See `godot.File.store8` for details on what values can be stored and retrieved this way.
	**/
	@:native("Get8")
	public function get8():cs.types.UInt8;

	/**		
		Returns the next 16 bits from the file as an integer. See `godot.File.store16` for details on what values can be stored and retrieved this way.
	**/
	@:native("Get16")
	public function get16():cs.types.UInt16;

	/**		
		Returns the next 32 bits from the file as an integer. See `godot.File.store32` for details on what values can be stored and retrieved this way.
	**/
	@:native("Get32")
	public function get32():UInt;

	/**		
		Returns the next 64 bits from the file as an integer. See `godot.File.store64` for details on what values can be stored and retrieved this way.
	**/
	@:native("Get64")
	public function get64():cs.types.UInt64;

	/**		
		Returns the next 32 bits from the file as a floating-point number.
	**/
	@:native("GetFloat")
	public function getFloat():Single;

	/**		
		Returns the next 64 bits from the file as a floating-point number.
	**/
	@:native("GetDouble")
	public function getDouble():Float;

	/**		
		Returns the next bits from the file as a floating-point number.
	**/
	@:native("GetReal")
	public function getReal():Single;

	/**		
		Returns next `len` bytes of the file as a `cs.UInt8`.
	**/
	public extern inline function getBuffer(len:Int):std.Array<cs.types.UInt8> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetBuffer({1})", this, len));
	}

	/**		
		Returns the next line of the file as a `String`.
		
		Text is interpreted as being UTF-8 encoded.
	**/
	@:native("GetLine")
	public function getLine():std.String;

	#if doc_gen
	/**		
		Returns the next value of the file in CSV (Comma-Separated Values) format. You can pass a different delimiter `delim` to use other than the default `","` (comma). This delimiter must be one-character long.
		
		Text is interpreted as being UTF-8 encoded.
	**/
	public extern inline function getCsvLine(?delim:std.String):std.Array<std.String> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetCsvLine({1})", this, delim));
	}
	#else
	/**		
		Returns the next value of the file in CSV (Comma-Separated Values) format. You can pass a different delimiter `delim` to use other than the default `","` (comma). This delimiter must be one-character long.
		
		Text is interpreted as being UTF-8 encoded.
	**/
	public overload extern inline function getCsvLine():std.Array<std.String> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetCsvLine()", this));
	}

	/**		
		Returns the next value of the file in CSV (Comma-Separated Values) format. You can pass a different delimiter `delim` to use other than the default `","` (comma). This delimiter must be one-character long.
		
		Text is interpreted as being UTF-8 encoded.
	**/
	public overload extern inline function getCsvLine(delim:std.String):std.Array<std.String> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetCsvLine({1})", this, delim));
	}
	#end

	/**		
		Returns the whole file as a `String`.
		
		Text is interpreted as being UTF-8 encoded.
	**/
	@:native("GetAsText")
	public function getAsText():std.String;

	/**		
		Returns an MD5 String representing the file at the given path or an empty `String` on failure.
	**/
	@:native("GetMd5")
	public function getMd5(path:std.String):std.String;

	/**		
		Returns a SHA-256 `String` representing the file at the given path or an empty `String` on failure.
	**/
	@:native("GetSha256")
	public function getSha256(path:std.String):std.String;

	@:native("GetEndianSwap")
	public function getEndianSwap():Bool;

	@:native("SetEndianSwap")
	public function setEndianSwap(enable:Bool):Void;

	/**		
		Returns the last error that happened when trying to perform operations. Compare with the `ERR_FILE_*` constants from `godot.Error`.
	**/
	@:native("GetError")
	public function getError():godot.Error;

	#if doc_gen
	/**		
		Returns the next `Variant` value from the file. If `allow_objects` is `true`, decoding objects is allowed.
		
		Warning: Deserialized objects can contain code which gets executed. Do not use this option if the serialized object comes from untrusted sources to avoid potential security threats such as remote code execution.
	**/
	@:native("GetVar")
	public function getVar(?allowObjects:Bool):Dynamic;
	#else
	/**		
		Returns the next `Variant` value from the file. If `allow_objects` is `true`, decoding objects is allowed.
		
		Warning: Deserialized objects can contain code which gets executed. Do not use this option if the serialized object comes from untrusted sources to avoid potential security threats such as remote code execution.
	**/
	@:native("GetVar")
	public overload function getVar():Dynamic;

	/**		
		Returns the next `Variant` value from the file. If `allow_objects` is `true`, decoding objects is allowed.
		
		Warning: Deserialized objects can contain code which gets executed. Do not use this option if the serialized object comes from untrusted sources to avoid potential security threats such as remote code execution.
	**/
	@:native("GetVar")
	public overload function getVar(allowObjects:Bool):Dynamic;
	#end

	/**		
		Stores an integer as 8 bits in the file.
		
		Note: The `value` should lie in the interval `[0, 255]`. Any other value will overflow and wrap around.
		
		To store a signed integer, use `godot.File.store64`, or convert it manually (see `godot.File.store16` for an example).
	**/
	@:native("Store8")
	public function store8(value:cs.types.UInt8):Void;

	/**		
		Stores an integer as 16 bits in the file.
		
		Note: The `value` should lie in the interval `[0, 2^16 - 1]`. Any other value will overflow and wrap around.
		
		To store a signed integer, use `godot.File.store64` or store a signed integer from the interval `[-2^15, 2^15 - 1]` (i.e. keeping one bit for the signedness) and compute its sign manually when reading. For example:
		
		```
		
		const MAX_15B = 1 &lt;&lt; 15
		const MAX_16B = 1 &lt;&lt; 16
		
		func unsigned16_to_signed(unsigned):
		return (unsigned + MAX_15B) % MAX_16B - MAX_15B
		
		func _ready():
		var f = File.new()
		f.open("user://file.dat", File.WRITE_READ)
		f.store_16(-42) # This wraps around and stores 65494 (2^16 - 42).
		f.store_16(121) # In bounds, will store 121.
		f.seek(0) # Go back to start to read the stored value.
		var read1 = f.get_16() # 65494
		var read2 = f.get_16() # 121
		var converted1 = unsigned16_to_signed(read1) # -42
		var converted2 = unsigned16_to_signed(read2) # 121
		
		```
	**/
	@:native("Store16")
	public function store16(value:cs.types.UInt16):Void;

	/**		
		Stores an integer as 32 bits in the file.
		
		Note: The `value` should lie in the interval `[0, 2^32 - 1]`. Any other value will overflow and wrap around.
		
		To store a signed integer, use `godot.File.store64`, or convert it manually (see `godot.File.store16` for an example).
	**/
	@:native("Store32")
	public function store32(value:UInt):Void;

	/**		
		Stores an integer as 64 bits in the file.
		
		Note: The `value` must lie in the interval `[-2^63, 2^63 - 1]` (i.e. be a valid `Int` value).
	**/
	@:native("Store64")
	public function store64(value:cs.types.UInt64):Void;

	/**		
		Stores a floating-point number as 32 bits in the file.
	**/
	@:native("StoreFloat")
	public function storeFloat(value:Single):Void;

	/**		
		Stores a floating-point number as 64 bits in the file.
	**/
	@:native("StoreDouble")
	public function storeDouble(value:Float):Void;

	/**		
		Stores a floating-point number in the file.
	**/
	@:native("StoreReal")
	public function storeReal(value:Single):Void;

	/**		
		Stores the given array of bytes in the file.
	**/
	@:native("StoreBuffer")
	public function storeBuffer(buffer:haxe.Rest<cs.types.UInt8>):Void;

	/**		
		Appends `line` to the file followed by a line return character (`\n`), encoding the text as UTF-8.
	**/
	@:native("StoreLine")
	public function storeLine(line:std.String):Void;

	#if doc_gen
	/**		
		Store the given `String` in the file as a line formatted in the CSV (Comma-Separated Values) format. You can pass a different delimiter `delim` to use other than the default `","` (comma). This delimiter must be one-character long.
		
		Text will be encoded as UTF-8.
	**/
	@:native("StoreCsvLine")
	public function storeCsvLine(values:std.Array<std.String>, ?delim:std.String):Void;
	#else
	/**		
		Store the given `String` in the file as a line formatted in the CSV (Comma-Separated Values) format. You can pass a different delimiter `delim` to use other than the default `","` (comma). This delimiter must be one-character long.
		
		Text will be encoded as UTF-8.
	**/
	@:native("StoreCsvLine")
	public overload function storeCsvLine(values:HaxeArray<std.String>):Void;

	/**		
		Store the given `String` in the file as a line formatted in the CSV (Comma-Separated Values) format. You can pass a different delimiter `delim` to use other than the default `","` (comma). This delimiter must be one-character long.
		
		Text will be encoded as UTF-8.
	**/
	@:native("StoreCsvLine")
	public overload function storeCsvLine(values:HaxeArray<std.String>, delim:std.String):Void;
	#end

	/**		
		Appends `string` to the file without a line return, encoding the text as UTF-8.
	**/
	@:native("StoreString")
	public function storeString(string:std.String):Void;

	#if doc_gen
	/**		
		Stores any Variant value in the file. If `full_objects` is `true`, encoding objects is allowed (and can potentially include code).
	**/
	@:native("StoreVar")
	public function storeVar(value:Dynamic, ?fullObjects:Bool):Void;
	#else
	/**		
		Stores any Variant value in the file. If `full_objects` is `true`, encoding objects is allowed (and can potentially include code).
	**/
	@:native("StoreVar")
	public overload function storeVar(value:Dynamic):Void;

	/**		
		Stores any Variant value in the file. If `full_objects` is `true`, encoding objects is allowed (and can potentially include code).
	**/
	@:native("StoreVar")
	public overload function storeVar(value:Dynamic, fullObjects:Bool):Void;
	#end

	/**		
		Stores the given `String` as a line in the file in Pascal format (i.e. also store the length of the string).
		
		Text will be encoded as UTF-8.
	**/
	@:native("StorePascalString")
	public function storePascalString(string:std.String):Void;

	/**		
		Returns a `String` saved in Pascal format from the file.
		
		Text is interpreted as being UTF-8 encoded.
	**/
	@:native("GetPascalString")
	public function getPascalString():std.String;

	/**		
		Returns `true` if the file exists in the given path.
		
		Note: Many resources types are imported (e.g. textures or sound files), and their source asset will not be included in the exported game, as only the imported version is used. See `godot.ResourceLoader.exists` for an alternative approach that takes resource remapping into account.
	**/
	@:native("FileExists")
	public function fileExists(path:std.String):Bool;

	/**		
		Returns the last time the `file` was modified in unix timestamp format or returns a `String` "ERROR IN `file`". This unix timestamp can be converted to datetime by using `godot.OS.getDatetimeFromUnixTime`.
	**/
	@:native("GetModifiedTime")
	public function getModifiedTime(file:std.String):cs.types.UInt64;
}
