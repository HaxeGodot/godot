// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.WebSocketPeer.WriteMode")
@:csNative
extern enum WebSocketPeer_WriteMode {
	/**		
		Specifies that WebSockets messages should be transferred as text payload (only valid UTF-8 is allowed).
	**/
	Text;

	/**		
		Specifies that WebSockets messages should be transferred as binary payload (any byte combination is allowed).
	**/
	Binary;
}
