// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.ResourceImporter.ImportOrder")
@:csNative
extern enum ResourceImporter_ImportOrder {
	/**		
		The default import order.
	**/
	Default;

	/**		
		The import order for scenes, which ensures scenes are imported after all other core resources such as textures. Custom importers should generally have an import order lower than `100` to avoid issues when importing scenes that rely on custom resources.
	**/
	Scene;
}
