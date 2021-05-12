// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Server for anything visible. The visual server is the API backend for everything visible. The whole scene system mounts on it to display.

The visual server is completely opaque, the internals are entirely implementation specific and cannot be accessed.

The visual server can be used to bypass the scene system entirely.

Resources are created using the `*_create` functions.

All objects are drawn to a viewport. You can use the `godot.Viewport` attached to the `godot.SceneTree` or you can create one yourself with `godot.VisualServer.viewportCreate`. When using a custom scenario or canvas, the scenario or canvas needs to be attached to the viewport using `godot.VisualServer.viewportSetScenario` or `godot.VisualServer.viewportAttachCanvas`.

In 3D, all visual objects must be associated with a scenario. The scenario is a visual representation of the world. If accessing the visual server from a running game, the scenario can be accessed from the scene tree from any `godot.Spatial` node with `godot.Spatial.getWorld`. Otherwise, a scenario can be created with `godot.VisualServer.scenarioCreate`.

Similarly, in 2D, a canvas is needed to draw all canvas items.

In 3D, all visible objects are comprised of a resource and an instance. A resource can be a mesh, a particle system, a light, or any other 3D object. In order to be visible resources must be attached to an instance using `godot.VisualServer.instanceSetBase`. The instance must also be attached to the scenario using `godot.VisualServer.instanceSetScenario` in order to be visible.

In 2D, all visible objects are some form of canvas item. In order to be visible, a canvas item needs to be the child of a canvas attached to a viewport, or it needs to be the child of another canvas item that is eventually attached to the canvas.
**/
@:libType
@:csNative
@:native("Godot.VisualServer")
@:autoBuild(godot.Godot.buildUserClass())
extern class VisualServer {
	/**
		`frame_post_draw` signal.
		
		Emitted at the end of the frame, after the VisualServer has finished updating all the Viewports.
	**/
	public static var onFramePostDraw(get, never):Signal<Void->Void>;
	@:dox(hide) @:noCompletion inline static function get_onFramePostDraw():Signal<Void->Void> {
		return new Signal(SINGLETON, "frame_post_draw", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	/**
		`frame_pre_draw` signal.
		
		Emitted at the beginning of the frame, before the VisualServer updates all the Viewports.
	**/
	public static var onFramePreDraw(get, never):Signal<Void->Void>;
	@:dox(hide) @:noCompletion inline static function get_onFramePreDraw():Signal<Void->Void> {
		return new Signal(SINGLETON, "frame_pre_draw", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	@:native("Singleton")
	public static var SINGLETON(default, never):godot.Object;

	/**		
		If `false`, disables rendering completely, but the engine logic is still being processed. You can call `godot.VisualServer.forceDraw` to draw a frame even with rendering disabled.
	**/
	@:native("RenderLoopEnabled")
	public static var RENDER_LOOP_ENABLED:Bool;

	/**		
		The maximum renderpriority of all materials.
	**/
	@:native("MaterialRenderPriorityMax")
	public static var MATERIAL_RENDER_PRIORITY_MAX(default, never):Int;

	/**		
		The minimum renderpriority of all materials.
	**/
	@:native("MaterialRenderPriorityMin")
	public static var MATERIAL_RENDER_PRIORITY_MIN(default, never):Int;

	/**		
		Unused enum in Godot 3.x.
	**/
	@:native("MaxCursors")
	public static var MAX_CURSORS(default, never):Int;

	/**		
		Max number of glow levels that can be used with glow post-process effect.
	**/
	@:native("MaxGlowLevels")
	public static var MAX_GLOW_LEVELS(default, never):Int;

	/**		
		The maximum Z-layer for canvas items.
	**/
	@:native("CanvasItemZMax")
	public static var CANVAS_ITEM_Z_MAX(default, never):Int;

	/**		
		The minimum Z-layer for canvas items.
	**/
	@:native("CanvasItemZMin")
	public static var CANVAS_ITEM_Z_MIN(default, never):Int;

	/**		
		Number of weights/bones per vertex.
	**/
	@:native("ArrayWeightsSize")
	public static var ARRAY_WEIGHTS_SIZE(default, never):Int;

	/**		
		Marks an error that shows that the index array is empty.
	**/
	@:native("NoIndexArray")
	public static var NO_INDEX_ARRAY(default, never):Int;

	/**		
		Synchronizes threads.
	**/
	@:native("ForceSync")
	public static function forceSync():Void;

	#if doc_gen
	/**		
		Forces a frame to be drawn when the function is called. Drawing a frame updates all `godot.Viewport`s that are set to update. Use with extreme caution.
	**/
	@:native("ForceDraw")
	public static function forceDraw(?swapBuffers:Bool, ?frameStep:Float):Void;
	#else
	/**		
		Forces a frame to be drawn when the function is called. Drawing a frame updates all `godot.Viewport`s that are set to update. Use with extreme caution.
	**/
	@:native("ForceDraw")
	public static overload function forceDraw():Void;

	/**		
		Forces a frame to be drawn when the function is called. Drawing a frame updates all `godot.Viewport`s that are set to update. Use with extreme caution.
	**/
	@:native("ForceDraw")
	public static overload function forceDraw(swapBuffers:Bool):Void;

	/**		
		Forces a frame to be drawn when the function is called. Drawing a frame updates all `godot.Viewport`s that are set to update. Use with extreme caution.
	**/
	@:native("ForceDraw")
	public static overload function forceDraw(swapBuffers:Bool, frameStep:Float):Void;
	#end

	/**		
		Not implemented in Godot 3.x.
	**/
	@:native("Sync")
	public static function sync():Void;

	#if doc_gen
	/**		
		Draws a frame. This method is deprecated, please use `godot.VisualServer.forceDraw` instead.
	**/
	@:native("Draw")
	public static function draw(?swapBuffers:Bool, ?frameStep:Float):Void;
	#else
	/**		
		Draws a frame. This method is deprecated, please use `godot.VisualServer.forceDraw` instead.
	**/
	@:native("Draw")
	public static overload function draw():Void;

	/**		
		Draws a frame. This method is deprecated, please use `godot.VisualServer.forceDraw` instead.
	**/
	@:native("Draw")
	public static overload function draw(swapBuffers:Bool):Void;

	/**		
		Draws a frame. This method is deprecated, please use `godot.VisualServer.forceDraw` instead.
	**/
	@:native("Draw")
	public static overload function draw(swapBuffers:Bool, frameStep:Float):Void;
	#end

	/**		
		Creates an empty texture and adds it to the VisualServer. It can be accessed with the RID that is returned. This RID will be used in all `texture_*` VisualServer functions.
		
		Once finished with your RID, you will want to free the RID using the VisualServer's `godot.VisualServer.freeRid` static method.
	**/
	@:native("TextureCreate")
	public static function textureCreate():godot.RID;

	#if doc_gen
	/**		
		Creates a texture, allocates the space for an image, and fills in the image.
	**/
	@:native("TextureCreateFromImage")
	public static function textureCreateFromImage(image:godot.Image, ?flags:UInt):godot.RID;
	#else
	/**		
		Creates a texture, allocates the space for an image, and fills in the image.
	**/
	@:native("TextureCreateFromImage")
	public static overload function textureCreateFromImage(image:godot.Image):godot.RID;

	/**		
		Creates a texture, allocates the space for an image, and fills in the image.
	**/
	@:native("TextureCreateFromImage")
	public static overload function textureCreateFromImage(image:godot.Image, flags:UInt):godot.RID;
	#end

	#if doc_gen
	/**		
		Allocates the GPU memory for the texture.
	**/
	@:native("TextureAllocate")
	public static function textureAllocate(texture:godot.RID, width:Int, height:Int, depth3d:Int, format:godot.Image_Format, type:godot.VisualServer_TextureType, ?flags:UInt):Void;
	#else
	/**		
		Allocates the GPU memory for the texture.
	**/
	@:native("TextureAllocate")
	public static overload function textureAllocate(texture:godot.RID, width:Int, height:Int, depth3d:Int, format:godot.Image_Format, type:godot.VisualServer_TextureType):Void;

	/**		
		Allocates the GPU memory for the texture.
	**/
	@:native("TextureAllocate")
	public static overload function textureAllocate(texture:godot.RID, width:Int, height:Int, depth3d:Int, format:godot.Image_Format, type:godot.VisualServer_TextureType, flags:UInt):Void;
	#end

	#if doc_gen
	/**		
		Sets the texture's image data. If it's a CubeMap, it sets the image data at a cube side.
	**/
	@:native("TextureSetData")
	public static function textureSetData(texture:godot.RID, image:godot.Image, ?layer:Int):Void;
	#else
	/**		
		Sets the texture's image data. If it's a CubeMap, it sets the image data at a cube side.
	**/
	@:native("TextureSetData")
	public static overload function textureSetData(texture:godot.RID, image:godot.Image):Void;

	/**		
		Sets the texture's image data. If it's a CubeMap, it sets the image data at a cube side.
	**/
	@:native("TextureSetData")
	public static overload function textureSetData(texture:godot.RID, image:godot.Image, layer:Int):Void;
	#end

	#if doc_gen
	/**		
		Sets a part of the data for a texture. Warning: this function calls the underlying graphics API directly and may corrupt your texture if used improperly.
	**/
	@:native("TextureSetDataPartial")
	public static function textureSetDataPartial(texture:godot.RID, image:godot.Image, srcX:Int, srcY:Int, srcW:Int, srcH:Int, dstX:Int, dstY:Int, dstMip:Int, ?layer:Int):Void;
	#else
	/**		
		Sets a part of the data for a texture. Warning: this function calls the underlying graphics API directly and may corrupt your texture if used improperly.
	**/
	@:native("TextureSetDataPartial")
	public static overload function textureSetDataPartial(texture:godot.RID, image:godot.Image, srcX:Int, srcY:Int, srcW:Int, srcH:Int, dstX:Int, dstY:Int, dstMip:Int):Void;

	/**		
		Sets a part of the data for a texture. Warning: this function calls the underlying graphics API directly and may corrupt your texture if used improperly.
	**/
	@:native("TextureSetDataPartial")
	public static overload function textureSetDataPartial(texture:godot.RID, image:godot.Image, srcX:Int, srcY:Int, srcW:Int, srcH:Int, dstX:Int, dstY:Int, dstMip:Int, layer:Int):Void;
	#end

	#if doc_gen
	/**		
		Returns a copy of a texture's image unless it's a CubeMap, in which case it returns the `godot.RID` of the image at one of the cubes sides.
	**/
	@:native("TextureGetData")
	public static function textureGetData(texture:godot.RID, ?cubeSide:Int):godot.Image;
	#else
	/**		
		Returns a copy of a texture's image unless it's a CubeMap, in which case it returns the `godot.RID` of the image at one of the cubes sides.
	**/
	@:native("TextureGetData")
	public static overload function textureGetData(texture:godot.RID):godot.Image;

	/**		
		Returns a copy of a texture's image unless it's a CubeMap, in which case it returns the `godot.RID` of the image at one of the cubes sides.
	**/
	@:native("TextureGetData")
	public static overload function textureGetData(texture:godot.RID, cubeSide:Int):godot.Image;
	#end

	/**		
		Sets the texture's flags. See `godot.VisualServer_TextureFlags` for options.
	**/
	@:native("TextureSetFlags")
	public static function textureSetFlags(texture:godot.RID, flags:UInt):Void;

	/**		
		Returns the flags of a texture.
	**/
	@:native("TextureGetFlags")
	public static function textureGetFlags(texture:godot.RID):UInt;

	/**		
		Returns the format of the texture's image.
	**/
	@:native("TextureGetFormat")
	public static function textureGetFormat(texture:godot.RID):godot.Image_Format;

	/**		
		Returns the type of the texture, can be any of the `godot.VisualServer_TextureType`.
	**/
	@:native("TextureGetType")
	public static function textureGetType(texture:godot.RID):godot.VisualServer_TextureType;

	/**		
		Returns the opengl id of the texture's image.
	**/
	@:native("TextureGetTexid")
	public static function textureGetTexid(texture:godot.RID):UInt;

	/**		
		Returns the texture's width.
	**/
	@:native("TextureGetWidth")
	public static function textureGetWidth(texture:godot.RID):UInt;

	/**		
		Returns the texture's height.
	**/
	@:native("TextureGetHeight")
	public static function textureGetHeight(texture:godot.RID):UInt;

	/**		
		Returns the depth of the texture.
	**/
	@:native("TextureGetDepth")
	public static function textureGetDepth(texture:godot.RID):UInt;

	/**		
		Resizes the texture to the specified dimensions.
	**/
	@:native("TextureSetSizeOverride")
	public static function textureSetSizeOverride(texture:godot.RID, width:Int, height:Int, depth:Int):Void;

	/**		
		Sets the texture's path.
	**/
	@:native("TextureSetPath")
	public static function textureSetPath(texture:godot.RID, path:std.String):Void;

	/**		
		Returns the texture's path.
	**/
	@:native("TextureGetPath")
	public static function textureGetPath(texture:godot.RID):std.String;

	/**		
		If `true`, sets internal processes to shrink all image data to half the size.
	**/
	@:native("TextureSetShrinkAllX2OnSetData")
	public static function textureSetShrinkAllX2OnSetData(shrink:Bool):Void;

	/**		
		Binds the texture to a texture slot.
	**/
	@:native("TextureBind")
	public static function textureBind(texture:godot.RID, number:UInt):Void;

	/**		
		Returns a list of all the textures and their information.
	**/
	@:native("TextureDebugUsage")
	public static function textureDebugUsage():godot.collections.Array;

	/**		
		If `true`, the image will be stored in the texture's images array if overwritten.
	**/
	@:native("TexturesKeepOriginal")
	public static function texturesKeepOriginal(enable:Bool):Void;

	/**		
		Creates an empty sky and adds it to the VisualServer. It can be accessed with the RID that is returned. This RID will be used in all `sky_*` VisualServer functions.
		
		Once finished with your RID, you will want to free the RID using the VisualServer's `godot.VisualServer.freeRid` static method.
	**/
	@:native("SkyCreate")
	public static function skyCreate():godot.RID;

	/**		
		Sets a sky's texture.
	**/
	@:native("SkySetTexture")
	public static function skySetTexture(sky:godot.RID, cubeMap:godot.RID, radianceSize:Int):Void;

	/**		
		Creates an empty shader and adds it to the VisualServer. It can be accessed with the RID that is returned. This RID will be used in all `shader_*` VisualServer functions.
		
		Once finished with your RID, you will want to free the RID using the VisualServer's `godot.VisualServer.freeRid` static method.
	**/
	@:native("ShaderCreate")
	public static function shaderCreate():godot.RID;

	/**		
		Sets a shader's code.
	**/
	@:native("ShaderSetCode")
	public static function shaderSetCode(shader:godot.RID, code:std.String):Void;

	/**		
		Returns a shader's code.
	**/
	@:native("ShaderGetCode")
	public static function shaderGetCode(shader:godot.RID):std.String;

	/**		
		Returns the parameters of a shader.
	**/
	@:native("ShaderGetParamList")
	public static function shaderGetParamList(shader:godot.RID):godot.collections.Array;

	/**		
		Sets a shader's default texture. Overwrites the texture given by name.
	**/
	@:native("ShaderSetDefaultTextureParam")
	public static function shaderSetDefaultTextureParam(shader:godot.RID, name:std.String, texture:godot.RID):Void;

	/**		
		Returns a default texture from a shader searched by name.
	**/
	@:native("ShaderGetDefaultTextureParam")
	public static function shaderGetDefaultTextureParam(shader:godot.RID, name:std.String):godot.RID;

	/**		
		Creates an empty material and adds it to the VisualServer. It can be accessed with the RID that is returned. This RID will be used in all `material_*` VisualServer functions.
		
		Once finished with your RID, you will want to free the RID using the VisualServer's `godot.VisualServer.freeRid` static method.
	**/
	@:native("MaterialCreate")
	public static function materialCreate():godot.RID;

	/**		
		Sets a shader material's shader.
	**/
	@:native("MaterialSetShader")
	public static function materialSetShader(shaderMaterial:godot.RID, shader:godot.RID):Void;

	/**		
		Returns the shader of a certain material's shader. Returns an empty RID if the material doesn't have a shader.
	**/
	@:native("MaterialGetShader")
	public static function materialGetShader(shaderMaterial:godot.RID):godot.RID;

	/**		
		Sets a material's parameter.
	**/
	@:native("MaterialSetParam")
	public static function materialSetParam(material:godot.RID, parameter:std.String, value:Dynamic):Void;

	/**		
		Returns the value of a certain material's parameter.
	**/
	@:native("MaterialGetParam")
	public static function materialGetParam(material:godot.RID, parameter:std.String):Dynamic;

	/**		
		Returns the default value for the param if available. Otherwise returns an empty `Variant`.
	**/
	@:native("MaterialGetParamDefault")
	public static function materialGetParamDefault(material:godot.RID, parameter:std.String):Dynamic;

	/**		
		Sets a material's render priority.
	**/
	@:native("MaterialSetRenderPriority")
	public static function materialSetRenderPriority(material:godot.RID, priority:Int):Void;

	/**		
		Sets a material's line width.
	**/
	@:native("MaterialSetLineWidth")
	public static function materialSetLineWidth(material:godot.RID, width:Single):Void;

	/**		
		Sets an object's next material.
	**/
	@:native("MaterialSetNextPass")
	public static function materialSetNextPass(material:godot.RID, nextMaterial:godot.RID):Void;

	/**		
		Creates a new mesh and adds it to the VisualServer. It can be accessed with the RID that is returned. This RID will be used in all `mesh_*` VisualServer functions.
		
		Once finished with your RID, you will want to free the RID using the VisualServer's `godot.VisualServer.freeRid` static method.
		
		To place in a scene, attach this mesh to an instance using `godot.VisualServer.instanceSetBase` using the returned RID.
	**/
	@:native("MeshCreate")
	public static function meshCreate():godot.RID;

	/**		
		Function is unused in Godot 3.x.
	**/
	@:native("MeshSurfaceGetFormatOffset")
	public static function meshSurfaceGetFormatOffset(format:UInt, vertexLen:Int, indexLen:Int, arrayIndex:Int):UInt;

	/**		
		Function is unused in Godot 3.x.
	**/
	@:native("MeshSurfaceGetFormatStride")
	public static function meshSurfaceGetFormatStride(format:UInt, vertexLen:Int, indexLen:Int):UInt;

	#if doc_gen
	/**		
		Adds a surface generated from the Arrays to a mesh. See `godot.VisualServer_PrimitiveType` constants for types.
		
		@param blendShapes If the parameter is null, then the default value is new Godot.Collections.Array {}
	**/
	@:native("MeshAddSurfaceFromArrays")
	public static function meshAddSurfaceFromArrays(mesh:godot.RID, primitive:godot.VisualServer_PrimitiveType, arrays:godot.collections.Array, ?blendShapes:godot.collections.Array, ?compressFormat:UInt):Void;
	#else
	/**		
		Adds a surface generated from the Arrays to a mesh. See `godot.VisualServer_PrimitiveType` constants for types.
		
		@param blendShapes If the parameter is null, then the default value is new Godot.Collections.Array {}
	**/
	@:native("MeshAddSurfaceFromArrays")
	public static overload function meshAddSurfaceFromArrays(mesh:godot.RID, primitive:godot.VisualServer_PrimitiveType, arrays:godot.collections.Array):Void;

	/**		
		Adds a surface generated from the Arrays to a mesh. See `godot.VisualServer_PrimitiveType` constants for types.
		
		@param blendShapes If the parameter is null, then the default value is new Godot.Collections.Array {}
	**/
	@:native("MeshAddSurfaceFromArrays")
	public static overload function meshAddSurfaceFromArrays(mesh:godot.RID, primitive:godot.VisualServer_PrimitiveType, arrays:godot.collections.Array, blendShapes:godot.collections.Array):Void;

	/**		
		Adds a surface generated from the Arrays to a mesh. See `godot.VisualServer_PrimitiveType` constants for types.
		
		@param blendShapes If the parameter is null, then the default value is new Godot.Collections.Array {}
	**/
	@:native("MeshAddSurfaceFromArrays")
	public static overload function meshAddSurfaceFromArrays(mesh:godot.RID, primitive:godot.VisualServer_PrimitiveType, arrays:godot.collections.Array, blendShapes:godot.collections.Array, compressFormat:UInt):Void;
	#end

	/**		
		Sets a mesh's blend shape count.
	**/
	@:native("MeshSetBlendShapeCount")
	public static function meshSetBlendShapeCount(mesh:godot.RID, amount:Int):Void;

	/**		
		Returns a mesh's blend shape count.
	**/
	@:native("MeshGetBlendShapeCount")
	public static function meshGetBlendShapeCount(mesh:godot.RID):Int;

	/**		
		Sets a mesh's blend shape mode.
	**/
	@:native("MeshSetBlendShapeMode")
	public static function meshSetBlendShapeMode(mesh:godot.RID, mode:godot.VisualServer_BlendShapeMode):Void;

	/**		
		Returns a mesh's blend shape mode.
	**/
	@:native("MeshGetBlendShapeMode")
	public static function meshGetBlendShapeMode(mesh:godot.RID):godot.VisualServer_BlendShapeMode;

	/**		
		Updates a specific region of a vertex buffer for the specified surface. Warning: this function alters the vertex buffer directly with no safety mechanisms, you can easily corrupt your mesh.
	**/
	@:native("MeshSurfaceUpdateRegion")
	public static function meshSurfaceUpdateRegion(mesh:godot.RID, surface:Int, offset:Int, data:HaxeArray<cs.types.UInt8>):Void;

	/**		
		Sets a mesh's surface's material.
	**/
	@:native("MeshSurfaceSetMaterial")
	public static function meshSurfaceSetMaterial(mesh:godot.RID, surface:Int, material:godot.RID):Void;

	/**		
		Returns a mesh's surface's material.
	**/
	@:native("MeshSurfaceGetMaterial")
	public static function meshSurfaceGetMaterial(mesh:godot.RID, surface:Int):godot.RID;

	/**		
		Returns a mesh's surface's amount of vertices.
	**/
	@:native("MeshSurfaceGetArrayLen")
	public static function meshSurfaceGetArrayLen(mesh:godot.RID, surface:Int):Int;

	/**		
		Returns a mesh's surface's amount of indices.
	**/
	@:native("MeshSurfaceGetArrayIndexLen")
	public static function meshSurfaceGetArrayIndexLen(mesh:godot.RID, surface:Int):Int;

	/**		
		Returns a mesh's surface's vertex buffer.
	**/
	public static extern inline function meshSurfaceGetArray(mesh:godot.RID, surface:Int):std.Array<cs.types.UInt8> {
		return cs.Lib.array(cs.Syntax.code("MeshSurfaceGetArray({0}, {1})", mesh, surface));
	}

	/**		
		Returns a mesh's surface's index buffer.
	**/
	public static extern inline function meshSurfaceGetIndexArray(mesh:godot.RID, surface:Int):std.Array<cs.types.UInt8> {
		return cs.Lib.array(cs.Syntax.code("MeshSurfaceGetIndexArray({0}, {1})", mesh, surface));
	}

	/**		
		Returns a mesh's surface's buffer arrays.
	**/
	@:native("MeshSurfaceGetArrays")
	public static function meshSurfaceGetArrays(mesh:godot.RID, surface:Int):godot.collections.Array;

	/**		
		Returns a mesh's surface's arrays for blend shapes.
	**/
	@:native("MeshSurfaceGetBlendShapeArrays")
	public static function meshSurfaceGetBlendShapeArrays(mesh:godot.RID, surface:Int):godot.collections.Array;

	/**		
		Returns the format of a mesh's surface.
	**/
	@:native("MeshSurfaceGetFormat")
	public static function meshSurfaceGetFormat(mesh:godot.RID, surface:Int):UInt;

	/**		
		Returns the primitive type of a mesh's surface.
	**/
	@:native("MeshSurfaceGetPrimitiveType")
	public static function meshSurfaceGetPrimitiveType(mesh:godot.RID, surface:Int):godot.VisualServer_PrimitiveType;

	/**		
		Returns a mesh's surface's aabb.
	**/
	@:native("MeshSurfaceGetAabb")
	public static function meshSurfaceGetAabb(mesh:godot.RID, surface:Int):godot.AABB;

	/**		
		Returns the aabb of a mesh's surface's skeleton.
	**/
	@:native("MeshSurfaceGetSkeletonAabb")
	public static function meshSurfaceGetSkeletonAabb(mesh:godot.RID, surface:Int):godot.collections.Array;

	/**		
		Removes a mesh's surface.
	**/
	@:native("MeshRemoveSurface")
	public static function meshRemoveSurface(mesh:godot.RID, index:Int):Void;

	/**		
		Returns a mesh's number of surfaces.
	**/
	@:native("MeshGetSurfaceCount")
	public static function meshGetSurfaceCount(mesh:godot.RID):Int;

	/**		
		Sets a mesh's custom aabb.
	**/
	@:native("MeshSetCustomAabb")
	public static function meshSetCustomAabb(mesh:godot.RID, aabb:godot.AABB):Void;

	/**		
		Returns a mesh's custom aabb.
	**/
	@:native("MeshGetCustomAabb")
	public static function meshGetCustomAabb(mesh:godot.RID):godot.AABB;

	/**		
		Removes all surfaces from a mesh.
	**/
	@:native("MeshClear")
	public static function meshClear(mesh:godot.RID):Void;

	/**		
		Creates a new multimesh on the VisualServer and returns an `godot.RID` handle. This RID will be used in all `multimesh_*` VisualServer functions.
		
		Once finished with your RID, you will want to free the RID using the VisualServer's `godot.VisualServer.freeRid` static method.
		
		To place in a scene, attach this multimesh to an instance using `godot.VisualServer.instanceSetBase` using the returned RID.
	**/
	@:native("MultimeshCreate")
	public static function multimeshCreate():godot.RID;

	#if doc_gen
	/**		
		Allocates space for the multimesh data. Format parameters determine how the data will be stored by OpenGL. See `godot.VisualServer_MultimeshTransformFormat`, `godot.VisualServer_MultimeshColorFormat`, and `godot.VisualServer_MultimeshCustomDataFormat` for usage. Equivalent to `godot.MultiMesh.instanceCount`.
	**/
	@:native("MultimeshAllocate")
	public static function multimeshAllocate(multimesh:godot.RID, instances:Int, transformFormat:godot.VisualServer_MultimeshTransformFormat, colorFormat:godot.VisualServer_MultimeshColorFormat, ?customDataFormat:godot.VisualServer_MultimeshCustomDataFormat):Void;
	#else
	/**		
		Allocates space for the multimesh data. Format parameters determine how the data will be stored by OpenGL. See `godot.VisualServer_MultimeshTransformFormat`, `godot.VisualServer_MultimeshColorFormat`, and `godot.VisualServer_MultimeshCustomDataFormat` for usage. Equivalent to `godot.MultiMesh.instanceCount`.
	**/
	@:native("MultimeshAllocate")
	public static overload function multimeshAllocate(multimesh:godot.RID, instances:Int, transformFormat:godot.VisualServer_MultimeshTransformFormat, colorFormat:godot.VisualServer_MultimeshColorFormat):Void;

	/**		
		Allocates space for the multimesh data. Format parameters determine how the data will be stored by OpenGL. See `godot.VisualServer_MultimeshTransformFormat`, `godot.VisualServer_MultimeshColorFormat`, and `godot.VisualServer_MultimeshCustomDataFormat` for usage. Equivalent to `godot.MultiMesh.instanceCount`.
	**/
	@:native("MultimeshAllocate")
	public static overload function multimeshAllocate(multimesh:godot.RID, instances:Int, transformFormat:godot.VisualServer_MultimeshTransformFormat, colorFormat:godot.VisualServer_MultimeshColorFormat, customDataFormat:godot.VisualServer_MultimeshCustomDataFormat):Void;
	#end

	/**		
		Returns the number of instances allocated for this multimesh.
	**/
	@:native("MultimeshGetInstanceCount")
	public static function multimeshGetInstanceCount(multimesh:godot.RID):Int;

	/**		
		Sets the mesh to be drawn by the multimesh. Equivalent to `godot.MultiMesh.mesh`.
	**/
	@:native("MultimeshSetMesh")
	public static function multimeshSetMesh(multimesh:godot.RID, mesh:godot.RID):Void;

	/**		
		Sets the `godot.Transform` for this instance. Equivalent to `godot.MultiMesh.setInstanceTransform`.
	**/
	@:native("MultimeshInstanceSetTransform")
	public static function multimeshInstanceSetTransform(multimesh:godot.RID, index:Int, transform:godot.Transform):Void;

	/**		
		Sets the `godot.Transform2D` for this instance. For use when multimesh is used in 2D. Equivalent to `godot.MultiMesh.setInstanceTransform2d`.
	**/
	@:native("MultimeshInstanceSetTransform2d")
	public static function multimeshInstanceSetTransform2d(multimesh:godot.RID, index:Int, transform:godot.Transform2D):Void;

	/**		
		Sets the color by which this instance will be modulated. Equivalent to `godot.MultiMesh.setInstanceColor`.
	**/
	@:native("MultimeshInstanceSetColor")
	public static function multimeshInstanceSetColor(multimesh:godot.RID, index:Int, color:godot.Color):Void;

	/**		
		Sets the custom data for this instance. Custom data is passed as a `godot.Color`, but is interpreted as a `vec4` in the shader. Equivalent to `godot.MultiMesh.setInstanceCustomData`.
	**/
	@:native("MultimeshInstanceSetCustomData")
	public static function multimeshInstanceSetCustomData(multimesh:godot.RID, index:Int, customData:godot.Color):Void;

	/**		
		Returns the RID of the mesh that will be used in drawing this multimesh.
	**/
	@:native("MultimeshGetMesh")
	public static function multimeshGetMesh(multimesh:godot.RID):godot.RID;

	/**		
		Calculates and returns the axis-aligned bounding box that encloses all instances within the multimesh.
	**/
	@:native("MultimeshGetAabb")
	public static function multimeshGetAabb(multimesh:godot.RID):godot.AABB;

	/**		
		Returns the `godot.Transform` of the specified instance.
	**/
	@:native("MultimeshInstanceGetTransform")
	public static function multimeshInstanceGetTransform(multimesh:godot.RID, index:Int):godot.Transform;

	/**		
		Returns the `godot.Transform2D` of the specified instance. For use when the multimesh is set to use 2D transforms.
	**/
	@:native("MultimeshInstanceGetTransform2d")
	public static function multimeshInstanceGetTransform2d(multimesh:godot.RID, index:Int):godot.Transform2D;

	/**		
		Returns the color by which the specified instance will be modulated.
	**/
	@:native("MultimeshInstanceGetColor")
	public static function multimeshInstanceGetColor(multimesh:godot.RID, index:Int):godot.Color;

	/**		
		Returns the custom data associated with the specified instance.
	**/
	@:native("MultimeshInstanceGetCustomData")
	public static function multimeshInstanceGetCustomData(multimesh:godot.RID, index:Int):godot.Color;

	/**		
		Sets the number of instances visible at a given time. If -1, all instances that have been allocated are drawn. Equivalent to `godot.MultiMesh.visibleInstanceCount`.
	**/
	@:native("MultimeshSetVisibleInstances")
	public static function multimeshSetVisibleInstances(multimesh:godot.RID, visible:Int):Void;

	/**		
		Returns the number of visible instances for this multimesh.
	**/
	@:native("MultimeshGetVisibleInstances")
	public static function multimeshGetVisibleInstances(multimesh:godot.RID):Int;

	/**		
		Sets all data related to the instances in one go. This is especially useful when loading the data from disk or preparing the data from GDNative.
		
		
		All data is packed in one large float array. An array may look like this: Transform for instance 1, color data for instance 1, custom data for instance 1, transform for instance 2, color data for instance 2, etc.
		
		
		`godot.Transform` is stored as 12 floats, `godot.Transform2D` is stored as 8 floats, `COLOR_8BIT` / `CUSTOM_DATA_8BIT` is stored as 1 float (4 bytes as is) and `COLOR_FLOAT` / `CUSTOM_DATA_FLOAT` is stored as 4 floats.
	**/
	@:native("MultimeshSetAsBulkArray")
	public static function multimeshSetAsBulkArray(multimesh:godot.RID, array:HaxeArray<Single>):Void;

	/**		
		Creates an immediate geometry and adds it to the VisualServer. It can be accessed with the RID that is returned. This RID will be used in all `immediate_*` VisualServer functions.
		
		Once finished with your RID, you will want to free the RID using the VisualServer's `godot.VisualServer.freeRid` static method.
		
		To place in a scene, attach this immediate geometry to an instance using `godot.VisualServer.instanceSetBase` using the returned RID.
	**/
	@:native("ImmediateCreate")
	public static function immediateCreate():godot.RID;

	#if doc_gen
	/**		
		Sets up `godot.ImmediateGeometry` internals to prepare for drawing. Equivalent to `godot.ImmediateGeometry.begin`.
	**/
	@:native("ImmediateBegin")
	public static function immediateBegin(immediate:godot.RID, primitive:godot.VisualServer_PrimitiveType, ?texture:godot.RID):Void;
	#else
	/**		
		Sets up `godot.ImmediateGeometry` internals to prepare for drawing. Equivalent to `godot.ImmediateGeometry.begin`.
	**/
	@:native("ImmediateBegin")
	public static overload function immediateBegin(immediate:godot.RID, primitive:godot.VisualServer_PrimitiveType):Void;

	/**		
		Sets up `godot.ImmediateGeometry` internals to prepare for drawing. Equivalent to `godot.ImmediateGeometry.begin`.
	**/
	@:native("ImmediateBegin")
	public static overload function immediateBegin(immediate:godot.RID, primitive:godot.VisualServer_PrimitiveType, texture:godot.RID):Void;
	#end

	/**		
		Adds the next vertex using the information provided in advance. Equivalent to `godot.ImmediateGeometry.addVertex`.
	**/
	@:native("ImmediateVertex")
	public static function immediateVertex(immediate:godot.RID, vertex:godot.Vector3):Void;

	/**		
		Adds the next vertex using the information provided in advance. This is a helper class that calls `godot.VisualServer.immediateVertex` under the hood. Equivalent to `godot.ImmediateGeometry.addVertex`.
	**/
	@:native("ImmediateVertex2d")
	public static function immediateVertex2d(immediate:godot.RID, vertex:godot.Vector2):Void;

	/**		
		Sets the normal to be used with next vertex. Equivalent to `godot.ImmediateGeometry.setNormal`.
	**/
	@:native("ImmediateNormal")
	public static function immediateNormal(immediate:godot.RID, normal:godot.Vector3):Void;

	/**		
		Sets the tangent to be used with next vertex. Equivalent to `godot.ImmediateGeometry.setTangent`.
	**/
	@:native("ImmediateTangent")
	public static function immediateTangent(immediate:godot.RID, tangent:godot.Plane):Void;

	/**		
		Sets the color to be used with next vertex. Equivalent to `godot.ImmediateGeometry.setColor`.
	**/
	@:native("ImmediateColor")
	public static function immediateColor(immediate:godot.RID, color:godot.Color):Void;

	/**		
		Sets the UV to be used with next vertex. Equivalent to `godot.ImmediateGeometry.setUv`.
	**/
	@:native("ImmediateUv")
	public static function immediateUv(immediate:godot.RID, texUv:godot.Vector2):Void;

	/**		
		Sets the UV2 to be used with next vertex. Equivalent to `godot.ImmediateGeometry.setUv2`.
	**/
	@:native("ImmediateUv2")
	public static function immediateUv2(immediate:godot.RID, texUv:godot.Vector2):Void;

	/**		
		Ends drawing the `godot.ImmediateGeometry` and displays it. Equivalent to `godot.ImmediateGeometry.end`.
	**/
	@:native("ImmediateEnd")
	public static function immediateEnd(immediate:godot.RID):Void;

	/**		
		Clears everything that was set up between `godot.VisualServer.immediateBegin` and `godot.VisualServer.immediateEnd`. Equivalent to `godot.ImmediateGeometry.clear`.
	**/
	@:native("ImmediateClear")
	public static function immediateClear(immediate:godot.RID):Void;

	/**		
		Sets the material to be used to draw the `godot.ImmediateGeometry`.
	**/
	@:native("ImmediateSetMaterial")
	public static function immediateSetMaterial(immediate:godot.RID, material:godot.RID):Void;

	/**		
		Returns the material assigned to the `godot.ImmediateGeometry`.
	**/
	@:native("ImmediateGetMaterial")
	public static function immediateGetMaterial(immediate:godot.RID):godot.RID;

	/**		
		Creates a skeleton and adds it to the VisualServer. It can be accessed with the RID that is returned. This RID will be used in all `skeleton_*` VisualServer functions.
		
		Once finished with your RID, you will want to free the RID using the VisualServer's `godot.VisualServer.freeRid` static method.
	**/
	@:native("SkeletonCreate")
	public static function skeletonCreate():godot.RID;

	#if doc_gen
	/**		
		Allocates the GPU buffers for this skeleton.
	**/
	@:native("SkeletonAllocate")
	public static function skeletonAllocate(skeleton:godot.RID, bones:Int, ?is2dSkeleton:Bool):Void;
	#else
	/**		
		Allocates the GPU buffers for this skeleton.
	**/
	@:native("SkeletonAllocate")
	public static overload function skeletonAllocate(skeleton:godot.RID, bones:Int):Void;

	/**		
		Allocates the GPU buffers for this skeleton.
	**/
	@:native("SkeletonAllocate")
	public static overload function skeletonAllocate(skeleton:godot.RID, bones:Int, is2dSkeleton:Bool):Void;
	#end

	/**		
		Returns the number of bones allocated for this skeleton.
	**/
	@:native("SkeletonGetBoneCount")
	public static function skeletonGetBoneCount(skeleton:godot.RID):Int;

	/**		
		Sets the `godot.Transform` for a specific bone of this skeleton.
	**/
	@:native("SkeletonBoneSetTransform")
	public static function skeletonBoneSetTransform(skeleton:godot.RID, bone:Int, transform:godot.Transform):Void;

	/**		
		Returns the `godot.Transform` set for a specific bone of this skeleton.
	**/
	@:native("SkeletonBoneGetTransform")
	public static function skeletonBoneGetTransform(skeleton:godot.RID, bone:Int):godot.Transform;

	/**		
		Sets the `godot.Transform2D` for a specific bone of this skeleton.
	**/
	@:native("SkeletonBoneSetTransform2d")
	public static function skeletonBoneSetTransform2d(skeleton:godot.RID, bone:Int, transform:godot.Transform2D):Void;

	/**		
		Returns the `godot.Transform2D` set for a specific bone of this skeleton.
	**/
	@:native("SkeletonBoneGetTransform2d")
	public static function skeletonBoneGetTransform2d(skeleton:godot.RID, bone:Int):godot.Transform2D;

	/**		
		Creates a directional light and adds it to the VisualServer. It can be accessed with the RID that is returned. This RID can be used in most `light_*` VisualServer functions.
		
		Once finished with your RID, you will want to free the RID using the VisualServer's `godot.VisualServer.freeRid` static method.
		
		To place in a scene, attach this directional light to an instance using `godot.VisualServer.instanceSetBase` using the returned RID.
	**/
	@:native("DirectionalLightCreate")
	public static function directionalLightCreate():godot.RID;

	/**		
		Creates a new omni light and adds it to the VisualServer. It can be accessed with the RID that is returned. This RID can be used in most `light_*` VisualServer functions.
		
		Once finished with your RID, you will want to free the RID using the VisualServer's `godot.VisualServer.freeRid` static method.
		
		To place in a scene, attach this omni light to an instance using `godot.VisualServer.instanceSetBase` using the returned RID.
	**/
	@:native("OmniLightCreate")
	public static function omniLightCreate():godot.RID;

	/**		
		Creates a spot light and adds it to the VisualServer. It can be accessed with the RID that is returned. This RID can be used in most `light_*` VisualServer functions.
		
		Once finished with your RID, you will want to free the RID using the VisualServer's `godot.VisualServer.freeRid` static method.
		
		To place in a scene, attach this spot light to an instance using `godot.VisualServer.instanceSetBase` using the returned RID.
	**/
	@:native("SpotLightCreate")
	public static function spotLightCreate():godot.RID;

	/**		
		Sets the color of the light. Equivalent to `godot.Light.lightColor`.
	**/
	@:native("LightSetColor")
	public static function lightSetColor(light:godot.RID, color:godot.Color):Void;

	/**		
		Sets the specified light parameter. See `godot.VisualServer_LightParam` for options. Equivalent to `godot.Light.setParam`.
	**/
	@:native("LightSetParam")
	public static function lightSetParam(light:godot.RID, param:godot.VisualServer_LightParam, value:Single):Void;

	/**		
		If `true`, light will cast shadows. Equivalent to `godot.Light.shadowEnabled`.
	**/
	@:native("LightSetShadow")
	public static function lightSetShadow(light:godot.RID, enabled:Bool):Void;

	/**		
		Sets the color of the shadow cast by the light. Equivalent to `godot.Light.shadowColor`.
	**/
	@:native("LightSetShadowColor")
	public static function lightSetShadowColor(light:godot.RID, color:godot.Color):Void;

	/**		
		Not implemented in Godot 3.x.
	**/
	@:native("LightSetProjector")
	public static function lightSetProjector(light:godot.RID, texture:godot.RID):Void;

	/**		
		If `true`, light will subtract light instead of adding light. Equivalent to `godot.Light.lightNegative`.
	**/
	@:native("LightSetNegative")
	public static function lightSetNegative(light:godot.RID, enable:Bool):Void;

	/**		
		Sets the cull mask for this Light. Lights only affect objects in the selected layers. Equivalent to `godot.Light.lightCullMask`.
	**/
	@:native("LightSetCullMask")
	public static function lightSetCullMask(light:godot.RID, mask:UInt):Void;

	/**		
		If `true`, reverses the backface culling of the mesh. This can be useful when you have a flat mesh that has a light behind it. If you need to cast a shadow on both sides of the mesh, set the mesh to use double sided shadows with `godot.VisualServer.instanceGeometrySetCastShadowsSetting`. Equivalent to `godot.Light.shadowReverseCullFace`.
	**/
	@:native("LightSetReverseCullFaceMode")
	public static function lightSetReverseCullFaceMode(light:godot.RID, enabled:Bool):Void;

	/**		
		Sets whether GI probes capture light information from this light. Deprecated method. Use `godot.VisualServer.lightSetBakeMode` instead. This method is only kept for compatibility reasons and calls `godot.VisualServer.lightSetBakeMode` internally, setting the bake mode to  or  depending on the given parameter.
	**/
	@:native("LightSetUseGi")
	public static function lightSetUseGi(light:godot.RID, enabled:Bool):Void;

	/**		
		Sets the bake mode for this light, see `godot.VisualServer_LightBakeMode` for options. The bake mode affects how the light will be baked in `godot.BakedLightmap`s and `godot.GIProbe`s.
	**/
	@:native("LightSetBakeMode")
	public static function lightSetBakeMode(light:godot.RID, bakeMode:godot.VisualServer_LightBakeMode):Void;

	/**		
		Sets whether to use a dual paraboloid or a cubemap for the shadow map. Dual paraboloid is faster but may suffer from artifacts. Equivalent to `godot.OmniLight.omniShadowMode`.
	**/
	@:native("LightOmniSetShadowMode")
	public static function lightOmniSetShadowMode(light:godot.RID, mode:godot.VisualServer_LightOmniShadowMode):Void;

	/**		
		Sets whether to use vertical or horizontal detail for this omni light. This can be used to alleviate artifacts in the shadow map. Equivalent to `godot.OmniLight.omniShadowDetail`.
	**/
	@:native("LightOmniSetShadowDetail")
	public static function lightOmniSetShadowDetail(light:godot.RID, detail:godot.VisualServer_LightOmniShadowDetail):Void;

	/**		
		Sets the shadow mode for this directional light. Equivalent to `godot.DirectionalLight.directionalShadowMode`. See `godot.VisualServer_LightDirectionalShadowMode` for options.
	**/
	@:native("LightDirectionalSetShadowMode")
	public static function lightDirectionalSetShadowMode(light:godot.RID, mode:godot.VisualServer_LightDirectionalShadowMode):Void;

	/**		
		If `true`, this directional light will blend between shadow map splits resulting in a smoother transition between them. Equivalent to `godot.DirectionalLight.directionalShadowBlendSplits`.
	**/
	@:native("LightDirectionalSetBlendSplits")
	public static function lightDirectionalSetBlendSplits(light:godot.RID, enable:Bool):Void;

	/**		
		Sets the shadow depth range mode for this directional light. Equivalent to `godot.DirectionalLight.directionalShadowDepthRange`. See `godot.VisualServer_LightDirectionalShadowDepthRangeMode` for options.
	**/
	@:native("LightDirectionalSetShadowDepthRangeMode")
	public static function lightDirectionalSetShadowDepthRangeMode(light:godot.RID, rangeMode:godot.VisualServer_LightDirectionalShadowDepthRangeMode):Void;

	/**		
		Creates a reflection probe and adds it to the VisualServer. It can be accessed with the RID that is returned. This RID will be used in all `reflection_probe_*` VisualServer functions.
		
		Once finished with your RID, you will want to free the RID using the VisualServer's `godot.VisualServer.freeRid` static method.
		
		To place in a scene, attach this reflection probe to an instance using `godot.VisualServer.instanceSetBase` using the returned RID.
	**/
	@:native("ReflectionProbeCreate")
	public static function reflectionProbeCreate():godot.RID;

	/**		
		Sets how often the reflection probe updates. Can either be once or every frame. See `godot.VisualServer_ReflectionProbeUpdateMode` for options.
	**/
	@:native("ReflectionProbeSetUpdateMode")
	public static function reflectionProbeSetUpdateMode(probe:godot.RID, mode:godot.VisualServer_ReflectionProbeUpdateMode):Void;

	/**		
		Sets the intensity of the reflection probe. Intensity modulates the strength of the reflection. Equivalent to `godot.ReflectionProbe.intensity`.
	**/
	@:native("ReflectionProbeSetIntensity")
	public static function reflectionProbeSetIntensity(probe:godot.RID, intensity:Single):Void;

	/**		
		Sets the ambient light color for this reflection probe when set to interior mode. Equivalent to `godot.ReflectionProbe.interiorAmbientColor`.
	**/
	@:native("ReflectionProbeSetInteriorAmbient")
	public static function reflectionProbeSetInteriorAmbient(probe:godot.RID, color:godot.Color):Void;

	/**		
		Sets the energy multiplier for this reflection probes ambient light contribution when set to interior mode. Equivalent to `godot.ReflectionProbe.interiorAmbientEnergy`.
	**/
	@:native("ReflectionProbeSetInteriorAmbientEnergy")
	public static function reflectionProbeSetInteriorAmbientEnergy(probe:godot.RID, energy:Single):Void;

	/**		
		Sets the contribution value for how much the reflection affects the ambient light for this reflection probe when set to interior mode. Useful so that ambient light matches the color of the room. Equivalent to `godot.ReflectionProbe.interiorAmbientContrib`.
	**/
	@:native("ReflectionProbeSetInteriorAmbientProbeContribution")
	public static function reflectionProbeSetInteriorAmbientProbeContribution(probe:godot.RID, contrib:Single):Void;

	/**		
		Sets the max distance away from the probe an object can be before it is culled. Equivalent to `godot.ReflectionProbe.maxDistance`.
	**/
	@:native("ReflectionProbeSetMaxDistance")
	public static function reflectionProbeSetMaxDistance(probe:godot.RID, distance:Single):Void;

	/**		
		Sets the size of the area that the reflection probe will capture. Equivalent to `godot.ReflectionProbe.extents`.
	**/
	@:native("ReflectionProbeSetExtents")
	public static function reflectionProbeSetExtents(probe:godot.RID, extents:godot.Vector3):Void;

	/**		
		Sets the origin offset to be used when this reflection probe is in box project mode. Equivalent to `godot.ReflectionProbe.originOffset`.
	**/
	@:native("ReflectionProbeSetOriginOffset")
	public static function reflectionProbeSetOriginOffset(probe:godot.RID, offset:godot.Vector3):Void;

	/**		
		If `true`, reflections will ignore sky contribution. Equivalent to `godot.ReflectionProbe.interiorEnable`.
	**/
	@:native("ReflectionProbeSetAsInterior")
	public static function reflectionProbeSetAsInterior(probe:godot.RID, enable:Bool):Void;

	/**		
		If `true`, uses box projection. This can make reflections look more correct in certain situations. Equivalent to `godot.ReflectionProbe.boxProjection`.
	**/
	@:native("ReflectionProbeSetEnableBoxProjection")
	public static function reflectionProbeSetEnableBoxProjection(probe:godot.RID, enable:Bool):Void;

	/**		
		If `true`, computes shadows in the reflection probe. This makes the reflection much slower to compute. Equivalent to `godot.ReflectionProbe.enableShadows`.
	**/
	@:native("ReflectionProbeSetEnableShadows")
	public static function reflectionProbeSetEnableShadows(probe:godot.RID, enable:Bool):Void;

	/**		
		Sets the render cull mask for this reflection probe. Only instances with a matching cull mask will be rendered by this probe. Equivalent to `godot.ReflectionProbe.cullMask`.
	**/
	@:native("ReflectionProbeSetCullMask")
	public static function reflectionProbeSetCullMask(probe:godot.RID, layers:UInt):Void;

	/**		
		Creates a GI probe and adds it to the VisualServer. It can be accessed with the RID that is returned. This RID will be used in all `gi_probe_*` VisualServer functions.
		
		Once finished with your RID, you will want to free the RID using the VisualServer's `godot.VisualServer.freeRid` static method.
		
		To place in a scene, attach this GI probe to an instance using `godot.VisualServer.instanceSetBase` using the returned RID.
	**/
	@:native("GiProbeCreate")
	public static function giProbeCreate():godot.RID;

	/**		
		Sets the axis-aligned bounding box that covers the extent of the GI probe.
	**/
	@:native("GiProbeSetBounds")
	public static function giProbeSetBounds(probe:godot.RID, bounds:godot.AABB):Void;

	/**		
		Returns the axis-aligned bounding box that covers the full extent of the GI probe.
	**/
	@:native("GiProbeGetBounds")
	public static function giProbeGetBounds(probe:godot.RID):godot.AABB;

	/**		
		Sets the size of individual cells within the GI probe.
	**/
	@:native("GiProbeSetCellSize")
	public static function giProbeSetCellSize(probe:godot.RID, range:Single):Void;

	/**		
		Returns the cell size set by `godot.VisualServer.giProbeSetCellSize`.
	**/
	@:native("GiProbeGetCellSize")
	public static function giProbeGetCellSize(probe:godot.RID):Single;

	/**		
		Sets the to cell `godot.Transform` for this GI probe.
	**/
	@:native("GiProbeSetToCellXform")
	public static function giProbeSetToCellXform(probe:godot.RID, xform:godot.Transform):Void;

	/**		
		Returns the Transform set by `godot.VisualServer.giProbeSetToCellXform`.
	**/
	@:native("GiProbeGetToCellXform")
	public static function giProbeGetToCellXform(probe:godot.RID):godot.Transform;

	/**		
		Sets the data to be used in the GI probe for lighting calculations. Normally this is created and called internally within the `godot.GIProbe` node. You should not try to set this yourself.
	**/
	@:native("GiProbeSetDynamicData")
	public static function giProbeSetDynamicData(probe:godot.RID, data:HaxeArray<Int>):Void;

	/**		
		Returns the data used by the GI probe.
	**/
	public static extern inline function giProbeGetDynamicData(probe:godot.RID):std.Array<Int> {
		return cs.Lib.array(cs.Syntax.code("GiProbeGetDynamicData({0})", probe));
	}

	/**		
		Sets the dynamic range of the GI probe. Dynamic range sets the limit for how bright lights can be. A smaller range captures greater detail but limits how bright lights can be. Equivalent to `godot.GIProbe.dynamicRange`.
	**/
	@:native("GiProbeSetDynamicRange")
	public static function giProbeSetDynamicRange(probe:godot.RID, range:Int):Void;

	/**		
		Returns the dynamic range set for this GI probe. Equivalent to `godot.GIProbe.dynamicRange`.
	**/
	@:native("GiProbeGetDynamicRange")
	public static function giProbeGetDynamicRange(probe:godot.RID):Int;

	/**		
		Sets the energy multiplier for this GI probe. A higher energy makes the indirect light from the GI probe brighter. Equivalent to `godot.GIProbe.energy`.
	**/
	@:native("GiProbeSetEnergy")
	public static function giProbeSetEnergy(probe:godot.RID, energy:Single):Void;

	/**		
		Returns the energy multiplier for this GI probe. Equivalent to `godot.GIProbe.energy`.
	**/
	@:native("GiProbeGetEnergy")
	public static function giProbeGetEnergy(probe:godot.RID):Single;

	/**		
		Sets the bias value to avoid self-occlusion. Equivalent to `godot.GIProbe.bias`.
	**/
	@:native("GiProbeSetBias")
	public static function giProbeSetBias(probe:godot.RID, bias:Single):Void;

	/**		
		Returns the bias value for the GI probe. Bias is used to avoid self occlusion. Equivalent to `godot.GIProbeData.bias`.
	**/
	@:native("GiProbeGetBias")
	public static function giProbeGetBias(probe:godot.RID):Single;

	/**		
		Sets the normal bias for this GI probe. Normal bias behaves similar to the other form of bias and may help reduce self-occlusion. Equivalent to `godot.GIProbe.normalBias`.
	**/
	@:native("GiProbeSetNormalBias")
	public static function giProbeSetNormalBias(probe:godot.RID, bias:Single):Void;

	/**		
		Returns the normal bias for this GI probe. Equivalent to `godot.GIProbe.normalBias`.
	**/
	@:native("GiProbeGetNormalBias")
	public static function giProbeGetNormalBias(probe:godot.RID):Single;

	/**		
		Sets the propagation of light within this GI probe. Equivalent to `godot.GIProbe.propagation`.
	**/
	@:native("GiProbeSetPropagation")
	public static function giProbeSetPropagation(probe:godot.RID, propagation:Single):Void;

	/**		
		Returns the propagation value for this GI probe. Equivalent to `godot.GIProbe.propagation`.
	**/
	@:native("GiProbeGetPropagation")
	public static function giProbeGetPropagation(probe:godot.RID):Single;

	/**		
		Sets the interior value of this GI probe. A GI probe set to interior does not include the sky when calculating lighting. Equivalent to `godot.GIProbe.interior`.
	**/
	@:native("GiProbeSetInterior")
	public static function giProbeSetInterior(probe:godot.RID, enable:Bool):Void;

	/**		
		Returns `true` if the GI probe is set to interior, meaning it does not account for sky light. Equivalent to `godot.GIProbe.interior`.
	**/
	@:native("GiProbeIsInterior")
	public static function giProbeIsInterior(probe:godot.RID):Bool;

	/**		
		Sets the compression setting for the GI probe data. Compressed data will take up less space but may look worse. Equivalent to `godot.GIProbe.compress`.
	**/
	@:native("GiProbeSetCompress")
	public static function giProbeSetCompress(probe:godot.RID, enable:Bool):Void;

	/**		
		Returns `true` if the GI probe data associated with this GI probe is compressed. Equivalent to `godot.GIProbe.compress`.
	**/
	@:native("GiProbeIsCompressed")
	public static function giProbeIsCompressed(probe:godot.RID):Bool;

	/**		
		Creates a lightmap capture and adds it to the VisualServer. It can be accessed with the RID that is returned. This RID will be used in all `lightmap_capture_*` VisualServer functions.
		
		Once finished with your RID, you will want to free the RID using the VisualServer's `godot.VisualServer.freeRid` static method.
		
		To place in a scene, attach this lightmap capture to an instance using `godot.VisualServer.instanceSetBase` using the returned RID.
	**/
	@:native("LightmapCaptureCreate")
	public static function lightmapCaptureCreate():godot.RID;

	/**		
		Sets the size of the area covered by the lightmap capture. Equivalent to `godot.BakedLightmapData.bounds`.
	**/
	@:native("LightmapCaptureSetBounds")
	public static function lightmapCaptureSetBounds(capture:godot.RID, bounds:godot.AABB):Void;

	/**		
		Returns the size of the lightmap capture area.
	**/
	@:native("LightmapCaptureGetBounds")
	public static function lightmapCaptureGetBounds(capture:godot.RID):godot.AABB;

	/**		
		Sets the octree to be used by this lightmap capture. This function is normally used by the `godot.BakedLightmap` node. Equivalent to `godot.BakedLightmapData.octree`.
	**/
	@:native("LightmapCaptureSetOctree")
	public static function lightmapCaptureSetOctree(capture:godot.RID, octree:HaxeArray<cs.types.UInt8>):Void;

	/**		
		Sets the octree cell transform for this lightmap capture's octree. Equivalent to `godot.BakedLightmapData.cellSpaceTransform`.
	**/
	@:native("LightmapCaptureSetOctreeCellTransform")
	public static function lightmapCaptureSetOctreeCellTransform(capture:godot.RID, xform:godot.Transform):Void;

	/**		
		Returns the cell transform for this lightmap capture's octree.
	**/
	@:native("LightmapCaptureGetOctreeCellTransform")
	public static function lightmapCaptureGetOctreeCellTransform(capture:godot.RID):godot.Transform;

	/**		
		Sets the subdivision level of this lightmap capture's octree. Equivalent to `godot.BakedLightmapData.cellSubdiv`.
	**/
	@:native("LightmapCaptureSetOctreeCellSubdiv")
	public static function lightmapCaptureSetOctreeCellSubdiv(capture:godot.RID, subdiv:Int):Void;

	/**		
		Returns the cell subdivision amount used by this lightmap capture's octree.
	**/
	@:native("LightmapCaptureGetOctreeCellSubdiv")
	public static function lightmapCaptureGetOctreeCellSubdiv(capture:godot.RID):Int;

	/**		
		Returns the octree used by the lightmap capture.
	**/
	public static extern inline function lightmapCaptureGetOctree(capture:godot.RID):std.Array<cs.types.UInt8> {
		return cs.Lib.array(cs.Syntax.code("LightmapCaptureGetOctree({0})", capture));
	}

	/**		
		Sets the energy multiplier for this lightmap capture. Equivalent to `godot.BakedLightmapData.energy`.
	**/
	@:native("LightmapCaptureSetEnergy")
	public static function lightmapCaptureSetEnergy(capture:godot.RID, energy:Single):Void;

	/**		
		Returns the energy multiplier used by the lightmap capture.
	**/
	@:native("LightmapCaptureGetEnergy")
	public static function lightmapCaptureGetEnergy(capture:godot.RID):Single;

	/**		
		Sets the "interior" mode for this lightmap capture. Equivalent to `godot.BakedLightmapData.interior`.
	**/
	@:native("LightmapCaptureSetInterior")
	public static function lightmapCaptureSetInterior(capture:godot.RID, interior:Bool):Void;

	/**		
		Returns `true` if capture is in "interior" mode.
	**/
	@:native("LightmapCaptureIsInterior")
	public static function lightmapCaptureIsInterior(capture:godot.RID):Bool;

	/**		
		Creates a particle system and adds it to the VisualServer. It can be accessed with the RID that is returned. This RID will be used in all `particles_*` VisualServer functions.
		
		Once finished with your RID, you will want to free the RID using the VisualServer's `godot.VisualServer.freeRid` static method.
		
		To place in a scene, attach these particles to an instance using `godot.VisualServer.instanceSetBase` using the returned RID.
	**/
	@:native("ParticlesCreate")
	public static function particlesCreate():godot.RID;

	/**		
		If `true`, particles will emit over time. Setting to false does not reset the particles, but only stops their emission. Equivalent to `godot.Particles.emitting`.
	**/
	@:native("ParticlesSetEmitting")
	public static function particlesSetEmitting(particles:godot.RID, emitting:Bool):Void;

	/**		
		Returns `true` if particles are currently set to emitting.
	**/
	@:native("ParticlesGetEmitting")
	public static function particlesGetEmitting(particles:godot.RID):Bool;

	/**		
		Sets the number of particles to be drawn and allocates the memory for them. Equivalent to `godot.Particles.amount`.
	**/
	@:native("ParticlesSetAmount")
	public static function particlesSetAmount(particles:godot.RID, amount:Int):Void;

	/**		
		Sets the lifetime of each particle in the system. Equivalent to `godot.Particles.lifetime`.
	**/
	@:native("ParticlesSetLifetime")
	public static function particlesSetLifetime(particles:godot.RID, lifetime:Single):Void;

	/**		
		If `true`, particles will emit once and then stop. Equivalent to `godot.Particles.oneShot`.
	**/
	@:native("ParticlesSetOneShot")
	public static function particlesSetOneShot(particles:godot.RID, oneShot:Bool):Void;

	/**		
		Sets the preprocess time for the particles' animation. This lets you delay starting an animation until after the particles have begun emitting. Equivalent to `godot.Particles.preprocess`.
	**/
	@:native("ParticlesSetPreProcessTime")
	public static function particlesSetPreProcessTime(particles:godot.RID, time:Single):Void;

	/**		
		Sets the explosiveness ratio. Equivalent to `godot.Particles.explosiveness`.
	**/
	@:native("ParticlesSetExplosivenessRatio")
	public static function particlesSetExplosivenessRatio(particles:godot.RID, ratio:Single):Void;

	/**		
		Sets the emission randomness ratio. This randomizes the emission of particles within their phase. Equivalent to `godot.Particles.randomness`.
	**/
	@:native("ParticlesSetRandomnessRatio")
	public static function particlesSetRandomnessRatio(particles:godot.RID, ratio:Single):Void;

	/**		
		Sets a custom axis-aligned bounding box for the particle system. Equivalent to `godot.Particles.visibilityAabb`.
	**/
	@:native("ParticlesSetCustomAabb")
	public static function particlesSetCustomAabb(particles:godot.RID, aabb:godot.AABB):Void;

	/**		
		Sets the speed scale of the particle system. Equivalent to `godot.Particles.speedScale`.
	**/
	@:native("ParticlesSetSpeedScale")
	public static function particlesSetSpeedScale(particles:godot.RID, scale:Single):Void;

	/**		
		If `true`, particles use local coordinates. If `false` they use global coordinates. Equivalent to `godot.Particles.localCoords`.
	**/
	@:native("ParticlesSetUseLocalCoordinates")
	public static function particlesSetUseLocalCoordinates(particles:godot.RID, enable:Bool):Void;

	/**		
		Sets the material for processing the particles. Note: this is not the material used to draw the materials. Equivalent to `godot.Particles.processMaterial`.
	**/
	@:native("ParticlesSetProcessMaterial")
	public static function particlesSetProcessMaterial(particles:godot.RID, material:godot.RID):Void;

	/**		
		Sets the frame rate that the particle system rendering will be fixed to. Equivalent to `godot.Particles.fixedFps`.
	**/
	@:native("ParticlesSetFixedFps")
	public static function particlesSetFixedFps(particles:godot.RID, fps:Int):Void;

	/**		
		If `true`, uses fractional delta which smooths the movement of the particles. Equivalent to `godot.Particles.fractDelta`.
	**/
	@:native("ParticlesSetFractionalDelta")
	public static function particlesSetFractionalDelta(particles:godot.RID, enable:Bool):Void;

	/**		
		Returns `true` if particles are not emitting and particles are set to inactive.
	**/
	@:native("ParticlesIsInactive")
	public static function particlesIsInactive(particles:godot.RID):Bool;

	/**		
		Add particle system to list of particle systems that need to be updated. Update will take place on the next frame, or on the next call to `godot.VisualServer.instancesCullAabb`, `godot.VisualServer.instancesCullConvex`, or `godot.VisualServer.instancesCullRay`.
	**/
	@:native("ParticlesRequestProcess")
	public static function particlesRequestProcess(particles:godot.RID):Void;

	/**		
		Reset the particles on the next update. Equivalent to `godot.Particles.restart`.
	**/
	@:native("ParticlesRestart")
	public static function particlesRestart(particles:godot.RID):Void;

	/**		
		Sets the draw order of the particles to one of the named enums from `godot.VisualServer_ParticlesDrawOrder`. See `godot.VisualServer_ParticlesDrawOrder` for options. Equivalent to `godot.Particles.drawOrder`.
	**/
	@:native("ParticlesSetDrawOrder")
	public static function particlesSetDrawOrder(particles:godot.RID, order:godot.VisualServer_ParticlesDrawOrder):Void;

	/**		
		Sets the number of draw passes to use. Equivalent to `godot.Particles.drawPasses`.
	**/
	@:native("ParticlesSetDrawPasses")
	public static function particlesSetDrawPasses(particles:godot.RID, count:Int):Void;

	/**		
		Sets the mesh to be used for the specified draw pass. Equivalent to `godot.Particles.drawPass1`, `godot.Particles.drawPass2`, `godot.Particles.drawPass3`, and `godot.Particles.drawPass4`.
	**/
	@:native("ParticlesSetDrawPassMesh")
	public static function particlesSetDrawPassMesh(particles:godot.RID, pass:Int, mesh:godot.RID):Void;

	/**		
		Calculates and returns the axis-aligned bounding box that contains all the particles. Equivalent to `godot.Particles.captureAabb`.
	**/
	@:native("ParticlesGetCurrentAabb")
	public static function particlesGetCurrentAabb(particles:godot.RID):godot.AABB;

	/**		
		Sets the `godot.Transform` that will be used by the particles when they first emit.
	**/
	@:native("ParticlesSetEmissionTransform")
	public static function particlesSetEmissionTransform(particles:godot.RID, transform:godot.Transform):Void;

	/**		
		Creates a camera and adds it to the VisualServer. It can be accessed with the RID that is returned. This RID will be used in all `camera_*` VisualServer functions.
		
		Once finished with your RID, you will want to free the RID using the VisualServer's `godot.VisualServer.freeRid` static method.
	**/
	@:native("CameraCreate")
	public static function cameraCreate():godot.RID;

	/**		
		Sets camera to use perspective projection. Objects on the screen becomes smaller when they are far away.
	**/
	@:native("CameraSetPerspective")
	public static function cameraSetPerspective(camera:godot.RID, fovyDegrees:Single, zNear:Single, zFar:Single):Void;

	/**		
		Sets camera to use orthogonal projection, also known as orthographic projection. Objects remain the same size on the screen no matter how far away they are.
	**/
	@:native("CameraSetOrthogonal")
	public static function cameraSetOrthogonal(camera:godot.RID, size:Single, zNear:Single, zFar:Single):Void;

	/**		
		Sets camera to use frustum projection. This mode allows adjusting the `offset` argument to create "tilted frustum" effects.
	**/
	@:native("CameraSetFrustum")
	public static function cameraSetFrustum(camera:godot.RID, size:Single, offset:godot.Vector2, zNear:Single, zFar:Single):Void;

	/**		
		Sets `godot.Transform` of camera.
	**/
	@:native("CameraSetTransform")
	public static function cameraSetTransform(camera:godot.RID, transform:godot.Transform):Void;

	/**		
		Sets the cull mask associated with this camera. The cull mask describes which 3D layers are rendered by this camera. Equivalent to `godot.Camera.cullMask`.
	**/
	@:native("CameraSetCullMask")
	public static function cameraSetCullMask(camera:godot.RID, layers:UInt):Void;

	/**		
		Sets the environment used by this camera. Equivalent to `godot.Camera.environment`.
	**/
	@:native("CameraSetEnvironment")
	public static function cameraSetEnvironment(camera:godot.RID, env:godot.RID):Void;

	/**		
		If `true`, preserves the horizontal aspect ratio which is equivalent to . If `false`, preserves the vertical aspect ratio which is equivalent to .
	**/
	@:native("CameraSetUseVerticalAspect")
	public static function cameraSetUseVerticalAspect(camera:godot.RID, enable:Bool):Void;

	/**		
		Creates an empty viewport and adds it to the VisualServer. It can be accessed with the RID that is returned. This RID will be used in all `viewport_*` VisualServer functions.
		
		Once finished with your RID, you will want to free the RID using the VisualServer's `godot.VisualServer.freeRid` static method.
	**/
	@:native("ViewportCreate")
	public static function viewportCreate():godot.RID;

	/**		
		If `true`, the viewport uses augmented or virtual reality technologies. See `godot.ARVRInterface`.
	**/
	@:native("ViewportSetUseArvr")
	public static function viewportSetUseArvr(viewport:godot.RID, useArvr:Bool):Void;

	/**		
		Sets the viewport's width and height.
	**/
	@:native("ViewportSetSize")
	public static function viewportSetSize(viewport:godot.RID, width:Int, height:Int):Void;

	/**		
		If `true`, sets the viewport active, else sets it inactive.
	**/
	@:native("ViewportSetActive")
	public static function viewportSetActive(viewport:godot.RID, active:Bool):Void;

	/**		
		Sets the viewport's parent to another viewport.
	**/
	@:native("ViewportSetParentViewport")
	public static function viewportSetParentViewport(viewport:godot.RID, parentViewport:godot.RID):Void;

	#if doc_gen
	/**		
		Copies viewport to a region of the screen specified by `rect`. If `godot.Viewport.renderDirectToScreen` is `true`, then viewport does not use a framebuffer and the contents of the viewport are rendered directly to screen. However, note that the root viewport is drawn last, therefore it will draw over the screen. Accordingly, you must set the root viewport to an area that does not cover the area that you have attached this viewport to.
		
		For example, you can set the root viewport to not render at all with the following code:
		
		```
		
		func _ready():
		get_viewport().set_attach_to_screen_rect(Rect2())
		$Viewport.set_attach_to_screen_rect(Rect2(0, 0, 600, 600))
		
		```
		
		Using this can result in significant optimization, especially on lower-end devices. However, it comes at the cost of having to manage your viewports manually. For a further optimization see, `godot.VisualServer.viewportSetRenderDirectToScreen`.
		
		@param rect If the parameter is null, then the default value is new Rect2(0, 0, 0, 0)
	**/
	@:native("ViewportAttachToScreen")
	public static function viewportAttachToScreen(viewport:godot.RID, ?rect:Null<godot.Rect2>, ?screen:Int):Void;
	#else
	/**		
		Copies viewport to a region of the screen specified by `rect`. If `godot.Viewport.renderDirectToScreen` is `true`, then viewport does not use a framebuffer and the contents of the viewport are rendered directly to screen. However, note that the root viewport is drawn last, therefore it will draw over the screen. Accordingly, you must set the root viewport to an area that does not cover the area that you have attached this viewport to.
		
		For example, you can set the root viewport to not render at all with the following code:
		
		```
		
		func _ready():
		get_viewport().set_attach_to_screen_rect(Rect2())
		$Viewport.set_attach_to_screen_rect(Rect2(0, 0, 600, 600))
		
		```
		
		Using this can result in significant optimization, especially on lower-end devices. However, it comes at the cost of having to manage your viewports manually. For a further optimization see, `godot.VisualServer.viewportSetRenderDirectToScreen`.
		
		@param rect If the parameter is null, then the default value is new Rect2(0, 0, 0, 0)
	**/
	@:native("ViewportAttachToScreen")
	public static overload function viewportAttachToScreen(viewport:godot.RID):Void;

	/**		
		Copies viewport to a region of the screen specified by `rect`. If `godot.Viewport.renderDirectToScreen` is `true`, then viewport does not use a framebuffer and the contents of the viewport are rendered directly to screen. However, note that the root viewport is drawn last, therefore it will draw over the screen. Accordingly, you must set the root viewport to an area that does not cover the area that you have attached this viewport to.
		
		For example, you can set the root viewport to not render at all with the following code:
		
		```
		
		func _ready():
		get_viewport().set_attach_to_screen_rect(Rect2())
		$Viewport.set_attach_to_screen_rect(Rect2(0, 0, 600, 600))
		
		```
		
		Using this can result in significant optimization, especially on lower-end devices. However, it comes at the cost of having to manage your viewports manually. For a further optimization see, `godot.VisualServer.viewportSetRenderDirectToScreen`.
		
		@param rect If the parameter is null, then the default value is new Rect2(0, 0, 0, 0)
	**/
	@:native("ViewportAttachToScreen")
	public static overload function viewportAttachToScreen(viewport:godot.RID, rect:Nullable1<godot.Rect2>):Void;

	/**		
		Copies viewport to a region of the screen specified by `rect`. If `godot.Viewport.renderDirectToScreen` is `true`, then viewport does not use a framebuffer and the contents of the viewport are rendered directly to screen. However, note that the root viewport is drawn last, therefore it will draw over the screen. Accordingly, you must set the root viewport to an area that does not cover the area that you have attached this viewport to.
		
		For example, you can set the root viewport to not render at all with the following code:
		
		```
		
		func _ready():
		get_viewport().set_attach_to_screen_rect(Rect2())
		$Viewport.set_attach_to_screen_rect(Rect2(0, 0, 600, 600))
		
		```
		
		Using this can result in significant optimization, especially on lower-end devices. However, it comes at the cost of having to manage your viewports manually. For a further optimization see, `godot.VisualServer.viewportSetRenderDirectToScreen`.
		
		@param rect If the parameter is null, then the default value is new Rect2(0, 0, 0, 0)
	**/
	@:native("ViewportAttachToScreen")
	public static overload function viewportAttachToScreen(viewport:godot.RID, rect:Nullable1<godot.Rect2>, screen:Int):Void;
	#end

	/**		
		If `true`, render the contents of the viewport directly to screen. This allows a low-level optimization where you can skip drawing a viewport to the root viewport. While this optimization can result in a significant increase in speed (especially on older devices), it comes at a cost of usability. When this is enabled, you cannot read from the viewport or from the `SCREEN_TEXTURE`. You also lose the benefit of certain window settings, such as the various stretch modes. Another consequence to be aware of is that in 2D the rendering happens in window coordinates, so if you have a viewport that is double the size of the window, and you set this, then only the portion that fits within the window will be drawn, no automatic scaling is possible, even if your game scene is significantly larger than the window size.
	**/
	@:native("ViewportSetRenderDirectToScreen")
	public static function viewportSetRenderDirectToScreen(viewport:godot.RID, enabled:Bool):Void;

	/**		
		Detaches the viewport from the screen.
	**/
	@:native("ViewportDetach")
	public static function viewportDetach(viewport:godot.RID):Void;

	/**		
		Sets when the viewport should be updated. See `godot.VisualServer_ViewportUpdateMode` constants for options.
	**/
	@:native("ViewportSetUpdateMode")
	public static function viewportSetUpdateMode(viewport:godot.RID, updateMode:godot.VisualServer_ViewportUpdateMode):Void;

	/**		
		If `true`, the viewport's rendering is flipped vertically.
	**/
	@:native("ViewportSetVflip")
	public static function viewportSetVflip(viewport:godot.RID, enabled:Bool):Void;

	/**		
		Sets the clear mode of a viewport. See `godot.VisualServer_ViewportClearMode` for options.
	**/
	@:native("ViewportSetClearMode")
	public static function viewportSetClearMode(viewport:godot.RID, clearMode:godot.VisualServer_ViewportClearMode):Void;

	/**		
		Returns the viewport's last rendered frame.
	**/
	@:native("ViewportGetTexture")
	public static function viewportGetTexture(viewport:godot.RID):godot.RID;

	/**		
		Currently unimplemented in Godot 3.x.
	**/
	@:native("ViewportSetHideScenario")
	public static function viewportSetHideScenario(viewport:godot.RID, hidden:Bool):Void;

	/**		
		If `true`, the viewport's canvas is not rendered.
	**/
	@:native("ViewportSetHideCanvas")
	public static function viewportSetHideCanvas(viewport:godot.RID, hidden:Bool):Void;

	/**		
		If `true`, rendering of a viewport's environment is disabled.
	**/
	@:native("ViewportSetDisableEnvironment")
	public static function viewportSetDisableEnvironment(viewport:godot.RID, disabled:Bool):Void;

	/**		
		If `true`, a viewport's 3D rendering is disabled.
	**/
	@:native("ViewportSetDisable3d")
	public static function viewportSetDisable3d(viewport:godot.RID, disabled:Bool):Void;

	/**		
		Sets a viewport's camera.
	**/
	@:native("ViewportAttachCamera")
	public static function viewportAttachCamera(viewport:godot.RID, camera:godot.RID):Void;

	/**		
		Sets a viewport's scenario.
		
		The scenario contains information about the `godot.VisualServer_ScenarioDebugMode`, environment information, reflection atlas etc.
	**/
	@:native("ViewportSetScenario")
	public static function viewportSetScenario(viewport:godot.RID, scenario:godot.RID):Void;

	/**		
		Sets a viewport's canvas.
	**/
	@:native("ViewportAttachCanvas")
	public static function viewportAttachCanvas(viewport:godot.RID, canvas:godot.RID):Void;

	/**		
		Detaches a viewport from a canvas and vice versa.
	**/
	@:native("ViewportRemoveCanvas")
	public static function viewportRemoveCanvas(viewport:godot.RID, canvas:godot.RID):Void;

	/**		
		Sets the transformation of a viewport's canvas.
	**/
	@:native("ViewportSetCanvasTransform")
	public static function viewportSetCanvasTransform(viewport:godot.RID, canvas:godot.RID, offset:godot.Transform2D):Void;

	/**		
		If `true`, the viewport renders its background as transparent.
	**/
	@:native("ViewportSetTransparentBackground")
	public static function viewportSetTransparentBackground(viewport:godot.RID, enabled:Bool):Void;

	/**		
		Sets the viewport's global transformation matrix.
	**/
	@:native("ViewportSetGlobalCanvasTransform")
	public static function viewportSetGlobalCanvasTransform(viewport:godot.RID, transform:godot.Transform2D):Void;

	/**		
		Sets the stacking order for a viewport's canvas.
		
		`layer` is the actual canvas layer, while `sublayer` specifies the stacking order of the canvas among those in the same layer.
	**/
	@:native("ViewportSetCanvasStacking")
	public static function viewportSetCanvasStacking(viewport:godot.RID, canvas:godot.RID, layer:Int, sublayer:Int):Void;

	/**		
		Sets the size of the shadow atlas's images (used for omni and spot lights). The value will be rounded up to the nearest power of 2.
	**/
	@:native("ViewportSetShadowAtlasSize")
	public static function viewportSetShadowAtlasSize(viewport:godot.RID, size:Int):Void;

	/**		
		Sets the shadow atlas quadrant's subdivision.
	**/
	@:native("ViewportSetShadowAtlasQuadrantSubdivision")
	public static function viewportSetShadowAtlasQuadrantSubdivision(viewport:godot.RID, quadrant:Int, subdivision:Int):Void;

	/**		
		Sets the anti-aliasing mode. See `godot.VisualServer_ViewportMSAA` for options.
	**/
	@:native("ViewportSetMsaa")
	public static function viewportSetMsaa(viewport:godot.RID, msaa:godot.VisualServer_ViewportMSAA):Void;

	/**		
		Enables fast approximate antialiasing for this viewport. FXAA is a popular screen-space antialiasing method, which is fast but will make the image look blurry, especially at lower resolutions. It can still work relatively well at large resolutions such as 1440p and 4K.
	**/
	@:native("ViewportSetUseFxaa")
	public static function viewportSetUseFxaa(viewport:godot.RID, fxaa:Bool):Void;

	/**		
		If `true`, uses a fast post-processing filter to make banding significantly less visible. In some cases, debanding may introduce a slightly noticeable dithering pattern. It's recommended to enable debanding only when actually needed since the dithering pattern will make lossless-compressed screenshots larger.
		
		Note: Only available on the GLES3 backend. `godot.Viewport.hdr` must also be `true` for debanding to be effective.
	**/
	@:native("ViewportSetUseDebanding")
	public static function viewportSetUseDebanding(viewport:godot.RID, debanding:Bool):Void;

	/**		
		If `true`, the viewport renders to hdr.
	**/
	@:native("ViewportSetHdr")
	public static function viewportSetHdr(viewport:godot.RID, enabled:Bool):Void;

	/**		
		Sets the viewport's 2D/3D mode. See `godot.VisualServer_ViewportUsage` constants for options.
	**/
	@:native("ViewportSetUsage")
	public static function viewportSetUsage(viewport:godot.RID, usage:godot.VisualServer_ViewportUsage):Void;

	/**		
		Returns a viewport's render information. For options, see the `godot.VisualServer_ViewportRenderInfo` constants.
	**/
	@:native("ViewportGetRenderInfo")
	public static function viewportGetRenderInfo(viewport:godot.RID, info:godot.VisualServer_ViewportRenderInfo):Int;

	/**		
		Sets the debug draw mode of a viewport. See `godot.VisualServer_ViewportDebugDraw` for options.
	**/
	@:native("ViewportSetDebugDraw")
	public static function viewportSetDebugDraw(viewport:godot.RID, draw:godot.VisualServer_ViewportDebugDraw):Void;

	/**		
		Creates an environment and adds it to the VisualServer. It can be accessed with the RID that is returned. This RID will be used in all `environment_*` VisualServer functions.
		
		Once finished with your RID, you will want to free the RID using the VisualServer's `godot.VisualServer.freeRid` static method.
	**/
	@:native("EnvironmentCreate")
	public static function environmentCreate():godot.RID;

	/**		
		Sets the BGMode of the environment. Equivalent to `godot.Environment.backgroundMode`.
	**/
	@:native("EnvironmentSetBackground")
	public static function environmentSetBackground(env:godot.RID, bg:godot.VisualServer_EnvironmentBG):Void;

	/**		
		Sets the `godot.Sky` to be used as the environment's background when using BGMode sky. Equivalent to `godot.Environment.backgroundSky`.
	**/
	@:native("EnvironmentSetSky")
	public static function environmentSetSky(env:godot.RID, sky:godot.RID):Void;

	/**		
		Sets a custom field of view for the background `godot.Sky`. Equivalent to `godot.Environment.backgroundSkyCustomFov`.
	**/
	@:native("EnvironmentSetSkyCustomFov")
	public static function environmentSetSkyCustomFov(env:godot.RID, scale:Single):Void;

	/**		
		Sets the rotation of the background `godot.Sky` expressed as a `godot.Basis`. Equivalent to `godot.Environment.backgroundSkyOrientation`.
	**/
	@:native("EnvironmentSetSkyOrientation")
	public static function environmentSetSkyOrientation(env:godot.RID, orientation:godot.Basis):Void;

	/**		
		Color displayed for clear areas of the scene (if using Custom color or Color+Sky background modes).
	**/
	@:native("EnvironmentSetBgColor")
	public static function environmentSetBgColor(env:godot.RID, color:godot.Color):Void;

	/**		
		Sets the intensity of the background color.
	**/
	@:native("EnvironmentSetBgEnergy")
	public static function environmentSetBgEnergy(env:godot.RID, energy:Single):Void;

	/**		
		Sets the maximum layer to use if using Canvas background mode.
	**/
	@:native("EnvironmentSetCanvasMaxLayer")
	public static function environmentSetCanvasMaxLayer(env:godot.RID, maxLayer:Int):Void;

	#if doc_gen
	/**		
		Sets the ambient light parameters. See `godot.Environment` for more details.
	**/
	@:native("EnvironmentSetAmbientLight")
	public static function environmentSetAmbientLight(env:godot.RID, color:godot.Color, ?energy:Single, ?skyContibution:Single):Void;
	#else
	/**		
		Sets the ambient light parameters. See `godot.Environment` for more details.
	**/
	@:native("EnvironmentSetAmbientLight")
	public static overload function environmentSetAmbientLight(env:godot.RID, color:godot.Color):Void;

	/**		
		Sets the ambient light parameters. See `godot.Environment` for more details.
	**/
	@:native("EnvironmentSetAmbientLight")
	public static overload function environmentSetAmbientLight(env:godot.RID, color:godot.Color, energy:Single):Void;

	/**		
		Sets the ambient light parameters. See `godot.Environment` for more details.
	**/
	@:native("EnvironmentSetAmbientLight")
	public static overload function environmentSetAmbientLight(env:godot.RID, color:godot.Color, energy:Single, skyContibution:Single):Void;
	#end

	/**		
		Sets the values to be used with the "DoF Near Blur" post-process effect. See `godot.Environment` for more details.
	**/
	@:native("EnvironmentSetDofBlurNear")
	public static function environmentSetDofBlurNear(env:godot.RID, enable:Bool, distance:Single, transition:Single, farAmount:Single, quality:godot.VisualServer_EnvironmentDOFBlurQuality):Void;

	/**		
		Sets the values to be used with the "DoF Far Blur" post-process effect. See `godot.Environment` for more details.
	**/
	@:native("EnvironmentSetDofBlurFar")
	public static function environmentSetDofBlurFar(env:godot.RID, enable:Bool, distance:Single, transition:Single, farAmount:Single, quality:godot.VisualServer_EnvironmentDOFBlurQuality):Void;

	/**		
		Sets the variables to be used with the "glow" post-process effect. See `godot.Environment` for more details.
	**/
	@:native("EnvironmentSetGlow")
	public static function environmentSetGlow(env:godot.RID, enable:Bool, levelFlags:Int, intensity:Single, strength:Single, bloomThreshold:Single, blendMode:godot.VisualServer_EnvironmentGlowBlendMode, hdrBleedThreshold:Single, hdrBleedScale:Single, hdrLuminanceCap:Single, bicubicUpscale:Bool):Void;

	/**		
		Sets the variables to be used with the "tonemap" post-process effect. See `godot.Environment` for more details.
	**/
	@:native("EnvironmentSetTonemap")
	public static function environmentSetTonemap(env:godot.RID, toneMapper:godot.VisualServer_EnvironmentToneMapper, exposure:Single, white:Single, autoExposure:Bool, minLuminance:Single, maxLuminance:Single, autoExpSpeed:Single, autoExpGrey:Single):Void;

	/**		
		Sets the values to be used with the "Adjustment" post-process effect. See `godot.Environment` for more details.
	**/
	@:native("EnvironmentSetAdjustment")
	public static function environmentSetAdjustment(env:godot.RID, enable:Bool, brightness:Single, contrast:Single, saturation:Single, ramp:godot.RID):Void;

	/**		
		Sets the variables to be used with the "screen space reflections" post-process effect. See `godot.Environment` for more details.
	**/
	@:native("EnvironmentSetSsr")
	public static function environmentSetSsr(env:godot.RID, enable:Bool, maxSteps:Int, fadeIn:Single, fadeOut:Single, depthTolerance:Single, roughness:Bool):Void;

	/**		
		Sets the variables to be used with the "Screen Space Ambient Occlusion (SSAO)" post-process effect. See `godot.Environment` for more details.
	**/
	@:native("EnvironmentSetSsao")
	public static function environmentSetSsao(env:godot.RID, enable:Bool, radius:Single, intensity:Single, radius2:Single, intensity2:Single, bias:Single, lightAffect:Single, aoChannelAffect:Single, color:godot.Color, quality:godot.VisualServer_EnvironmentSSAOQuality, blur:godot.VisualServer_EnvironmentSSAOBlur, bilateralSharpness:Single):Void;

	/**		
		Sets the variables to be used with the scene fog. See `godot.Environment` for more details.
	**/
	@:native("EnvironmentSetFog")
	public static function environmentSetFog(env:godot.RID, enable:Bool, color:godot.Color, sunColor:godot.Color, sunAmount:Single):Void;

	/**		
		Sets the variables to be used with the fog depth effect. See `godot.Environment` for more details.
	**/
	@:native("EnvironmentSetFogDepth")
	public static function environmentSetFogDepth(env:godot.RID, enable:Bool, depthBegin:Single, depthEnd:Single, depthCurve:Single, transmit:Bool, transmitCurve:Single):Void;

	/**		
		Sets the variables to be used with the fog height effect. See `godot.Environment` for more details.
	**/
	@:native("EnvironmentSetFogHeight")
	public static function environmentSetFogHeight(env:godot.RID, enable:Bool, minHeight:Single, maxHeight:Single, heightCurve:Single):Void;

	/**		
		Creates a scenario and adds it to the VisualServer. It can be accessed with the RID that is returned. This RID will be used in all `scenario_*` VisualServer functions.
		
		Once finished with your RID, you will want to free the RID using the VisualServer's `godot.VisualServer.freeRid` static method.
		
		The scenario is the 3D world that all the visual instances exist in.
	**/
	@:native("ScenarioCreate")
	public static function scenarioCreate():godot.RID;

	/**		
		Sets the `godot.VisualServer_ScenarioDebugMode` for this scenario. See `godot.VisualServer_ScenarioDebugMode` for options.
	**/
	@:native("ScenarioSetDebug")
	public static function scenarioSetDebug(scenario:godot.RID, debugMode:godot.VisualServer_ScenarioDebugMode):Void;

	/**		
		Sets the environment that will be used with this scenario.
	**/
	@:native("ScenarioSetEnvironment")
	public static function scenarioSetEnvironment(scenario:godot.RID, environment:godot.RID):Void;

	/**		
		Sets the size of the reflection atlas shared by all reflection probes in this scenario.
	**/
	@:native("ScenarioSetReflectionAtlasSize")
	public static function scenarioSetReflectionAtlasSize(scenario:godot.RID, size:Int, subdiv:Int):Void;

	/**		
		Sets the fallback environment to be used by this scenario. The fallback environment is used if no environment is set. Internally, this is used by the editor to provide a default environment.
	**/
	@:native("ScenarioSetFallbackEnvironment")
	public static function scenarioSetFallbackEnvironment(scenario:godot.RID, environment:godot.RID):Void;

	/**		
		Creates a visual instance, adds it to the VisualServer, and sets both base and scenario. It can be accessed with the RID that is returned. This RID will be used in all `instance_*` VisualServer functions.
		
		Once finished with your RID, you will want to free the RID using the VisualServer's `godot.VisualServer.freeRid` static method.
	**/
	@:native("InstanceCreate2")
	public static function instanceCreate2(base:godot.RID, scenario:godot.RID):godot.RID;

	/**		
		Creates a visual instance and adds it to the VisualServer. It can be accessed with the RID that is returned. This RID will be used in all `instance_*` VisualServer functions.
		
		Once finished with your RID, you will want to free the RID using the VisualServer's `godot.VisualServer.freeRid` static method.
		
		An instance is a way of placing a 3D object in the scenario. Objects like particles, meshes, and reflection probes need to be associated with an instance to be visible in the scenario using `godot.VisualServer.instanceSetBase`.
	**/
	@:native("InstanceCreate")
	public static function instanceCreate():godot.RID;

	/**		
		Sets the base of the instance. A base can be any of the 3D objects that are created in the VisualServer that can be displayed. For example, any of the light types, mesh, multimesh, immediate geometry, particle system, reflection probe, lightmap capture, and the GI probe are all types that can be set as the base of an instance in order to be displayed in the scenario.
	**/
	@:native("InstanceSetBase")
	public static function instanceSetBase(instance:godot.RID, base:godot.RID):Void;

	/**		
		Sets the scenario that the instance is in. The scenario is the 3D world that the objects will be displayed in.
	**/
	@:native("InstanceSetScenario")
	public static function instanceSetScenario(instance:godot.RID, scenario:godot.RID):Void;

	/**		
		Sets the render layers that this instance will be drawn to. Equivalent to `godot.VisualInstance.layers`.
	**/
	@:native("InstanceSetLayerMask")
	public static function instanceSetLayerMask(instance:godot.RID, mask:UInt):Void;

	/**		
		Sets the world space transform of the instance. Equivalent to `godot.Spatial.transform`.
	**/
	@:native("InstanceSetTransform")
	public static function instanceSetTransform(instance:godot.RID, transform:godot.Transform):Void;

	/**		
		Attaches a unique Object ID to instance. Object ID must be attached to instance for proper culling with `godot.VisualServer.instancesCullAabb`, `godot.VisualServer.instancesCullConvex`, and `godot.VisualServer.instancesCullRay`.
	**/
	@:native("InstanceAttachObjectInstanceId")
	public static function instanceAttachObjectInstanceId(instance:godot.RID, id:cs.types.UInt64):Void;

	/**		
		Sets the weight for a given blend shape associated with this instance.
	**/
	@:native("InstanceSetBlendShapeWeight")
	public static function instanceSetBlendShapeWeight(instance:godot.RID, shape:Int, weight:Single):Void;

	/**		
		Sets the material of a specific surface. Equivalent to `godot.MeshInstance.setSurfaceMaterial`.
	**/
	@:native("InstanceSetSurfaceMaterial")
	public static function instanceSetSurfaceMaterial(instance:godot.RID, surface:Int, material:godot.RID):Void;

	/**		
		Sets whether an instance is drawn or not. Equivalent to `godot.Spatial.visible`.
	**/
	@:native("InstanceSetVisible")
	public static function instanceSetVisible(instance:godot.RID, visible:Bool):Void;

	#if doc_gen
	/**		
		Sets the lightmap to use with this instance.
		
		@param lightmapUvRect If the parameter is null, then the default value is new Rect2(0, 0, 1, 1)
	**/
	@:native("InstanceSetUseLightmap")
	public static function instanceSetUseLightmap(instance:godot.RID, lightmapInstance:godot.RID, lightmap:godot.RID, ?lightmapSlice:Int, ?lightmapUvRect:Null<godot.Rect2>):Void;
	#else
	/**		
		Sets the lightmap to use with this instance.
		
		@param lightmapUvRect If the parameter is null, then the default value is new Rect2(0, 0, 1, 1)
	**/
	@:native("InstanceSetUseLightmap")
	public static overload function instanceSetUseLightmap(instance:godot.RID, lightmapInstance:godot.RID, lightmap:godot.RID):Void;

	/**		
		Sets the lightmap to use with this instance.
		
		@param lightmapUvRect If the parameter is null, then the default value is new Rect2(0, 0, 1, 1)
	**/
	@:native("InstanceSetUseLightmap")
	public static overload function instanceSetUseLightmap(instance:godot.RID, lightmapInstance:godot.RID, lightmap:godot.RID, lightmapSlice:Int):Void;

	/**		
		Sets the lightmap to use with this instance.
		
		@param lightmapUvRect If the parameter is null, then the default value is new Rect2(0, 0, 1, 1)
	**/
	@:native("InstanceSetUseLightmap")
	public static overload function instanceSetUseLightmap(instance:godot.RID, lightmapInstance:godot.RID, lightmap:godot.RID, lightmapSlice:Int, lightmapUvRect:Nullable1<godot.Rect2>):Void;
	#end

	/**		
		Sets a custom AABB to use when culling objects from the view frustum. Equivalent to `godot.GeometryInstance.setCustomAabb`.
	**/
	@:native("InstanceSetCustomAabb")
	public static function instanceSetCustomAabb(instance:godot.RID, aabb:godot.AABB):Void;

	/**		
		Attaches a skeleton to an instance. Removes the previous skeleton from the instance.
	**/
	@:native("InstanceAttachSkeleton")
	public static function instanceAttachSkeleton(instance:godot.RID, skeleton:godot.RID):Void;

	/**		
		Function not implemented in Godot 3.x.
	**/
	@:native("InstanceSetExterior")
	public static function instanceSetExterior(instance:godot.RID, enabled:Bool):Void;

	/**		
		Sets a margin to increase the size of the AABB when culling objects from the view frustum. This allows you to avoid culling objects that fall outside the view frustum. Equivalent to `godot.GeometryInstance.extraCullMargin`.
	**/
	@:native("InstanceSetExtraVisibilityMargin")
	public static function instanceSetExtraVisibilityMargin(instance:godot.RID, margin:Single):Void;

	/**		
		Sets the flag for a given `godot.VisualServer_InstanceFlags`. See `godot.VisualServer_InstanceFlags` for more details.
	**/
	@:native("InstanceGeometrySetFlag")
	public static function instanceGeometrySetFlag(instance:godot.RID, flag:godot.VisualServer_InstanceFlags, enabled:Bool):Void;

	/**		
		Sets the shadow casting setting to one of `godot.VisualServer_ShadowCastingSetting`. Equivalent to `godot.GeometryInstance.castShadow`.
	**/
	@:native("InstanceGeometrySetCastShadowsSetting")
	public static function instanceGeometrySetCastShadowsSetting(instance:godot.RID, shadowCastingSetting:godot.VisualServer_ShadowCastingSetting):Void;

	/**		
		Sets a material that will override the material for all surfaces on the mesh associated with this instance. Equivalent to `godot.GeometryInstance.materialOverride`.
	**/
	@:native("InstanceGeometrySetMaterialOverride")
	public static function instanceGeometrySetMaterialOverride(instance:godot.RID, material:godot.RID):Void;

	/**		
		Not implemented in Godot 3.x.
	**/
	@:native("InstanceGeometrySetDrawRange")
	public static function instanceGeometrySetDrawRange(instance:godot.RID, min:Single, max:Single, minMargin:Single, maxMargin:Single):Void;

	/**		
		Not implemented in Godot 3.x.
	**/
	@:native("InstanceGeometrySetAsInstanceLod")
	public static function instanceGeometrySetAsInstanceLod(instance:godot.RID, asLodOfInstance:godot.RID):Void;

	#if doc_gen
	/**		
		Returns an array of object IDs intersecting with the provided AABB. Only visual 3D nodes are considered, such as `godot.MeshInstance` or `godot.DirectionalLight`. Use `@GDScript.instance_from_id` to obtain the actual nodes. A scenario RID must be provided, which is available in the `godot.World` you want to query. This forces an update for all resources queued to update.
		
		Warning: This function is primarily intended for editor usage. For in-game use cases, prefer physics collision.
	**/
	@:native("InstancesCullAabb")
	public static function instancesCullAabb(aabb:godot.AABB, ?scenario:godot.RID):godot.collections.Array;
	#else
	/**		
		Returns an array of object IDs intersecting with the provided AABB. Only visual 3D nodes are considered, such as `godot.MeshInstance` or `godot.DirectionalLight`. Use `@GDScript.instance_from_id` to obtain the actual nodes. A scenario RID must be provided, which is available in the `godot.World` you want to query. This forces an update for all resources queued to update.
		
		Warning: This function is primarily intended for editor usage. For in-game use cases, prefer physics collision.
	**/
	@:native("InstancesCullAabb")
	public static overload function instancesCullAabb(aabb:godot.AABB):godot.collections.Array;

	/**		
		Returns an array of object IDs intersecting with the provided AABB. Only visual 3D nodes are considered, such as `godot.MeshInstance` or `godot.DirectionalLight`. Use `@GDScript.instance_from_id` to obtain the actual nodes. A scenario RID must be provided, which is available in the `godot.World` you want to query. This forces an update for all resources queued to update.
		
		Warning: This function is primarily intended for editor usage. For in-game use cases, prefer physics collision.
	**/
	@:native("InstancesCullAabb")
	public static overload function instancesCullAabb(aabb:godot.AABB, scenario:godot.RID):godot.collections.Array;
	#end

	#if doc_gen
	/**		
		Returns an array of object IDs intersecting with the provided 3D ray. Only visual 3D nodes are considered, such as `godot.MeshInstance` or `godot.DirectionalLight`. Use `@GDScript.instance_from_id` to obtain the actual nodes. A scenario RID must be provided, which is available in the `godot.World` you want to query. This forces an update for all resources queued to update.
		
		Warning: This function is primarily intended for editor usage. For in-game use cases, prefer physics collision.
	**/
	@:native("InstancesCullRay")
	public static function instancesCullRay(from:godot.Vector3, to:godot.Vector3, ?scenario:godot.RID):godot.collections.Array;
	#else
	/**		
		Returns an array of object IDs intersecting with the provided 3D ray. Only visual 3D nodes are considered, such as `godot.MeshInstance` or `godot.DirectionalLight`. Use `@GDScript.instance_from_id` to obtain the actual nodes. A scenario RID must be provided, which is available in the `godot.World` you want to query. This forces an update for all resources queued to update.
		
		Warning: This function is primarily intended for editor usage. For in-game use cases, prefer physics collision.
	**/
	@:native("InstancesCullRay")
	public static overload function instancesCullRay(from:godot.Vector3, to:godot.Vector3):godot.collections.Array;

	/**		
		Returns an array of object IDs intersecting with the provided 3D ray. Only visual 3D nodes are considered, such as `godot.MeshInstance` or `godot.DirectionalLight`. Use `@GDScript.instance_from_id` to obtain the actual nodes. A scenario RID must be provided, which is available in the `godot.World` you want to query. This forces an update for all resources queued to update.
		
		Warning: This function is primarily intended for editor usage. For in-game use cases, prefer physics collision.
	**/
	@:native("InstancesCullRay")
	public static overload function instancesCullRay(from:godot.Vector3, to:godot.Vector3, scenario:godot.RID):godot.collections.Array;
	#end

	#if doc_gen
	/**		
		Returns an array of object IDs intersecting with the provided convex shape. Only visual 3D nodes are considered, such as `godot.MeshInstance` or `godot.DirectionalLight`. Use `@GDScript.instance_from_id` to obtain the actual nodes. A scenario RID must be provided, which is available in the `godot.World` you want to query. This forces an update for all resources queued to update.
		
		Warning: This function is primarily intended for editor usage. For in-game use cases, prefer physics collision.
	**/
	@:native("InstancesCullConvex")
	public static function instancesCullConvex(convex:godot.collections.Array, ?scenario:godot.RID):godot.collections.Array;
	#else
	/**		
		Returns an array of object IDs intersecting with the provided convex shape. Only visual 3D nodes are considered, such as `godot.MeshInstance` or `godot.DirectionalLight`. Use `@GDScript.instance_from_id` to obtain the actual nodes. A scenario RID must be provided, which is available in the `godot.World` you want to query. This forces an update for all resources queued to update.
		
		Warning: This function is primarily intended for editor usage. For in-game use cases, prefer physics collision.
	**/
	@:native("InstancesCullConvex")
	public static overload function instancesCullConvex(convex:godot.collections.Array):godot.collections.Array;

	/**		
		Returns an array of object IDs intersecting with the provided convex shape. Only visual 3D nodes are considered, such as `godot.MeshInstance` or `godot.DirectionalLight`. Use `@GDScript.instance_from_id` to obtain the actual nodes. A scenario RID must be provided, which is available in the `godot.World` you want to query. This forces an update for all resources queued to update.
		
		Warning: This function is primarily intended for editor usage. For in-game use cases, prefer physics collision.
	**/
	@:native("InstancesCullConvex")
	public static overload function instancesCullConvex(convex:godot.collections.Array, scenario:godot.RID):godot.collections.Array;
	#end

	/**		
		Creates a canvas and returns the assigned `godot.RID`. It can be accessed with the RID that is returned. This RID will be used in all `canvas_*` VisualServer functions.
		
		Once finished with your RID, you will want to free the RID using the VisualServer's `godot.VisualServer.freeRid` static method.
	**/
	@:native("CanvasCreate")
	public static function canvasCreate():godot.RID;

	/**		
		A copy of the canvas item will be drawn with a local offset of the mirroring `godot.Vector2`.
	**/
	@:native("CanvasSetItemMirroring")
	public static function canvasSetItemMirroring(canvas:godot.RID, item:godot.RID, mirroring:godot.Vector2):Void;

	/**		
		Modulates all colors in the given canvas.
	**/
	@:native("CanvasSetModulate")
	public static function canvasSetModulate(canvas:godot.RID, color:godot.Color):Void;

	/**		
		Creates a new `godot.CanvasItem` and returns its `godot.RID`. It can be accessed with the RID that is returned. This RID will be used in all `canvas_item_*` VisualServer functions.
		
		Once finished with your RID, you will want to free the RID using the VisualServer's `godot.VisualServer.freeRid` static method.
	**/
	@:native("CanvasItemCreate")
	public static function canvasItemCreate():godot.RID;

	/**		
		Sets the parent for the `godot.CanvasItem`. The parent can be another canvas item, or it can be the root canvas that is attached to the viewport.
	**/
	@:native("CanvasItemSetParent")
	public static function canvasItemSetParent(item:godot.RID, parent:godot.RID):Void;

	/**		
		Sets if the canvas item (including its children) is visible.
	**/
	@:native("CanvasItemSetVisible")
	public static function canvasItemSetVisible(item:godot.RID, visible:Bool):Void;

	/**		
		The light mask. See `godot.LightOccluder2D` for more information on light masks.
	**/
	@:native("CanvasItemSetLightMask")
	public static function canvasItemSetLightMask(item:godot.RID, mask:Int):Void;

	/**		
		Sets the `godot.CanvasItem`'s `godot.Transform2D`.
	**/
	@:native("CanvasItemSetTransform")
	public static function canvasItemSetTransform(item:godot.RID, transform:godot.Transform2D):Void;

	/**		
		Sets clipping for the `godot.CanvasItem`.
	**/
	@:native("CanvasItemSetClip")
	public static function canvasItemSetClip(item:godot.RID, clip:Bool):Void;

	/**		
		Enables the use of distance fields for GUI elements that are rendering distance field based fonts.
	**/
	@:native("CanvasItemSetDistanceFieldMode")
	public static function canvasItemSetDistanceFieldMode(item:godot.RID, enabled:Bool):Void;

	#if doc_gen
	/**		
		Defines a custom drawing rectangle for the `godot.CanvasItem`.
		
		@param rect If the parameter is null, then the default value is new Rect2(0, 0, 0, 0)
	**/
	@:native("CanvasItemSetCustomRect")
	public static function canvasItemSetCustomRect(item:godot.RID, useCustomRect:Bool, ?rect:Null<godot.Rect2>):Void;
	#else
	/**		
		Defines a custom drawing rectangle for the `godot.CanvasItem`.
		
		@param rect If the parameter is null, then the default value is new Rect2(0, 0, 0, 0)
	**/
	@:native("CanvasItemSetCustomRect")
	public static overload function canvasItemSetCustomRect(item:godot.RID, useCustomRect:Bool):Void;

	/**		
		Defines a custom drawing rectangle for the `godot.CanvasItem`.
		
		@param rect If the parameter is null, then the default value is new Rect2(0, 0, 0, 0)
	**/
	@:native("CanvasItemSetCustomRect")
	public static overload function canvasItemSetCustomRect(item:godot.RID, useCustomRect:Bool, rect:Nullable1<godot.Rect2>):Void;
	#end

	/**		
		Sets the color that modulates the `godot.CanvasItem` and its children.
	**/
	@:native("CanvasItemSetModulate")
	public static function canvasItemSetModulate(item:godot.RID, color:godot.Color):Void;

	/**		
		Sets the color that modulates the `godot.CanvasItem` without children.
	**/
	@:native("CanvasItemSetSelfModulate")
	public static function canvasItemSetSelfModulate(item:godot.RID, color:godot.Color):Void;

	/**		
		Sets `godot.CanvasItem` to be drawn behind its parent.
	**/
	@:native("CanvasItemSetDrawBehindParent")
	public static function canvasItemSetDrawBehindParent(item:godot.RID, enabled:Bool):Void;

	#if doc_gen
	/**		
		Adds a line command to the `godot.CanvasItem`'s draw commands.
	**/
	@:native("CanvasItemAddLine")
	public static function canvasItemAddLine(item:godot.RID, from:godot.Vector2, to:godot.Vector2, color:godot.Color, ?width:Single, ?antialiased:Bool):Void;
	#else
	/**		
		Adds a line command to the `godot.CanvasItem`'s draw commands.
	**/
	@:native("CanvasItemAddLine")
	public static overload function canvasItemAddLine(item:godot.RID, from:godot.Vector2, to:godot.Vector2, color:godot.Color):Void;

	/**		
		Adds a line command to the `godot.CanvasItem`'s draw commands.
	**/
	@:native("CanvasItemAddLine")
	public static overload function canvasItemAddLine(item:godot.RID, from:godot.Vector2, to:godot.Vector2, color:godot.Color, width:Single):Void;

	/**		
		Adds a line command to the `godot.CanvasItem`'s draw commands.
	**/
	@:native("CanvasItemAddLine")
	public static overload function canvasItemAddLine(item:godot.RID, from:godot.Vector2, to:godot.Vector2, color:godot.Color, width:Single, antialiased:Bool):Void;
	#end

	#if doc_gen
	/**		
		Adds a polyline, which is a line from multiple points with a width, to the `godot.CanvasItem`'s draw commands.
	**/
	@:native("CanvasItemAddPolyline")
	public static function canvasItemAddPolyline(item:godot.RID, points:std.Array<godot.Vector2>, colors:std.Array<godot.Color>, ?width:Single, ?antialiased:Bool):Void;
	#else
	/**		
		Adds a polyline, which is a line from multiple points with a width, to the `godot.CanvasItem`'s draw commands.
	**/
	@:native("CanvasItemAddPolyline")
	public static overload function canvasItemAddPolyline(item:godot.RID, points:HaxeArray<godot.Vector2>, colors:HaxeArray<godot.Color>):Void;

	/**		
		Adds a polyline, which is a line from multiple points with a width, to the `godot.CanvasItem`'s draw commands.
	**/
	@:native("CanvasItemAddPolyline")
	public static overload function canvasItemAddPolyline(item:godot.RID, points:HaxeArray<godot.Vector2>, colors:HaxeArray<godot.Color>, width:Single):Void;

	/**		
		Adds a polyline, which is a line from multiple points with a width, to the `godot.CanvasItem`'s draw commands.
	**/
	@:native("CanvasItemAddPolyline")
	public static overload function canvasItemAddPolyline(item:godot.RID, points:HaxeArray<godot.Vector2>, colors:HaxeArray<godot.Color>, width:Single, antialiased:Bool):Void;
	#end

	/**		
		Adds a rectangle to the `godot.CanvasItem`'s draw commands.
	**/
	@:native("CanvasItemAddRect")
	public static function canvasItemAddRect(item:godot.RID, rect:godot.Rect2, color:godot.Color):Void;

	/**		
		Adds a circle command to the `godot.CanvasItem`'s draw commands.
	**/
	@:native("CanvasItemAddCircle")
	public static function canvasItemAddCircle(item:godot.RID, pos:godot.Vector2, radius:Single, color:godot.Color):Void;

	#if doc_gen
	/**		
		Adds a textured rect to the `godot.CanvasItem`'s draw commands.
		
		@param modulate If the parameter is null, then the default value is new Color(1, 1, 1, 1)
	**/
	@:native("CanvasItemAddTextureRect")
	public static function canvasItemAddTextureRect(item:godot.RID, rect:godot.Rect2, texture:godot.RID, ?tile:Bool, ?modulate:Null<godot.Color>, ?transpose:Bool, ?normalMap:godot.RID):Void;
	#else
	/**		
		Adds a textured rect to the `godot.CanvasItem`'s draw commands.
		
		@param modulate If the parameter is null, then the default value is new Color(1, 1, 1, 1)
	**/
	@:native("CanvasItemAddTextureRect")
	public static overload function canvasItemAddTextureRect(item:godot.RID, rect:godot.Rect2, texture:godot.RID):Void;

	/**		
		Adds a textured rect to the `godot.CanvasItem`'s draw commands.
		
		@param modulate If the parameter is null, then the default value is new Color(1, 1, 1, 1)
	**/
	@:native("CanvasItemAddTextureRect")
	public static overload function canvasItemAddTextureRect(item:godot.RID, rect:godot.Rect2, texture:godot.RID, tile:Bool):Void;

	/**		
		Adds a textured rect to the `godot.CanvasItem`'s draw commands.
		
		@param modulate If the parameter is null, then the default value is new Color(1, 1, 1, 1)
	**/
	@:native("CanvasItemAddTextureRect")
	public static overload function canvasItemAddTextureRect(item:godot.RID, rect:godot.Rect2, texture:godot.RID, tile:Bool, modulate:Nullable1<godot.Color>):Void;

	/**		
		Adds a textured rect to the `godot.CanvasItem`'s draw commands.
		
		@param modulate If the parameter is null, then the default value is new Color(1, 1, 1, 1)
	**/
	@:native("CanvasItemAddTextureRect")
	public static overload function canvasItemAddTextureRect(item:godot.RID, rect:godot.Rect2, texture:godot.RID, tile:Bool, modulate:Nullable1<godot.Color>, transpose:Bool):Void;

	/**		
		Adds a textured rect to the `godot.CanvasItem`'s draw commands.
		
		@param modulate If the parameter is null, then the default value is new Color(1, 1, 1, 1)
	**/
	@:native("CanvasItemAddTextureRect")
	public static overload function canvasItemAddTextureRect(item:godot.RID, rect:godot.Rect2, texture:godot.RID, tile:Bool, modulate:Nullable1<godot.Color>, transpose:Bool, normalMap:godot.RID):Void;
	#end

	#if doc_gen
	/**		
		Adds a texture rect with region setting to the `godot.CanvasItem`'s draw commands.
		
		@param modulate If the parameter is null, then the default value is new Color(1, 1, 1, 1)
	**/
	@:native("CanvasItemAddTextureRectRegion")
	public static function canvasItemAddTextureRectRegion(item:godot.RID, rect:godot.Rect2, texture:godot.RID, srcRect:godot.Rect2, ?modulate:Null<godot.Color>, ?transpose:Bool, ?normalMap:godot.RID, ?clipUv:Bool):Void;
	#else
	/**		
		Adds a texture rect with region setting to the `godot.CanvasItem`'s draw commands.
		
		@param modulate If the parameter is null, then the default value is new Color(1, 1, 1, 1)
	**/
	@:native("CanvasItemAddTextureRectRegion")
	public static overload function canvasItemAddTextureRectRegion(item:godot.RID, rect:godot.Rect2, texture:godot.RID, srcRect:godot.Rect2):Void;

	/**		
		Adds a texture rect with region setting to the `godot.CanvasItem`'s draw commands.
		
		@param modulate If the parameter is null, then the default value is new Color(1, 1, 1, 1)
	**/
	@:native("CanvasItemAddTextureRectRegion")
	public static overload function canvasItemAddTextureRectRegion(item:godot.RID, rect:godot.Rect2, texture:godot.RID, srcRect:godot.Rect2, modulate:Nullable1<godot.Color>):Void;

	/**		
		Adds a texture rect with region setting to the `godot.CanvasItem`'s draw commands.
		
		@param modulate If the parameter is null, then the default value is new Color(1, 1, 1, 1)
	**/
	@:native("CanvasItemAddTextureRectRegion")
	public static overload function canvasItemAddTextureRectRegion(item:godot.RID, rect:godot.Rect2, texture:godot.RID, srcRect:godot.Rect2, modulate:Nullable1<godot.Color>, transpose:Bool):Void;

	/**		
		Adds a texture rect with region setting to the `godot.CanvasItem`'s draw commands.
		
		@param modulate If the parameter is null, then the default value is new Color(1, 1, 1, 1)
	**/
	@:native("CanvasItemAddTextureRectRegion")
	public static overload function canvasItemAddTextureRectRegion(item:godot.RID, rect:godot.Rect2, texture:godot.RID, srcRect:godot.Rect2, modulate:Nullable1<godot.Color>, transpose:Bool, normalMap:godot.RID):Void;

	/**		
		Adds a texture rect with region setting to the `godot.CanvasItem`'s draw commands.
		
		@param modulate If the parameter is null, then the default value is new Color(1, 1, 1, 1)
	**/
	@:native("CanvasItemAddTextureRectRegion")
	public static overload function canvasItemAddTextureRectRegion(item:godot.RID, rect:godot.Rect2, texture:godot.RID, srcRect:godot.Rect2, modulate:Nullable1<godot.Color>, transpose:Bool, normalMap:godot.RID, clipUv:Bool):Void;
	#end

	#if doc_gen
	/**		
		Adds a nine patch image to the `godot.CanvasItem`'s draw commands.
		
		See `godot.NinePatchRect` for more explanation.
		
		@param modulate If the parameter is null, then the default value is new Color(1, 1, 1, 1)
	**/
	@:native("CanvasItemAddNinePatch")
	public static function canvasItemAddNinePatch(item:godot.RID, rect:godot.Rect2, source:godot.Rect2, texture:godot.RID, topleft:godot.Vector2, bottomright:godot.Vector2, ?xAxisMode:godot.VisualServer_NinePatchAxisMode, ?yAxisMode:godot.VisualServer_NinePatchAxisMode, ?drawCenter:Bool, ?modulate:Null<godot.Color>, ?normalMap:godot.RID):Void;
	#else
	/**		
		Adds a nine patch image to the `godot.CanvasItem`'s draw commands.
		
		See `godot.NinePatchRect` for more explanation.
		
		@param modulate If the parameter is null, then the default value is new Color(1, 1, 1, 1)
	**/
	@:native("CanvasItemAddNinePatch")
	public static overload function canvasItemAddNinePatch(item:godot.RID, rect:godot.Rect2, source:godot.Rect2, texture:godot.RID, topleft:godot.Vector2, bottomright:godot.Vector2):Void;

	/**		
		Adds a nine patch image to the `godot.CanvasItem`'s draw commands.
		
		See `godot.NinePatchRect` for more explanation.
		
		@param modulate If the parameter is null, then the default value is new Color(1, 1, 1, 1)
	**/
	@:native("CanvasItemAddNinePatch")
	public static overload function canvasItemAddNinePatch(item:godot.RID, rect:godot.Rect2, source:godot.Rect2, texture:godot.RID, topleft:godot.Vector2, bottomright:godot.Vector2, xAxisMode:godot.VisualServer_NinePatchAxisMode):Void;

	/**		
		Adds a nine patch image to the `godot.CanvasItem`'s draw commands.
		
		See `godot.NinePatchRect` for more explanation.
		
		@param modulate If the parameter is null, then the default value is new Color(1, 1, 1, 1)
	**/
	@:native("CanvasItemAddNinePatch")
	public static overload function canvasItemAddNinePatch(item:godot.RID, rect:godot.Rect2, source:godot.Rect2, texture:godot.RID, topleft:godot.Vector2, bottomright:godot.Vector2, xAxisMode:godot.VisualServer_NinePatchAxisMode, yAxisMode:godot.VisualServer_NinePatchAxisMode):Void;

	/**		
		Adds a nine patch image to the `godot.CanvasItem`'s draw commands.
		
		See `godot.NinePatchRect` for more explanation.
		
		@param modulate If the parameter is null, then the default value is new Color(1, 1, 1, 1)
	**/
	@:native("CanvasItemAddNinePatch")
	public static overload function canvasItemAddNinePatch(item:godot.RID, rect:godot.Rect2, source:godot.Rect2, texture:godot.RID, topleft:godot.Vector2, bottomright:godot.Vector2, xAxisMode:godot.VisualServer_NinePatchAxisMode, yAxisMode:godot.VisualServer_NinePatchAxisMode, drawCenter:Bool):Void;

	/**		
		Adds a nine patch image to the `godot.CanvasItem`'s draw commands.
		
		See `godot.NinePatchRect` for more explanation.
		
		@param modulate If the parameter is null, then the default value is new Color(1, 1, 1, 1)
	**/
	@:native("CanvasItemAddNinePatch")
	public static overload function canvasItemAddNinePatch(item:godot.RID, rect:godot.Rect2, source:godot.Rect2, texture:godot.RID, topleft:godot.Vector2, bottomright:godot.Vector2, xAxisMode:godot.VisualServer_NinePatchAxisMode, yAxisMode:godot.VisualServer_NinePatchAxisMode, drawCenter:Bool, modulate:Nullable1<godot.Color>):Void;

	/**		
		Adds a nine patch image to the `godot.CanvasItem`'s draw commands.
		
		See `godot.NinePatchRect` for more explanation.
		
		@param modulate If the parameter is null, then the default value is new Color(1, 1, 1, 1)
	**/
	@:native("CanvasItemAddNinePatch")
	public static overload function canvasItemAddNinePatch(item:godot.RID, rect:godot.Rect2, source:godot.Rect2, texture:godot.RID, topleft:godot.Vector2, bottomright:godot.Vector2, xAxisMode:godot.VisualServer_NinePatchAxisMode, yAxisMode:godot.VisualServer_NinePatchAxisMode, drawCenter:Bool, modulate:Nullable1<godot.Color>, normalMap:godot.RID):Void;
	#end

	#if doc_gen
	/**		
		Adds a primitive to the `godot.CanvasItem`'s draw commands.
	**/
	@:native("CanvasItemAddPrimitive")
	public static function canvasItemAddPrimitive(item:godot.RID, points:std.Array<godot.Vector2>, colors:std.Array<godot.Color>, uvs:std.Array<godot.Vector2>, texture:godot.RID, ?width:Single, ?normalMap:godot.RID):Void;
	#else
	/**		
		Adds a primitive to the `godot.CanvasItem`'s draw commands.
	**/
	@:native("CanvasItemAddPrimitive")
	public static overload function canvasItemAddPrimitive(item:godot.RID, points:HaxeArray<godot.Vector2>, colors:HaxeArray<godot.Color>, uvs:HaxeArray<godot.Vector2>, texture:godot.RID):Void;

	/**		
		Adds a primitive to the `godot.CanvasItem`'s draw commands.
	**/
	@:native("CanvasItemAddPrimitive")
	public static overload function canvasItemAddPrimitive(item:godot.RID, points:HaxeArray<godot.Vector2>, colors:HaxeArray<godot.Color>, uvs:HaxeArray<godot.Vector2>, texture:godot.RID, width:Single):Void;

	/**		
		Adds a primitive to the `godot.CanvasItem`'s draw commands.
	**/
	@:native("CanvasItemAddPrimitive")
	public static overload function canvasItemAddPrimitive(item:godot.RID, points:HaxeArray<godot.Vector2>, colors:HaxeArray<godot.Color>, uvs:HaxeArray<godot.Vector2>, texture:godot.RID, width:Single, normalMap:godot.RID):Void;
	#end

	#if doc_gen
	/**		
		Adds a polygon to the `godot.CanvasItem`'s draw commands.
		
		@param uvs If the parameter is null, then the default value is new Vector2[] {}
	**/
	@:native("CanvasItemAddPolygon")
	public static function canvasItemAddPolygon(item:godot.RID, points:std.Array<godot.Vector2>, colors:std.Array<godot.Color>, ?uvs:std.Array<godot.Vector2>, ?texture:godot.RID, ?normalMap:godot.RID, ?antialiased:Bool):Void;
	#else
	/**		
		Adds a polygon to the `godot.CanvasItem`'s draw commands.
		
		@param uvs If the parameter is null, then the default value is new Vector2[] {}
	**/
	@:native("CanvasItemAddPolygon")
	public static overload function canvasItemAddPolygon(item:godot.RID, points:HaxeArray<godot.Vector2>, colors:HaxeArray<godot.Color>):Void;

	/**		
		Adds a polygon to the `godot.CanvasItem`'s draw commands.
		
		@param uvs If the parameter is null, then the default value is new Vector2[] {}
	**/
	@:native("CanvasItemAddPolygon")
	public static overload function canvasItemAddPolygon(item:godot.RID, points:HaxeArray<godot.Vector2>, colors:HaxeArray<godot.Color>, uvs:HaxeArray<godot.Vector2>):Void;

	/**		
		Adds a polygon to the `godot.CanvasItem`'s draw commands.
		
		@param uvs If the parameter is null, then the default value is new Vector2[] {}
	**/
	@:native("CanvasItemAddPolygon")
	public static overload function canvasItemAddPolygon(item:godot.RID, points:HaxeArray<godot.Vector2>, colors:HaxeArray<godot.Color>, uvs:HaxeArray<godot.Vector2>, texture:godot.RID):Void;

	/**		
		Adds a polygon to the `godot.CanvasItem`'s draw commands.
		
		@param uvs If the parameter is null, then the default value is new Vector2[] {}
	**/
	@:native("CanvasItemAddPolygon")
	public static overload function canvasItemAddPolygon(item:godot.RID, points:HaxeArray<godot.Vector2>, colors:HaxeArray<godot.Color>, uvs:HaxeArray<godot.Vector2>, texture:godot.RID, normalMap:godot.RID):Void;

	/**		
		Adds a polygon to the `godot.CanvasItem`'s draw commands.
		
		@param uvs If the parameter is null, then the default value is new Vector2[] {}
	**/
	@:native("CanvasItemAddPolygon")
	public static overload function canvasItemAddPolygon(item:godot.RID, points:HaxeArray<godot.Vector2>, colors:HaxeArray<godot.Color>, uvs:HaxeArray<godot.Vector2>, texture:godot.RID, normalMap:godot.RID, antialiased:Bool):Void;
	#end

	#if doc_gen
	/**		
		Adds a triangle array to the `godot.CanvasItem`'s draw commands.
		
		@param uvs If the parameter is null, then the default value is new Vector2[] {}
		@param bones If the parameter is null, then the default value is new int[] {}
		@param weights If the parameter is null, then the default value is new float[] {}
	**/
	@:native("CanvasItemAddTriangleArray")
	public static function canvasItemAddTriangleArray(item:godot.RID, indices:std.Array<Int>, points:std.Array<godot.Vector2>, colors:std.Array<godot.Color>, ?uvs:std.Array<godot.Vector2>, ?bones:std.Array<Int>, ?weights:std.Array<Single>, ?texture:godot.RID, ?count:Int, ?normalMap:godot.RID, ?antialiased:Bool, ?antialiasingUseIndices:Bool):Void;
	#else
	/**		
		Adds a triangle array to the `godot.CanvasItem`'s draw commands.
		
		@param uvs If the parameter is null, then the default value is new Vector2[] {}
		@param bones If the parameter is null, then the default value is new int[] {}
		@param weights If the parameter is null, then the default value is new float[] {}
	**/
	@:native("CanvasItemAddTriangleArray")
	public static overload function canvasItemAddTriangleArray(item:godot.RID, indices:HaxeArray<Int>, points:HaxeArray<godot.Vector2>, colors:HaxeArray<godot.Color>):Void;

	/**		
		Adds a triangle array to the `godot.CanvasItem`'s draw commands.
		
		@param uvs If the parameter is null, then the default value is new Vector2[] {}
		@param bones If the parameter is null, then the default value is new int[] {}
		@param weights If the parameter is null, then the default value is new float[] {}
	**/
	@:native("CanvasItemAddTriangleArray")
	public static overload function canvasItemAddTriangleArray(item:godot.RID, indices:HaxeArray<Int>, points:HaxeArray<godot.Vector2>, colors:HaxeArray<godot.Color>, uvs:HaxeArray<godot.Vector2>):Void;

	/**		
		Adds a triangle array to the `godot.CanvasItem`'s draw commands.
		
		@param uvs If the parameter is null, then the default value is new Vector2[] {}
		@param bones If the parameter is null, then the default value is new int[] {}
		@param weights If the parameter is null, then the default value is new float[] {}
	**/
	@:native("CanvasItemAddTriangleArray")
	public static overload function canvasItemAddTriangleArray(item:godot.RID, indices:HaxeArray<Int>, points:HaxeArray<godot.Vector2>, colors:HaxeArray<godot.Color>, uvs:HaxeArray<godot.Vector2>, bones:HaxeArray<Int>):Void;

	/**		
		Adds a triangle array to the `godot.CanvasItem`'s draw commands.
		
		@param uvs If the parameter is null, then the default value is new Vector2[] {}
		@param bones If the parameter is null, then the default value is new int[] {}
		@param weights If the parameter is null, then the default value is new float[] {}
	**/
	@:native("CanvasItemAddTriangleArray")
	public static overload function canvasItemAddTriangleArray(item:godot.RID, indices:HaxeArray<Int>, points:HaxeArray<godot.Vector2>, colors:HaxeArray<godot.Color>, uvs:HaxeArray<godot.Vector2>, bones:HaxeArray<Int>, weights:HaxeArray<Single>):Void;

	/**		
		Adds a triangle array to the `godot.CanvasItem`'s draw commands.
		
		@param uvs If the parameter is null, then the default value is new Vector2[] {}
		@param bones If the parameter is null, then the default value is new int[] {}
		@param weights If the parameter is null, then the default value is new float[] {}
	**/
	@:native("CanvasItemAddTriangleArray")
	public static overload function canvasItemAddTriangleArray(item:godot.RID, indices:HaxeArray<Int>, points:HaxeArray<godot.Vector2>, colors:HaxeArray<godot.Color>, uvs:HaxeArray<godot.Vector2>, bones:HaxeArray<Int>, weights:HaxeArray<Single>, texture:godot.RID):Void;

	/**		
		Adds a triangle array to the `godot.CanvasItem`'s draw commands.
		
		@param uvs If the parameter is null, then the default value is new Vector2[] {}
		@param bones If the parameter is null, then the default value is new int[] {}
		@param weights If the parameter is null, then the default value is new float[] {}
	**/
	@:native("CanvasItemAddTriangleArray")
	public static overload function canvasItemAddTriangleArray(item:godot.RID, indices:HaxeArray<Int>, points:HaxeArray<godot.Vector2>, colors:HaxeArray<godot.Color>, uvs:HaxeArray<godot.Vector2>, bones:HaxeArray<Int>, weights:HaxeArray<Single>, texture:godot.RID, count:Int):Void;

	/**		
		Adds a triangle array to the `godot.CanvasItem`'s draw commands.
		
		@param uvs If the parameter is null, then the default value is new Vector2[] {}
		@param bones If the parameter is null, then the default value is new int[] {}
		@param weights If the parameter is null, then the default value is new float[] {}
	**/
	@:native("CanvasItemAddTriangleArray")
	public static overload function canvasItemAddTriangleArray(item:godot.RID, indices:HaxeArray<Int>, points:HaxeArray<godot.Vector2>, colors:HaxeArray<godot.Color>, uvs:HaxeArray<godot.Vector2>, bones:HaxeArray<Int>, weights:HaxeArray<Single>, texture:godot.RID, count:Int, normalMap:godot.RID):Void;

	/**		
		Adds a triangle array to the `godot.CanvasItem`'s draw commands.
		
		@param uvs If the parameter is null, then the default value is new Vector2[] {}
		@param bones If the parameter is null, then the default value is new int[] {}
		@param weights If the parameter is null, then the default value is new float[] {}
	**/
	@:native("CanvasItemAddTriangleArray")
	public static overload function canvasItemAddTriangleArray(item:godot.RID, indices:HaxeArray<Int>, points:HaxeArray<godot.Vector2>, colors:HaxeArray<godot.Color>, uvs:HaxeArray<godot.Vector2>, bones:HaxeArray<Int>, weights:HaxeArray<Single>, texture:godot.RID, count:Int, normalMap:godot.RID, antialiased:Bool):Void;

	/**		
		Adds a triangle array to the `godot.CanvasItem`'s draw commands.
		
		@param uvs If the parameter is null, then the default value is new Vector2[] {}
		@param bones If the parameter is null, then the default value is new int[] {}
		@param weights If the parameter is null, then the default value is new float[] {}
	**/
	@:native("CanvasItemAddTriangleArray")
	public static overload function canvasItemAddTriangleArray(item:godot.RID, indices:HaxeArray<Int>, points:HaxeArray<godot.Vector2>, colors:HaxeArray<godot.Color>, uvs:HaxeArray<godot.Vector2>, bones:HaxeArray<Int>, weights:HaxeArray<Single>, texture:godot.RID, count:Int, normalMap:godot.RID, antialiased:Bool, antialiasingUseIndices:Bool):Void;
	#end

	#if doc_gen
	/**		
		Adds a mesh command to the `godot.CanvasItem`'s draw commands.
		
		@param transform If the parameter is null, then the default value is Transform2D.Identity
		@param modulate If the parameter is null, then the default value is new Color(1, 1, 1, 1)
	**/
	@:native("CanvasItemAddMesh")
	public static function canvasItemAddMesh(item:godot.RID, mesh:godot.RID, ?transform:Null<godot.Transform2D>, ?modulate:Null<godot.Color>, ?texture:godot.RID, ?normalMap:godot.RID):Void;
	#else
	/**		
		Adds a mesh command to the `godot.CanvasItem`'s draw commands.
		
		@param transform If the parameter is null, then the default value is Transform2D.Identity
		@param modulate If the parameter is null, then the default value is new Color(1, 1, 1, 1)
	**/
	@:native("CanvasItemAddMesh")
	public static overload function canvasItemAddMesh(item:godot.RID, mesh:godot.RID):Void;

	/**		
		Adds a mesh command to the `godot.CanvasItem`'s draw commands.
		
		@param transform If the parameter is null, then the default value is Transform2D.Identity
		@param modulate If the parameter is null, then the default value is new Color(1, 1, 1, 1)
	**/
	@:native("CanvasItemAddMesh")
	public static overload function canvasItemAddMesh(item:godot.RID, mesh:godot.RID, transform:Nullable1<godot.Transform2D>):Void;

	/**		
		Adds a mesh command to the `godot.CanvasItem`'s draw commands.
		
		@param transform If the parameter is null, then the default value is Transform2D.Identity
		@param modulate If the parameter is null, then the default value is new Color(1, 1, 1, 1)
	**/
	@:native("CanvasItemAddMesh")
	public static overload function canvasItemAddMesh(item:godot.RID, mesh:godot.RID, transform:Nullable1<godot.Transform2D>, modulate:Nullable1<godot.Color>):Void;

	/**		
		Adds a mesh command to the `godot.CanvasItem`'s draw commands.
		
		@param transform If the parameter is null, then the default value is Transform2D.Identity
		@param modulate If the parameter is null, then the default value is new Color(1, 1, 1, 1)
	**/
	@:native("CanvasItemAddMesh")
	public static overload function canvasItemAddMesh(item:godot.RID, mesh:godot.RID, transform:Nullable1<godot.Transform2D>, modulate:Nullable1<godot.Color>, texture:godot.RID):Void;

	/**		
		Adds a mesh command to the `godot.CanvasItem`'s draw commands.
		
		@param transform If the parameter is null, then the default value is Transform2D.Identity
		@param modulate If the parameter is null, then the default value is new Color(1, 1, 1, 1)
	**/
	@:native("CanvasItemAddMesh")
	public static overload function canvasItemAddMesh(item:godot.RID, mesh:godot.RID, transform:Nullable1<godot.Transform2D>, modulate:Nullable1<godot.Color>, texture:godot.RID, normalMap:godot.RID):Void;
	#end

	#if doc_gen
	/**		
		Adds a `godot.MultiMesh` to the `godot.CanvasItem`'s draw commands. Only affects its aabb at the moment.
	**/
	@:native("CanvasItemAddMultimesh")
	public static function canvasItemAddMultimesh(item:godot.RID, mesh:godot.RID, texture:godot.RID, ?normalMap:godot.RID):Void;
	#else
	/**		
		Adds a `godot.MultiMesh` to the `godot.CanvasItem`'s draw commands. Only affects its aabb at the moment.
	**/
	@:native("CanvasItemAddMultimesh")
	public static overload function canvasItemAddMultimesh(item:godot.RID, mesh:godot.RID, texture:godot.RID):Void;

	/**		
		Adds a `godot.MultiMesh` to the `godot.CanvasItem`'s draw commands. Only affects its aabb at the moment.
	**/
	@:native("CanvasItemAddMultimesh")
	public static overload function canvasItemAddMultimesh(item:godot.RID, mesh:godot.RID, texture:godot.RID, normalMap:godot.RID):Void;
	#end

	/**		
		Adds a particle system to the `godot.CanvasItem`'s draw commands.
	**/
	@:native("CanvasItemAddParticles")
	public static function canvasItemAddParticles(item:godot.RID, particles:godot.RID, texture:godot.RID, normalMap:godot.RID):Void;

	/**		
		Adds a `godot.Transform2D` command to the `godot.CanvasItem`'s draw commands.
		
		This sets the extra_matrix uniform when executed. This affects the later commands of the canvas item.
	**/
	@:native("CanvasItemAddSetTransform")
	public static function canvasItemAddSetTransform(item:godot.RID, transform:godot.Transform2D):Void;

	/**		
		If ignore is `true`, the VisualServer does not perform clipping.
	**/
	@:native("CanvasItemAddClipIgnore")
	public static function canvasItemAddClipIgnore(item:godot.RID, ignore:Bool):Void;

	/**		
		Sets if `godot.CanvasItem`'s children should be sorted by y-position.
	**/
	@:native("CanvasItemSetSortChildrenByY")
	public static function canvasItemSetSortChildrenByY(item:godot.RID, enabled:Bool):Void;

	/**		
		Sets the `godot.CanvasItem`'s Z index, i.e. its draw order (lower indexes are drawn first).
	**/
	@:native("CanvasItemSetZIndex")
	public static function canvasItemSetZIndex(item:godot.RID, zIndex:Int):Void;

	/**		
		If this is enabled, the Z index of the parent will be added to the children's Z index.
	**/
	@:native("CanvasItemSetZAsRelativeToParent")
	public static function canvasItemSetZAsRelativeToParent(item:godot.RID, enabled:Bool):Void;

	/**		
		Sets the `godot.CanvasItem` to copy a rect to the backbuffer.
	**/
	@:native("CanvasItemSetCopyToBackbuffer")
	public static function canvasItemSetCopyToBackbuffer(item:godot.RID, enabled:Bool, rect:godot.Rect2):Void;

	/**		
		Clears the `godot.CanvasItem` and removes all commands in it.
	**/
	@:native("CanvasItemClear")
	public static function canvasItemClear(item:godot.RID):Void;

	/**		
		Sets the index for the `godot.CanvasItem`.
	**/
	@:native("CanvasItemSetDrawIndex")
	public static function canvasItemSetDrawIndex(item:godot.RID, index:Int):Void;

	/**		
		Sets a new material to the `godot.CanvasItem`.
	**/
	@:native("CanvasItemSetMaterial")
	public static function canvasItemSetMaterial(item:godot.RID, material:godot.RID):Void;

	/**		
		Sets if the `godot.CanvasItem` uses its parent's material.
	**/
	@:native("CanvasItemSetUseParentMaterial")
	public static function canvasItemSetUseParentMaterial(item:godot.RID, enabled:Bool):Void;

	/**		
		Creates a canvas light and adds it to the VisualServer. It can be accessed with the RID that is returned. This RID will be used in all `canvas_light_*` VisualServer functions.
		
		Once finished with your RID, you will want to free the RID using the VisualServer's `godot.VisualServer.freeRid` static method.
	**/
	@:native("CanvasLightCreate")
	public static function canvasLightCreate():godot.RID;

	/**		
		Attaches the canvas light to the canvas. Removes it from its previous canvas.
	**/
	@:native("CanvasLightAttachToCanvas")
	public static function canvasLightAttachToCanvas(light:godot.RID, canvas:godot.RID):Void;

	/**		
		Enables or disables a canvas light.
	**/
	@:native("CanvasLightSetEnabled")
	public static function canvasLightSetEnabled(light:godot.RID, enabled:Bool):Void;

	/**		
		Sets the texture's scale factor of the light. Equivalent to `godot.Light2D.textureScale`.
	**/
	@:native("CanvasLightSetScale")
	public static function canvasLightSetScale(light:godot.RID, scale:Single):Void;

	/**		
		Sets the canvas light's `godot.Transform2D`.
	**/
	@:native("CanvasLightSetTransform")
	public static function canvasLightSetTransform(light:godot.RID, transform:godot.Transform2D):Void;

	/**		
		Sets texture to be used by light. Equivalent to `godot.Light2D.texture`.
	**/
	@:native("CanvasLightSetTexture")
	public static function canvasLightSetTexture(light:godot.RID, texture:godot.RID):Void;

	/**		
		Sets the offset of the light's texture. Equivalent to `godot.Light2D.offset`.
	**/
	@:native("CanvasLightSetTextureOffset")
	public static function canvasLightSetTextureOffset(light:godot.RID, offset:godot.Vector2):Void;

	/**		
		Sets the color for a light.
	**/
	@:native("CanvasLightSetColor")
	public static function canvasLightSetColor(light:godot.RID, color:godot.Color):Void;

	/**		
		Sets a canvas light's height.
	**/
	@:native("CanvasLightSetHeight")
	public static function canvasLightSetHeight(light:godot.RID, height:Single):Void;

	/**		
		Sets a canvas light's energy.
	**/
	@:native("CanvasLightSetEnergy")
	public static function canvasLightSetEnergy(light:godot.RID, energy:Single):Void;

	/**		
		Sets the Z range of objects that will be affected by this light. Equivalent to `godot.Light2D.rangeZMin` and `godot.Light2D.rangeZMax`.
	**/
	@:native("CanvasLightSetZRange")
	public static function canvasLightSetZRange(light:godot.RID, minZ:Int, maxZ:Int):Void;

	/**		
		The layer range that gets rendered with this light.
	**/
	@:native("CanvasLightSetLayerRange")
	public static function canvasLightSetLayerRange(light:godot.RID, minLayer:Int, maxLayer:Int):Void;

	/**		
		The light mask. See `godot.LightOccluder2D` for more information on light masks.
	**/
	@:native("CanvasLightSetItemCullMask")
	public static function canvasLightSetItemCullMask(light:godot.RID, mask:Int):Void;

	/**		
		The binary mask used to determine which layers this canvas light's shadows affects. See `godot.LightOccluder2D` for more information on light masks.
	**/
	@:native("CanvasLightSetItemShadowCullMask")
	public static function canvasLightSetItemShadowCullMask(light:godot.RID, mask:Int):Void;

	/**		
		The mode of the light, see `godot.VisualServer_CanvasLightMode` constants.
	**/
	@:native("CanvasLightSetMode")
	public static function canvasLightSetMode(light:godot.RID, mode:godot.VisualServer_CanvasLightMode):Void;

	/**		
		Enables or disables the canvas light's shadow.
	**/
	@:native("CanvasLightSetShadowEnabled")
	public static function canvasLightSetShadowEnabled(light:godot.RID, enabled:Bool):Void;

	/**		
		Sets the width of the shadow buffer, size gets scaled to the next power of two for this.
	**/
	@:native("CanvasLightSetShadowBufferSize")
	public static function canvasLightSetShadowBufferSize(light:godot.RID, size:Int):Void;

	/**		
		Sets the length of the shadow's gradient.
	**/
	@:native("CanvasLightSetShadowGradientLength")
	public static function canvasLightSetShadowGradientLength(light:godot.RID, length:Single):Void;

	/**		
		Sets the canvas light's shadow's filter, see `godot.VisualServer_CanvasLightShadowFilter` constants.
	**/
	@:native("CanvasLightSetShadowFilter")
	public static function canvasLightSetShadowFilter(light:godot.RID, filter:godot.VisualServer_CanvasLightShadowFilter):Void;

	/**		
		Sets the color of the canvas light's shadow.
	**/
	@:native("CanvasLightSetShadowColor")
	public static function canvasLightSetShadowColor(light:godot.RID, color:godot.Color):Void;

	/**		
		Smoothens the shadow. The lower, the smoother.
	**/
	@:native("CanvasLightSetShadowSmooth")
	public static function canvasLightSetShadowSmooth(light:godot.RID, smooth:Single):Void;

	/**		
		Creates a light occluder and adds it to the VisualServer. It can be accessed with the RID that is returned. This RID will be used in all `canvas_light_ocluder_*` VisualServer functions.
		
		Once finished with your RID, you will want to free the RID using the VisualServer's `godot.VisualServer.freeRid` static method.
	**/
	@:native("CanvasLightOccluderCreate")
	public static function canvasLightOccluderCreate():godot.RID;

	/**		
		Attaches a light occluder to the canvas. Removes it from its previous canvas.
	**/
	@:native("CanvasLightOccluderAttachToCanvas")
	public static function canvasLightOccluderAttachToCanvas(occluder:godot.RID, canvas:godot.RID):Void;

	/**		
		Enables or disables light occluder.
	**/
	@:native("CanvasLightOccluderSetEnabled")
	public static function canvasLightOccluderSetEnabled(occluder:godot.RID, enabled:Bool):Void;

	/**		
		Sets a light occluder's polygon.
	**/
	@:native("CanvasLightOccluderSetPolygon")
	public static function canvasLightOccluderSetPolygon(occluder:godot.RID, polygon:godot.RID):Void;

	/**		
		Sets a light occluder's `godot.Transform2D`.
	**/
	@:native("CanvasLightOccluderSetTransform")
	public static function canvasLightOccluderSetTransform(occluder:godot.RID, transform:godot.Transform2D):Void;

	/**		
		The light mask. See `godot.LightOccluder2D` for more information on light masks.
	**/
	@:native("CanvasLightOccluderSetLightMask")
	public static function canvasLightOccluderSetLightMask(occluder:godot.RID, mask:Int):Void;

	/**		
		Creates a new light occluder polygon and adds it to the VisualServer. It can be accessed with the RID that is returned. This RID will be used in all `canvas_occluder_polygon_*` VisualServer functions.
		
		Once finished with your RID, you will want to free the RID using the VisualServer's `godot.VisualServer.freeRid` static method.
	**/
	@:native("CanvasOccluderPolygonCreate")
	public static function canvasOccluderPolygonCreate():godot.RID;

	/**		
		Sets the shape of the occluder polygon.
	**/
	@:native("CanvasOccluderPolygonSetShape")
	public static function canvasOccluderPolygonSetShape(occluderPolygon:godot.RID, shape:HaxeArray<godot.Vector2>, closed:Bool):Void;

	/**		
		Sets the shape of the occluder polygon as lines.
	**/
	@:native("CanvasOccluderPolygonSetShapeAsLines")
	public static function canvasOccluderPolygonSetShapeAsLines(occluderPolygon:godot.RID, shape:HaxeArray<godot.Vector2>):Void;

	/**		
		Sets an occluder polygons cull mode. See `godot.VisualServer_CanvasOccluderPolygonCullMode` constants.
	**/
	@:native("CanvasOccluderPolygonSetCullMode")
	public static function canvasOccluderPolygonSetCullMode(occluderPolygon:godot.RID, mode:godot.VisualServer_CanvasOccluderPolygonCullMode):Void;

	/**		
		Sets margin size, where black bars (or images, if `godot.VisualServer.blackBarsSetImages` was used) are rendered.
	**/
	@:native("BlackBarsSetMargins")
	public static function blackBarsSetMargins(left:Int, top:Int, right:Int, bottom:Int):Void;

	/**		
		Sets images to be rendered in the window margin.
	**/
	@:native("BlackBarsSetImages")
	public static function blackBarsSetImages(left:godot.RID, top:godot.RID, right:godot.RID, bottom:godot.RID):Void;

	/**		
		Tries to free an object in the VisualServer.
	**/
	@:native("FreeRid")
	public static function freeRid(rid:godot.RID):Void;

	/**		
		Schedules a callback to the corresponding named `method` on `where` after a frame has been drawn.
		
		The callback method must use only 1 argument which will be called with `userdata`.
	**/
	@:native("RequestFrameDrawnCallback")
	public static function requestFrameDrawnCallback(where:godot.Object, method:std.String, userdata:Dynamic):Void;

	/**		
		Returns `true` if changes have been made to the VisualServer's data. `godot.VisualServer.draw` is usually called if this happens.
	**/
	@:native("HasChanged")
	public static function hasChanged():Bool;

	/**		
		Initializes the visual server. This function is called internally by platform-dependent code during engine initialization. If called from a running game, it will not do anything.
	**/
	@:native("Init")
	public static function init():Void;

	/**		
		Removes buffers and clears testcubes.
	**/
	@:native("Finish")
	public static function finish():Void;

	/**		
		Returns a certain information, see `godot.VisualServer_RenderInfo` for options.
	**/
	@:native("GetRenderInfo")
	public static function getRenderInfo(info:godot.VisualServer_RenderInfo):cs.types.UInt64;

	/**		
		Returns the name of the video adapter (e.g. "GeForce GTX 1080/PCIe/SSE2").
		
		Note: When running a headless or server binary, this function returns an empty string.
	**/
	@:native("GetVideoAdapterName")
	public static function getVideoAdapterName():std.String;

	/**		
		Returns the vendor of the video adapter (e.g. "NVIDIA Corporation").
		
		Note: When running a headless or server binary, this function returns an empty string.
	**/
	@:native("GetVideoAdapterVendor")
	public static function getVideoAdapterVendor():std.String;

	/**		
		Returns a mesh of a sphere with the given amount of horizontal and vertical subdivisions.
	**/
	@:native("MakeSphereMesh")
	public static function makeSphereMesh(latitudes:Int, longitudes:Int, radius:Single):godot.RID;

	/**		
		Returns the id of the test cube. Creates one if none exists.
	**/
	@:native("GetTestCube")
	public static function getTestCube():godot.RID;

	/**		
		Returns the id of the test texture. Creates one if none exists.
	**/
	@:native("GetTestTexture")
	public static function getTestTexture():godot.RID;

	/**		
		Returns the id of a white texture. Creates one if none exists.
	**/
	@:native("GetWhiteTexture")
	public static function getWhiteTexture():godot.RID;

	#if doc_gen
	/**		
		Sets a boot image. The color defines the background color. If `scale` is `true`, the image will be scaled to fit the screen size. If `use_filter` is `true`, the image will be scaled with linear interpolation. If `use_filter` is `false`, the image will be scaled with nearest-neighbor interpolation.
	**/
	@:native("SetBootImage")
	public static function setBootImage(image:godot.Image, color:godot.Color, scale:Bool, ?useFilter:Bool):Void;
	#else
	/**		
		Sets a boot image. The color defines the background color. If `scale` is `true`, the image will be scaled to fit the screen size. If `use_filter` is `true`, the image will be scaled with linear interpolation. If `use_filter` is `false`, the image will be scaled with nearest-neighbor interpolation.
	**/
	@:native("SetBootImage")
	public static overload function setBootImage(image:godot.Image, color:godot.Color, scale:Bool):Void;

	/**		
		Sets a boot image. The color defines the background color. If `scale` is `true`, the image will be scaled to fit the screen size. If `use_filter` is `true`, the image will be scaled with linear interpolation. If `use_filter` is `false`, the image will be scaled with nearest-neighbor interpolation.
	**/
	@:native("SetBootImage")
	public static overload function setBootImage(image:godot.Image, color:godot.Color, scale:Bool, useFilter:Bool):Void;
	#end

	/**		
		Sets the default clear color which is used when a specific clear color has not been selected.
	**/
	@:native("SetDefaultClearColor")
	public static function setDefaultClearColor(color:godot.Color):Void;

	/**		
		Sets the scale to apply to the passage of time for the shaders' `TIME` builtin.
		
		The default value is `1.0`, which means `TIME` will count the real time as it goes by, without narrowing or stretching it.
	**/
	@:native("SetShaderTimeScale")
	public static function setShaderTimeScale(scale:Single):Void;

	/**		
		Not yet implemented. Always returns `false`.
	**/
	@:native("HasFeature")
	public static function hasFeature(feature:godot.VisualServer_Features):Bool;

	/**		
		Returns `true` if the OS supports a certain feature. Features might be `s3tc`, `etc`, `etc2`, `pvrtc` and `skinning_fallback`.
		
		When rendering with GLES2, returns `true` with `skinning_fallback` in case the hardware doesn't support the default GPU skinning process.
	**/
	@:native("HasOsFeature")
	public static function hasOsFeature(feature:std.String):Bool;

	/**		
		If `true`, the engine will generate wireframes for use with the wireframe debug mode.
	**/
	@:native("SetDebugGenerateWireframes")
	public static function setDebugGenerateWireframes(generate:Bool):Void;

	@:native("IsRenderLoopEnabled")
	public static function isRenderLoopEnabled():Bool;

	@:native("SetRenderLoopEnabled")
	public static function setRenderLoopEnabled(enabled:Bool):Void;
}
