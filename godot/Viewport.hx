// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
A Viewport creates a different view into the screen, or a sub-view inside another viewport. Children 2D Nodes will display on it, and children Camera 3D nodes will render on it too.

Optionally, a viewport can have its own 2D or 3D world, so they don't share what they draw with other viewports.

If a viewport is a child of a `godot.ViewportContainer`, it will automatically take up its size, otherwise it must be set manually.

Viewports can also choose to be audio listeners, so they generate positional audio depending on a 2D or 3D camera child of it.

Also, viewports can be assigned to different screens in case the devices have multiple screens.

Finally, viewports can also behave as render targets, in which case they will not be visible unless the associated texture is used to draw.
**/
@:libType
@:csNative
@:native("Godot.Viewport")
@:autoBuild(godot.Godot.buildUserClass())
extern class Viewport extends godot.Node {
	/**
		`gui_focus_changed` signal.
		
		Emitted when a Control node grabs keyboard focus.
	**/
	public var onGuiFocusChanged(get, never):Signal<(node:Control)->Void>;
	@:dox(hide) inline function get_onGuiFocusChanged():Signal<(node:Control)->Void> {
		return new Signal(this, "gui_focus_changed", Signal.SignalHandlerControlVoid.connectSignal, Signal.SignalHandlerControlVoid.disconnectSignal, Signal.SignalHandlerControlVoid.isSignalConnected);
	}

	/**
		`size_changed` signal.
		
		Emitted when the size of the viewport is changed, whether by `setSizeOverride`, resize of window, or some other means.
	**/
	public var onSizeChanged(get, never):Signal<Void->Void>;
	@:dox(hide) inline function get_onSizeChanged():Signal<Void->Void> {
		return new Signal(this, "size_changed", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	/**		
		The global canvas transform of the viewport. The canvas transform is relative to this.
	**/
	@:native("GlobalCanvasTransform")
	public var globalCanvasTransform:godot.Transform2D;

	/**		
		The canvas transform of the viewport, useful for changing the on-screen positions of all child `godot.CanvasItem`s. This is relative to the global canvas transform of the viewport.
	**/
	@:native("CanvasTransform")
	public var canvasTransform:godot.Transform2D;

	/**		
		The subdivision amount of the fourth quadrant on the shadow atlas.
	**/
	@:native("ShadowAtlasQuad3")
	public var shadowAtlasQuad3:godot.Viewport_ShadowAtlasQuadrantSubdiv;

	/**		
		The subdivision amount of the third quadrant on the shadow atlas.
	**/
	@:native("ShadowAtlasQuad2")
	public var shadowAtlasQuad2:godot.Viewport_ShadowAtlasQuadrantSubdiv;

	/**		
		The subdivision amount of the second quadrant on the shadow atlas.
	**/
	@:native("ShadowAtlasQuad1")
	public var shadowAtlasQuad1:godot.Viewport_ShadowAtlasQuadrantSubdiv;

	/**		
		The subdivision amount of the first quadrant on the shadow atlas.
	**/
	@:native("ShadowAtlasQuad0")
	public var shadowAtlasQuad0:godot.Viewport_ShadowAtlasQuadrantSubdiv;

	/**		
		The shadow atlas' resolution (used for omni and spot lights). The value will be rounded up to the nearest power of 2.
		
		Note: If this is set to 0, shadows won't be visible. Since user-created viewports default to a value of 0, this value must be set above 0 manually.
	**/
	@:native("ShadowAtlasSize")
	public var shadowAtlasSize:Int;

	/**		
		If `true`, the GUI controls on the viewport will lay pixel perfectly.
	**/
	@:native("GuiSnapControlsToPixels")
	public var guiSnapControlsToPixels:Bool;

	/**		
		If `true`, the viewport will not receive input events.
	**/
	@:native("GuiDisableInput")
	public var guiDisableInput:Bool;

	/**		
		If `true`, the objects rendered by viewport become subjects of mouse picking process.
	**/
	@:native("PhysicsObjectPicking")
	public var physicsObjectPicking:Bool;

	/**		
		If `true`, the viewport will process 3D audio streams.
	**/
	@:native("AudioListenerEnable3d")
	public var audioListenerEnable3d:Bool;

	/**		
		If `true`, the viewport will process 2D audio streams.
	**/
	@:native("AudioListenerEnable2d")
	public var audioListenerEnable2d:Bool;

	/**		
		The update mode when viewport used as a render target.
	**/
	@:native("RenderTargetUpdateMode")
	public var renderTargetUpdateMode:godot.Viewport_UpdateMode;

	/**		
		The clear mode when viewport used as a render target.
		
		Note: This property is intended for 2D usage.
	**/
	@:native("RenderTargetClearMode")
	public var renderTargetClearMode:godot.Viewport_ClearMode;

	/**		
		If `true`, the result of rendering will be flipped vertically.
	**/
	@:native("RenderTargetVFlip")
	public var renderTargetVFlip:Bool;

	/**		
		The overlay mode for test rendered geometry in debug purposes.
	**/
	@:native("DebugDraw")
	public var debugDraw:godot.Viewport_DebugDrawEnum;

	/**		
		If `true`, renders the Viewport directly to the screen instead of to the root viewport. Only available in GLES2. This is a low-level optimization and should not be used in most cases. If used, reading from the Viewport or from `SCREEN_TEXTURE` becomes unavailable. For more information see `godot.VisualServer.viewportSetRenderDirectToScreen`.
	**/
	@:native("RenderDirectToScreen")
	public var renderDirectToScreen:Bool;

	/**		
		The rendering mode of viewport.
	**/
	@:native("Usage")
	public var usage:godot.Viewport_UsageEnum;

	/**		
		If `true`, the result after 3D rendering will not have a linear to sRGB color conversion applied. This is important when the viewport is used as a render target where the result is used as a texture on a 3D object rendered in another viewport. It is also important if the viewport is used to create data that is not color based (noise, heightmaps, pickmaps, etc.). Do not enable this when the viewport is used as a texture on a 2D object or if the viewport is your final output.
	**/
	@:native("Keep3dLinear")
	public var keep3dLinear:Bool;

	/**		
		If `true`, the viewport will disable 3D rendering. For actual disabling use `usage`.
	**/
	@:native("Disable3d")
	public var disable3d:Bool;

	/**		
		If `true`, the viewport rendering will receive benefits from High Dynamic Range algorithm. High Dynamic Range allows the viewport to receive values that are outside the 0-1 range. In Godot HDR uses 16 bits, meaning it does not store the full range of a floating point number.
		
		Note: Requires `godot.Viewport.usage` to be set to  or , since HDR is not supported for 2D.
	**/
	@:native("Hdr")
	public var hdr:Bool;

	/**		
		If `true`, uses a fast post-processing filter to make banding significantly less visible. In some cases, debanding may introduce a slightly noticeable dithering pattern. It's recommended to enable debanding only when actually needed since the dithering pattern will make lossless-compressed screenshots larger.
		
		Note: Only available on the GLES3 backend. `godot.Viewport.hdr` must also be `true` for debanding to be effective.
	**/
	@:native("Debanding")
	public var debanding:Bool;

	/**		
		Enables fast approximate antialiasing. FXAA is a popular screen-space antialiasing method, which is fast but will make the image look blurry, especially at lower resolutions. It can still work relatively well at large resolutions such as 1440p and 4K.
	**/
	@:native("Fxaa")
	public var fxaa:Bool;

	/**		
		The multisample anti-aliasing mode. A higher number results in smoother edges at the cost of significantly worse performance. A value of 4 is best unless targeting very high-end systems.
	**/
	@:native("Msaa")
	public var msaa:godot.Viewport_MSAA;

	@:native("HandleInputLocally")
	public var handleInputLocally:Bool;

	/**		
		If `true`, the viewport should render its background as transparent.
	**/
	@:native("TransparentBg")
	public var transparentBg:Bool;

	/**		
		The custom `godot.World2D` which can be used as 2D environment source.
	**/
	@:native("World2d")
	public var world2d:godot.World2D;

	/**		
		The custom `godot.World` which can be used as 3D environment source.
	**/
	@:native("World")
	public var world:godot.World;

	/**		
		If `true`, the viewport will use `godot.World` defined in `world` property.
	**/
	@:native("OwnWorld")
	public var ownWorld:Bool;

	/**		
		If `true`, the size override affects stretch as well.
	**/
	@:native("SizeOverrideStretch")
	public var sizeOverrideStretch:Bool;

	/**		
		The width and height of viewport.
	**/
	@:native("Size")
	public var size:godot.Vector2;

	/**		
		If `true`, the viewport will be used in AR/VR process.
	**/
	@:native("Arvr")
	public var arvr:Bool;

	@:native("new")
	public function new():Void;

	@:native("SetUseArvr")
	public function setUseArvr(use:Bool):Void;

	@:native("UseArvr")
	public function useArvr():Bool;

	@:native("SetSize")
	public function setSize(size:godot.Vector2):Void;

	@:native("GetSize")
	public function getSize():godot.Vector2;

	@:native("SetWorld2d")
	public function setWorld2d(world2d:godot.World2D):Void;

	@:native("GetWorld2d")
	public function getWorld2d():godot.World2D;

	/**		
		Returns the 2D world of the viewport.
	**/
	@:native("FindWorld2d")
	public function findWorld2d():godot.World2D;

	@:native("SetWorld")
	public function setWorld(world:godot.World):Void;

	@:native("GetWorld")
	public function getWorld():godot.World;

	/**		
		Returns the 3D world of the viewport, or if none the world of the parent viewport.
	**/
	@:native("FindWorld")
	public function findWorld():godot.World;

	@:native("SetCanvasTransform")
	public function setCanvasTransform(xform:godot.Transform2D):Void;

	@:native("GetCanvasTransform")
	public function getCanvasTransform():godot.Transform2D;

	@:native("SetGlobalCanvasTransform")
	public function setGlobalCanvasTransform(xform:godot.Transform2D):Void;

	@:native("GetGlobalCanvasTransform")
	public function getGlobalCanvasTransform():godot.Transform2D;

	/**		
		Returns the total transform of the viewport.
	**/
	@:native("GetFinalTransform")
	public function getFinalTransform():godot.Transform2D;

	/**		
		Returns the visible rectangle in global screen coordinates.
	**/
	@:native("GetVisibleRect")
	public function getVisibleRect():godot.Rect2;

	@:native("SetTransparentBackground")
	public function setTransparentBackground(enable:Bool):Void;

	@:native("HasTransparentBackground")
	public function hasTransparentBackground():Bool;

	#if doc_gen
	/**		
		Sets the size override of the viewport. If the `enable` parameter is `true` the override is used, otherwise it uses the default size. If the size parameter is `(-1, -1)`, it won't update the size.
		
		@param size If the parameter is null, then the default value is new Vector2(-1, -1)
		@param margin If the parameter is null, then the default value is new Vector2(0, 0)
	**/
	@:native("SetSizeOverride")
	public function setSizeOverride(enable:Bool, ?size:Null<godot.Vector2>, ?margin:Null<godot.Vector2>):Void;
	#else
	/**		
		Sets the size override of the viewport. If the `enable` parameter is `true` the override is used, otherwise it uses the default size. If the size parameter is `(-1, -1)`, it won't update the size.
		
		@param size If the parameter is null, then the default value is new Vector2(-1, -1)
		@param margin If the parameter is null, then the default value is new Vector2(0, 0)
	**/
	@:native("SetSizeOverride")
	public overload function setSizeOverride(enable:Bool):Void;

	/**		
		Sets the size override of the viewport. If the `enable` parameter is `true` the override is used, otherwise it uses the default size. If the size parameter is `(-1, -1)`, it won't update the size.
		
		@param size If the parameter is null, then the default value is new Vector2(-1, -1)
		@param margin If the parameter is null, then the default value is new Vector2(0, 0)
	**/
	@:native("SetSizeOverride")
	public overload function setSizeOverride(enable:Bool, size:Nullable1<godot.Vector2>):Void;

	/**		
		Sets the size override of the viewport. If the `enable` parameter is `true` the override is used, otherwise it uses the default size. If the size parameter is `(-1, -1)`, it won't update the size.
		
		@param size If the parameter is null, then the default value is new Vector2(-1, -1)
		@param margin If the parameter is null, then the default value is new Vector2(0, 0)
	**/
	@:native("SetSizeOverride")
	public overload function setSizeOverride(enable:Bool, size:Nullable1<godot.Vector2>, margin:Nullable1<godot.Vector2>):Void;
	#end

	/**		
		Returns the size override set with `godot.Viewport.setSizeOverride`.
	**/
	@:native("GetSizeOverride")
	public function getSizeOverride():godot.Vector2;

	/**		
		Returns `true` if the size override is enabled. See `godot.Viewport.setSizeOverride`.
	**/
	@:native("IsSizeOverrideEnabled")
	public function isSizeOverrideEnabled():Bool;

	@:native("SetSizeOverrideStretch")
	public function setSizeOverrideStretch(enabled:Bool):Void;

	@:native("IsSizeOverrideStretchEnabled")
	public function isSizeOverrideStretchEnabled():Bool;

	@:native("SetVflip")
	public function setVflip(enable:Bool):Void;

	@:native("GetVflip")
	public function getVflip():Bool;

	@:native("SetClearMode")
	public function setClearMode(mode:godot.Viewport_ClearMode):Void;

	@:native("GetClearMode")
	public function getClearMode():godot.Viewport_ClearMode;

	@:native("SetUpdateMode")
	public function setUpdateMode(mode:godot.Viewport_UpdateMode):Void;

	@:native("GetUpdateMode")
	public function getUpdateMode():godot.Viewport_UpdateMode;

	@:native("SetMsaa")
	public function setMsaa(msaa:godot.Viewport_MSAA):Void;

	@:native("GetMsaa")
	public function getMsaa():godot.Viewport_MSAA;

	@:native("SetUseFxaa")
	public function setUseFxaa(enable:Bool):Void;

	@:native("GetUseFxaa")
	public function getUseFxaa():Bool;

	@:native("SetUseDebanding")
	public function setUseDebanding(enable:Bool):Void;

	@:native("GetUseDebanding")
	public function getUseDebanding():Bool;

	@:native("SetHdr")
	public function setHdr(enable:Bool):Void;

	@:native("GetHdr")
	public function getHdr():Bool;

	@:native("SetUsage")
	public function setUsage(usage:godot.Viewport_UsageEnum):Void;

	@:native("GetUsage")
	public function getUsage():godot.Viewport_UsageEnum;

	@:native("SetDebugDraw")
	public function setDebugDraw(debugDraw:godot.Viewport_DebugDrawEnum):Void;

	@:native("GetDebugDraw")
	public function getDebugDraw():godot.Viewport_DebugDrawEnum;

	/**		
		Returns information about the viewport from the rendering pipeline.
	**/
	@:native("GetRenderInfo")
	public function getRenderInfo(info:godot.Viewport_RenderInfo):Int;

	/**		
		Returns the viewport's texture.
		
		Note: Due to the way OpenGL works, the resulting `godot.ViewportTexture` is flipped vertically. You can use `godot.Image.flipY` on the result of `godot.Texture.getData` to flip it back, for example:
		
		```
		
		var img = get_viewport().get_texture().get_data()
		img.flip_y()
		
		```
	**/
	@:native("GetTexture")
	public function getTexture():godot.ViewportTexture;

	@:native("SetPhysicsObjectPicking")
	public function setPhysicsObjectPicking(enable:Bool):Void;

	@:native("GetPhysicsObjectPicking")
	public function getPhysicsObjectPicking():Bool;

	/**		
		Returns the viewport's RID from the `godot.VisualServer`.
	**/
	@:native("GetViewportRid")
	public function getViewportRid():godot.RID;

	@:native("Input")
	public function input(localEvent:godot.InputEvent):Void;

	@:native("UnhandledInput")
	public function unhandledInput(localEvent:godot.InputEvent):Void;

	/**		
		Forces update of the 2D and 3D worlds.
	**/
	@:native("UpdateWorlds")
	public function updateWorlds():Void;

	@:native("SetUseOwnWorld")
	public function setUseOwnWorld(enable:Bool):Void;

	@:native("IsUsingOwnWorld")
	public function isUsingOwnWorld():Bool;

	/**		
		Returns the active 3D camera.
	**/
	@:native("GetCamera")
	public function getCamera():godot.Camera;

	@:native("SetAsAudioListener")
	public function setAsAudioListener(enable:Bool):Void;

	@:native("IsAudioListener")
	public function isAudioListener():Bool;

	@:native("SetAsAudioListener2d")
	public function setAsAudioListener2d(enable:Bool):Void;

	@:native("IsAudioListener2d")
	public function isAudioListener2d():Bool;

	/**		
		Attaches this `godot.Viewport` to the root `godot.Viewport` with the specified rectangle. This bypasses the need for another node to display this `godot.Viewport` but makes you responsible for updating the position of this `godot.Viewport` manually.
	**/
	@:native("SetAttachToScreenRect")
	public function setAttachToScreenRect(rect:godot.Rect2):Void;

	@:native("SetUseRenderDirectToScreen")
	public function setUseRenderDirectToScreen(enable:Bool):Void;

	@:native("IsUsingRenderDirectToScreen")
	public function isUsingRenderDirectToScreen():Bool;

	/**		
		Returns the mouse position relative to the viewport.
	**/
	@:native("GetMousePosition")
	public function getMousePosition():godot.Vector2;

	/**		
		Warps the mouse to a position relative to the viewport.
	**/
	@:native("WarpMouse")
	public function warpMouse(toPosition:godot.Vector2):Void;

	/**		
		Returns `true` if there are visible modals on-screen.
	**/
	@:native("GuiHasModalStack")
	public function guiHasModalStack():Bool;

	/**		
		Returns the drag data from the GUI, that was previously returned by `godot.Control.getDragData`.
	**/
	@:native("GuiGetDragData")
	public function guiGetDragData():Dynamic;

	/**		
		Returns `true` if the viewport is currently performing a drag operation.
	**/
	@:native("GuiIsDragging")
	public function guiIsDragging():Bool;

	/**		
		Returns the topmost modal in the stack.
	**/
	@:native("GetModalStackTop")
	public function getModalStackTop():godot.Control;

	@:native("SetDisableInput")
	public function setDisableInput(disable:Bool):Void;

	@:native("IsInputDisabled")
	public function isInputDisabled():Bool;

	@:native("SetDisable3d")
	public function setDisable3d(disable:Bool):Void;

	@:native("Is3dDisabled")
	public function is3dDisabled():Bool;

	@:native("SetKeep3dLinear")
	public function setKeep3dLinear(keep3dLinear:Bool):Void;

	@:native("GetKeep3dLinear")
	public function getKeep3dLinear():Bool;

	@:native("SetShadowAtlasSize")
	public function setShadowAtlasSize(size:Int):Void;

	@:native("GetShadowAtlasSize")
	public function getShadowAtlasSize():Int;

	@:native("SetSnapControlsToPixels")
	public function setSnapControlsToPixels(enabled:Bool):Void;

	@:native("IsSnapControlsToPixelsEnabled")
	public function isSnapControlsToPixelsEnabled():Bool;

	/**		
		Sets the number of subdivisions to use in the specified quadrant. A higher number of subdivisions allows you to have more shadows in the scene at once, but reduces the quality of the shadows. A good practice is to have quadrants with a varying number of subdivisions and to have as few subdivisions as possible.
	**/
	@:native("SetShadowAtlasQuadrantSubdiv")
	public function setShadowAtlasQuadrantSubdiv(quadrant:Int, subdiv:godot.Viewport_ShadowAtlasQuadrantSubdiv):Void;

	/**		
		Returns the `godot.Viewport_ShadowAtlasQuadrantSubdiv` of the specified quadrant.
	**/
	@:native("GetShadowAtlasQuadrantSubdiv")
	public function getShadowAtlasQuadrantSubdiv(quadrant:Int):godot.Viewport_ShadowAtlasQuadrantSubdiv;

	/**		
		Stops the input from propagating further down the `godot.SceneTree`.
	**/
	@:native("SetInputAsHandled")
	public function setInputAsHandled():Void;

	@:native("IsInputHandled")
	public function isInputHandled():Bool;

	@:native("SetHandleInputLocally")
	public function setHandleInputLocally(enable:Bool):Void;

	@:native("IsHandlingInputLocally")
	public function isHandlingInputLocally():Bool;
}
