// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
The `godot.PCKPacker` is used to create packages that can be loaded into a running project using `godot.ProjectSettings.loadResourcePack`.

```

var packer = PCKPacker.new()
packer.pck_start("test.pck")
packer.add_file("res://text.txt", "text.txt")
packer.flush()

```

The above `godot.PCKPacker` creates package `test.pck`, then adds a file named `text.txt` at the root of the package.
**/
@:libType
@:csNative
@:native("Godot.PCKPacker")
@:autoBuild(godot.Godot.buildUserClass())
extern class PCKPacker extends godot.Reference {
	@:native("new")
	public function new():Void;

	#if doc_gen
	/**		
		Creates a new PCK file with the name `pck_name`. The `.pck` file extension isn't added automatically, so it should be part of `pck_name` (even though it's not required).
	**/
	@:native("PckStart")
	public function pckStart(pckName:std.String, ?alignment:Int):godot.Error;
	#else
	/**		
		Creates a new PCK file with the name `pck_name`. The `.pck` file extension isn't added automatically, so it should be part of `pck_name` (even though it's not required).
	**/
	@:native("PckStart")
	public overload function pckStart(pckName:std.String):godot.Error;

	/**		
		Creates a new PCK file with the name `pck_name`. The `.pck` file extension isn't added automatically, so it should be part of `pck_name` (even though it's not required).
	**/
	@:native("PckStart")
	public overload function pckStart(pckName:std.String, alignment:Int):godot.Error;
	#end

	/**		
		Adds the `source_path` file to the current PCK package at the `pck_path` internal path (should start with `res://`).
	**/
	@:native("AddFile")
	public function addFile(pckPath:std.String, sourcePath:std.String):godot.Error;

	#if doc_gen
	/**		
		Writes the files specified using all `godot.PCKPacker.addFile` calls since the last flush. If `verbose` is `true`, a list of files added will be printed to the console for easier debugging.
	**/
	@:native("Flush")
	public function flush(?verbose:Bool):godot.Error;
	#else
	/**		
		Writes the files specified using all `godot.PCKPacker.addFile` calls since the last flush. If `verbose` is `true`, a list of files added will be printed to the console for easier debugging.
	**/
	@:native("Flush")
	public overload function flush():godot.Error;

	/**		
		Writes the files specified using all `godot.PCKPacker.addFile` calls since the last flush. If `verbose` is `true`, a list of files added will be printed to the console for easier debugging.
	**/
	@:native("Flush")
	public overload function flush(verbose:Bool):godot.Error;
	#end
}
