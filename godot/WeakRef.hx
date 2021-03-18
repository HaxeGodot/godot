// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
A weakref can hold a `godot.Reference`, without contributing to the reference counter. A weakref can be created from an `godot.Object` using `@GDScript.weakref`. If this object is not a reference, weakref still works, however, it does not have any effect on the object. Weakrefs are useful in cases where multiple classes have variables that refer to each other. Without weakrefs, using these classes could lead to memory leaks, since both references keep each other from being released. Making part of the variables a weakref can prevent this cyclic dependency, and allows the references to be released.
**/
@:libType
@:csNative
@:native("Godot.WeakRef")
@:autoBuild(godot.Godot.buildUserClass())
extern class WeakRef extends godot.Reference {
	@:native("new")
	public function new():Void;

	/**		
		Returns the `godot.Object` this weakref is referring to.
	**/
	@:native("GetRef")
	public function getRef():Dynamic;
}
