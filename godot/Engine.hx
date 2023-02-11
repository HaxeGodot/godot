// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
The `godot.Engine` singleton allows you to query and modify the project's run-time parameters, such as frames per second, time scale, and others.
**/
@:libType
@:csNative
@:native("Godot.Engine")
@:autoBuild(godot.Godot.buildUserClass())
extern class Engine {
	@:native("Singleton") @:readOnly
	public static var SINGLETON(default, never):godot.Object;

	/**		
		Controls how much physics ticks are synchronized with real time. For 0 or less, the ticks are synchronized. Such values are recommended for network games, where clock synchronization matters. Higher values cause higher deviation of the in-game clock and real clock but smooth out framerate jitters. The default value of 0.5 should be fine for most; values above 2 could cause the game to react to dropped frames with a noticeable delay and are not recommended.
		
		Note: For best results, when using a custom physics interpolation solution, the physics jitter fix should be disabled by setting `godot.Engine.physicsJitterFix` to `0`.
	**/
	@:native("PhysicsJitterFix")
	public static var PHYSICS_JITTER_FIX:Single;

	/**		
		Controls how fast or slow the in-game clock ticks versus the real life one. It defaults to 1.0. A value of 2.0 means the game moves twice as fast as real life, whilst a value of 0.5 means the game moves at half the regular speed.
	**/
	@:native("TimeScale")
	public static var TIME_SCALE:Single;

	/**		
		The desired frames per second. If the hardware cannot keep up, this setting may not be respected. A value of 0 means no limit.
	**/
	@:native("TargetFps")
	public static var TARGET_FPS:Int;

	/**		
		The number of fixed iterations per second. This controls how often physics simulation and `godot.Node._PhysicsProcess` methods are run. This value should generally always be set to `60` or above, as Godot doesn't interpolate the physics step. As a result, values lower than `60` will look stuttery. This value can be increased to make input more reactive or work around collision tunneling issues, but keep in mind doing so will increase CPU usage. See also `godot.Engine.targetFps` and .
		
		Note: Only 8 physics ticks may be simulated per rendered frame at most. If more than 8 physics ticks have to be simulated per rendered frame to keep up with rendering, the game will appear to slow down (even if `delta` is used consistently in physics calculations). Therefore, it is recommended not to increase `godot.Engine.iterationsPerSecond` above 240. Otherwise, the game will slow down when the rendering framerate goes below 30 FPS.
	**/
	@:native("IterationsPerSecond")
	public static var ITERATIONS_PER_SECOND:Int;

	/**		
		If `false`, stops printing error and warning messages to the console and editor Output log. This can be used to hide error and warning messages during unit test suite runs. This property is equivalent to the  project setting.
		
		Warning: If you set this to `false` anywhere in the project, important error messages may be hidden even if they are emitted from other scripts. If this is set to `false` in a `tool` script, this will also impact the editor itself. Do not report bugs before ensuring error messages are enabled (as they are by default).
		
		Note: This property does not impact the editor's Errors tab when running a project from the editor.
	**/
	@:native("PrintErrorMessages")
	public static var PRINT_ERROR_MESSAGES:Bool;

	/**		
		If `true`, the script is currently running inside the editor. This is useful for `tool` scripts to conditionally draw editor helpers, or prevent accidentally running "game" code that would affect the scene state while in the editor:
		
		```
		
		if Engine.editor_hint:
		draw_gizmos()
		else:
		simulate_physics()
		
		```
		
		See [https://docs.godotengine.org/en/3.4/tutorials/misc/running_code_in_the_editor.html](Running code in the editor) in the documentation for more information.
		
		Note: To detect whether the script is run from an editor build (e.g. when pressing `F5`), use `godot.OS.hasFeature` with the `"editor"` argument instead. `OS.has_feature("editor")` will evaluate to `true` both when the code is running in the editor and when running the project from the editor, but it will evaluate to `false` when the code is run from an exported project.
	**/
	@:native("EditorHint")
	public static var EDITOR_HINT:Bool;

	@:native("SetIterationsPerSecond")
	public static function setIterationsPerSecond(iterationsPerSecond:Int):Void;

	@:native("GetIterationsPerSecond")
	public static function getIterationsPerSecond():Int;

	@:native("SetPhysicsJitterFix")
	public static function setPhysicsJitterFix(physicsJitterFix:Single):Void;

	@:native("GetPhysicsJitterFix")
	public static function getPhysicsJitterFix():Single;

	/**		
		Returns the fraction through the current physics tick we are at the time of rendering the frame. This can be used to implement fixed timestep interpolation.
	**/
	@:native("GetPhysicsInterpolationFraction")
	public static function getPhysicsInterpolationFraction():Single;

	@:native("SetTargetFps")
	public static function setTargetFps(targetFps:Int):Void;

	@:native("GetTargetFps")
	public static function getTargetFps():Int;

	@:native("SetTimeScale")
	public static function setTimeScale(timeScale:Single):Void;

	@:native("GetTimeScale")
	public static function getTimeScale():Single;

	/**		
		Returns the total number of frames drawn. On headless platforms, or if the render loop is disabled with `--disable-render-loop` via command line, `godot.Engine.getFramesDrawn` always returns `0`. See `godot.Engine.getIdleFrames`.
	**/
	@:native("GetFramesDrawn")
	public static function getFramesDrawn():Int;

	/**		
		Returns the frames per second of the running game.
	**/
	@:native("GetFramesPerSecond")
	public static function getFramesPerSecond():Single;

	/**		
		Returns the total number of frames passed since engine initialization which is advanced on each physics frame. See also `godot.Engine.getIdleFrames`.
		
		`godot.Engine.getPhysicsFrames` can be used to run expensive logic less often without relying on a `godot.Timer`:
		
		```
		
		func _physics_process(_delta):
		if Engine.get_physics_frames() % 2 == 0:
		pass  # Run expensive logic only once every 2 physics frames here.
		
		```
	**/
	@:native("GetPhysicsFrames")
	public static function getPhysicsFrames():cs.types.UInt64;

	/**		
		Returns the total number of frames passed since engine initialization which is advanced on each idle frame, regardless of whether the render loop is enabled. See also `godot.Engine.getFramesDrawn` and `godot.Engine.getPhysicsFrames`.
		
		`godot.Engine.getIdleFrames` can be used to run expensive logic less often without relying on a `godot.Timer`:
		
		```
		
		func _process(_delta):
		if Engine.get_idle_frames() % 2 == 0:
		pass  # Run expensive logic only once every 2 idle (render) frames here.
		
		```
	**/
	@:native("GetIdleFrames")
	public static function getIdleFrames():cs.types.UInt64;

	/**		
		Returns the main loop object (see `godot.MainLoop` and `godot.SceneTree`).
	**/
	@:native("GetMainLoop")
	public static function getMainLoop():godot.MainLoop;

	/**		
		Returns the current engine version information in a Dictionary.
		
		`major`    - Holds the major version number as an int
		
		`minor`    - Holds the minor version number as an int
		
		`patch`    - Holds the patch version number as an int
		
		`hex`      - Holds the full version number encoded as a hexadecimal int with one byte (2 places) per number (see example below)
		
		`status`   - Holds the status (e.g. "beta", "rc1", "rc2", ... "stable") as a String
		
		`build`    - Holds the build name (e.g. "custom_build") as a String
		
		`hash`     - Holds the full Git commit hash as a String
		
		`year`     - Holds the year the version was released in as an int
		
		`string`   - `major` + `minor` + `patch` + `status` + `build` in a single String
		
		The `hex` value is encoded as follows, from left to right: one byte for the major, one byte for the minor, one byte for the patch version. For example, "3.1.12" would be `0x03010C`. Note: It's still an int internally, and printing it will give you its decimal representation, which is not particularly meaningful. Use hexadecimal literals for easy version comparisons from code:
		
		```
		
		if Engine.get_version_info().hex &gt;= 0x030200:
		# Do things specific to version 3.2 or later
		else:
		# Do things specific to versions before 3.2
		
		```
	**/
	@:native("GetVersionInfo")
	public static function getVersionInfo():godot.collections.Dictionary;

	/**		
		Returns engine author information in a Dictionary.
		
		`lead_developers`    - Array of Strings, lead developer names
		
		`founders`           - Array of Strings, founder names
		
		`project_managers`   - Array of Strings, project manager names
		
		`developers`         - Array of Strings, developer names
	**/
	@:native("GetAuthorInfo")
	public static function getAuthorInfo():godot.collections.Dictionary;

	/**		
		Returns an Array of copyright information Dictionaries.
		
		`name`    - String, component name
		
		`parts`   - Array of Dictionaries {`files`, `copyright`, `license`} describing subsections of the component
	**/
	@:native("GetCopyrightInfo")
	public static function getCopyrightInfo():godot.collections.Array;

	/**		
		Returns a Dictionary of Arrays of donor names.
		
		{`platinum_sponsors`, `gold_sponsors`, `silver_sponsors`, `bronze_sponsors`, `mini_sponsors`, `gold_donors`, `silver_donors`, `bronze_donors`}
	**/
	@:native("GetDonorInfo")
	public static function getDonorInfo():godot.collections.Dictionary;

	/**		
		Returns Dictionary of licenses used by Godot and included third party components.
	**/
	@:native("GetLicenseInfo")
	public static function getLicenseInfo():godot.collections.Dictionary;

	/**		
		Returns Godot license text.
	**/
	@:native("GetLicenseText")
	public static function getLicenseText():std.String;

	/**		
		Returns `true` if the game is inside the fixed process and physics phase of the game loop.
	**/
	@:native("IsInPhysicsFrame")
	public static function isInPhysicsFrame():Bool;

	/**		
		Returns `true` if a singleton with given `name` exists in global scope.
	**/
	@:native("HasSingleton")
	public static function hasSingleton(name:std.String):Bool;

	/**		
		Returns a global singleton with given `name`. Often used for plugins, e.g. `GodotPayment` on Android.
	**/
	@:native("GetSingleton")
	public static function getSingleton(name:std.String):godot.Object;

	@:native("SetEditorHint")
	public static function setEditorHint(enabled:Bool):Void;

	@:native("IsEditorHint")
	public static function isEditorHint():Bool;

	@:native("SetPrintErrorMessages")
	public static function setPrintErrorMessages(enabled:Bool):Void;

	@:native("IsPrintingErrorMessages")
	public static function isPrintingErrorMessages():Bool;
}
