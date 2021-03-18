// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.XMLParser.NodeType")
@:csNative
extern enum XMLParser_NodeType {
	/**		
		There's no node (no file or buffer opened).
	**/
	None;

	/**		
		Element (tag).
	**/
	Element;

	/**		
		End of element.
	**/
	ElementEnd;

	/**		
		Text node.
	**/
	Text;

	/**		
		Comment node.
	**/
	Comment;

	/**		
		CDATA content.
	**/
	Cdata;

	/**		
		Unknown node.
	**/
	Unknown;
}
