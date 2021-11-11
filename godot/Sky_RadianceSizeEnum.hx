// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.Sky.RadianceSizeEnum")
@:csNative
extern enum Sky_RadianceSizeEnum {
	/**		
		Radiance texture size is 32×32 pixels.
	**/
	Size32;

	/**		
		Radiance texture size is 64×64 pixels.
	**/
	Size64;

	/**		
		Radiance texture size is 128×128 pixels.
	**/
	Size128;

	/**		
		Radiance texture size is 256×256 pixels.
	**/
	Size256;

	/**		
		Radiance texture size is 512×512 pixels.
	**/
	Size512;

	/**		
		Radiance texture size is 1024×1024 pixels.
		
		Note: `godot.Sky_RadianceSizeEnum.size1024` is not exposed in the inspector as it is known to cause GPU hangs on certain systems.
	**/
	Size1024;

	/**		
		Radiance texture size is 2048×2048 pixels.
		
		Note: `godot.Sky_RadianceSizeEnum.size2048` is not exposed in the inspector as it is known to cause GPU hangs on certain systems.
	**/
	Size2048;

	/**		
		Represents the size of the `godot.Sky_RadianceSizeEnum` enum.
	**/
	Max;
}
