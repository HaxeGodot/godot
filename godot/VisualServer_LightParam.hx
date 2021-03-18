// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.VisualServer.LightParam")
@:csNative
extern enum VisualServer_LightParam {
	/**		
		The light's energy.
	**/
	Energy;

	/**		
		The light's influence on specularity.
	**/
	Specular;

	/**		
		The light's range.
	**/
	Range;

	/**		
		The light's attenuation.
	**/
	Attenuation;

	/**		
		The spotlight's angle.
	**/
	SpotAngle;

	/**		
		The spotlight's attenuation.
	**/
	SpotAttenuation;

	/**		
		Scales the shadow color.
	**/
	ContactShadowSize;

	/**		
		Max distance that shadows will be rendered.
	**/
	ShadowMaxDistance;

	/**		
		Proportion of shadow atlas occupied by the first split.
	**/
	ShadowSplit1Offset;

	/**		
		Proportion of shadow atlas occupied by the second split.
	**/
	ShadowSplit2Offset;

	/**		
		Proportion of shadow atlas occupied by the third split. The fourth split occupies the rest.
	**/
	ShadowSplit3Offset;

	/**		
		Normal bias used to offset shadow lookup by object normal. Can be used to fix self-shadowing artifacts.
	**/
	ShadowNormalBias;

	/**		
		Bias the shadow lookup to fix self-shadowing artifacts.
	**/
	ShadowBias;

	/**		
		Increases bias on further splits to fix self-shadowing that only occurs far away from the camera.
	**/
	ShadowBiasSplitScale;

	/**		
		Represents the size of the `godot.VisualServer_LightParam` enum.
	**/
	Max;
}
