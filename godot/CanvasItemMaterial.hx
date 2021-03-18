// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
`godot.CanvasItemMaterial`s provide a means of modifying the textures associated with a CanvasItem. They specialize in describing blend and lighting behaviors for textures. Use a `godot.ShaderMaterial` to more fully customize a material's interactions with a `godot.CanvasItem`.
**/
@:libType
@:csNative
@:native("Godot.CanvasItemMaterial")
@:autoBuild(godot.Godot.buildUserClass())
extern class CanvasItemMaterial extends godot.Material {
	/**		
		If `true`, the particles animation will loop.
		
		Note: This property is only used and visible in the editor if `godot.CanvasItemMaterial.particlesAnimation` is `true`.
	**/
	@:native("ParticlesAnimLoop")
	public var particlesAnimLoop:Bool;

	/**		
		The number of rows in the spritesheet assigned as `godot.Texture` for a `godot.Particles2D` or `godot.CPUParticles2D`.
		
		Note: This property is only used and visible in the editor if `godot.CanvasItemMaterial.particlesAnimation` is `true`.
	**/
	@:native("ParticlesAnimVFrames")
	public var particlesAnimVFrames:Int;

	/**		
		The number of columns in the spritesheet assigned as `godot.Texture` for a `godot.Particles2D` or `godot.CPUParticles2D`.
		
		Note: This property is only used and visible in the editor if `godot.CanvasItemMaterial.particlesAnimation` is `true`.
	**/
	@:native("ParticlesAnimHFrames")
	public var particlesAnimHFrames:Int;

	/**		
		If `true`, enable spritesheet-based animation features when assigned to `godot.Particles2D` and `godot.CPUParticles2D` nodes. The `godot.ParticlesMaterial.animSpeed` or `godot.CPUParticles2D.animSpeed` should also be set to a positive value for the animation to play.
		
		This property (and other `particles_anim_*` properties that depend on it) has no effect on other types of nodes.
	**/
	@:native("ParticlesAnimation")
	public var particlesAnimation:Bool;

	/**		
		The manner in which material reacts to lighting.
	**/
	@:native("LightMode")
	public var lightMode:godot.CanvasItemMaterial_LightModeEnum;

	/**		
		The manner in which a material's rendering is applied to underlying textures.
	**/
	@:native("BlendMode")
	public var blendMode:godot.CanvasItemMaterial_BlendModeEnum;

	@:native("new")
	public function new():Void;

	@:native("SetBlendMode")
	public function setBlendMode(blendMode:godot.CanvasItemMaterial_BlendModeEnum):Void;

	@:native("GetBlendMode")
	public function getBlendMode():godot.CanvasItemMaterial_BlendModeEnum;

	@:native("SetLightMode")
	public function setLightMode(lightMode:godot.CanvasItemMaterial_LightModeEnum):Void;

	@:native("GetLightMode")
	public function getLightMode():godot.CanvasItemMaterial_LightModeEnum;

	@:native("SetParticlesAnimation")
	public function setParticlesAnimation(particlesAnim:Bool):Void;

	@:native("GetParticlesAnimation")
	public function getParticlesAnimation():Bool;

	@:native("SetParticlesAnimHFrames")
	public function setParticlesAnimHFrames(frames:Int):Void;

	@:native("GetParticlesAnimHFrames")
	public function getParticlesAnimHFrames():Int;

	@:native("SetParticlesAnimVFrames")
	public function setParticlesAnimVFrames(frames:Int):Void;

	@:native("GetParticlesAnimVFrames")
	public function getParticlesAnimVFrames():Int;

	@:native("SetParticlesAnimLoop")
	public function setParticlesAnimLoop(loop:Bool):Void;

	@:native("GetParticlesAnimLoop")
	public function getParticlesAnimLoop():Bool;
}
