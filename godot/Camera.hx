// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Camera is a special node that displays what is visible from its current location. Cameras register themselves in the nearest `godot.Viewport` node (when ascending the tree). Only one camera can be active per viewport. If no viewport is available ascending the tree, the camera will register in the global viewport. In other words, a camera just provides 3D display capabilities to a `godot.Viewport`, and, without one, a scene registered in that `godot.Viewport` (or higher viewports) can't be displayed.
**/
@:libType
@:csNative
@:native("Godot.Camera")
@:autoBuild(godot.Godot.buildUserClass())
extern class Camera extends godot.Spatial {
	/**		
		The distance to the far culling boundary for this camera relative to its local Z axis.
	**/
	@:native("Far")
	public var far:Single;

	/**		
		The distance to the near culling boundary for this camera relative to its local Z axis.
	**/
	@:native("Near")
	public var near:Single;

	/**		
		The camera's frustum offset. This can be changed from the default to create "tilted frustum" effects such as [https://zdoom.org/wiki/Y-shearing](Y-shearing).
	**/
	@:native("FrustumOffset")
	public var frustumOffset:godot.Vector2;

	/**		
		The camera's size measured as 1/2 the width or height. Only applicable in orthogonal mode. Since `godot.Camera.keepAspect` locks on axis, `size` sets the other axis' size length.
	**/
	@:native("Size")
	public var size:Single;

	/**		
		The camera's field of view angle (in degrees). Only applicable in perspective mode. Since `godot.Camera.keepAspect` locks one axis, `fov` sets the other axis' field of view angle.
		
		For reference, the default vertical field of view value (`70.0`) is equivalent to a horizontal FOV of:
		
		- ~86.07 degrees in a 4:3 viewport
		
		- ~96.50 degrees in a 16:10 viewport
		
		- ~102.45 degrees in a 16:9 viewport
		
		- ~117.06 degrees in a 21:9 viewport
	**/
	@:native("Fov")
	public var fov:Single;

	/**		
		If `true`, the ancestor `godot.Viewport` is currently using this camera.
	**/
	@:native("Current")
	public var current:Bool;

	/**		
		The camera's projection mode. In `godot.Camera_ProjectionEnum.perspective` mode, objects' Z distance from the camera's local space scales their perceived size.
	**/
	@:native("Projection")
	public var projection:godot.Camera_ProjectionEnum;

	/**		
		If not `godot.Camera_DopplerTrackingEnum.disabled`, this camera will simulate the [https://en.wikipedia.org/wiki/Doppler_effect](Doppler effect) for objects changed in particular `_process` methods. The Doppler effect is only simulated for `godot.AudioStreamPlayer3D` nodes that have `godot.AudioStreamPlayer3D.dopplerTracking` set to a value other than `godot.AudioStreamPlayer3D_DopplerTrackingEnum.disabled`.
		
		Note: To toggle the Doppler effect preview in the editor, use the Perspective menu in the top-left corner of the 3D viewport and toggle Enable Doppler.
	**/
	@:native("DopplerTracking")
	public var dopplerTracking:godot.Camera_DopplerTrackingEnum;

	/**		
		The vertical (Y) offset of the camera viewport.
	**/
	@:native("VOffset")
	public var vOffset:Single;

	/**		
		The horizontal (X) offset of the camera viewport.
	**/
	@:native("HOffset")
	public var hOffset:Single;

	/**		
		The `godot.Environment` to use for this camera.
	**/
	@:native("Environment")
	public var environment:godot.Environment;

	/**		
		The culling mask that describes which 3D render layers are rendered by this camera.
	**/
	@:native("CullMask")
	public var cullMask:UInt;

	/**		
		The axis to lock during `godot.Camera.fov`/`godot.Camera.size` adjustments. Can be either `godot.Camera_KeepAspectEnum.width` or `godot.Camera_KeepAspectEnum.height`.
	**/
	@:native("KeepAspect")
	public var keepAspect:godot.Camera_KeepAspectEnum;

	@:native("new")
	public function new():Void;

	/**		
		Returns a normal vector in world space, that is the result of projecting a point on the `godot.Viewport` rectangle by the inverse camera projection. This is useful for casting rays in the form of (origin, normal) for object intersection or picking.
	**/
	@:native("ProjectRayNormal")
	public function projectRayNormal(screenPoint:godot.Vector2):godot.Vector3;

	/**		
		Returns a normal vector from the screen point location directed along the camera. Orthogonal cameras are normalized. Perspective cameras account for perspective, screen width/height, etc.
	**/
	@:native("ProjectLocalRayNormal")
	public function projectLocalRayNormal(screenPoint:godot.Vector2):godot.Vector3;

	/**		
		Returns a 3D position in world space, that is the result of projecting a point on the `godot.Viewport` rectangle by the inverse camera projection. This is useful for casting rays in the form of (origin, normal) for object intersection or picking.
	**/
	@:native("ProjectRayOrigin")
	public function projectRayOrigin(screenPoint:godot.Vector2):godot.Vector3;

	/**		
		Returns the 2D coordinate in the `godot.Viewport` rectangle that maps to the given 3D point in world space.
		
		Note: When using this to position GUI elements over a 3D viewport, use `godot.Camera.isPositionBehind` to prevent them from appearing if the 3D point is behind the camera:
		
		```
		
		# This code block is part of a script that inherits from Spatial.
		# `control` is a reference to a node inheriting from Control.
		control.visible = not get_viewport().get_camera().is_position_behind(global_transform.origin)
		control.rect_position = get_viewport().get_camera().unproject_position(global_transform.origin)
		
		```
	**/
	@:native("UnprojectPosition")
	public function unprojectPosition(worldPoint:godot.Vector3):godot.Vector2;

	/**		
		Returns `true` if the given position is behind the camera.
		
		Note: A position which returns `false` may still be outside the camera's field of view.
	**/
	@:native("IsPositionBehind")
	public function isPositionBehind(worldPoint:godot.Vector3):Bool;

	/**		
		Returns the 3D point in world space that maps to the given 2D coordinate in the `godot.Viewport` rectangle on a plane that is the given `z_depth` distance into the scene away from the camera.
	**/
	@:native("ProjectPosition")
	public function projectPosition(screenPoint:godot.Vector2, zDepth:Single):godot.Vector3;

	/**		
		Sets the camera projection to perspective mode (see `godot.Camera_ProjectionEnum.perspective`), by specifying a `fov` (field of view) angle in degrees, and the `z_near` and `z_far` clip planes in world space units.
	**/
	@:native("SetPerspective")
	public function setPerspective(fov:Single, zNear:Single, zFar:Single):Void;

	/**		
		Sets the camera projection to orthogonal mode (see `godot.Camera_ProjectionEnum.orthogonal`), by specifying a `size`, and the `z_near` and `z_far` clip planes in world space units. (As a hint, 2D games often use this projection, with values specified in pixels.)
	**/
	@:native("SetOrthogonal")
	public function setOrthogonal(size:Single, zNear:Single, zFar:Single):Void;

	/**		
		Sets the camera projection to frustum mode (see `godot.Camera_ProjectionEnum.frustum`), by specifying a `size`, an `offset`, and the `z_near` and `z_far` clip planes in world space units.
	**/
	@:native("SetFrustum")
	public function setFrustum(size:Single, offset:godot.Vector2, zNear:Single, zFar:Single):Void;

	/**		
		Makes this camera the current camera for the `godot.Viewport` (see class description). If the camera node is outside the scene tree, it will attempt to become current once it's added.
	**/
	@:native("MakeCurrent")
	public function makeCurrent():Void;

	#if doc_gen
	/**		
		If this is the current camera, remove it from being current. If `enable_next` is `true`, request to make the next camera current, if any.
	**/
	@:native("ClearCurrent")
	public function clearCurrent(?enableNext:Bool):Void;
	#else
	/**		
		If this is the current camera, remove it from being current. If `enable_next` is `true`, request to make the next camera current, if any.
	**/
	@:native("ClearCurrent")
	public overload function clearCurrent():Void;

	/**		
		If this is the current camera, remove it from being current. If `enable_next` is `true`, request to make the next camera current, if any.
	**/
	@:native("ClearCurrent")
	public overload function clearCurrent(enableNext:Bool):Void;
	#end

	@:native("SetCurrent")
	public function setCurrent(arg0:Bool):Void;

	@:native("IsCurrent")
	public function isCurrent():Bool;

	/**		
		Returns the transform of the camera plus the vertical (`godot.Camera.vOffset`) and horizontal (`godot.Camera.hOffset`) offsets; and any other adjustments made to the position and orientation of the camera by subclassed cameras such as `godot.ClippedCamera`, `godot.InterpolatedCamera` and `godot.ARVRCamera`.
	**/
	@:native("GetCameraTransform")
	public function getCameraTransform():godot.Transform;

	@:native("GetFov")
	public function getFov():Single;

	@:native("GetFrustumOffset")
	public function getFrustumOffset():godot.Vector2;

	@:native("GetSize")
	public function getSize():Single;

	@:native("GetZfar")
	public function getZfar():Single;

	@:native("GetZnear")
	public function getZnear():Single;

	@:native("SetFov")
	public function setFov(arg0:Single):Void;

	@:native("SetFrustumOffset")
	public function setFrustumOffset(arg0:godot.Vector2):Void;

	@:native("SetSize")
	public function setSize(arg0:Single):Void;

	@:native("SetZfar")
	public function setZfar(arg0:Single):Void;

	@:native("SetZnear")
	public function setZnear(arg0:Single):Void;

	@:native("GetProjection")
	public function getProjection():godot.Camera_ProjectionEnum;

	@:native("SetProjection")
	public function setProjection(arg0:godot.Camera_ProjectionEnum):Void;

	@:native("SetHOffset")
	public function setHOffset(ofs:Single):Void;

	@:native("GetHOffset")
	public function getHOffset():Single;

	@:native("SetVOffset")
	public function setVOffset(ofs:Single):Void;

	@:native("GetVOffset")
	public function getVOffset():Single;

	@:native("SetCullMask")
	public function setCullMask(mask:UInt):Void;

	@:native("GetCullMask")
	public function getCullMask():UInt;

	@:native("SetEnvironment")
	public function setEnvironment(env:godot.Environment):Void;

	@:native("GetEnvironment")
	public function getEnvironment():godot.Environment;

	@:native("SetKeepAspectMode")
	public function setKeepAspectMode(mode:godot.Camera_KeepAspectEnum):Void;

	@:native("GetKeepAspectMode")
	public function getKeepAspectMode():godot.Camera_KeepAspectEnum;

	@:native("SetDopplerTracking")
	public function setDopplerTracking(mode:godot.Camera_DopplerTrackingEnum):Void;

	@:native("GetDopplerTracking")
	public function getDopplerTracking():godot.Camera_DopplerTrackingEnum;

	/**		
		Returns the camera's frustum planes in world space units as an array of `godot.Plane`s in the following order: near, far, left, top, right, bottom. Not to be confused with `godot.Camera.frustumOffset`.
	**/
	@:native("GetFrustum")
	public function getFrustum():godot.collections.Array;

	/**		
		Returns the camera's RID from the `godot.VisualServer`.
	**/
	@:native("GetCameraRid")
	public function getCameraRid():godot.RID;

	/**		
		Enables or disables the given `layer` in the `godot.Camera.cullMask`.
	**/
	@:native("SetCullMaskBit")
	public function setCullMaskBit(layer:Int, enable:Bool):Void;

	/**		
		Returns `true` if the given `layer` in the `godot.Camera.cullMask` is enabled, `false` otherwise.
	**/
	@:native("GetCullMaskBit")
	public function getCullMaskBit(layer:Int):Bool;
}
