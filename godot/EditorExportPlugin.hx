// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Editor export plugins are automatically activated whenever the user exports the project. Their most common use is to determine what files are being included in the exported project. For each plugin, `godot.EditorExportPlugin._ExportBegin` is called at the beginning of the export process and then `godot.EditorExportPlugin._ExportFile` is called for each exported file.
**/
@:libType
@:csNative
@:native("Godot.EditorExportPlugin")
@:autoBuild(godot.Godot.buildUserClass())
extern class EditorExportPlugin extends godot.Reference {
	@:native("new")
	public function new():Void;

	/**		
		Virtual method to be overridden by the user. It is called when the export starts and provides all information about the export. `features` is the list of features for the export, `is_debug` is `true` for debug builds, `path` is the target path for the exported project. `flags` is only used when running a runnable profile, e.g. when using native run on Android.
	**/
	@:native("_ExportBegin")
	public function _ExportBegin(features:cs.NativeArray<std.String>, isDebug:Bool, path:std.String, flags:Int):Void;

	/**		
		Virtual method to be overridden by the user. Called when the export is finished.
	**/
	@:native("_ExportEnd")
	public function _ExportEnd():Void;

	/**		
		Virtual method to be overridden by the user. Called for each exported file, providing arguments that can be used to identify the file. `path` is the path of the file, `type` is the `godot.Resource` represented by the file (e.g. `godot.PackedScene`) and `features` is the list of features for the export.
		
		Calling `godot.EditorExportPlugin.skip` inside this callback will make the file not included in the export.
	**/
	@:native("_ExportFile")
	public function _ExportFile(path:std.String, type:std.String, features:haxe.Rest<std.String>):Void;

	/**		
		Adds a shared object with the given `tags` and destination `path`.
	**/
	@:native("AddSharedObject")
	public function addSharedObject(path:std.String, tags:haxe.Rest<std.String>):Void;

	/**		
		Adds a static lib from the given `path` to the iOS project.
	**/
	@:native("AddIosProjectStaticLib")
	public function addIosProjectStaticLib(path:std.String):Void;

	/**		
		Adds a custom file to be exported. `path` is the virtual path that can be used to load the file, `file` is the binary data of the file. If `remap` is `true`, file will not be exported, but instead remapped to the given `path`.
	**/
	@:native("AddFile")
	public function addFile(path:std.String, file:cs.NativeArray<cs.types.UInt8>, remap:Bool):Void;

	/**		
		Adds a static library (*.a) or dynamic library (*.dylib, *.framework) to Linking Phase in iOS's Xcode project.
	**/
	@:native("AddIosFramework")
	public function addIosFramework(path:std.String):Void;

	/**		
		Adds a dynamic library (*.dylib, *.framework) to Linking Phase in iOS's Xcode project and embeds it into resulting binary.
		
		Note: For static libraries (*.a) works in same way as `godot.EditorExportPlugin.addIosFramework`.
		
		This method should not be used for System libraries as they are already present on the device.
	**/
	@:native("AddIosEmbeddedFramework")
	public function addIosEmbeddedFramework(path:std.String):Void;

	/**		
		Adds content for iOS Property List files.
	**/
	@:native("AddIosPlistContent")
	public function addIosPlistContent(plistContent:std.String):Void;

	/**		
		Adds linker flags for the iOS export.
	**/
	@:native("AddIosLinkerFlags")
	public function addIosLinkerFlags(flags:std.String):Void;

	/**		
		Adds an iOS bundle file from the given `path` to the exported project.
	**/
	@:native("AddIosBundleFile")
	public function addIosBundleFile(path:std.String):Void;

	/**		
		Adds a C++ code to the iOS export. The final code is created from the code appended by each active export plugin.
	**/
	@:native("AddIosCppCode")
	public function addIosCppCode(code:std.String):Void;

	/**		
		To be called inside `godot.EditorExportPlugin._ExportFile`. Skips the current file, so it's not included in the export.
	**/
	@:native("Skip")
	public function skip():Void;
}
