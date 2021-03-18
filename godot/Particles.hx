// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
3D particle node used to create a variety of particle systems and effects. `godot.Particles` features an emitter that generates some number of particles at a given rate.

Use the `process_material` property to add a `godot.ParticlesMaterial` to configure particle appearance and behavior. Alternatively, you can add a `godot.ShaderMaterial` which will be applied to all particles.
**/
@:libType
@:csNative
@:native("Godot.Particles")
@:autoBuild(godot.Godot.buildUserClass())
extern class Particles extends godot.GeometryInstance {
	/**		
		`godot.Mesh` that is drawn for the fourth draw pass.
	**/
	@:native("DrawPass4")
	public var drawPass4:godot.Mesh;

	/**		
		`godot.Mesh` that is drawn for the third draw pass.
	**/
	@:native("DrawPass3")
	public var drawPass3:godot.Mesh;

	/**		
		`godot.Mesh` that is drawn for the second draw pass.
	**/
	@:native("DrawPass2")
	public var drawPass2:godot.Mesh;

	/**		
		`godot.Mesh` that is drawn for the first draw pass.
	**/
	@:native("DrawPass1")
	public var drawPass1:godot.Mesh;

	/**		
		The number of draw passes when rendering particles.
	**/
	@:native("DrawPasses")
	public var drawPasses:Int;

	/**		
		`godot.Material` for processing particles. Can be a `godot.ParticlesMaterial` or a `godot.ShaderMaterial`.
	**/
	@:native("ProcessMaterial")
	public var processMaterial:godot.Material;

	/**		
		Particle draw order. Uses `godot.Particles_DrawOrderEnum` values.
	**/
	@:native("DrawOrder")
	public var drawOrder:godot.Particles_DrawOrderEnum;

	/**		
		If `true`, particles use the parent node's coordinate space. If `false`, they use global coordinates.
	**/
	@:native("LocalCoords")
	public var localCoords:Bool;

	/**		
		The `godot.AABB` that determines the area of the world part of which needs to be visible on screen for the particle system to be active.
		
		Note: If the `godot.ParticlesMaterial` in use is configured to cast shadows, you may want to enlarge this AABB to ensure the shadow is updated when particles are off-screen.
	**/
	@:native("VisibilityAabb")
	public var visibilityAabb:godot.AABB;

	/**		
		If `true`, results in fractional delta calculation which has a smoother particles display effect.
	**/
	@:native("FractDelta")
	public var fractDelta:Bool;

	/**		
		The particle system's frame rate is fixed to a value. For instance, changing the value to 2 will make the particles render at 2 frames per second. Note this does not slow down the simulation of the particle system itself.
	**/
	@:native("FixedFps")
	public var fixedFps:Int;

	/**		
		Emission randomness ratio.
	**/
	@:native("Randomness")
	public var randomness:Single;

	/**		
		Time ratio between each emission. If `0`, particles are emitted continuously. If `1`, all particles are emitted simultaneously.
	**/
	@:native("Explosiveness")
	public var explosiveness:Single;

	/**		
		Speed scaling ratio. A value of `0` can be used to pause the particles.
	**/
	@:native("SpeedScale")
	public var speedScale:Single;

	/**		
		Amount of time to preprocess the particles before animation starts. Lets you start the animation some time after particles have started emitting.
	**/
	@:native("Preprocess")
	public var preprocess:Single;

	/**		
		If `true`, only `amount` particles will be emitted.
	**/
	@:native("OneShot")
	public var oneShot:Bool;

	/**		
		Amount of time each particle will exist.
	**/
	@:native("Lifetime")
	public var lifetime:Single;

	/**		
		Number of particles to emit.
	**/
	@:native("Amount")
	public var amount:Int;

	/**		
		If `true`, particles are being emitted.
	**/
	@:native("Emitting")
	public var emitting:Bool;

	/**		
		Maximum number of draw passes supported.
	**/
	@:native("MaxDrawPasses")
	public static var MAX_DRAW_PASSES(default, never):Int;

	@:native("new")
	public function new():Void;

	@:native("SetEmitting")
	public function setEmitting(emitting:Bool):Void;

	@:native("SetAmount")
	public function setAmount(amount:Int):Void;

	@:native("SetLifetime")
	public function setLifetime(secs:Single):Void;

	@:native("SetOneShot")
	public function setOneShot(enable:Bool):Void;

	@:native("SetPreProcessTime")
	public function setPreProcessTime(secs:Single):Void;

	@:native("SetExplosivenessRatio")
	public function setExplosivenessRatio(ratio:Single):Void;

	@:native("SetRandomnessRatio")
	public function setRandomnessRatio(ratio:Single):Void;

	@:native("SetVisibilityAabb")
	public function setVisibilityAabb(aabb:godot.AABB):Void;

	@:native("SetUseLocalCoordinates")
	public function setUseLocalCoordinates(enable:Bool):Void;

	@:native("SetFixedFps")
	public function setFixedFps(fps:Int):Void;

	@:native("SetFractionalDelta")
	public function setFractionalDelta(enable:Bool):Void;

	@:native("SetProcessMaterial")
	public function setProcessMaterial(material:godot.Material):Void;

	@:native("SetSpeedScale")
	public function setSpeedScale(scale:Single):Void;

	@:native("IsEmitting")
	public function isEmitting():Bool;

	@:native("GetAmount")
	public function getAmount():Int;

	@:native("GetLifetime")
	public function getLifetime():Single;

	@:native("GetOneShot")
	public function getOneShot():Bool;

	@:native("GetPreProcessTime")
	public function getPreProcessTime():Single;

	@:native("GetExplosivenessRatio")
	public function getExplosivenessRatio():Single;

	@:native("GetRandomnessRatio")
	public function getRandomnessRatio():Single;

	@:native("GetVisibilityAabb")
	public function getVisibilityAabb():godot.AABB;

	@:native("GetUseLocalCoordinates")
	public function getUseLocalCoordinates():Bool;

	@:native("GetFixedFps")
	public function getFixedFps():Int;

	@:native("GetFractionalDelta")
	public function getFractionalDelta():Bool;

	@:native("GetProcessMaterial")
	public function getProcessMaterial():godot.Material;

	@:native("GetSpeedScale")
	public function getSpeedScale():Single;

	@:native("SetDrawOrder")
	public function setDrawOrder(order:godot.Particles_DrawOrderEnum):Void;

	@:native("GetDrawOrder")
	public function getDrawOrder():godot.Particles_DrawOrderEnum;

	@:native("SetDrawPasses")
	public function setDrawPasses(passes:Int):Void;

	/**		
		Sets the `godot.Mesh` that is drawn at index `pass`.
	**/
	@:native("SetDrawPassMesh")
	public function setDrawPassMesh(pass:Int, mesh:godot.Mesh):Void;

	@:native("GetDrawPasses")
	public function getDrawPasses():Int;

	/**		
		Returns the `godot.Mesh` that is drawn at index `pass`.
	**/
	@:native("GetDrawPassMesh")
	public function getDrawPassMesh(pass:Int):godot.Mesh;

	/**		
		Restarts the particle emission, clearing existing particles.
	**/
	@:native("Restart")
	public function restart():Void;

	/**		
		Returns the axis-aligned bounding box that contains all the particles that are active in the current frame.
	**/
	@:native("CaptureAabb")
	public function captureAabb():godot.AABB;
}
