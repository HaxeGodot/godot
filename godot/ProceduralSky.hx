// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
ProceduralSky provides a way to create an effective background quickly by defining procedural parameters for the sun, the sky and the ground. The sky and ground are very similar, they are defined by a color at the horizon, another color, and finally an easing curve to interpolate between these two colors. Similarly, the sun is described by a position in the sky, a color, and an easing curve. However, the sun also defines a minimum and maximum angle, these two values define at what distance the easing curve begins and ends from the sun, and thus end up defining the size of the sun in the sky.

The ProceduralSky is updated on the CPU after the parameters change. It is stored in a texture and then displayed as a background in the scene. This makes it relatively unsuitable for real-time updates during gameplay. However, with a small enough texture size, it can still be updated relatively frequently, as it is updated on a background thread when multi-threading is available.
**/
@:libType
@:csNative
@:native("Godot.ProceduralSky")
@:autoBuild(godot.Godot.buildUserClass())
extern class ProceduralSky extends godot.Sky {
	/**		
		Size of `godot.Texture` that the ProceduralSky will generate. The size is set using `godot.ProceduralSky_TextureSizeEnum`.
	**/
	@:native("TextureSize")
	public var textureSize:godot.ProceduralSky_TextureSizeEnum;

	/**		
		Amount of energy contribution from the sun.
	**/
	@:native("SunEnergy")
	public var sunEnergy:Single;

	/**		
		How quickly the sun fades away between `godot.ProceduralSky.sunAngleMin` and `godot.ProceduralSky.sunAngleMax`.
	**/
	@:native("SunCurve")
	public var sunCurve:Single;

	/**		
		Distance from center of sun where it fades out completely.
	**/
	@:native("SunAngleMax")
	public var sunAngleMax:Single;

	/**		
		Distance from sun where it goes from solid to starting to fade.
	**/
	@:native("SunAngleMin")
	public var sunAngleMin:Single;

	/**		
		The direction of the sun using polar coordinates.
	**/
	@:native("SunLongitude")
	public var sunLongitude:Single;

	/**		
		The sun's height using polar coordinates.
	**/
	@:native("SunLatitude")
	public var sunLatitude:Single;

	/**		
		The sun's color.
	**/
	@:native("SunColor")
	public var sunColor:godot.Color;

	/**		
		Amount of energy contribution from the ground.
	**/
	@:native("GroundEnergy")
	public var groundEnergy:Single;

	/**		
		How quickly the `godot.ProceduralSky.groundHorizonColor` fades into the `godot.ProceduralSky.groundBottomColor`.
	**/
	@:native("GroundCurve")
	public var groundCurve:Single;

	/**		
		Color of the ground at the horizon.
	**/
	@:native("GroundHorizonColor")
	public var groundHorizonColor:godot.Color;

	/**		
		Color of the ground at the bottom.
	**/
	@:native("GroundBottomColor")
	public var groundBottomColor:godot.Color;

	/**		
		Amount of energy contribution from the sky.
	**/
	@:native("SkyEnergy")
	public var skyEnergy:Single;

	/**		
		How quickly the `godot.ProceduralSky.skyHorizonColor` fades into the `godot.ProceduralSky.skyTopColor`.
	**/
	@:native("SkyCurve")
	public var skyCurve:Single;

	/**		
		Color of the sky at the horizon.
	**/
	@:native("SkyHorizonColor")
	public var skyHorizonColor:godot.Color;

	/**		
		Color of the sky at the top.
	**/
	@:native("SkyTopColor")
	public var skyTopColor:godot.Color;

	@:native("new")
	public function new():Void;

	@:native("SetSkyTopColor")
	public function setSkyTopColor(color:godot.Color):Void;

	@:native("GetSkyTopColor")
	public function getSkyTopColor():godot.Color;

	@:native("SetSkyHorizonColor")
	public function setSkyHorizonColor(color:godot.Color):Void;

	@:native("GetSkyHorizonColor")
	public function getSkyHorizonColor():godot.Color;

	@:native("SetSkyCurve")
	public function setSkyCurve(curve:Single):Void;

	@:native("GetSkyCurve")
	public function getSkyCurve():Single;

	@:native("SetSkyEnergy")
	public function setSkyEnergy(energy:Single):Void;

	@:native("GetSkyEnergy")
	public function getSkyEnergy():Single;

	@:native("SetGroundBottomColor")
	public function setGroundBottomColor(color:godot.Color):Void;

	@:native("GetGroundBottomColor")
	public function getGroundBottomColor():godot.Color;

	@:native("SetGroundHorizonColor")
	public function setGroundHorizonColor(color:godot.Color):Void;

	@:native("GetGroundHorizonColor")
	public function getGroundHorizonColor():godot.Color;

	@:native("SetGroundCurve")
	public function setGroundCurve(curve:Single):Void;

	@:native("GetGroundCurve")
	public function getGroundCurve():Single;

	@:native("SetGroundEnergy")
	public function setGroundEnergy(energy:Single):Void;

	@:native("GetGroundEnergy")
	public function getGroundEnergy():Single;

	@:native("SetSunColor")
	public function setSunColor(color:godot.Color):Void;

	@:native("GetSunColor")
	public function getSunColor():godot.Color;

	@:native("SetSunLatitude")
	public function setSunLatitude(degrees:Single):Void;

	@:native("GetSunLatitude")
	public function getSunLatitude():Single;

	@:native("SetSunLongitude")
	public function setSunLongitude(degrees:Single):Void;

	@:native("GetSunLongitude")
	public function getSunLongitude():Single;

	@:native("SetSunAngleMin")
	public function setSunAngleMin(degrees:Single):Void;

	@:native("GetSunAngleMin")
	public function getSunAngleMin():Single;

	@:native("SetSunAngleMax")
	public function setSunAngleMax(degrees:Single):Void;

	@:native("GetSunAngleMax")
	public function getSunAngleMax():Single;

	@:native("SetSunCurve")
	public function setSunCurve(curve:Single):Void;

	@:native("GetSunCurve")
	public function getSunCurve():Single;

	@:native("SetSunEnergy")
	public function setSunEnergy(energy:Single):Void;

	@:native("GetSunEnergy")
	public function getSunEnergy():Single;

	@:native("SetTextureSize")
	public function setTextureSize(size:godot.ProceduralSky_TextureSizeEnum):Void;

	@:native("GetTextureSize")
	public function getTextureSize():godot.ProceduralSky_TextureSizeEnum;
}
