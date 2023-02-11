// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
`godot.EditorSceneImporter` allows to define an importer script for a third-party 3D format.

To use `godot.EditorSceneImporter`, register it using the `godot.EditorPlugin.addSceneImportPlugin` method first.
**/
@:libType
@:csNative
@:native("Godot.EditorSceneImporter")
@:autoBuild(godot.Godot.buildUserClass())
extern class EditorSceneImporter extends godot.Reference {
	@:native("ImportMaterialsInInstances")
	public static var IMPORT_MATERIALS_IN_INSTANCES(default, never):Int;

	@:native("ImportFailOnMissingDependencies")
	public static var IMPORT_FAIL_ON_MISSING_DEPENDENCIES(default, never):Int;

	@:native("ImportGenerateTangentArrays")
	public static var IMPORT_GENERATE_TANGENT_ARRAYS(default, never):Int;

	@:native("ImportAnimationKeepValueTracks")
	public static var IMPORT_ANIMATION_KEEP_VALUE_TRACKS(default, never):Int;

	@:native("ImportAnimationForceAllTracksInAllClips")
	public static var IMPORT_ANIMATION_FORCE_ALL_TRACKS_IN_ALL_CLIPS(default, never):Int;

	@:native("ImportAnimationOptimize")
	public static var IMPORT_ANIMATION_OPTIMIZE(default, never):Int;

	@:native("ImportAnimationDetectLoop")
	public static var IMPORT_ANIMATION_DETECT_LOOP(default, never):Int;

	@:native("ImportAnimation")
	public static var IMPORT_ANIMATION(default, never):Int;

	@:native("ImportScene")
	public static var IMPORT_SCENE(default, never):Int;

	@:native("new")
	public function new():Void;

	@:native("_GetExtensions")
	public function _GetExtensions():godot.collections.Array;

	@:native("_GetImportFlags")
	public function _GetImportFlags():Int;

	@:native("_ImportAnimation")
	public function _ImportAnimation(path:std.String, flags:Int, bakeFps:Int):godot.Animation;

	@:native("_ImportScene")
	public function _ImportScene(path:std.String, flags:Int, bakeFps:Int):godot.Node;

	@:native("ImportSceneFromOtherImporter")
	public function importSceneFromOtherImporter(path:std.String, flags:UInt, bakeFps:Int, compressFlags:UInt):godot.Node;

	@:native("ImportAnimationFromOtherImporter")
	public function importAnimationFromOtherImporter(path:std.String, flags:UInt, bakeFps:Int):godot.Animation;
}
