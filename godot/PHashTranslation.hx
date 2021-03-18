// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Optimized translation. Uses real-time compressed translations, which results in very small dictionaries.
**/
@:libType
@:csNative
@:native("Godot.PHashTranslation")
@:autoBuild(godot.Godot.buildUserClass())
extern class PHashTranslation extends godot.Translation {
	@:native("new")
	public function new():Void;

	/**		
		Generates and sets an optimized translation from the given `godot.Translation` resource.
	**/
	@:native("Generate")
	public function generate(from:godot.Translation):Void;
}
