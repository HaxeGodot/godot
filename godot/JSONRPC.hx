// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

@:libType
@:csNative
@:native("Godot.JSONRPC")
@:autoBuild(godot.Godot.buildUserClass())
extern class JSONRPC extends godot.Object {
	@:native("new")
	public function new():Void;

	@:native("SetScope")
	public function setScope(scope:std.String, target:godot.Object):Void;

	#if doc_gen
	@:native("ProcessAction")
	public function processAction(action:Dynamic, ?recurse:Bool):Dynamic;
	#else
	@:native("ProcessAction")
	public overload function processAction(action:Dynamic):Dynamic;

	@:native("ProcessAction")
	public overload function processAction(action:Dynamic, recurse:Bool):Dynamic;
	#end

	@:native("ProcessString")
	public function processString(action:std.String):std.String;

	@:native("MakeRequest")
	public function makeRequest(method:std.String, params:Dynamic, id:Dynamic):godot.collections.Dictionary;

	@:native("MakeResponse")
	public function makeResponse(result:Dynamic, id:Dynamic):godot.collections.Dictionary;

	@:native("MakeNotification")
	public function makeNotification(method:std.String, params:Dynamic):godot.collections.Dictionary;

	#if doc_gen
	@:native("MakeResponseError")
	public function makeResponseError(code:Int, message:std.String, ?id:Dynamic):godot.collections.Dictionary;
	#else
	@:native("MakeResponseError")
	public overload function makeResponseError(code:Int, message:std.String):godot.collections.Dictionary;

	@:native("MakeResponseError")
	public overload function makeResponseError(code:Int, message:std.String, id:Dynamic):godot.collections.Dictionary;
	#end
}
