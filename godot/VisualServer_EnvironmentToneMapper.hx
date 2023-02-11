// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.VisualServer.EnvironmentToneMapper")
@:csNative
extern enum VisualServer_EnvironmentToneMapper {
	/**		
		Output color as they came in. This can cause bright lighting to look blown out, with noticeable clipping in the output colors.
	**/
	Linear;

	/**		
		Use the Reinhard tonemapper. Performs a variation on rendered pixels' colors by this formula: `color = color / (1 + color)`. This avoids clipping bright highlights, but the resulting image can look a bit dull.
	**/
	Reinhard;

	/**		
		Use the filmic tonemapper. This avoids clipping bright highlights, with a resulting image that usually looks more vivid than `godot.VisualServer_EnvironmentToneMapper.reinhard`.
	**/
	Filmic;

	/**		
		Use the legacy Godot version of the Academy Color Encoding System tonemapper. Unlike `godot.VisualServer_EnvironmentToneMapper.acesFitted`, this version of ACES does not handle bright lighting in a physically accurate way. ACES typically has a more contrasted output compared to `godot.VisualServer_EnvironmentToneMapper.reinhard` and `godot.VisualServer_EnvironmentToneMapper.filmic`.
		
		Note: This tonemapping operator will be removed in Godot 4.0 in favor of the more accurate `godot.VisualServer_EnvironmentToneMapper.acesFitted`.
	**/
	Aces;

	/**		
		Use the Academy Color Encoding System tonemapper. ACES is slightly more expensive than other options, but it handles bright lighting in a more realistic fashion by desaturating it as it becomes brighter. ACES typically has a more contrasted output compared to `godot.VisualServer_EnvironmentToneMapper.reinhard` and `godot.VisualServer_EnvironmentToneMapper.filmic`.
	**/
	AcesFitted;
}
