// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.GIProbe.SubdivEnum")
@:csNative
extern enum GIProbe_SubdivEnum {
	/**		
		Use 64 subdivisions. This is the lowest quality setting, but the fastest. Use it if you can, but especially use it on lower-end hardware.
	**/
	Subdiv64;

	/**		
		Use 128 subdivisions. This is the default quality setting.
	**/
	Subdiv128;

	/**		
		Use 256 subdivisions.
	**/
	Subdiv256;

	/**		
		Use 512 subdivisions. This is the highest quality setting, but the slowest. On lower-end hardware, this could cause the GPU to stall.
	**/
	Subdiv512;

	/**		
		Represents the size of the `godot.GIProbe_SubdivEnum` enum.
	**/
	Max;
}
