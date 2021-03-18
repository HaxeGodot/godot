// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
This class is a bridge between Godot and the Mono runtime. It exposes several low-level operations and is only available in Mono-enabled Godot builds.

See also `godot.CSharpScript`.
**/
@:libType
@:csNative
@:native("Godot.GodotSharp")
@:autoBuild(godot.Godot.buildUserClass())
extern class GodotSharp {
	@:native("Singleton")
	public static var SINGLETON(default, never):godot.Object;

	/**		
		Attaches the current thread to the Mono runtime.
	**/
	@:native("AttachThread")
	public static function attachThread():Void;

	/**		
		Detaches the current thread from the Mono runtime.
	**/
	@:native("DetachThread")
	public static function detachThread():Void;

	/**		
		Returns the current MonoDomain ID.
		
		Note: The Mono runtime must be initialized for this method to work (use `godot.GodotSharp.isRuntimeInitialized` to check). If the Mono runtime isn't initialized at the time this method is called, the engine will crash.
	**/
	@:native("GetDomainId")
	public static function getDomainId():Int;

	/**		
		Returns the scripts MonoDomain's ID. This will be the same MonoDomain ID as `godot.GodotSharp.getDomainId`, unless the scripts domain isn't loaded.
		
		Note: The Mono runtime must be initialized for this method to work (use `godot.GodotSharp.isRuntimeInitialized` to check). If the Mono runtime isn't initialized at the time this method is called, the engine will crash.
	**/
	@:native("GetScriptsDomainId")
	public static function getScriptsDomainId():Int;

	/**		
		Returns `true` if the scripts domain is loaded, `false` otherwise.
	**/
	@:native("IsScriptsDomainLoaded")
	public static function isScriptsDomainLoaded():Bool;

	/**		
		Returns `true` if the domain is being finalized, `false` otherwise.
	**/
	@:native("IsDomainFinalizingForUnload")
	public static function isDomainFinalizingForUnload(domainId:Int):Bool;

	/**		
		Returns `true` if the Mono runtime is shutting down, `false` otherwise.
	**/
	@:native("IsRuntimeShuttingDown")
	public static function isRuntimeShuttingDown():Bool;

	/**		
		Returns `true` if the Mono runtime is initialized, `false` otherwise.
	**/
	@:native("IsRuntimeInitialized")
	public static function isRuntimeInitialized():Bool;
}
