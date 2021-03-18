// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
ParticlesMaterial defines particle properties and behavior. It is used in the `process_material` of `godot.Particles` and `godot.Particles2D` emitter nodes.

Some of this material's properties are applied to each particle when emitted, while others can have a `godot.CurveTexture` applied to vary values over the lifetime of the particle.

When a randomness ratio is applied to a property it is used to scale that property by a random amount. The random ratio is used to interpolate between `1.0` and a random number less than one, the result is multiplied by the property to obtain the randomized property. For example a random ratio of `0.4` would scale the original property between `0.4-1.0` of its original value.
**/
@:libType
@:csNative
@:native("Godot.ParticlesMaterial")
@:autoBuild(godot.Godot.buildUserClass())
extern class ParticlesMaterial extends godot.Material {
	/**		
		Each particle's animation offset will vary along this `godot.CurveTexture`.
	**/
	@:native("AnimOffsetCurve")
	public var animOffsetCurve:godot.Texture;

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
		Each particle's animation speed will vary along this `godot.CurveTexture`.
	**/
	@:native("AnimSpeedCurve")
	public var animSpeedCurve:godot.Texture;

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
		Each particle's hue will vary along this `godot.CurveTexture`.
	**/
	@:native("HueVariationCurve")
	public var hueVariationCurve:godot.Texture;

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
		Each particle's color will vary along this `godot.GradientTexture`.
	**/
	@:native("ColorRamp")
	public var colorRamp:godot.Texture;

	/**		
		Each particle's initial color. If the `godot.Particles2D`'s `texture` is defined, it will be multiplied by this color. To have particle display color in a `godot.SpatialMaterial` make sure to set `godot.SpatialMaterial.vertexColorUseAsAlbedo` to `true`.
	**/
	@:native("Color")
	public var color:godot.Color;

	/**		
		Each particle's scale will vary along this `godot.CurveTexture`.
	**/
	@:native("ScaleCurve")
	public var scaleCurve:godot.Texture;

	/**		
		Scale randomness ratio.
	**/
	@:native("ScaleRandom")
	public var scaleRandom:Single;

	/**		
		Initial scale applied to each particle.
	**/
	@:native("Scale")
	public var scale:Single;

	/**		
		Each particle's rotation will be animated along this `godot.CurveTexture`.
	**/
	@:native("AngleCurve")
	public var angleCurve:godot.Texture;

	/**		
		Rotation randomness ratio.
	**/
	@:native("AngleRandom")
	public var angleRandom:Single;

	/**		
		Initial rotation applied to each particle, in degrees.
		
		Only applied when `godot.ParticlesMaterial.flagDisableZ` or `godot.ParticlesMaterial.flagRotateY` are `true` or the `godot.SpatialMaterial` being used to draw the particle is using .
	**/
	@:native("Angle")
	public var angle:Single;

	/**		
		Damping will vary along this `godot.CurveTexture`.
	**/
	@:native("DampingCurve")
	public var dampingCurve:godot.Texture;

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
		Each particle's tangential acceleration will vary along this `godot.CurveTexture`.
	**/
	@:native("TangentialAccelCurve")
	public var tangentialAccelCurve:godot.Texture;

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
		Each particle's radial acceleration will vary along this `godot.CurveTexture`.
	**/
	@:native("RadialAccelCurve")
	public var radialAccelCurve:godot.Texture;

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
		Each particle's linear acceleration will vary along this `godot.CurveTexture`.
	**/
	@:native("LinearAccelCurve")
	public var linearAccelCurve:godot.Texture;

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
		Each particle's orbital velocity will vary along this `godot.CurveTexture`.
	**/
	@:native("OrbitVelocityCurve")
	public var orbitVelocityCurve:godot.Texture;

	/**		
		Orbital velocity randomness ratio.
	**/
	@:native("OrbitVelocityRandom")
	public var orbitVelocityRandom:Single;

	/**		
		Orbital velocity applied to each particle. Makes the particles circle around origin. Specified in number of full rotations around origin per second.
		
		Only available when `godot.ParticlesMaterial.flagDisableZ` is `true`.
	**/
	@:native("OrbitVelocity")
	public var orbitVelocity:Single;

	/**		
		Each particle's angular velocity will vary along this `godot.CurveTexture`.
	**/
	@:native("AngularVelocityCurve")
	public var angularVelocityCurve:godot.Texture;

	/**		
		Angular velocity randomness ratio.
	**/
	@:native("AngularVelocityRandom")
	public var angularVelocityRandom:Single;

	/**		
		Initial angular velocity applied to each particle. Sets the speed of rotation of the particle.
		
		Only applied when `godot.ParticlesMaterial.flagDisableZ` or `godot.ParticlesMaterial.flagRotateY` are `true` or the `godot.SpatialMaterial` being used to draw the particle is using .
	**/
	@:native("AngularVelocity")
	public var angularVelocity:Single;

	/**		
		Initial velocity randomness ratio.
	**/
	@:native("InitialVelocityRandom")
	public var initialVelocityRandom:Single;

	/**		
		Initial velocity magnitude for each particle. Direction comes from `godot.ParticlesMaterial.spread` and the node's orientation.
	**/
	@:native("InitialVelocity")
	public var initialVelocity:Single;

	/**		
		Gravity applied to every particle.
	**/
	@:native("Gravity")
	public var gravity:godot.Vector3;

	/**		
		Amount of `godot.ParticlesMaterial.spread` in Y/Z plane. A value of `1` restricts particles to X/Z plane.
	**/
	@:native("Flatness")
	public var flatness:Single;

	/**		
		Each particle's initial direction range from `+spread` to `-spread` degrees. Applied to X/Z plane and Y/Z planes.
	**/
	@:native("Spread")
	public var spread:Single;

	/**		
		Unit vector specifying the particles' emission direction.
	**/
	@:native("Direction")
	public var direction:godot.Vector3;

	/**		
		If `true`, particles will not move on the z axis.
	**/
	@:native("FlagDisableZ")
	public var flagDisableZ:Bool;

	/**		
		If `true`, particles rotate around Y axis by `godot.ParticlesMaterial.angle`.
	**/
	@:native("FlagRotateY")
	public var flagRotateY:Bool;

	/**		
		Align Y axis of particle with the direction of its velocity.
	**/
	@:native("FlagAlignY")
	public var flagAlignY:Bool;

	/**		
		The number of emission points if `emission_shape` is set to  or .
	**/
	@:native("EmissionPointCount")
	public var emissionPointCount:Int;

	/**		
		Particle color will be modulated by color determined by sampling this texture at the same point as the `godot.ParticlesMaterial.emissionPointTexture`.
	**/
	@:native("EmissionColorTexture")
	public var emissionColorTexture:godot.Texture;

	/**		
		Particle velocity and rotation will be set by sampling this texture at the same point as the `godot.ParticlesMaterial.emissionPointTexture`. Used only in . Can be created automatically from mesh or node by selecting "Create Emission Points from Mesh/Node" under the "Particles" tool in the toolbar.
	**/
	@:native("EmissionNormalTexture")
	public var emissionNormalTexture:godot.Texture;

	/**		
		Particles will be emitted at positions determined by sampling this texture at a random position. Used with  and . Can be created automatically from mesh or node by selecting "Create Emission Points from Mesh/Node" under the "Particles" tool in the toolbar.
	**/
	@:native("EmissionPointTexture")
	public var emissionPointTexture:godot.Texture;

	/**		
		The box's extents if `emission_shape` is set to .
	**/
	@:native("EmissionBoxExtents")
	public var emissionBoxExtents:godot.Vector3;

	/**		
		The sphere's radius if `emission_shape` is set to .
	**/
	@:native("EmissionSphereRadius")
	public var emissionSphereRadius:Single;

	/**		
		Particles will be emitted inside this region. Use `godot.ParticlesMaterial_EmissionShapeEnum` constants for values.
	**/
	@:native("EmissionShape")
	public var emissionShape:godot.ParticlesMaterial_EmissionShapeEnum;

	/**		
		Trail particles' color will vary along this `godot.GradientTexture`.
	**/
	@:native("TrailColorModifier")
	public var trailColorModifier:godot.GradientTexture;

	/**		
		Trail particles' size will vary along this `godot.CurveTexture`.
	**/
	@:native("TrailSizeModifier")
	public var trailSizeModifier:godot.CurveTexture;

	/**		
		Emitter will emit `amount` divided by `trail_divisor` particles. The remaining particles will be used as trail(s).
	**/
	@:native("TrailDivisor")
	public var trailDivisor:Int;

	/**		
		Particle lifetime randomness ratio.
	**/
	@:native("LifetimeRandomness")
	public var lifetimeRandomness:Single;

	@:native("new")
	public function new():Void;

	@:native("SetDirection")
	public function setDirection(degrees:godot.Vector3):Void;

	@:native("GetDirection")
	public function getDirection():godot.Vector3;

	@:native("SetSpread")
	public function setSpread(degrees:Single):Void;

	@:native("GetSpread")
	public function getSpread():Single;

	@:native("SetFlatness")
	public function setFlatness(amount:Single):Void;

	@:native("GetFlatness")
	public function getFlatness():Single;

	/**		
		Sets the specified `godot.ParticlesMaterial_Parameter`.
	**/
	@:native("SetParam")
	public function setParam(param:godot.ParticlesMaterial_Parameter, value:Single):Void;

	/**		
		Returns the value of the specified parameter.
	**/
	@:native("GetParam")
	public function getParam(param:godot.ParticlesMaterial_Parameter):Single;

	/**		
		Sets the randomness ratio for the specified `godot.ParticlesMaterial_Parameter`.
	**/
	@:native("SetParamRandomness")
	public function setParamRandomness(param:godot.ParticlesMaterial_Parameter, randomness:Single):Void;

	/**		
		Returns the randomness ratio associated with the specified parameter.
	**/
	@:native("GetParamRandomness")
	public function getParamRandomness(param:godot.ParticlesMaterial_Parameter):Single;

	/**		
		Sets the `godot.Texture` for the specified `godot.ParticlesMaterial_Parameter`.
	**/
	@:native("SetParamTexture")
	public function setParamTexture(param:godot.ParticlesMaterial_Parameter, texture:godot.Texture):Void;

	/**		
		Returns the `godot.Texture` used by the specified parameter.
	**/
	@:native("GetParamTexture")
	public function getParamTexture(param:godot.ParticlesMaterial_Parameter):godot.Texture;

	@:native("SetColor")
	public function setColor(color:godot.Color):Void;

	@:native("GetColor")
	public function getColor():godot.Color;

	@:native("SetColorRamp")
	public function setColorRamp(ramp:godot.Texture):Void;

	@:native("GetColorRamp")
	public function getColorRamp():godot.Texture;

	/**		
		If `true`, enables the specified flag. See `godot.ParticlesMaterial_Flags` for options.
	**/
	@:native("SetFlag")
	public function setFlag(flag:godot.ParticlesMaterial_Flags, enable:Bool):Void;

	/**		
		Returns `true` if the specified flag is enabled.
	**/
	@:native("GetFlag")
	public function getFlag(flag:godot.ParticlesMaterial_Flags):Bool;

	@:native("SetEmissionShape")
	public function setEmissionShape(shape:godot.ParticlesMaterial_EmissionShapeEnum):Void;

	@:native("GetEmissionShape")
	public function getEmissionShape():godot.ParticlesMaterial_EmissionShapeEnum;

	@:native("SetEmissionSphereRadius")
	public function setEmissionSphereRadius(radius:Single):Void;

	@:native("GetEmissionSphereRadius")
	public function getEmissionSphereRadius():Single;

	@:native("SetEmissionBoxExtents")
	public function setEmissionBoxExtents(extents:godot.Vector3):Void;

	@:native("GetEmissionBoxExtents")
	public function getEmissionBoxExtents():godot.Vector3;

	@:native("SetEmissionPointTexture")
	public function setEmissionPointTexture(texture:godot.Texture):Void;

	@:native("GetEmissionPointTexture")
	public function getEmissionPointTexture():godot.Texture;

	@:native("SetEmissionNormalTexture")
	public function setEmissionNormalTexture(texture:godot.Texture):Void;

	@:native("GetEmissionNormalTexture")
	public function getEmissionNormalTexture():godot.Texture;

	@:native("SetEmissionColorTexture")
	public function setEmissionColorTexture(texture:godot.Texture):Void;

	@:native("GetEmissionColorTexture")
	public function getEmissionColorTexture():godot.Texture;

	@:native("SetEmissionPointCount")
	public function setEmissionPointCount(pointCount:Int):Void;

	@:native("GetEmissionPointCount")
	public function getEmissionPointCount():Int;

	@:native("SetTrailDivisor")
	public function setTrailDivisor(divisor:Int):Void;

	@:native("GetTrailDivisor")
	public function getTrailDivisor():Int;

	@:native("SetTrailSizeModifier")
	public function setTrailSizeModifier(texture:godot.CurveTexture):Void;

	@:native("GetTrailSizeModifier")
	public function getTrailSizeModifier():godot.CurveTexture;

	@:native("SetTrailColorModifier")
	public function setTrailColorModifier(texture:godot.GradientTexture):Void;

	@:native("GetTrailColorModifier")
	public function getTrailColorModifier():godot.GradientTexture;

	@:native("GetGravity")
	public function getGravity():godot.Vector3;

	@:native("SetGravity")
	public function setGravity(accelVec:godot.Vector3):Void;

	@:native("SetLifetimeRandomness")
	public function setLifetimeRandomness(randomness:Single):Void;

	@:native("GetLifetimeRandomness")
	public function getLifetimeRandomness():Single;
}
