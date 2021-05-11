// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Translations are resources that can be loaded and unloaded on demand. They map a string to another string.
**/
@:libType
@:csNative
@:native("Godot.Translation")
@:autoBuild(godot.Godot.buildUserClass())
extern class Translation extends godot.Resource {
	/**		
		The locale of the translation.
	**/
	@:native("Locale")
	public var locale:std.String;

	@:native("Messages")
	public var messages:cs.NativeArray<std.String>;

	@:native("new")
	public function new():Void;

	@:native("SetLocale")
	public function setLocale(locale:std.String):Void;

	@:native("GetLocale")
	public function getLocale():std.String;

	/**		
		Adds a message if nonexistent, followed by its translation.
	**/
	@:native("AddMessage")
	public function addMessage(srcMessage:std.String, xlatedMessage:std.String):Void;

	/**		
		Returns a message's translation.
	**/
	@:native("GetMessage")
	public function getMessage(srcMessage:std.String):std.String;

	/**		
		Erases a message.
	**/
	@:native("EraseMessage")
	public function eraseMessage(srcMessage:std.String):Void;

	/**		
		Returns all the messages (keys).
	**/
	public extern inline function getMessageList():std.Array<std.String> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetMessageList()", this));
	}

	/**		
		Returns the number of existing messages.
	**/
	@:native("GetMessageCount")
	public function getMessageCount():Int;
}
