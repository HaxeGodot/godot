// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
This provides a default material with a wide variety of rendering features and properties without the need to write shader code. See the tutorial below for details.
**/
@:libType
@:csNative
@:native("Godot.SpatialMaterial")
@:autoBuild(godot.Godot.buildUserClass())
extern class SpatialMaterial extends godot.Material {
	/**		
		Distance at which the object appears fully opaque.
		
		Note: If `distance_fade_max_distance` is less than `distance_fade_min_distance`, the behavior will be reversed. The object will start to fade away at `distance_fade_max_distance` and will fully disappear once it reaches `distance_fade_min_distance`.
	**/
	@:native("DistanceFadeMaxDistance")
	public var distanceFadeMaxDistance:Single;

	/**		
		Distance at which the object starts to become visible. If the object is less than this distance away, it will be invisible.
		
		Note: If `distance_fade_min_distance` is greater than `distance_fade_max_distance`, the behavior will be reversed. The object will start to fade away at `distance_fade_max_distance` and will fully disappear once it reaches `distance_fade_min_distance`.
	**/
	@:native("DistanceFadeMinDistance")
	public var distanceFadeMinDistance:Single;

	/**		
		Specifies which type of fade to use. Can be any of the `godot.SpatialMaterial_DistanceFadeModeEnum`s.
	**/
	@:native("DistanceFadeMode")
	public var distanceFadeMode:godot.SpatialMaterial_DistanceFadeModeEnum;

	/**		
		Distance over which the fade effect takes place. The larger the distance the longer it takes for an object to fade.
	**/
	@:native("ProximityFadeDistance")
	public var proximityFadeDistance:Single;

	/**		
		If `true`, the proximity fade effect is enabled. The proximity fade effect fades out each pixel based on its distance to another object.
	**/
	@:native("ProximityFadeEnable")
	public var proximityFadeEnable:Bool;

	/**		
		A lower number blends the texture more softly while a higher number blends the texture more sharply.
	**/
	@:native("Uv2TriplanarSharpness")
	public var uv2TriplanarSharpness:Single;

	/**		
		If `true`, instead of using `UV2` textures will use a triplanar texture lookup to determine how to apply textures. Triplanar uses the orientation of the object's surface to blend between texture coordinates. It reads from the source texture 3 times, once for each axis and then blends between the results based on how closely the pixel aligns with each axis. This is often used for natural features to get a realistic blend of materials. Because triplanar texturing requires many more texture reads per-pixel it is much slower than normal UV texturing. Additionally, because it is blending the texture between the three axes, it is unsuitable when you are trying to achieve crisp texturing.
	**/
	@:native("Uv2Triplanar")
	public var uv2Triplanar:Bool;

	/**		
		How much to offset the `UV2` coordinates. This amount will be added to `UV2` in the vertex function. This can be used to offset a texture.
	**/
	@:native("Uv2Offset")
	public var uv2Offset:godot.Vector3;

	/**		
		How much to scale the `UV2` coordinates. This is multiplied by `UV2` in the vertex function.
	**/
	@:native("Uv2Scale")
	public var uv2Scale:godot.Vector3;

	/**		
		A lower number blends the texture more softly while a higher number blends the texture more sharply.
	**/
	@:native("Uv1TriplanarSharpness")
	public var uv1TriplanarSharpness:Single;

	/**		
		If `true`, instead of using `UV` textures will use a triplanar texture lookup to determine how to apply textures. Triplanar uses the orientation of the object's surface to blend between texture coordinates. It reads from the source texture 3 times, once for each axis and then blends between the results based on how closely the pixel aligns with each axis. This is often used for natural features to get a realistic blend of materials. Because triplanar texturing requires many more texture reads per-pixel it is much slower than normal UV texturing. Additionally, because it is blending the texture between the three axes, it is unsuitable when you are trying to achieve crisp texturing.
	**/
	@:native("Uv1Triplanar")
	public var uv1Triplanar:Bool;

	/**		
		How much to offset the `UV` coordinates. This amount will be added to `UV` in the vertex function. This can be used to offset a texture.
	**/
	@:native("Uv1Offset")
	public var uv1Offset:godot.Vector3;

	/**		
		How much to scale the `UV` coordinates. This is multiplied by `UV` in the vertex function.
	**/
	@:native("Uv1Scale")
	public var uv1Scale:godot.Vector3;

	/**		
		Texture that specifies the per-pixel normal of the detail overlay.
		
		Note: Godot expects the normal map to use X+, Y-, and Z+ coordinates. See [http://wiki.polycount.com/wiki/Normal_Map_Technical_Details#Common_Swizzle_Coordinates](this page) for a comparison of normal map coordinates expected by popular engines.
	**/
	@:native("DetailNormal")
	public var detailNormal:godot.Texture;

	/**		
		Texture that specifies the color of the detail overlay.
	**/
	@:native("DetailAlbedo")
	public var detailAlbedo:godot.Texture;

	/**		
		Specifies whether to use `UV` or `UV2` for the detail layer. See `godot.SpatialMaterial_DetailUV` for options.
	**/
	@:native("DetailUvLayer")
	public var detailUvLayer:godot.SpatialMaterial_DetailUV;

	/**		
		Specifies how the `godot.SpatialMaterial.detailAlbedo` should blend with the current `ALBEDO`. See `godot.SpatialMaterial_BlendMode` for options.
	**/
	@:native("DetailBlendMode")
	public var detailBlendMode:godot.SpatialMaterial_BlendMode;

	/**		
		Texture used to specify how the detail textures get blended with the base textures.
	**/
	@:native("DetailMask")
	public var detailMask:godot.Texture;

	/**		
		If `true`, enables the detail overlay. Detail is a second texture that gets mixed over the surface of the object based on `godot.SpatialMaterial.detailMask`. This can be used to add variation to objects, or to blend between two different albedo/normal textures.
	**/
	@:native("DetailEnabled")
	public var detailEnabled:Bool;

	/**		
		Specifies the channel of the `godot.SpatialMaterial.aoTexture` in which the ambient occlusion information is stored. This is useful when you store the information for multiple effects in a single texture. For example if you stored metallic in the red channel, roughness in the blue, and ambient occlusion in the green you could reduce the number of textures you use.
	**/
	@:native("RefractionTextureChannel")
	public var refractionTextureChannel:godot.SpatialMaterial_TextureChannel;

	/**		
		Texture that controls the strength of the refraction per-pixel. Multiplied by `godot.SpatialMaterial.refractionScale`.
	**/
	@:native("RefractionTexture")
	public var refractionTexture:godot.Texture;

	/**		
		The strength of the refraction effect.
	**/
	@:native("RefractionScale")
	public var refractionScale:Single;

	/**		
		If `true`, the refraction effect is enabled. Distorts transparency based on light from behind the object.
	**/
	@:native("RefractionEnabled")
	public var refractionEnabled:Bool;

	/**		
		Texture used to control the transmission effect per-pixel. Added to `godot.SpatialMaterial.transmission`.
	**/
	@:native("TransmissionTexture")
	public var transmissionTexture:godot.Texture;

	/**		
		The color used by the transmission effect. Represents the light passing through an object.
	**/
	@:native("Transmission")
	public var transmission:godot.Color;

	/**		
		If `true`, the transmission effect is enabled.
	**/
	@:native("TransmissionEnabled")
	public var transmissionEnabled:Bool;

	/**		
		Texture used to control the subsurface scattering strength. Stored in the red texture channel. Multiplied by `godot.SpatialMaterial.subsurfScatterStrength`.
	**/
	@:native("SubsurfScatterTexture")
	public var subsurfScatterTexture:godot.Texture;

	/**		
		The strength of the subsurface scattering effect.
	**/
	@:native("SubsurfScatterStrength")
	public var subsurfScatterStrength:Single;

	/**		
		If `true`, subsurface scattering is enabled. Emulates light that penetrates an object's surface, is scattered, and then emerges.
	**/
	@:native("SubsurfScatterEnabled")
	public var subsurfScatterEnabled:Bool;

	/**		
		Texture used to determine depth at a given pixel. Depth is always stored in the red channel.
	**/
	@:native("DepthTexture")
	public var depthTexture:godot.Texture;

	/**		
		If `true`, direction of the binormal is flipped before using in the depth effect. This may be necessary if you have encoded your binormals in a way that is conflicting with the depth effect.
	**/
	@:native("DepthFlipBinormal")
	public var depthFlipBinormal:Bool;

	/**		
		If `true`, direction of the tangent is flipped before using in the depth effect. This may be necessary if you have encoded your tangents in a way that is conflicting with the depth effect.
	**/
	@:native("DepthFlipTangent")
	public var depthFlipTangent:Bool;

	/**		
		Number of layers to use when using `godot.SpatialMaterial.depthDeepParallax` and the view direction is perpendicular to the surface of the object. A higher number will be more performance demanding while a lower number may not look as crisp.
	**/
	@:native("DepthMaxLayers")
	public var depthMaxLayers:Int;

	/**		
		Number of layers to use when using `godot.SpatialMaterial.depthDeepParallax` and the view direction is parallel to the surface of the object. A higher number will be more performance demanding while a lower number may not look as crisp.
	**/
	@:native("DepthMinLayers")
	public var depthMinLayers:Int;

	/**		
		If `true`, the shader will read depth texture at multiple points along the view ray to determine occlusion and parrallax. This can be very performance demanding, but results in more realistic looking depth mapping.
	**/
	@:native("DepthDeepParallax")
	public var depthDeepParallax:Bool;

	/**		
		Scales the depth offset effect. A higher number will create a larger depth.
	**/
	@:native("DepthScale")
	public var depthScale:Single;

	/**		
		If `true`, depth mapping is enabled (also called "parallax mapping" or "height mapping"). See also `godot.SpatialMaterial.normalEnabled`.
		
		Note: Depth mapping is not supported if triplanar mapping is used on the same material. The value of `godot.SpatialMaterial.depthEnabled` will be ignored if `godot.SpatialMaterial.uv1Triplanar` is enabled.
	**/
	@:native("DepthEnabled")
	public var depthEnabled:Bool;

	/**		
		Specifies the channel of the `godot.SpatialMaterial.aoTexture` in which the ambient occlusion information is stored. This is useful when you store the information for multiple effects in a single texture. For example if you stored metallic in the red channel, roughness in the blue, and ambient occlusion in the green you could reduce the number of textures you use.
	**/
	@:native("AoTextureChannel")
	public var aoTextureChannel:godot.SpatialMaterial_TextureChannel;

	/**		
		If `true`, use `UV2` coordinates to look up from the `godot.SpatialMaterial.aoTexture`.
	**/
	@:native("AoOnUv2")
	public var aoOnUv2:Bool;

	/**		
		Texture that defines the amount of ambient occlusion for a given point on the object.
	**/
	@:native("AoTexture")
	public var aoTexture:godot.Texture;

	/**		
		Amount that ambient occlusion affects lighting from lights. If `0`, ambient occlusion only affects ambient light. If `1`, ambient occlusion affects lights just as much as it affects ambient light. This can be used to impact the strength of the ambient occlusion effect, but typically looks unrealistic.
	**/
	@:native("AoLightAffect")
	public var aoLightAffect:Single;

	/**		
		If `true`, ambient occlusion is enabled. Ambient occlusion darkens areas based on the `godot.SpatialMaterial.aoTexture`.
	**/
	@:native("AoEnabled")
	public var aoEnabled:Bool;

	/**		
		Texture that offsets the tangent map for anisotropy calculations.
	**/
	@:native("AnisotropyFlowmap")
	public var anisotropyFlowmap:godot.Texture;

	/**		
		The strength of the anisotropy effect.
	**/
	@:native("Anisotropy")
	public var anisotropy:Single;

	/**		
		If `true`, anisotropy is enabled. Changes the shape of the specular blob and aligns it to tangent space. Mesh tangents are needed for this to work. If the mesh does not contain tangents the anisotropy effect will appear broken.
	**/
	@:native("AnisotropyEnabled")
	public var anisotropyEnabled:Bool;

	/**		
		Texture that defines the strength of the clearcoat effect and the glossiness of the clearcoat. Strength is specified in the red channel while glossiness is specified in the green channel.
	**/
	@:native("ClearcoatTexture")
	public var clearcoatTexture:godot.Texture;

	/**		
		Sets the roughness of the clearcoat pass. A higher value results in a smoother clearcoat while a lower value results in a rougher clearcoat.
	**/
	@:native("ClearcoatGloss")
	public var clearcoatGloss:Single;

	/**		
		Sets the strength of the clearcoat effect. Setting to `0` looks the same as disabling the clearcoat effect.
	**/
	@:native("Clearcoat")
	public var clearcoat:Single;

	/**		
		If `true`, clearcoat rendering is enabled. Adds a secondary transparent pass to the lighting calculation resulting in an added specular blob. This makes materials appear as if they have a clear layer on them that can be either glossy or rough.
	**/
	@:native("ClearcoatEnabled")
	public var clearcoatEnabled:Bool;

	/**		
		Texture used to set the strength of the rim lighting effect per-pixel. Multiplied by `godot.SpatialMaterial.rim`.
	**/
	@:native("RimTexture")
	public var rimTexture:godot.Texture;

	/**		
		The amount of to blend light and albedo color when rendering rim effect. If `0` the light color is used, while `1` means albedo color is used. An intermediate value generally works best.
	**/
	@:native("RimTint")
	public var rimTint:Single;

	/**		
		Sets the strength of the rim lighting effect.
	**/
	@:native("Rim")
	public var rim:Single;

	/**		
		If `true`, rim effect is enabled. Rim lighting increases the brightness at glancing angles on an object.
	**/
	@:native("RimEnabled")
	public var rimEnabled:Bool;

	/**		
		Texture used to specify the normal at a given pixel. The `normal_texture` only uses the red and green channels. The normal read from `normal_texture` is oriented around the surface normal provided by the `godot.Mesh`.
		
		Note: Godot expects the normal map to use X+, Y-, and Z+ coordinates. See [http://wiki.polycount.com/wiki/Normal_Map_Technical_Details#Common_Swizzle_Coordinates](this page) for a comparison of normal map coordinates expected by popular engines.
	**/
	@:native("NormalTexture")
	public var normalTexture:godot.Texture;

	/**		
		The strength of the normal map's effect.
	**/
	@:native("NormalScale")
	public var normalScale:Single;

	/**		
		If `true`, normal mapping is enabled.
	**/
	@:native("NormalEnabled")
	public var normalEnabled:Bool;

	/**		
		Texture that specifies how much surface emits light at a given point.
	**/
	@:native("EmissionTexture")
	public var emissionTexture:godot.Texture;

	/**		
		Use `UV2` to read from the `godot.SpatialMaterial.emissionTexture`.
	**/
	@:native("EmissionOnUv2")
	public var emissionOnUv2:Bool;

	/**		
		Sets how `godot.SpatialMaterial.emission` interacts with `godot.SpatialMaterial.emissionTexture`. Can either add or multiply. See `godot.SpatialMaterial_EmissionOperatorEnum` for options.
	**/
	@:native("EmissionOperator")
	public var emissionOperator:godot.SpatialMaterial_EmissionOperatorEnum;

	/**		
		The emitted light's strength. See `godot.SpatialMaterial.emissionEnabled`.
	**/
	@:native("EmissionEnergy")
	public var emissionEnergy:Single;

	/**		
		The emitted light's color. See `godot.SpatialMaterial.emissionEnabled`.
	**/
	@:native("Emission")
	public var emission:godot.Color;

	/**		
		If `true`, the body emits light. Emitting light makes the object appear brighter. The object can also cast light on other objects if a `godot.GIProbe` or `godot.BakedLightmap` is used and this object is used in baked lighting.
	**/
	@:native("EmissionEnabled")
	public var emissionEnabled:Bool;

	/**		
		Specifies the channel of the `godot.SpatialMaterial.aoTexture` in which the ambient occlusion information is stored. This is useful when you store the information for multiple effects in a single texture. For example if you stored metallic in the red channel, roughness in the blue, and ambient occlusion in the green you could reduce the number of textures you use.
	**/
	@:native("RoughnessTextureChannel")
	public var roughnessTextureChannel:godot.SpatialMaterial_TextureChannel;

	/**		
		Texture used to control the roughness per-pixel. Multiplied by `godot.SpatialMaterial.roughness`.
	**/
	@:native("RoughnessTexture")
	public var roughnessTexture:godot.Texture;

	/**		
		Surface reflection. A value of `0` represents a perfect mirror while a value of `1` completely blurs the reflection. See also `godot.SpatialMaterial.metallic`.
	**/
	@:native("Roughness")
	public var roughness:Single;

	/**		
		Specifies the channel of the `godot.SpatialMaterial.metallicTexture` in which the metallic information is stored. This is useful when you store the information for multiple effects in a single texture. For example if you stored metallic in the red channel, roughness in the blue, and ambient occlusion in the green you could reduce the number of textures you use.
	**/
	@:native("MetallicTextureChannel")
	public var metallicTextureChannel:godot.SpatialMaterial_TextureChannel;

	/**		
		Texture used to specify metallic for an object. This is multiplied by `godot.SpatialMaterial.metallic`.
	**/
	@:native("MetallicTexture")
	public var metallicTexture:godot.Texture;

	/**		
		Sets the size of the specular lobe. The specular lobe is the bright spot that is reflected from light sources.
		
		Note: unlike `godot.SpatialMaterial.metallic`, this is not energy-conserving, so it should be left at `0.5` in most cases. See also `godot.SpatialMaterial.roughness`.
	**/
	@:native("MetallicSpecular")
	public var metallicSpecular:Single;

	/**		
		A high value makes the material appear more like a metal. Non-metals use their albedo as the diffuse color and add diffuse to the specular reflection. With non-metals, the reflection appears on top of the albedo color. Metals use their albedo as a multiplier to the specular reflection and set the diffuse color to black resulting in a tinted reflection. Materials work better when fully metal or fully non-metal, values between `0` and `1` should only be used for blending between metal and non-metal sections. To alter the amount of reflection use `godot.SpatialMaterial.roughness`.
	**/
	@:native("Metallic")
	public var metallic:Single;

	/**		
		Texture to multiply by `godot.SpatialMaterial.albedoColor`. Used for basic texturing of objects.
	**/
	@:native("AlbedoTexture")
	public var albedoTexture:godot.Texture;

	/**		
		The material's base color.
	**/
	@:native("AlbedoColor")
	public var albedoColor:godot.Color;

	/**		
		If `true`, particle animations are looped. Only enabled when using . See `godot.SpatialMaterial.paramsBillboardMode`.
	**/
	@:native("ParticlesAnimLoop")
	public var particlesAnimLoop:Bool;

	/**		
		The number of vertical frames in the particle sprite sheet. Only enabled when using . See `godot.SpatialMaterial.paramsBillboardMode`.
	**/
	@:native("ParticlesAnimVFrames")
	public var particlesAnimVFrames:Int;

	/**		
		The number of horizontal frames in the particle sprite sheet. Only enabled when using . See `godot.SpatialMaterial.paramsBillboardMode`.
	**/
	@:native("ParticlesAnimHFrames")
	public var particlesAnimHFrames:Int;

	/**		
		Threshold at which the alpha scissor will discard values.
	**/
	@:native("ParamsAlphaScissorThreshold")
	public var paramsAlphaScissorThreshold:Single;

	/**		
		If `true`, the shader will discard all pixels that have an alpha value less than `godot.SpatialMaterial.paramsAlphaScissorThreshold`.
	**/
	@:native("ParamsUseAlphaScissor")
	public var paramsUseAlphaScissor:Bool;

	/**		
		Grows object vertices in the direction of their normals.
	**/
	@:native("ParamsGrowAmount")
	public var paramsGrowAmount:Single;

	/**		
		If `true`, enables the vertex grow setting. See `godot.SpatialMaterial.paramsGrowAmount`.
	**/
	@:native("ParamsGrow")
	public var paramsGrow:Bool;

	/**		
		If `true`, the shader will keep the scale set for the mesh. Otherwise the scale is lost when billboarding. Only applies when `godot.SpatialMaterial.paramsBillboardMode` is .
	**/
	@:native("ParamsBillboardKeepScale")
	public var paramsBillboardKeepScale:Bool;

	/**		
		Controls how the object faces the camera. See `godot.SpatialMaterial_BillboardMode`.
		
		Note: Billboard mode is not suitable for VR because the left-right vector of the camera is not horizontal when the screen is attached to your head instead of on the table. See [https://github.com/godotengine/godot/issues/41567](GitHub issue #41567) for details.
	**/
	@:native("ParamsBillboardMode")
	public var paramsBillboardMode:godot.SpatialMaterial_BillboardMode;

	/**		
		The point size in pixels. See `godot.SpatialMaterial.flagsUsePointSize`.
	**/
	@:native("ParamsPointSize")
	public var paramsPointSize:Single;

	/**		
		Currently unimplemented in Godot.
	**/
	@:native("ParamsLineWidth")
	public var paramsLineWidth:Single;

	/**		
		Determines when depth rendering takes place. See `godot.SpatialMaterial_DepthDrawMode`. See also `godot.SpatialMaterial.flagsTransparent`.
	**/
	@:native("ParamsDepthDrawMode")
	public var paramsDepthDrawMode:godot.SpatialMaterial_DepthDrawMode;

	/**		
		Which side of the object is not drawn when backfaces are rendered. See `godot.SpatialMaterial_CullMode`.
	**/
	@:native("ParamsCullMode")
	public var paramsCullMode:godot.SpatialMaterial_CullMode;

	/**		
		The material's blend mode.
		
		Note: Values other than `Mix` force the object into the transparent pipeline. See `godot.SpatialMaterial_BlendMode`.
	**/
	@:native("ParamsBlendMode")
	public var paramsBlendMode:godot.SpatialMaterial_BlendMode;

	/**		
		The method for rendering the specular blob. See `godot.SpatialMaterial_SpecularMode`.
	**/
	@:native("ParamsSpecularMode")
	public var paramsSpecularMode:godot.SpatialMaterial_SpecularMode;

	/**		
		The algorithm used for diffuse light scattering. See `godot.SpatialMaterial_DiffuseMode`.
	**/
	@:native("ParamsDiffuseMode")
	public var paramsDiffuseMode:godot.SpatialMaterial_DiffuseMode;

	/**		
		If `true`, the model's vertex colors are processed as sRGB mode.
	**/
	@:native("VertexColorIsSrgb")
	public var vertexColorIsSrgb:Bool;

	/**		
		If `true`, the vertex color is used as albedo color.
	**/
	@:native("VertexColorUseAsAlbedo")
	public var vertexColorUseAsAlbedo:Bool;

	/**		
		If `true`, the shader will compute extra operations to make sure the normal stays correct when using a non-uniform scale. Only enable if using non-uniform scaling.
	**/
	@:native("FlagsEnsureCorrectNormals")
	public var flagsEnsureCorrectNormals:Bool;

	/**		
		If `true`, the object receives no ambient light.
	**/
	@:native("FlagsDisableAmbientLight")
	public var flagsDisableAmbientLight:Bool;

	/**		
		If `true`, the object receives no shadow that would otherwise be cast onto it.
	**/
	@:native("FlagsDoNotReceiveShadows")
	public var flagsDoNotReceiveShadows:Bool;

	/**		
		Forces a conversion of the `godot.SpatialMaterial.albedoTexture` from sRGB space to linear space.
	**/
	@:native("FlagsAlbedoTexForceSrgb")
	public var flagsAlbedoTexForceSrgb:Bool;

	/**		
		If `true`, the object is rendered at the same size regardless of distance.
	**/
	@:native("FlagsFixedSize")
	public var flagsFixedSize:Bool;

	/**		
		If `true`, triplanar mapping is calculated in world space rather than object local space. See also `godot.SpatialMaterial.uv1Triplanar`.
	**/
	@:native("FlagsWorldTriplanar")
	public var flagsWorldTriplanar:Bool;

	/**		
		If `true`, render point size can be changed.
		
		Note: this is only effective for objects whose geometry is point-based rather than triangle-based. See also `godot.SpatialMaterial.paramsPointSize`.
	**/
	@:native("FlagsUsePointSize")
	public var flagsUsePointSize:Bool;

	/**		
		If `true`, depth testing is disabled and the object will be drawn in render order.
	**/
	@:native("FlagsNoDepthTest")
	public var flagsNoDepthTest:Bool;

	/**		
		If `true`, lighting is calculated per vertex rather than per pixel. This may increase performance on low-end devices.
	**/
	@:native("FlagsVertexLighting")
	public var flagsVertexLighting:Bool;

	/**		
		If `true`, the object is unaffected by lighting.
	**/
	@:native("FlagsUnshaded")
	public var flagsUnshaded:Bool;

	/**		
		If `true`, enables the "shadow to opacity" render mode where lighting modifies the alpha so shadowed areas are opaque and non-shadowed areas are transparent. Useful for overlaying shadows onto a camera feed in AR.
	**/
	@:native("FlagsUseShadowToOpacity")
	public var flagsUseShadowToOpacity:Bool;

	/**		
		If `true`, transparency is enabled on the body. See also `godot.SpatialMaterial.paramsBlendMode`.
	**/
	@:native("FlagsTransparent")
	public var flagsTransparent:Bool;

	@:native("new")
	public function new():Void;

	@:native("SetAlbedo")
	public function setAlbedo(albedo:godot.Color):Void;

	@:native("GetAlbedo")
	public function getAlbedo():godot.Color;

	@:native("SetSpecular")
	public function setSpecular(specular:Single):Void;

	@:native("GetSpecular")
	public function getSpecular():Single;

	@:native("SetMetallic")
	public function setMetallic(metallic:Single):Void;

	@:native("GetMetallic")
	public function getMetallic():Single;

	@:native("SetRoughness")
	public function setRoughness(roughness:Single):Void;

	@:native("GetRoughness")
	public function getRoughness():Single;

	@:native("SetEmission")
	public function setEmission(emission:godot.Color):Void;

	@:native("GetEmission")
	public function getEmission():godot.Color;

	@:native("SetEmissionEnergy")
	public function setEmissionEnergy(emissionEnergy:Single):Void;

	@:native("GetEmissionEnergy")
	public function getEmissionEnergy():Single;

	@:native("SetNormalScale")
	public function setNormalScale(normalScale:Single):Void;

	@:native("GetNormalScale")
	public function getNormalScale():Single;

	@:native("SetRim")
	public function setRim(rim:Single):Void;

	@:native("GetRim")
	public function getRim():Single;

	@:native("SetRimTint")
	public function setRimTint(rimTint:Single):Void;

	@:native("GetRimTint")
	public function getRimTint():Single;

	@:native("SetClearcoat")
	public function setClearcoat(clearcoat:Single):Void;

	@:native("GetClearcoat")
	public function getClearcoat():Single;

	@:native("SetClearcoatGloss")
	public function setClearcoatGloss(clearcoatGloss:Single):Void;

	@:native("GetClearcoatGloss")
	public function getClearcoatGloss():Single;

	@:native("SetAnisotropy")
	public function setAnisotropy(anisotropy:Single):Void;

	@:native("GetAnisotropy")
	public function getAnisotropy():Single;

	@:native("SetDepthScale")
	public function setDepthScale(depthScale:Single):Void;

	@:native("GetDepthScale")
	public function getDepthScale():Single;

	@:native("SetSubsurfaceScatteringStrength")
	public function setSubsurfaceScatteringStrength(strength:Single):Void;

	@:native("GetSubsurfaceScatteringStrength")
	public function getSubsurfaceScatteringStrength():Single;

	@:native("SetTransmission")
	public function setTransmission(transmission:godot.Color):Void;

	@:native("GetTransmission")
	public function getTransmission():godot.Color;

	@:native("SetRefraction")
	public function setRefraction(refraction:Single):Void;

	@:native("GetRefraction")
	public function getRefraction():Single;

	@:native("SetLineWidth")
	public function setLineWidth(lineWidth:Single):Void;

	@:native("GetLineWidth")
	public function getLineWidth():Single;

	@:native("SetPointSize")
	public function setPointSize(pointSize:Single):Void;

	@:native("GetPointSize")
	public function getPointSize():Single;

	@:native("SetDetailUv")
	public function setDetailUv(detailUv:godot.SpatialMaterial_DetailUV):Void;

	@:native("GetDetailUv")
	public function getDetailUv():godot.SpatialMaterial_DetailUV;

	@:native("SetBlendMode")
	public function setBlendMode(blendMode:godot.SpatialMaterial_BlendMode):Void;

	@:native("GetBlendMode")
	public function getBlendMode():godot.SpatialMaterial_BlendMode;

	@:native("SetDepthDrawMode")
	public function setDepthDrawMode(depthDrawMode:godot.SpatialMaterial_DepthDrawMode):Void;

	@:native("GetDepthDrawMode")
	public function getDepthDrawMode():godot.SpatialMaterial_DepthDrawMode;

	@:native("SetCullMode")
	public function setCullMode(cullMode:godot.SpatialMaterial_CullMode):Void;

	@:native("GetCullMode")
	public function getCullMode():godot.SpatialMaterial_CullMode;

	@:native("SetDiffuseMode")
	public function setDiffuseMode(diffuseMode:godot.SpatialMaterial_DiffuseMode):Void;

	@:native("GetDiffuseMode")
	public function getDiffuseMode():godot.SpatialMaterial_DiffuseMode;

	@:native("SetSpecularMode")
	public function setSpecularMode(specularMode:godot.SpatialMaterial_SpecularMode):Void;

	@:native("GetSpecularMode")
	public function getSpecularMode():godot.SpatialMaterial_SpecularMode;

	/**		
		If `true`, enables the specified flag. Flags are optional behaviour that can be turned on and off. Only one flag can be enabled at a time with this function, the flag enumerators cannot be bit-masked together to enable or disable multiple flags at once. Flags can also be enabled by setting the corresponding member to `true`. See `godot.SpatialMaterial_Flags` enumerator for options.
	**/
	@:native("SetFlag")
	public function setFlag(flag:godot.SpatialMaterial_Flags, enable:Bool):Void;

	/**		
		Returns `true`, if the specified flag is enabled. See `godot.SpatialMaterial_Flags` enumerator for options.
	**/
	@:native("GetFlag")
	public function getFlag(flag:godot.SpatialMaterial_Flags):Bool;

	/**		
		If `true`, enables the specified `godot.SpatialMaterial_Feature`. Many features that are available in `godot.SpatialMaterial`s need to be enabled before use. This way the cost for using the feature is only incurred when specified. Features can also be enabled by setting the corresponding member to `true`.
	**/
	@:native("SetFeature")
	public function setFeature(feature:godot.SpatialMaterial_Feature, enable:Bool):Void;

	/**		
		Returns `true`, if the specified `godot.SpatialMaterial_Feature` is enabled.
	**/
	@:native("GetFeature")
	public function getFeature(feature:godot.SpatialMaterial_Feature):Bool;

	/**		
		Sets the `godot.Texture` to be used by the specified `godot.SpatialMaterial_TextureParam`. This function is called when setting members ending in `*_texture`.
	**/
	@:native("SetTexture")
	public function setTexture(param:godot.SpatialMaterial_TextureParam, texture:godot.Texture):Void;

	/**		
		Returns the `godot.Texture` associated with the specified `godot.SpatialMaterial_TextureParam`.
	**/
	@:native("GetTexture")
	public function getTexture(param:godot.SpatialMaterial_TextureParam):godot.Texture;

	@:native("SetDetailBlendMode")
	public function setDetailBlendMode(detailBlendMode:godot.SpatialMaterial_BlendMode):Void;

	@:native("GetDetailBlendMode")
	public function getDetailBlendMode():godot.SpatialMaterial_BlendMode;

	@:native("SetUv1Scale")
	public function setUv1Scale(scale:godot.Vector3):Void;

	@:native("GetUv1Scale")
	public function getUv1Scale():godot.Vector3;

	@:native("SetUv1Offset")
	public function setUv1Offset(offset:godot.Vector3):Void;

	@:native("GetUv1Offset")
	public function getUv1Offset():godot.Vector3;

	@:native("SetUv1TriplanarBlendSharpness")
	public function setUv1TriplanarBlendSharpness(sharpness:Single):Void;

	@:native("GetUv1TriplanarBlendSharpness")
	public function getUv1TriplanarBlendSharpness():Single;

	@:native("SetUv2Scale")
	public function setUv2Scale(scale:godot.Vector3):Void;

	@:native("GetUv2Scale")
	public function getUv2Scale():godot.Vector3;

	@:native("SetUv2Offset")
	public function setUv2Offset(offset:godot.Vector3):Void;

	@:native("GetUv2Offset")
	public function getUv2Offset():godot.Vector3;

	@:native("SetUv2TriplanarBlendSharpness")
	public function setUv2TriplanarBlendSharpness(sharpness:Single):Void;

	@:native("GetUv2TriplanarBlendSharpness")
	public function getUv2TriplanarBlendSharpness():Single;

	@:native("SetBillboardMode")
	public function setBillboardMode(mode:godot.SpatialMaterial_BillboardMode):Void;

	@:native("GetBillboardMode")
	public function getBillboardMode():godot.SpatialMaterial_BillboardMode;

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

	@:native("SetDepthDeepParallax")
	public function setDepthDeepParallax(enable:Bool):Void;

	@:native("IsDepthDeepParallaxEnabled")
	public function isDepthDeepParallaxEnabled():Bool;

	@:native("SetDepthDeepParallaxMinLayers")
	public function setDepthDeepParallaxMinLayers(layer:Int):Void;

	@:native("GetDepthDeepParallaxMinLayers")
	public function getDepthDeepParallaxMinLayers():Int;

	@:native("SetDepthDeepParallaxMaxLayers")
	public function setDepthDeepParallaxMaxLayers(layer:Int):Void;

	@:native("GetDepthDeepParallaxMaxLayers")
	public function getDepthDeepParallaxMaxLayers():Int;

	@:native("SetDepthDeepParallaxFlipTangent")
	public function setDepthDeepParallaxFlipTangent(flip:Bool):Void;

	@:native("GetDepthDeepParallaxFlipTangent")
	public function getDepthDeepParallaxFlipTangent():Bool;

	@:native("SetDepthDeepParallaxFlipBinormal")
	public function setDepthDeepParallaxFlipBinormal(flip:Bool):Void;

	@:native("GetDepthDeepParallaxFlipBinormal")
	public function getDepthDeepParallaxFlipBinormal():Bool;

	@:native("SetGrow")
	public function setGrow(amount:Single):Void;

	@:native("GetGrow")
	public function getGrow():Single;

	@:native("SetEmissionOperator")
	public function setEmissionOperator(operator_:godot.SpatialMaterial_EmissionOperatorEnum):Void;

	@:native("GetEmissionOperator")
	public function getEmissionOperator():godot.SpatialMaterial_EmissionOperatorEnum;

	@:native("SetAoLightAffect")
	public function setAoLightAffect(amount:Single):Void;

	@:native("GetAoLightAffect")
	public function getAoLightAffect():Single;

	@:native("SetAlphaScissorThreshold")
	public function setAlphaScissorThreshold(threshold:Single):Void;

	@:native("GetAlphaScissorThreshold")
	public function getAlphaScissorThreshold():Single;

	@:native("SetGrowEnabled")
	public function setGrowEnabled(enable:Bool):Void;

	@:native("IsGrowEnabled")
	public function isGrowEnabled():Bool;

	@:native("SetMetallicTextureChannel")
	public function setMetallicTextureChannel(channel:godot.SpatialMaterial_TextureChannel):Void;

	@:native("GetMetallicTextureChannel")
	public function getMetallicTextureChannel():godot.SpatialMaterial_TextureChannel;

	@:native("SetRoughnessTextureChannel")
	public function setRoughnessTextureChannel(channel:godot.SpatialMaterial_TextureChannel):Void;

	@:native("GetRoughnessTextureChannel")
	public function getRoughnessTextureChannel():godot.SpatialMaterial_TextureChannel;

	@:native("SetAoTextureChannel")
	public function setAoTextureChannel(channel:godot.SpatialMaterial_TextureChannel):Void;

	@:native("GetAoTextureChannel")
	public function getAoTextureChannel():godot.SpatialMaterial_TextureChannel;

	@:native("SetRefractionTextureChannel")
	public function setRefractionTextureChannel(channel:godot.SpatialMaterial_TextureChannel):Void;

	@:native("GetRefractionTextureChannel")
	public function getRefractionTextureChannel():godot.SpatialMaterial_TextureChannel;

	@:native("SetProximityFade")
	public function setProximityFade(enabled:Bool):Void;

	@:native("IsProximityFadeEnabled")
	public function isProximityFadeEnabled():Bool;

	@:native("SetProximityFadeDistance")
	public function setProximityFadeDistance(distance:Single):Void;

	@:native("GetProximityFadeDistance")
	public function getProximityFadeDistance():Single;

	@:native("SetDistanceFade")
	public function setDistanceFade(mode:godot.SpatialMaterial_DistanceFadeModeEnum):Void;

	@:native("GetDistanceFade")
	public function getDistanceFade():godot.SpatialMaterial_DistanceFadeModeEnum;

	@:native("SetDistanceFadeMaxDistance")
	public function setDistanceFadeMaxDistance(distance:Single):Void;

	@:native("GetDistanceFadeMaxDistance")
	public function getDistanceFadeMaxDistance():Single;

	@:native("SetDistanceFadeMinDistance")
	public function setDistanceFadeMinDistance(distance:Single):Void;

	@:native("GetDistanceFadeMinDistance")
	public function getDistanceFadeMinDistance():Single;
}
