// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
This is an FBX 3D asset importer with full support for most FBX features.

If exporting a FBX scene from Autodesk Maya, use these FBX export settings:

```

- Smoothing Groups
- Smooth Mesh
- Triangluate (for meshes with blend shapes)
- Bake Animation
- Resample All
- Deformed Models
- Skins
- Blend Shapes
- Curve Filters
- Constant Key Reducer
- Auto Tangents Only
- *Do not check* Constraints (as it will break the file)
- Can check Embed Media (embeds textures into the exported FBX file)
- Note that when importing embedded media, the texture and mesh will be a single immutable file.
- You will have to re-export then re-import the FBX if the texture has changed.
- Units: Centimeters
- Up Axis: Y
- Binary format in FBX 2017

```
**/
@:libType
@:csNative
@:native("Godot.EditorSceneImporterFBX")
@:autoBuild(godot.Godot.buildUserClass())
extern class EditorSceneImporterFBX extends godot.EditorSceneImporter {
	@:native("new")
	public function new():Void;
}
