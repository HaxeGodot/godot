// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
`godot.EditorImportPlugin`s provide a way to extend the editor's resource import functionality. Use them to import resources from custom files or to provide alternatives to the editor's existing importers.

EditorImportPlugins work by associating with specific file extensions and a resource type. See `godot.EditorImportPlugin.getRecognizedExtensions` and `godot.EditorImportPlugin.getResourceType`. They may optionally specify some import presets that affect the import process. EditorImportPlugins are responsible for creating the resources and saving them in the `.import` directory (see ).

Below is an example EditorImportPlugin that imports a `godot.Mesh` from a file with the extension ".special" or ".spec":

```

tool
extends EditorImportPlugin

func get_importer_name():
return "my.special.plugin"

func get_visible_name():
return "Special Mesh"

func get_recognized_extensions():
return ["special", "spec"]

func get_save_extension():
return "mesh"

func get_resource_type():
return "Mesh"

func get_preset_count():
return 1

func get_preset_name(i):
return "Default"

func get_import_options(i):
return [{"name": "my_option", "default_value": false}]

func import(source_file, save_path, options, platform_variants, gen_files):
var file = File.new()
if file.open(source_file, File.READ) != OK:
return FAILED

var mesh = Mesh.new()
# Fill the Mesh with data read in "file", left as an exercise to the reader

var filename = save_path + "." + get_save_extension()
return ResourceSaver.save(filename, mesh)

```

To use `godot.EditorImportPlugin`, register it using the `godot.EditorPlugin.addImportPlugin` method first.
**/
@:libType
@:csNative
@:native("Godot.EditorImportPlugin")
@:autoBuild(godot.Godot.buildUserClass())
extern class EditorImportPlugin extends godot.ResourceImporter {
	@:native("new")
	public function new():Void;

	/**		
		Gets the options and default values for the preset at this index. Returns an Array of Dictionaries with the following keys: `name`, `default_value`, `property_hint` (optional), `hint_string` (optional), `usage` (optional).
	**/
	@:native("GetImportOptions")
	public function getImportOptions(preset:Int):godot.collections.Array;

	/**		
		Gets the order of this importer to be run when importing resources. Importers with lower import orders will be called first, and higher values will be called later. Use this to ensure the importer runs after the dependencies are already imported. The default import order is `0` unless overridden by a specific importer. See `godot.ResourceImporter_ImportOrder` for some predefined values.
	**/
	@:native("GetImportOrder")
	public function getImportOrder():Int;

	/**		
		Gets the unique name of the importer.
	**/
	@:native("GetImporterName")
	public function getImporterName():std.String;

	/**		
		This method can be overridden to hide specific import options if conditions are met. This is mainly useful for hiding options that depend on others if one of them is disabled. For example:
		
		```
		
		func get_option_visibility(option, options):
		# Only show the lossy quality setting if the compression mode is set to "Lossy".
		if option == "compress/lossy_quality" and options.has("compress/mode"):
		return int(options["compress/mode"]) == COMPRESS_LOSSY
		
		return true
		
		```
		
		Return `true` to make all options always visible.
	**/
	@:native("GetOptionVisibility")
	public function getOptionVisibility(option:std.String, options:godot.collections.Dictionary):Bool;

	/**		
		Gets the number of initial presets defined by the plugin. Use `godot.EditorImportPlugin.getImportOptions` to get the default options for the preset and `godot.EditorImportPlugin.getPresetName` to get the name of the preset.
	**/
	@:native("GetPresetCount")
	public function getPresetCount():Int;

	/**		
		Gets the name of the options preset at this index.
	**/
	@:native("GetPresetName")
	public function getPresetName(preset:Int):std.String;

	/**		
		Gets the priority of this plugin for the recognized extension. Higher priority plugins will be preferred. The default priority is `1.0`.
	**/
	@:native("GetPriority")
	public function getPriority():Single;

	/**		
		Gets the list of file extensions to associate with this loader (case-insensitive). e.g. `["obj"]`.
	**/
	@:native("GetRecognizedExtensions")
	public function getRecognizedExtensions():godot.collections.Array;

	/**		
		Gets the Godot resource type associated with this loader. e.g. `"Mesh"` or `"Animation"`.
	**/
	@:native("GetResourceType")
	public function getResourceType():std.String;

	/**		
		Gets the extension used to save this resource in the `.import` directory (see ).
	**/
	@:native("GetSaveExtension")
	public function getSaveExtension():std.String;

	/**		
		Gets the name to display in the import window. You should choose this name as a continuation to "Import as", e.g. "Import as Special Mesh".
	**/
	@:native("GetVisibleName")
	public function getVisibleName():std.String;

	/**		
		Imports `source_file` into `save_path` with the import `options` specified. The `platform_variants` and `gen_files` arrays will be modified by this function.
		
		This method must be overridden to do the actual importing work. See this class' description for an example of overriding this method.
	**/
	@:native("Import")
	public function import_(sourceFile:std.String, savePath:std.String, options:godot.collections.Dictionary, platformVariants:godot.collections.Array, genFiles:godot.collections.Array):Int;
}
