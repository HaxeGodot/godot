// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
CPU-based 2D particle node used to create a variety of particle systems and effects.

See also `godot.Particles2D`, which provides the same functionality with hardware acceleration, but may not run on older devices.
**/
@:libType
@:csNative
@:native("Godot.CPUParticles2D")
@:autoBuild(godot.Godot.buildUserClass())
extern class CPUParticles2D extends godot.Node2D {
	/**		
		Each particle's animation offset will vary along this `godot.Curve`.
	**/
	@:native("AnimOffsetCurve")
	public var animOffsetCurve:godot.Curve;

	/**		
		Animation offset randomness ratio.
	**/
	@:native("AnimOffsetRandom")
	public var animOffsetRandom:Single;

	/**		
		Particle animation offset.
	**/
	@:native("AnimOffset")
	public var animOffset:Single;

	/**		
		Each particle's animation speed will vary along this `godot.Curve`.
	**/
	@:native("AnimSpeedCurve")
	public var animSpeedCurve:godot.Curve;

	/**		
		Animation speed randomness ratio.
	**/
	@:native("AnimSpeedRandom")
	public var animSpeedRandom:Single;

	/**		
		Particle animation speed.
	**/
	@:native("AnimSpeed")
	public var animSpeed:Single;

	/**		
		Each particle's hue will vary along this `godot.Curve`.
	**/
	@:native("HueVariationCurve")
	public var hueVariationCurve:godot.Curve;

	/**		
		Hue variation randomness ratio.
	**/
	@:native("HueVariationRandom")
	public var hueVariationRandom:Single;

	/**		
		Initial hue variation applied to each particle.
	**/
	@:native("HueVariation")
	public var hueVariation:Single;

	/**		
		Each particle's color will vary along this `godot.Gradient`.
	**/
	@:native("ColorRamp")
	public var colorRamp:godot.Gradient;

	/**		
		Each particle's initial color. If `godot.CPUParticles2D.texture` is defined, it will be multiplied by this color.
	**/
	@:native("Color")
	public var color:godot.Color;

	/**		
		Each particle's scale will vary along this `godot.Curve`.
	**/
	@:native("ScaleAmountCurve")
	public var scaleAmountCurve:godot.Curve;

	/**		
		Scale randomness ratio.
	**/
	@:native("ScaleAmountRandom")
	public var scaleAmountRandom:Single;

	/**		
		Initial scale applied to each particle.
	**/
	@:native("ScaleAmount")
	public var scaleAmount:Single;

	/**		
		Each particle's rotation will be animated along this `godot.Curve`.
	**/
	@:native("AngleCurve")
	public var angleCurve:godot.Curve;

	/**		
		Rotation randomness ratio.
	**/
	@:native("AngleRandom")
	public var angleRandom:Single;

	/**		
		Initial rotation applied to each particle, in degrees.
	**/
	@:native("Angle")
	public var angle:Single;

	/**		
		Damping will vary along this `godot.Curve`.
	**/
	@:native("DampingCurve")
	public var dampingCurve:godot.Curve;

	/**		
		Damping randomness ratio.
	**/
	@:native("DampingRandom")
	public var dampingRandom:Single;

	/**		
		The rate at which particles lose velocity.
	**/
	@:native("Damping")
	public var damping:Single;

	/**		
		Each particle's tangential acceleration will vary along this `godot.Curve`.
	**/
	@:native("TangentialAccelCurve")
	public var tangentialAccelCurve:godot.Curve;

	/**		
		Tangential acceleration randomness ratio.
	**/
	@:native("TangentialAccelRandom")
	public var tangentialAccelRandom:Single;

	/**		
		Tangential acceleration applied to each particle. Tangential acceleration is perpendicular to the particle's velocity giving the particles a swirling motion.
	**/
	@:native("TangentialAccel")
	public var tangentialAccel:Single;

	/**		
		Each particle's radial acceleration will vary along this `godot.Curve`.
	**/
	@:native("RadialAccelCurve")
	public var radialAccelCurve:godot.Curve;

	/**		
		Radial acceleration randomness ratio.
	**/
	@:native("RadialAccelRandom")
	public var radialAccelRandom:Single;

	/**		
		Radial acceleration applied to each particle. Makes particle accelerate away from origin.
	**/
	@:native("RadialAccel")
	public var radialAccel:Single;

	/**		
		Each particle's linear acceleration will vary along this `godot.Curve`.
	**/
	@:native("LinearAccelCurve")
	public var linearAccelCurve:godot.Curve;

	/**		
		Linear acceleration randomness ratio.
	**/
	@:native("LinearAccelRandom")
	public var linearAccelRandom:Single;

	/**		
		Linear acceleration applied to each particle in the direction of motion.
	**/
	@:native("LinearAccel")
	public var linearAccel:Single;

	/**		
		Each particle's orbital velocity will vary along this `godot.Curve`.
	**/
	@:native("OrbitVelocityCurve")
	public var orbitVelocityCurve:godot.Curve;

	/**		
		Orbital velocity randomness ratio.
	**/
	@:native("OrbitVelocityRandom")
	public var orbitVelocityRandom:Single;

	/**		
		Orbital velocity applied to each particle. Makes the particles circle around origin. Specified in number of full rotations around origin per second.
	**/
	@:native("OrbitVelocity")
	public var orbitVelocity:Single;

	/**		
		Each particle's angular velocity will vary along this `godot.Curve`.
	**/
	@:native("AngularVelocityCurve")
	public var angularVelocityCurve:godot.Curve;

	/**		
		Angular velocity randomness ratio.
	**/
	@:native("AngularVelocityRandom")
	public var angularVelocityRandom:Single;

	/**		
		Initial angular velocity applied to each particle. Sets the speed of rotation of the particle.
	**/
	@:native("AngularVelocity")
	public var angularVelocity:Single;

	/**		
		Initial velocity randomness ratio.
	**/
	@:native("InitialVelocityRandom")
	public var initialVelocityRandom:Single;

	/**		
		Initial velocity magnitude for each particle. Direction comes from `godot.CPUParticles2D.spread` and the node's orientation.
	**/
	@:native("InitialVelocity")
	public var initialVelocity:Single;

	/**		
		Gravity applied to every particle.
	**/
	@:native("Gravity")
	public var gravity:godot.Vector2;

	/**		
		Each particle's initial direction range from `+spread` to `-spread` degrees.
	**/
	@:native("Spread")
	public var spread:Single;

	/**		
		Unit vector specifying the particles' emission direction.
	**/
	@:native("Direction")
	public var direction:godot.Vector2;

	/**		
		Align Y axis of particle with the direction of its velocity.
	**/
	@:native("FlagAlignY")
	public var flagAlignY:Bool;

	/**		
		Sets the `godot.Color`s to modulate particles by when using  or .
	**/
	@:native("EmissionColors")
	public var emissionColors:cs.NativeArray<godot.Color>;

	/**		
		Sets the direction the particles will be emitted in when using .
	**/
	@:native("EmissionNormals")
	public var emissionNormals:cs.NativeArray<godot.Vector2>;

	/**		
		Sets the initial positions to spawn particles when using  or .
	**/
	@:native("EmissionPoints")
	public var emissionPoints:cs.NativeArray<godot.Vector2>;

	/**		
		The rectangle's extents if `godot.CPUParticles2D.emissionShape` is set to .
	**/
	@:native("EmissionRectExtents")
	public var emissionRectExtents:godot.Vector2;

	/**		
		The sphere's radius if `godot.CPUParticles2D.emissionShape` is set to .
	**/
	@:native("EmissionSphereRadius")
	public var emissionSphereRadius:Single;

	/**		
		Particles will be emitted inside this region. See `godot.CPUParticles2D_EmissionShapeEnum` for possible values.
	**/
	@:native("EmissionShape")
	public var emissionShape:godot.CPUParticles2D_EmissionShapeEnum;

	/**		
		Normal map to be used for the `godot.CPUParticles2D.texture` property.
		
		Note: Godot expects the normal map to use X+, Y-, and Z+ coordinates. See [http://wiki.polycount.com/wiki/Normal_Map_Technical_Details#Common_Swizzle_Coordinates](this page) for a comparison of normal map coordinates expected by popular engines.
	**/
	@:native("Normalmap")
	public var normalmap:godot.Texture;

	/**		
		Particle texture. If `null`, particles will be squares.
	**/
	@:native("Texture")
	public var texture:godot.Texture;

	/**		
		Particle draw order. Uses `godot.CPUParticles2D_DrawOrderEnum` values.
	**/
	@:native("DrawOrder")
	public var drawOrder:godot.CPUParticles2D_DrawOrderEnum;

	/**		
		If `true`, particles use the parent node's coordinate space. If `false`, they use global coordinates.
	**/
	@:native("LocalCoords")
	public var localCoords:Bool;

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
		Particle lifetime randomness ratio.
	**/
	@:native("LifetimeRandomness")
	public var lifetimeRandomness:Single;

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
		Amount of time each particle will exist.
	**/
	@:native("Lifetime")
	public var lifetime:Single;

	/**		
		Number of particles emitted in one emission cycle.
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
	public function setOneShot(enable:Bool):Void;

	@:native("SetPreProcessTime")
	public function setPreProcessTime(secs:Single):Void;

	@:native("SetExplosivenessRatio")
	public function setExplosivenessRatio(ratio:Single):Void;

	@:native("SetRandomnessRatio")
	public function setRandomnessRatio(ratio:Single):Void;

	@:native("SetLifetimeRandomness")
	public function setLifetimeRandomness(random:Single):Void;

	@:native("SetUseLocalCoordinates")
	public function setUseLocalCoordinates(enable:Bool):Void;

	@:native("SetFixedFps")
	public function setFixedFps(fps:Int):Void;

	@:native("SetFractionalDelta")
	public function setFractionalDelta(enable:Bool):Void;

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

	@:native("GetLifetimeRandomness")
	public function getLifetimeRandomness():Single;

	@:native("GetUseLocalCoordinates")
	public function getUseLocalCoordinates():Bool;

	@:native("GetFixedFps")
	public function getFixedFps():Int;

	@:native("GetFractionalDelta")
	public function getFractionalDelta():Bool;

	@:native("GetSpeedScale")
	public function getSpeedScale():Single;

	@:native("SetDrawOrder")
	public function setDrawOrder(order:godot.CPUParticles2D_DrawOrderEnum):Void;

	@:native("GetDrawOrder")
	public function getDrawOrder():godot.CPUParticles2D_DrawOrderEnum;

	@:native("SetTexture")
	public function setTexture(texture:godot.Texture):Void;

	@:native("GetTexture")
	public function getTexture():godot.Texture;

	@:native("SetNormalmap")
	public function setNormalmap(normalmap:godot.Texture):Void;

	@:native("GetNormalmap")
	public function getNormalmap():godot.Texture;

	/**		
		Restarts the particle emitter.
	**/
	@:native("Restart")
	public function restart():Void;

	@:native("SetDirection")
	public function setDirection(direction:godot.Vector2):Void;

	@:native("GetDirection")
	public function getDirection():godot.Vector2;

	@:native("SetSpread")
	public function setSpread(degrees:Single):Void;

	@:native("GetSpread")
	public function getSpread():Single;

	/**		
		Sets the base value of the parameter specified by `godot.CPUParticles2D_Parameter`.
	**/
	@:native("SetParam")
	public function setParam(param:godot.CPUParticles2D_Parameter, value:Single):Void;

	/**		
		Returns the base value of the parameter specified by `godot.CPUParticles2D_Parameter`.
	**/
	@:native("GetParam")
	public function getParam(param:godot.CPUParticles2D_Parameter):Single;

	/**		
		Sets the randomness factor of the parameter specified by `godot.CPUParticles2D_Parameter`.
	**/
	@:native("SetParamRandomness")
	public function setParamRandomness(param:godot.CPUParticles2D_Parameter, randomness:Single):Void;

	/**		
		Returns the randomness factor of the parameter specified by `godot.CPUParticles2D_Parameter`.
	**/
	@:native("GetParamRandomness")
	public function getParamRandomness(param:godot.CPUParticles2D_Parameter):Single;

	/**		
		Sets the `godot.Curve` of the parameter specified by `godot.CPUParticles2D_Parameter`.
	**/
	@:native("SetParamCurve")
	public function setParamCurve(param:godot.CPUParticles2D_Parameter, curve:godot.Curve):Void;

	/**		
		Returns the `godot.Curve` of the parameter specified by `godot.CPUParticles2D_Parameter`.
	**/
	@:native("GetParamCurve")
	public function getParamCurve(param:godot.CPUParticles2D_Parameter):godot.Curve;

	@:native("SetColor")
	public function setColor(color:godot.Color):Void;

	@:native("GetColor")
	public function getColor():godot.Color;

	@:native("SetColorRamp")
	public function setColorRamp(ramp:godot.Gradient):Void;

	@:native("GetColorRamp")
	public function getColorRamp():godot.Gradient;

	/**		
		Enables or disables the given flag (see `godot.CPUParticles2D_Flags` for options).
	**/
	@:native("SetParticleFlag")
	public function setParticleFlag(flag:godot.CPUParticles2D_Flags, enable:Bool):Void;

	/**		
		Returns the enabled state of the given flag (see `godot.CPUParticles2D_Flags` for options).
	**/
	@:native("GetParticleFlag")
	public function getParticleFlag(flag:godot.CPUParticles2D_Flags):Bool;

	@:native("SetEmissionShape")
	public function setEmissionShape(shape:godot.CPUParticles2D_EmissionShapeEnum):Void;

	@:native("GetEmissionShape")
	public function getEmissionShape():godot.CPUParticles2D_EmissionShapeEnum;

	@:native("SetEmissionSphereRadius")
	public function setEmissionSphereRadius(radius:Single):Void;

	@:native("GetEmissionSphereRadius")
	public function getEmissionSphereRadius():Single;

	@:native("SetEmissionRectExtents")
	public function setEmissionRectExtents(extents:godot.Vector2):Void;

	@:native("GetEmissionRectExtents")
	public function getEmissionRectExtents():godot.Vector2;

	@:native("SetEmissionPoints")
	public function setEmissionPoints(array:haxe.Rest<godot.Vector2>):Void;

	@:native("GetEmissionPoints")
	public function getEmissionPoints():cs.NativeArray<godot.Vector2>;

	@:native("SetEmissionNormals")
	public function setEmissionNormals(array:haxe.Rest<godot.Vector2>):Void;

	@:native("GetEmissionNormals")
	public function getEmissionNormals():cs.NativeArray<godot.Vector2>;

	@:native("SetEmissionColors")
	public function setEmissionColors(array:haxe.Rest<godot.Color>):Void;

	@:native("GetEmissionColors")
	public function getEmissionColors():cs.NativeArray<godot.Color>;

	@:native("GetGravity")
	public function getGravity():godot.Vector2;

	@:native("SetGravity")
	public function setGravity(accelVec:godot.Vector2):Void;

	/**		
		Sets this node's properties to match a given `godot.Particles2D` node with an assigned `godot.ParticlesMaterial`.
	**/
	@:native("ConvertFromParticles")
	public function convertFromParticles(particles:godot.Node):Void;
}
