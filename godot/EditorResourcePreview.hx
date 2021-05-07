// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
This object is used to generate previews for resources of files.

Note: This class shouldn't be instantiated directly. Instead, access the singleton using `godot.EditorInterface.getResourcePreviewer`.
**/
@:libType
@:csNative
@:native("Godot.EditorResourcePreview")
@:autoBuild(godot.Godot.buildUserClass())
extern abstract class EditorResourcePreview extends godot.Node {
	/**
		`preview_invalidated` signal.
		
		Emitted if a preview was invalidated (changed). `path` corresponds to the path of the preview.
	**/
	public var onPreviewInvalidated(get, never):Signal<(path:std.String)->Void>;
	@:dox(hide) @:noCompletion inline function get_onPreviewInvalidated():Signal<(path:std.String)->Void> {
		return new Signal(this, "preview_invalidated", Signal.SignalHandlerStringVoid.connectSignal, Signal.SignalHandlerStringVoid.disconnectSignal, Signal.SignalHandlerStringVoid.isSignalConnected);
	}

	/**		
		Queue a resource file for preview (using a path). Once the preview is ready, your receiver.receiver_func will be called either containing the preview texture or an empty texture (if no preview was possible). Callback must have the format: (path,texture,userdata). Userdata can be anything.
	**/
	@:native("QueueResourcePreview")
	public function queueResourcePreview(path:std.String, receiver:godot.Object, receiverFunc:std.String, userdata:Dynamic):Void;

	/**		
		Queue a resource being edited for preview (using an instance). Once the preview is ready, your receiver.receiver_func will be called either containing the preview texture or an empty texture (if no preview was possible). Callback must have the format: (path,texture,userdata). Userdata can be anything.
	**/
	@:native("QueueEditedResourcePreview")
	public function queueEditedResourcePreview(resource:godot.Resource, receiver:godot.Object, receiverFunc:std.String, userdata:Dynamic):Void;

	/**		
		Create an own, custom preview generator.
	**/
	@:native("AddPreviewGenerator")
	public function addPreviewGenerator(generator:godot.EditorResourcePreviewGenerator):Void;

	/**		
		Removes a custom preview generator.
	**/
	@:native("RemovePreviewGenerator")
	public function removePreviewGenerator(generator:godot.EditorResourcePreviewGenerator):Void;

	/**		
		Check if the resource changed, if so, it will be invalidated and the corresponding signal emitted.
	**/
	@:native("CheckForInvalidation")
	public function checkForInvalidation(path:std.String):Void;
}
