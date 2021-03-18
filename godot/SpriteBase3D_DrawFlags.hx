// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.SpriteBase3D.DrawFlags")
@:csNative
extern enum SpriteBase3D_DrawFlags {
	/**		
		If set, the texture's transparency and the opacity are used to make those parts of the sprite invisible.
	**/
	Transparent;

	/**		
		If set, lights in the environment affect the sprite.
	**/
	Shaded;

	/**		
		If set, texture can be seen from the back as well, if not, it is invisible when looking at it from behind.
	**/
	DoubleSided;

	/**		
		Represents the size of the `godot.SpriteBase3D_DrawFlags` enum.
	**/
	Max;
}
