// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
A Visual Script node used to display annotations in the script, so that code may be documented.

Comment nodes can be resized so they encompass a group of nodes.
**/
@:libType
@:csNative
@:native("Godot.VisualScriptComment")
@:autoBuild(godot.Godot.buildUserClass())
extern class VisualScriptComment extends godot.VisualScriptNode {
	/**		
		The comment node's size (in pixels).
	**/
	@:native("Size")
	public var size:godot.Vector2;

	/**		
		The text inside the comment node.
	**/
	@:native("Description")
	public var description:std.String;

	/**		
		The comment node's title.
	**/
	@:native("Title")
	public var title:std.String;

	@:native("new")
	public function new():Void;

	@:native("SetTitle")
	public function setTitle(title:std.String):Void;

	@:native("GetTitle")
	public function getTitle():std.String;

	@:native("SetDescription")
	public function setDescription(description:std.String):Void;

	@:native("GetDescription")
	public function getDescription():std.String;

	@:native("SetSize")
	public function setSize(size:godot.Vector2):Void;

	@:native("GetSize")
	public function getSize():godot.Vector2;
}
