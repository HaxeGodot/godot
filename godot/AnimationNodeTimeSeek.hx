// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
This node can be used to cause a seek command to happen to any sub-children of the animation graph. Use this node type to play an `godot.Animation` from the start or a certain playback position inside the `godot.AnimationNodeBlendTree`. After setting the time and changing the animation playback, the seek node automatically goes into sleep mode on the next process frame by setting its `seek_position` value to `-1.0`.

```

# Play child animation from the start.
animation_tree.set("parameters/Seek/seek_position", 0.0)
# Alternative syntax (same result as above).
animation_tree["parameters/Seek/seek_position"] = 0.0

# Play child animation from 12 second timestamp.
animation_tree.set("parameters/Seek/seek_position", 12.0)
# Alternative syntax (same result as above).
animation_tree["parameters/Seek/seek_position"] = 12.0

```
**/
@:libType
@:csNative
@:native("Godot.AnimationNodeTimeSeek")
@:autoBuild(godot.Godot.buildUserClass())
extern class AnimationNodeTimeSeek extends godot.AnimationNode {
	@:native("new")
	public function new():Void;
}
