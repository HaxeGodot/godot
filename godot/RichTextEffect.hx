// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
A custom effect for use with `godot.RichTextLabel`.

Note: For a `godot.RichTextEffect` to be usable, a BBCode tag must be defined as a member variable called `bbcode` in the script.

```

# The RichTextEffect will be usable like this: `[example]Some text[/example]`
var bbcode = "example"

```

Note: As soon as a `godot.RichTextLabel` contains at least one `godot.RichTextEffect`, it will continuously process the effect unless the project is paused. This may impact battery life negatively.
**/
@:libType
@:csNative
@:native("Godot.RichTextEffect")
@:autoBuild(godot.Godot.buildUserClass())
extern class RichTextEffect extends godot.Resource {
	@:native("new")
	public function new():Void;

	/**		
		Override this method to modify properties in `char_fx`. The method must return `true` if the character could be transformed successfully. If the method returns `false`, it will skip transformation to avoid displaying broken text.
	**/
	@:native("_ProcessCustomFx")
	public function _ProcessCustomFx(charFx:godot.CharFXTransform):Bool;
}
