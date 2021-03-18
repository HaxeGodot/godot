// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

@:libType
@:csNative
@:native("Godot.NativeScript")
@:autoBuild(godot.Godot.buildUserClass())
extern class NativeScript extends godot.Script {
	@:native("ScriptClassIconPath")
	public var scriptClassIconPath:std.String;

	@:native("ScriptClassName")
	public var scriptClassName:std.String;

	@:native("Library")
	public var library:godot.GDNativeLibrary;

	@:native("ClassName")
	public var className:std.String;

	@:native("new")
	public function new():Void;

	@:native("SetClassName")
	public function setClassName(className:std.String):Void;

	@:native("GetClassName")
	public function getClassName():std.String;

	@:native("SetLibrary")
	public function setLibrary(library:godot.GDNativeLibrary):Void;

	@:native("GetLibrary")
	public function getLibrary():godot.GDNativeLibrary;

	@:native("SetScriptClassName")
	public function setScriptClassName(className:std.String):Void;

	@:native("GetScriptClassName")
	public function getScriptClassName():std.String;

	@:native("SetScriptClassIconPath")
	public function setScriptClassIconPath(iconPath:std.String):Void;

	@:native("GetScriptClassIconPath")
	public function getScriptClassIconPath():std.String;

	/**		
		Returns the documentation string that was previously set with `godot_nativescript_set_class_documentation`.
	**/
	@:native("GetClassDocumentation")
	public function getClassDocumentation():std.String;

	/**		
		Returns the documentation string that was previously set with `godot_nativescript_set_method_documentation`.
	**/
	@:native("GetMethodDocumentation")
	public function getMethodDocumentation(method:std.String):std.String;

	/**		
		Returns the documentation string that was previously set with `godot_nativescript_set_signal_documentation`.
	**/
	@:native("GetSignalDocumentation")
	public function getSignalDocumentation(signalName:std.String):std.String;

	/**		
		Returns the documentation string that was previously set with `godot_nativescript_set_property_documentation`.
	**/
	@:native("GetPropertyDocumentation")
	public function getPropertyDocumentation(path:std.String):std.String;

	/**		
		Constructs a new object of the base type with a script of this type already attached.
		
		Note: Any arguments passed to this function will be ignored and not passed to the native constructor function. This will change with in a future API extension.
	**/
	@:native("New")
	public function new_(args:haxe.Rest<Dynamic>):Dynamic;
}
