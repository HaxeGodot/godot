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
	@:native("Singleton")
	public static var SINGLETON(default, never):godot.Object;

	/**		
		Controls how much physics ticks are synchronized with real time. For 0 or less, the ticks are synchronized. Such values are recommended for network games, where clock synchronization matters. Higher values cause higher deviation of in-game clock and real clock, but allows to smooth out framerate jitters. The default value of 0.5 should be fine for most; values above 2 could cause the game to react to dropped frames with a noticeable delay and are not recommended.
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
		The number of fixed iterations per second. This controls how often physics simulation and `godot.Node._PhysicsProcess` methods are run. This value should generally always be set to `60` or above, as Godot doesn't interpolate the physics step. As a result, values lower than `60` will look stuttery. This value can be increased to make input more reactive or work around tunneling issues, but keep in mind doing so will increase CPU usage.
	**/
	@:native("IterationsPerSecond")
	public static var ITERATIONS_PER_SECOND:Int;

	/**		
		If `true`, it is running inside the editor. Useful for tool scripts.
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
		Returns the total number of frames drawn. If the render loop is disabled with `--disable-render-loop` via command line, this returns `0`. See also `godot.Engine.getIdleFrames`.
	**/
	@:native("GetFramesDrawn")
	public static function getFramesDrawn():Int;

	/**		
		Returns the frames per second of the running game.
	**/
	@:native("GetFramesPerSecond")
	public static function getFramesPerSecond():Single;

	/**		
		Returns the total number of frames passed since engine initialization which is advanced on each physics frame.
	**/
	@:native("GetPhysicsFrames")
	public static function getPhysicsFrames():cs.types.UInt64;

	/**		
		Returns the total number of frames passed since engine initialization which is advanced on each idle frame, regardless of whether the render loop is enabled. See also `godot.Engine.getFramesDrawn`.
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
}
