// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.ProximityGroup.DispatchModeEnum")
@:csNative
extern enum ProximityGroup_DispatchModeEnum {
	/**		
		This `godot.ProximityGroup`'s parent will be target of `godot.ProximityGroup.broadcast`.
	**/
	Proxy;

	/**		
		This `godot.ProximityGroup` will emit the `broadcast` signal when calling the `godot.ProximityGroup.broadcast` method.
	**/
	Signal;
}
