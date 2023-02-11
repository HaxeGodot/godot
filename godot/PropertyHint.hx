// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.PropertyHint")
@:csNative
extern enum PropertyHint {
	/**		
		No hint for the edited property.
	**/
	None;

	/**		
		Hints that an integer or float property should be within a range specified via the hint string `"min,max"` or `"min,max,step"`. The hint string can optionally include `"or_greater"` and/or `"or_lesser"` to allow manual input going respectively above the max or below the min values. Example: `"-360,360,1,or_greater,or_lesser"`.
	**/
	Range;

	/**		
		Hints that a float property should be within an exponential range specified via the hint string `"min,max"` or `"min,max,step"`. The hint string can optionally include `"or_greater"` and/or `"or_lesser"` to allow manual input going respectively above the max or below the min values. Example: `"0.01,100,0.01,or_greater"`.
	**/
	ExpRange;

	/**		
		Hints that an integer, float or string property is an enumerated value to pick in a list specified via a hint string.
		
		The hint string is a comma separated list of names such as `"Hello,Something,Else"`. For integer and float properties, the first name in the list has value 0, the next 1, and so on. Explicit values can also be specified by appending `:integer` to the name, e.g. `"Zero,One,Three:3,Four,Six:6"`.
	**/
	Enum;

	/**		
		Hints that a float property should be edited via an exponential easing function. The hint string can include `"attenuation"` to flip the curve horizontally and/or `"inout"` to also include in/out easing.
	**/
	ExpEasing;

	/**		
		Deprecated hint, unused.
	**/
	Length;

	/**		
		Deprecated hint, unused.
	**/
	KeyAccel;

	/**		
		Hints that an integer property is a bitmask with named bit flags. For example, to allow toggling bits 0, 1, 2 and 4, the hint could be something like `"Bit0,Bit1,Bit2,,Bit4"`.
	**/
	Flags;

	/**		
		Hints that an integer property is a bitmask using the optionally named 2D render layers.
	**/
	Layers2dRender;

	/**		
		Hints that an integer property is a bitmask using the optionally named 2D physics layers.
	**/
	Layers2dPhysics;

	/**		
		Hints that an integer property is a bitmask using the optionally named 3D render layers.
	**/
	Layers3dRender;

	/**		
		Hints that an integer property is a bitmask using the optionally named 3D physics layers.
	**/
	Layers3dPhysics;

	/**		
		Hints that a string property is a path to a file. Editing it will show a file dialog for picking the path. The hint string can be a set of filters with wildcards like `"*.png,*.jpg"`.
	**/
	File;

	/**		
		Hints that a string property is a path to a directory. Editing it will show a file dialog for picking the path.
	**/
	Dir;

	/**		
		Hints that a string property is an absolute path to a file outside the project folder. Editing it will show a file dialog for picking the path. The hint string can be a set of filters with wildcards like `"*.png,*.jpg"`.
	**/
	GlobalFile;

	/**		
		Hints that a string property is an absolute path to a directory outside the project folder. Editing it will show a file dialog for picking the path.
	**/
	GlobalDir;

	/**		
		Hints that a property is an instance of a `godot.Resource`-derived type, optionally specified via the hint string (e.g. `"Texture"`). Editing it will show a popup menu of valid resource types to instantiate.
	**/
	ResourceType;

	/**		
		Hints that a string property is text with line breaks. Editing it will show a text input field where line breaks can be typed.
	**/
	MultilineText;

	/**		
		Hints that a string property should have a placeholder text visible on its input field, whenever the property is empty. The hint string is the placeholder text to use.
	**/
	PlaceholderText;

	/**		
		Hints that a color property should be edited without changing its alpha component, i.e. only R, G and B channels are edited.
	**/
	ColorNoAlpha;

	/**		
		Hints that an image is compressed using lossy compression.
	**/
	ImageCompressLossy;

	/**		
		Hints that an image is compressed using lossless compression.
	**/
	ImageCompressLossless;
}
