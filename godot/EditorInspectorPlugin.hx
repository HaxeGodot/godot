// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
These plugins allow adding custom property editors to `godot.EditorInspector`.

Plugins are registered via `godot.EditorPlugin.addInspectorPlugin`.

When an object is edited, the `godot.EditorInspectorPlugin.canHandle` function is called and must return `true` if the object type is supported.

If supported, the function `godot.EditorInspectorPlugin.parseBegin` will be called, allowing to place custom controls at the beginning of the class.

Subsequently, the `godot.EditorInspectorPlugin.parseCategory` and `godot.EditorInspectorPlugin.parseProperty` are called for every category and property. They offer the ability to add custom controls to the inspector too.

Finally, `godot.EditorInspectorPlugin.parseEnd` will be called.

On each of these calls, the "add" functions can be called.
**/
@:libType
@:csNative
@:native("Godot.EditorInspectorPlugin")
@:autoBuild(godot.Godot.buildUserClass())
extern class EditorInspectorPlugin extends godot.Reference {
	@:native("new")
	public function new():Void;

	/**		
		Returns `true` if this object can be handled by this plugin.
	**/
	@:native("CanHandle")
	public function canHandle(object:godot.Object):Bool;

	/**		
		Called to allow adding controls at the beginning of the list.
	**/
	@:native("ParseBegin")
	public function parseBegin(object:godot.Object):Void;

	/**		
		Called to allow adding controls at the beginning of the category.
	**/
	@:native("ParseCategory")
	public function parseCategory(object:godot.Object, category:std.String):Void;

	/**		
		Called to allow adding controls at the end of the list.
	**/
	@:native("ParseEnd")
	public function parseEnd():Void;

	/**		
		Called to allow adding property specific editors to the inspector. Usually these inherit `godot.EditorProperty`. Returning `true` removes the built-in editor for this property, otherwise allows to insert a custom editor before the built-in one.
	**/
	@:native("ParseProperty")
	public function parseProperty(object:godot.Object, type:Int, path:std.String, hint:Int, hintText:std.String, usage:Int):Bool;

	/**		
		Adds a custom control, which is not necessarily a property editor.
	**/
	@:native("AddCustomControl")
	public function addCustomControl(control:godot.Control):Void;

	/**		
		Adds a property editor for an individual property. The `editor` control must extend `godot.EditorProperty`.
	**/
	@:native("AddPropertyEditor")
	public function addPropertyEditor(property:std.String, editor:godot.Control):Void;

	/**		
		Adds an editor that allows modifying multiple properties. The `editor` control must extend `godot.EditorProperty`.
	**/
	@:native("AddPropertyEditorForMultipleProperties")
	public function addPropertyEditorForMultipleProperties(label:std.String, properties:HaxeArray<std.String>, editor:godot.Control):Void;
}
