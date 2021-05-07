// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
An editor feature profile can be used to disable specific features of the Godot editor. When disabled, the features won't appear in the editor, which makes the editor less cluttered. This is useful in education settings to reduce confusion or when working in a team. For example, artists and level designers could use a feature profile that disables the script editor to avoid accidentally making changes to files they aren't supposed to edit.

To manage editor feature profiles visually, use Editor &gt; Manage Feature Profiles... at the top of the editor window.
**/
@:libType
@:csNative
@:native("Godot.EditorFeatureProfile")
@:autoBuild(godot.Godot.buildUserClass())
extern class EditorFeatureProfile extends godot.Reference {
	@:native("new")
	public function new():Void;

	/**		
		If `disable` is `true`, disables the class specified by `class_name`. When disabled, the class won't appear in the Create New Node dialog.
	**/
	@:native("SetDisableClass")
	public function setDisableClass(className:std.String, disable:Bool):Void;

	/**		
		Returns `true` if the class specified by `class_name` is disabled. When disabled, the class won't appear in the Create New Node dialog.
	**/
	@:native("IsClassDisabled")
	public function isClassDisabled(className:std.String):Bool;

	/**		
		If `disable` is `true`, disables editing for the class specified by `class_name`. When disabled, the class will still appear in the Create New Node dialog but the inspector will be read-only when selecting a node that extends the class.
	**/
	@:native("SetDisableClassEditor")
	public function setDisableClassEditor(className:std.String, disable:Bool):Void;

	/**		
		Returns `true` if editing for the class specified by `class_name` is disabled. When disabled, the class will still appear in the Create New Node dialog but the inspector will be read-only when selecting a node that extends the class.
	**/
	@:native("IsClassEditorDisabled")
	public function isClassEditorDisabled(className:std.String):Bool;

	/**		
		If `disable` is `true`, disables editing for `property` in the class specified by `class_name`. When a property is disabled, it won't appear in the inspector when selecting a node that extends the class specified by `class_name`.
	**/
	@:native("SetDisableClassProperty")
	public function setDisableClassProperty(className:std.String, property:std.String, disable:Bool):Void;

	/**		
		Returns `true` if `property` is disabled in the class specified by `class_name`. When a property is disabled, it won't appear in the inspector when selecting a node that extends the class specified by `class_name`.
	**/
	@:native("IsClassPropertyDisabled")
	public function isClassPropertyDisabled(className:std.String, property:std.String):Bool;

	/**		
		If `disable` is `true`, disables the editor feature specified in `feature`. When a feature is disabled, it will disappear from the editor entirely.
	**/
	@:native("SetDisableFeature")
	public function setDisableFeature(feature:godot.EditorFeatureProfile_Feature, disable:Bool):Void;

	/**		
		Returns `true` if the `feature` is disabled. When a feature is disabled, it will disappear from the editor entirely.
	**/
	@:native("IsFeatureDisabled")
	public function isFeatureDisabled(feature:godot.EditorFeatureProfile_Feature):Bool;

	/**		
		Returns the specified `feature`'s human-readable name.
	**/
	@:native("GetFeatureName")
	public function getFeatureName(feature:godot.EditorFeatureProfile_Feature):std.String;

	/**		
		Saves the editor feature profile to a file in JSON format. It can then be imported using the feature profile manager's Import button or the `godot.EditorFeatureProfile.loadFromFile` button.
	**/
	@:native("SaveToFile")
	public function saveToFile(path:std.String):godot.Error;

	/**		
		Loads an editor feature profile from a file. The file must follow the JSON format obtained by using the feature profile manager's Export button or the `godot.EditorFeatureProfile.saveToFile` method.
	**/
	@:native("LoadFromFile")
	public function loadFromFile(path:std.String):godot.Error;
}
