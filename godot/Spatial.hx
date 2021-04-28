// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Most basic 3D game object, with a 3D `godot.Transform` and visibility settings. All other 3D game objects inherit from Spatial. Use `godot.Spatial` as a parent node to move, scale, rotate and show/hide children in a 3D project.

Affine operations (rotate, scale, translate) happen in parent's local coordinate system, unless the `godot.Spatial` object is set as top-level. Affine operations in this coordinate system correspond to direct affine operations on the `godot.Spatial`'s transform. The word local below refers to this coordinate system. The coordinate system that is attached to the `godot.Spatial` object itself is referred to as object-local coordinate system.

Note: Unless otherwise specified, all methods that have angle parameters must have angles specified as radians. To convert degrees to radians, use `@GDScript.deg2rad`.
**/
@:libType
@:csNative
@:native("Godot.Spatial")
@:autoBuild(godot.Godot.buildUserClass())
extern class Spatial extends godot.Node {
	/**
		`visibility_changed` signal.
		
		Emitted when node visibility changes.
	**/
	public var onVisibilityChanged(get, never):Signal<Void->Void>;
	@:dox(hide) @:noCompletion inline function get_onVisibilityChanged():Signal<Void->Void> {
		return new Signal(this, "visibility_changed", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	/**		
		The `godot.SpatialGizmo` for this node. Used for example in `Godot.EditorSpatialGizmo` as custom visualization and editing handles in Editor.
	**/
	@:native("Gizmo")
	public var gizmo:godot.SpatialGizmo;

	/**		
		If `true`, this node is drawn. The node is only visible if all of its antecedents are visible as well (in other words, `godot.Spatial.isVisibleInTree` must return `true`).
	**/
	@:native("Visible")
	public var visible:Bool;

	/**		
		Local space `godot.Transform` of this node, with respect to the parent node.
	**/
	@:native("Transform")
	public var transform:godot.Transform;

	/**		
		Scale part of the local transformation.
	**/
	@:native("Scale")
	public var scale:godot.Vector3;

	/**		
		Rotation part of the local transformation in radians, specified in terms of YXZ-Euler angles in the format (X angle, Y angle, Z angle).
		
		Note: In the mathematical sense, rotation is a matrix and not a vector. The three Euler angles, which are the three independent parameters of the Euler-angle parametrization of the rotation matrix, are stored in a `godot.Vector3` data structure not because the rotation is a vector, but only because `godot.Vector3` exists as a convenient data-structure to store 3 floating-point numbers. Therefore, applying affine operations on the rotation "vector" is not meaningful.
	**/
	@:native("Rotation")
	public var rotation:godot.Vector3;

	/**		
		Rotation part of the local transformation in degrees, specified in terms of YXZ-Euler angles in the format (X angle, Y angle, Z angle).
	**/
	@:native("RotationDegrees")
	public var rotationDegrees:godot.Vector3;

	/**		
		Local translation of this node.
	**/
	@:native("Translation")
	public var translation:godot.Vector3;

	/**		
		World space (global) `godot.Transform` of this node.
	**/
	@:native("GlobalTransform")
	public var globalTransform:godot.Transform;

	/**		
		Spatial nodes receives this notification when their visibility changes.
	**/
	@:native("NotificationVisibilityChanged")
	public static var NOTIFICATION_VISIBILITY_CHANGED(default, never):Int;

	/**		
		Spatial nodes receives this notification when they are unregistered from current `godot.World` resource.
	**/
	@:native("NotificationExitWorld")
	public static var NOTIFICATION_EXIT_WORLD(default, never):Int;

	/**		
		Spatial nodes receives this notification when they are registered to new `godot.World` resource.
	**/
	@:native("NotificationEnterWorld")
	public static var NOTIFICATION_ENTER_WORLD(default, never):Int;

	/**		
		Spatial nodes receives this notification when their global transform changes. This means that either the current or a parent node changed its transform.
		
		In order for  to work, users first need to ask for it, with `godot.Spatial.setNotifyTransform`. The notification is also sent if the node is in the editor context and it has a valid gizmo.
	**/
	@:native("NotificationTransformChanged")
	public static var NOTIFICATION_TRANSFORM_CHANGED(default, never):Int;

	@:native("new")
	public function new():Void;

	@:native("SetTransform")
	public function setTransform(local:godot.Transform):Void;

	@:native("GetTransform")
	public function getTransform():godot.Transform;

	@:native("SetTranslation")
	public function setTranslation(translation:godot.Vector3):Void;

	@:native("GetTranslation")
	public function getTranslation():godot.Vector3;

	@:native("SetRotation")
	public function setRotation(euler:godot.Vector3):Void;

	@:native("GetRotation")
	public function getRotation():godot.Vector3;

	@:native("SetRotationDegrees")
	public function setRotationDegrees(eulerDegrees:godot.Vector3):Void;

	@:native("GetRotationDegrees")
	public function getRotationDegrees():godot.Vector3;

	@:native("SetScale")
	public function setScale(scale:godot.Vector3):Void;

	@:native("GetScale")
	public function getScale():godot.Vector3;

	@:native("SetGlobalTransform")
	public function setGlobalTransform(global:godot.Transform):Void;

	@:native("GetGlobalTransform")
	public function getGlobalTransform():godot.Transform;

	/**		
		Returns the parent `godot.Spatial`, or an empty `godot.Object` if no parent exists or parent is not of type `godot.Spatial`.
	**/
	@:native("GetParentSpatial")
	public function getParentSpatial():godot.Spatial;

	/**		
		Sets whether the node ignores notification that its transformation (global or local) changed.
	**/
	@:native("SetIgnoreTransformNotification")
	public function setIgnoreTransformNotification(enabled:Bool):Void;

	/**		
		Makes the node ignore its parents transformations. Node transformations are only in global space.
	**/
	@:native("SetAsToplevel")
	public function setAsToplevel(enable:Bool):Void;

	/**		
		Returns whether this node is set as Toplevel, that is whether it ignores its parent nodes transformations.
	**/
	@:native("IsSetAsToplevel")
	public function isSetAsToplevel():Bool;

	/**		
		Sets whether the node uses a scale of `(1, 1, 1)` or its local transformation scale. Changes to the local transformation scale are preserved.
	**/
	@:native("SetDisableScale")
	public function setDisableScale(disable:Bool):Void;

	/**		
		Returns whether this node uses a scale of `(1, 1, 1)` or its local transformation scale.
	**/
	@:native("IsScaleDisabled")
	public function isScaleDisabled():Bool;

	/**		
		Returns the current `godot.World` resource this `godot.Spatial` node is registered to.
	**/
	@:native("GetWorld")
	public function getWorld():godot.World;

	/**		
		Forces the transform to update. Transform changes in physics are not instant for performance reasons. Transforms are accumulated and then set. Use this if you need an up-to-date transform when doing physics operations.
	**/
	@:native("ForceUpdateTransform")
	public function forceUpdateTransform():Void;

	/**		
		Updates the `godot.SpatialGizmo` of this node.
	**/
	@:native("UpdateGizmo")
	public function updateGizmo():Void;

	@:native("SetGizmo")
	public function setGizmo(gizmo:godot.SpatialGizmo):Void;

	@:native("GetGizmo")
	public function getGizmo():godot.SpatialGizmo;

	@:native("SetVisible")
	public function setVisible(visible:Bool):Void;

	@:native("IsVisible")
	public function isVisible():Bool;

	/**		
		Returns `true` if the node is present in the `godot.SceneTree`, its `godot.Spatial.visible` property is `true` and all its antecedents are also visible. If any antecedent is hidden, this node will not be visible in the scene tree.
	**/
	@:native("IsVisibleInTree")
	public function isVisibleInTree():Bool;

	/**		
		Enables rendering of this node. Changes `godot.Spatial.visible` to `true`.
	**/
	@:native("Show")
	public function show():Void;

	/**		
		Disables rendering of this node. Changes `godot.Spatial.visible` to `false`.
	**/
	@:native("Hide")
	public function hide():Void;

	/**		
		Sets whether the node notifies about its local transformation changes. `godot.Spatial` will not propagate this by default.
	**/
	@:native("SetNotifyLocalTransform")
	public function setNotifyLocalTransform(enable:Bool):Void;

	/**		
		Returns whether node notifies about its local transformation changes. `godot.Spatial` will not propagate this by default.
	**/
	@:native("IsLocalTransformNotificationEnabled")
	public function isLocalTransformNotificationEnabled():Bool;

	/**		
		Sets whether the node notifies about its global and local transformation changes. `godot.Spatial` will not propagate this by default, unless it is in the editor context and it has a valid gizmo.
	**/
	@:native("SetNotifyTransform")
	public function setNotifyTransform(enable:Bool):Void;

	/**		
		Returns whether the node notifies about its global and local transformation changes. `godot.Spatial` will not propagate this by default.
	**/
	@:native("IsTransformNotificationEnabled")
	public function isTransformNotificationEnabled():Bool;

	/**		
		Rotates the local transformation around axis, a unit `godot.Vector3`, by specified angle in radians.
	**/
	@:native("Rotate")
	public function rotate(axis:godot.Vector3, angle:Single):Void;

	/**		
		Rotates the global (world) transformation around axis, a unit `godot.Vector3`, by specified angle in radians. The rotation axis is in global coordinate system.
	**/
	@:native("GlobalRotate")
	public function globalRotate(axis:godot.Vector3, angle:Single):Void;

	/**		
		Scales the global (world) transformation by the given `godot.Vector3` scale factors.
	**/
	@:native("GlobalScale")
	public function globalScale(scale:godot.Vector3):Void;

	/**		
		Moves the global (world) transformation by `godot.Vector3` offset. The offset is in global coordinate system.
	**/
	@:native("GlobalTranslate")
	public function globalTranslate(offset:godot.Vector3):Void;

	/**		
		Rotates the local transformation around axis, a unit `godot.Vector3`, by specified angle in radians. The rotation axis is in object-local coordinate system.
	**/
	@:native("RotateObjectLocal")
	public function rotateObjectLocal(axis:godot.Vector3, angle:Single):Void;

	/**		
		Scales the local transformation by given 3D scale factors in object-local coordinate system.
	**/
	@:native("ScaleObjectLocal")
	public function scaleObjectLocal(scale:godot.Vector3):Void;

	/**		
		Changes the node's position by the given offset `godot.Vector3` in local space.
	**/
	@:native("TranslateObjectLocal")
	public function translateObjectLocal(offset:godot.Vector3):Void;

	/**		
		Rotates the local transformation around the X axis by angle in radians.
	**/
	@:native("RotateX")
	public function rotateX(angle:Single):Void;

	/**		
		Rotates the local transformation around the Y axis by angle in radians.
	**/
	@:native("RotateY")
	public function rotateY(angle:Single):Void;

	/**		
		Rotates the local transformation around the Z axis by angle in radians.
	**/
	@:native("RotateZ")
	public function rotateZ(angle:Single):Void;

	/**		
		Changes the node's position by the given offset `godot.Vector3`.
		
		Note that the translation `offset` is affected by the node's scale, so if scaled by e.g. `(10, 1, 1)`, a translation by an offset of `(2, 0, 0)` would actually add 20 (`2 * 10`) to the X coordinate.
	**/
	@:native("Translate")
	public function translate(offset:godot.Vector3):Void;

	/**		
		Resets this node's transformations (like scale, skew and taper) preserving its rotation and translation by performing Gram-Schmidt orthonormalization on this node's `godot.Transform`.
	**/
	@:native("Orthonormalize")
	public function orthonormalize():Void;

	/**		
		Reset all transformations for this node (sets its `godot.Transform` to the identity matrix).
	**/
	@:native("SetIdentity")
	public function setIdentity():Void;

	/**		
		Rotates itself so that the local -Z axis points towards the `target` position.
		
		The transform will first be rotated around the given `up` vector, and then fully aligned to the target by a further rotation around an axis perpendicular to both the `target` and `up` vectors.
		
		Operations take place in global space.
	**/
	@:native("LookAt")
	public function lookAt(target:godot.Vector3, up:godot.Vector3):Void;

	/**		
		Moves the node to the specified `position`, and then rotates itself to point toward the `target` as per `godot.Spatial.lookAt`. Operations take place in global space.
	**/
	@:native("LookAtFromPosition")
	public function lookAtFromPosition(position:godot.Vector3, target:godot.Vector3, up:godot.Vector3):Void;

	/**		
		Transforms `global_point` from world space to this node's local space.
	**/
	@:native("ToLocal")
	public function toLocal(globalPoint:godot.Vector3):godot.Vector3;

	/**		
		Transforms `local_point` from this node's local space to world space.
	**/
	@:native("ToGlobal")
	public function toGlobal(localPoint:godot.Vector3):godot.Vector3;
}
