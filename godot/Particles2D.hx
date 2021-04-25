// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
2D particle node used to create a variety of particle systems and effects. `godot.Particles2D` features an emitter that generates some number of particles at a given rate.

Use the `process_material` property to add a `godot.ParticlesMaterial` to configure particle appearance and behavior. Alternatively, you can add a `godot.ShaderMaterial` which will be applied to all particles.

Note: `godot.Particles2D` only work when using the GLES3 renderer. If using the GLES2 renderer, use `godot.CPUParticles2D` instead. You can convert `godot.Particles2D` to `godot.CPUParticles2D` by selecting the node, clicking the Particles menu at the top of the 2D editor viewport then choosing Convert to CPUParticles2D.

Note: After working on a Particles node, remember to update its `godot.Particles2D.visibilityRect` by selecting it, clicking the Particles menu at the top of the 2D editor viewport then choose Generate Visibility Rect. Otherwise, particles may suddenly disappear depending on the camera position and angle.

Note: Unlike `godot.CPUParticles2D`, `godot.Particles2D` currently ignore the texture region defined in `godot.AtlasTexture`s.
**/
@:libType
@:csNative
@:native("Godot.Particles2D")
@:autoBuild(godot.Godot.buildUserClass())
extern class Particles2D extends godot.Node2D {
	/**		
		Normal map to be used for the `godot.Particles2D.texture` property.
		
		Note: Godot expects the normal map to use X+, Y-, and Z+ coordinates. See [http://wiki.polycount.com/wiki/Normal_Map_Technical_Details#Common_Swizzle_Coordinates](this page) for a comparison of normal map coordinates expected by popular engines.
	**/
	@:native("NormalMap")
	public var normalMap:godot.Texture;

	/**		
		Particle texture. If `null`, particles will be squares.
	**/
	@:native("Texture")
	public var texture:godot.Texture;

	/**		
		`godot.Material` for processing particles. Can be a `godot.ParticlesMaterial` or a `godot.ShaderMaterial`.
	**/
	@:native("ProcessMaterial")
	public var processMaterial:godot.Material;

	/**		
		Particle draw order. Uses `godot.Particles2D_DrawOrderEnum` values.
	**/
	@:native("DrawOrder")
	public var drawOrder:godot.Particles2D_DrawOrderEnum;

	/**		
		If `true`, particles use the parent node's coordinate space. If `false`, they use global coordinates.
	**/
	@:native("LocalCoords")
	public var localCoords:Bool;

	/**		
		The `godot.Rect2` that determines the node's region which needs to be visible on screen for the particle system to be active.
		
		Grow the rect if particles suddenly appear/disappear when the node enters/exits the screen. The `godot.Rect2` can be grown via code or with the Particles → Generate Visibility Rect editor tool.
	**/
	@:native("VisibilityRect")
	public var visibilityRect:godot.Rect2;

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
		Emission lifetime randomness ratio.
	**/
	@:native("Randomness")
	public var randomness:Single;

	/**		
		How rapidly particles in an emission cycle are emitted. If greater than `0`, there will be a gap in emissions before the next cycle begins.
	**/
	@:native("Explosiveness")
	public var explosiveness:Single;

	/**		
		Particle system's running speed scaling ratio. A value of `0` can be used to pause the particles.
	**/
	@:native("SpeedScale")
	public var speedScale:Single;

	/**		
		Particle system starts as if it had already run for this many seconds.
	**/
	@:native("Preprocess")
	public var preprocess:Single;

	/**		
		If `true`, only one emission cycle occurs. If set `true` during a cycle, emission will stop at the cycle's end.
	**/
	@:native("OneShot")
	public var oneShot:Bool;

	/**		
		The amount of time each particle will exist (in seconds).
	**/
	@:native("Lifetime")
	public var lifetime:Single;

	/**		
		The number of particles emitted in one emission cycle (corresponding to the `godot.Particles2D.lifetime`).
		
		Note: Changing `godot.Particles2D.amount` will reset the particle emission, therefore removing all particles that were already emitted before changing `godot.Particles2D.amount`.
	**/
	@:native("Amount")
	public var amount:Int;

	/**		
		If `true`, particles are being emitted.
	**/
	@:native("Emitting")
	public var emitting:Bool;

	@:native("new")
	public function new():Void;

	@:native("SetEmitting")
	public function setEmitting(emitting:Bool):Void;

	@:native("SetAmount")
	public function setAmount(amount:Int):Void;

	@:native("SetLifetime")
	public function setLifetime(secs:Single):Void;

	@:native("SetOneShot")
	public function setOneShot(secs:Bool):Void;

	@:native("SetPreProcessTime")
	public function setPreProcessTime(secs:Single):Void;

	@:native("SetExplosivenessRatio")
	public function setExplosivenessRatio(ratio:Single):Void;

	@:native("SetRandomnessRatio")
	public function setRandomnessRatio(ratio:Single):Void;

	@:native("SetVisibilityRect")
	public function setVisibilityRect(visibilityRect:godot.Rect2):Void;

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

	@:native("GetVisibilityRect")
	public function getVisibilityRect():godot.Rect2;

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
	public function setDrawOrder(order:godot.Particles2D_DrawOrderEnum):Void;

	@:native("GetDrawOrder")
	public function getDrawOrder():godot.Particles2D_DrawOrderEnum;

	@:native("SetTexture")
	public function setTexture(texture:godot.Texture):Void;

	@:native("GetTexture")
	public function getTexture():godot.Texture;

	@:native("SetNormalMap")
	public function setNormalMap(texture:godot.Texture):Void;

	@:native("GetNormalMap")
	public function getNormalMap():godot.Texture;

	/**		
		Returns a rectangle containing the positions of all existing particles.
	**/
	@:native("CaptureRect")
	public function captureRect():godot.Rect2;

	/**		
		Restarts all the existing particles.
	**/
	@:native("Restart")
	public function restart():Void;
}
