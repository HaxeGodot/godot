// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

@:libType
@:csNative
@:native("Godot.SkinReference")
@:autoBuild(godot.Godot.buildUserClass())
extern abstract class SkinReference extends godot.Reference {
	@:native("GetSkeleton")
	public function getSkeleton():godot.RID;

	@:native("GetSkin")
	public function getSkin():godot.Skin;
}
