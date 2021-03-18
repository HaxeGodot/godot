// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.Performance.Monitor")
@:csNative
extern enum Performance_Monitor {
	/**		
		Number of frames per second.
	**/
	TimeFps;

	/**		
		Time it took to complete one frame, in seconds.
	**/
	TimeProcess;

	/**		
		Time it took to complete one physics frame, in seconds.
	**/
	TimePhysicsProcess;

	/**		
		Static memory currently used, in bytes. Not available in release builds.
	**/
	MemoryStatic;

	/**		
		Dynamic memory currently used, in bytes. Not available in release builds.
	**/
	MemoryDynamic;

	/**		
		Available static memory. Not available in release builds.
	**/
	MemoryStaticMax;

	/**		
		Available dynamic memory. Not available in release builds.
	**/
	MemoryDynamicMax;

	/**		
		Largest amount of memory the message queue buffer has used, in bytes. The message queue is used for deferred functions calls and notifications.
	**/
	MemoryMessageBufferMax;

	/**		
		Number of objects currently instanced (including nodes).
	**/
	ObjectCount;

	/**		
		Number of resources currently used.
	**/
	ObjectResourceCount;

	/**		
		Number of nodes currently instanced in the scene tree. This also includes the root node.
	**/
	ObjectNodeCount;

	/**		
		Number of orphan nodes, i.e. nodes which are not parented to a node of the scene tree.
	**/
	ObjectOrphanNodeCount;

	/**		
		3D objects drawn per frame.
	**/
	RenderObjectsInFrame;

	/**		
		Vertices drawn per frame. 3D only.
	**/
	RenderVerticesInFrame;

	/**		
		Material changes per frame. 3D only.
	**/
	RenderMaterialChangesInFrame;

	/**		
		Shader changes per frame. 3D only.
	**/
	RenderShaderChangesInFrame;

	/**		
		Render surface changes per frame. 3D only.
	**/
	RenderSurfaceChangesInFrame;

	/**		
		Draw calls per frame. 3D only.
	**/
	RenderDrawCallsInFrame;

	/**		
		Items or joined items drawn per frame.
	**/
	Render2dItemsInFrame;

	/**		
		Draw calls per frame.
	**/
	Render2dDrawCallsInFrame;

	/**		
		The amount of video memory used, i.e. texture and vertex memory combined.
	**/
	RenderVideoMemUsed;

	/**		
		The amount of texture memory used.
	**/
	RenderTextureMemUsed;

	/**		
		The amount of vertex memory used.
	**/
	RenderVertexMemUsed;

	/**		
		Unimplemented in the GLES2 and GLES3 rendering backends, always returns 0.
	**/
	RenderUsageVideoMemTotal;

	/**		
		Number of active `godot.RigidBody2D` nodes in the game.
	**/
	Physics2dActiveObjects;

	/**		
		Number of collision pairs in the 2D physics engine.
	**/
	Physics2dCollisionPairs;

	/**		
		Number of islands in the 2D physics engine.
	**/
	Physics2dIslandCount;

	/**		
		Number of active `godot.RigidBody` and `godot.VehicleBody` nodes in the game.
	**/
	Physics3dActiveObjects;

	/**		
		Number of collision pairs in the 3D physics engine.
	**/
	Physics3dCollisionPairs;

	/**		
		Number of islands in the 3D physics engine.
	**/
	Physics3dIslandCount;

	/**		
		Output latency of the `godot.AudioServer`.
	**/
	AudioOutputLatency;

	/**		
		Represents the size of the `godot.Performance_Monitor` enum.
	**/
	MonitorMax;
}
