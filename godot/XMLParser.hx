// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
This class can serve as base to make custom XML parsers. Since XML is a very flexible standard, this interface is low-level so it can be applied to any possible schema.
**/
@:libType
@:csNative
@:native("Godot.XMLParser")
@:autoBuild(godot.Godot.buildUserClass())
extern class XMLParser extends godot.Reference {
	@:native("new")
	public function new():Void;

	/**		
		Reads the next node of the file. This returns an error code.
	**/
	@:native("Read")
	public function read():godot.Error;

	/**		
		Gets the type of the current node. Compare with `godot.XMLParser_NodeType` constants.
	**/
	@:native("GetNodeType")
	public function getNodeType():godot.XMLParser_NodeType;

	/**		
		Gets the name of the current element node. This will raise an error if the current node type is neither  nor .
	**/
	@:native("GetNodeName")
	public function getNodeName():std.String;

	/**		
		Gets the contents of a text node. This will raise an error in any other type of node.
	**/
	@:native("GetNodeData")
	public function getNodeData():std.String;

	/**		
		Gets the byte offset of the current node since the beginning of the file or buffer.
	**/
	@:native("GetNodeOffset")
	public function getNodeOffset():cs.types.UInt64;

	/**		
		Gets the amount of attributes in the current element.
	**/
	@:native("GetAttributeCount")
	public function getAttributeCount():Int;

	/**		
		Gets the name of the attribute specified by the index in `idx` argument.
	**/
	@:native("GetAttributeName")
	public function getAttributeName(idx:Int):std.String;

	/**		
		Gets the value of the attribute specified by the index in `idx` argument.
	**/
	@:native("GetAttributeValue")
	public function getAttributeValue(idx:Int):std.String;

	/**		
		Check whether the current element has a certain attribute.
	**/
	@:native("HasAttribute")
	public function hasAttribute(name:std.String):Bool;

	/**		
		Gets the value of a certain attribute of the current element by name. This will raise an error if the element has no such attribute.
	**/
	@:native("GetNamedAttributeValue")
	public function getNamedAttributeValue(name:std.String):std.String;

	/**		
		Gets the value of a certain attribute of the current element by name. This will return an empty `String` if the attribute is not found.
	**/
	@:native("GetNamedAttributeValueSafe")
	public function getNamedAttributeValueSafe(name:std.String):std.String;

	/**		
		Check whether the current element is empty (this only works for completely empty tags, e.g. `&lt;element \&gt;`).
	**/
	@:native("IsEmpty")
	public function isEmpty():Bool;

	/**		
		Gets the current line in the parsed file (currently not implemented).
	**/
	@:native("GetCurrentLine")
	public function getCurrentLine():Int;

	/**		
		Skips the current section. If the node contains other elements, they will be ignored and the cursor will go to the closing of the current element.
	**/
	@:native("SkipSection")
	public function skipSection():Void;

	/**		
		Moves the buffer cursor to a certain offset (since the beginning) and read the next node there. This returns an error code.
	**/
	@:native("Seek")
	public function seek(position:cs.types.UInt64):godot.Error;

	/**		
		Opens an XML file for parsing. This returns an error code.
	**/
	@:native("Open")
	public function open(file:std.String):godot.Error;

	/**		
		Opens an XML raw buffer for parsing. This returns an error code.
	**/
	@:native("OpenBuffer")
	public function openBuffer(buffer:haxe.Rest<cs.types.UInt8>):godot.Error;
}
