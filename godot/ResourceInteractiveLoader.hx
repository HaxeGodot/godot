// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Interactive `godot.Resource` loader. This object is returned by `godot.ResourceLoader` when performing an interactive load. It allows loading resources with high granularity, which makes it mainly useful for displaying loading bars or percentages.
**/
@:libType
@:csNative
@:native("Godot.ResourceInteractiveLoader")
@:autoBuild(godot.Godot.buildUserClass())
extern abstract class ResourceInteractiveLoader extends godot.Reference {
	/**		
		Returns the loaded resource if the load operation completed successfully, `null` otherwise.
	**/
	@:native("GetResource")
	public function getResource():godot.Resource;

	/**		
		Polls the loading operation, i.e. loads a data chunk up to the next stage.
		
		Returns  if the poll is successful but the load operation has not finished yet (intermediate stage). This means `godot.ResourceInteractiveLoader.poll` will have to be called again until the last stage is completed.
		
		Returns  if the load operation has completed successfully. The loaded resource can be obtained by calling `godot.ResourceInteractiveLoader.getResource`.
		
		Returns another `godot.Error` code if the poll has failed.
	**/
	@:native("Poll")
	public function poll():godot.Error;

	/**		
		Polls the loading operation successively until the resource is completely loaded or a `godot.ResourceInteractiveLoader.poll` fails.
		
		Returns  if the load operation has completed successfully. The loaded resource can be obtained by calling `godot.ResourceInteractiveLoader.getResource`.
		
		Returns another `godot.Error` code if a poll has failed, aborting the operation.
	**/
	@:native("Wait")
	public function wait():godot.Error;

	/**		
		Returns the load stage. The total amount of stages can be queried with `godot.ResourceInteractiveLoader.getStageCount`.
	**/
	@:native("GetStage")
	public function getStage():Int;

	/**		
		Returns the total amount of stages (calls to `godot.ResourceInteractiveLoader.poll`) needed to completely load this resource.
	**/
	@:native("GetStageCount")
	public function getStageCount():Int;
}
