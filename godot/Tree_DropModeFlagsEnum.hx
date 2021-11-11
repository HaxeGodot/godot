// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.Tree.DropModeFlagsEnum")
@:csNative
extern enum Tree_DropModeFlagsEnum {
	/**		
		Disables all drop sections, but still allows to detect the "on item" drop section by `godot.Tree.getDropSectionAtPosition`.
		
		Note: This is the default flag, it has no effect when combined with other flags.
	**/
	Disabled;

	/**		
		Enables the "on item" drop section. This drop section covers the entire item.
		
		When combined with `godot.Tree_DropModeFlagsEnum.inbetween`, this drop section halves the height and stays centered vertically.
	**/
	OnItem;

	/**		
		Enables "above item" and "below item" drop sections. The "above item" drop section covers the top half of the item, and the "below item" drop section covers the bottom half.
		
		When combined with `godot.Tree_DropModeFlagsEnum.onItem`, these drop sections halves the height and stays on top / bottom accordingly.
	**/
	Inbetween;
}
