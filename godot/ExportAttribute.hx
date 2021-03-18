// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

@:libType
@:csNative
@:native("Godot.ExportAttribute")
@:autoBuild(godot.Godot.buildUserClass())
extern class ExportAttribute extends cs.system.Attribute {
	#if doc_gen
	@:native("new")
	public function new(?hint:godot.PropertyHint, ?hintString:std.String):Void;
	#else
	@:native("new")
	public overload function new():Void;

	@:native("new")
	public overload function new(hint:godot.PropertyHint):Void;

	@:native("new")
	public overload function new(hint:godot.PropertyHint, hintString:std.String):Void;
	#end
}
