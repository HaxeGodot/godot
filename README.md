# Haxe/C# externs for Godot 3.2.3

Use the Godot engine with Haxe scripting, using the Haxe/C# target.

## How to use

Setup a C# project in Godot to have the `.csproj` file generated, and in `<PropertyGroups>` set:
```xml
<AllowUnsafeBlocks>true</AllowUnsafeBlocks>
<TargetFramework>netstandard2.1</TargetFramework>
```

Your haxe code must be compiled to C# but not natively compiled, this is handled by Godot,
as the project doesn't have a main class you must list all scripts classes in your hxml, or use the `godot.Godot.buildProject` macro,
it'll compile all scripts refered in the scenes (this require the scene to be saved after adding a new script).

Hxml example:
```hxml
--cs build
-D net-ver=50
-D no-compilation
-D analyzer-optimize
--class-path scripts
--library godot
--macro godot.Godot.buildProject()
--dce std
```

Adding a new script is a bit awkward for the moment:

* In Godot right click a node, attach script
* Set language as C#
* Set the path as the generated C# path, for instance if you have your Haxe script as `some.pack.MyScript` use `build/src/some/pack/MyScript.cs` (the file won't exist)
* Click on create, it'll open the C# file, ignore it
* In the editor save the scene
* Create your Haxe script
* Build your Haxe code, the C# file opened by Godot is replaced by the C# output of your Haxe script

A Godot editor plugin will be researched to streamline this process.

See [Squash the Creeps 3D](https://github.com/HaxeGodot/squash-the-creeps-3d/) sample for an example of a Godot project using Haxe.

## Differences with the C# API

* Casing
  * Variables and functions use the camelCase formating instead of C#'s PascalCase
  * Enums and types still use PascalCase
  * Constants use ALL_CAPS
  * Due to Haxe's module handling C# subtypes like `Godot.Animation.InterpolationType` are `godot.Animation_InterpolationType`
* Export meta for variables is `@:export`, C# is `[Export]`
* Haxe has different keywords than C#, if the C# API use an Haxe keyword it'll be suffixed with a `_`

## TODOs

* Mark deprecated functions
* Typesafe signals with support for lambdas
* Array access on `Vector2`, `Vector3`, `Transform`, `Transform2D`, `Quat`, `Color` and `Basis`
* Missing types `Godot.DynamicGodotObject` and `Godot.MarshalUtils`

## License

The generated externs and support code are MIT licensed, the original C# externs and the Godot engine are [MIT licensed](https://github.com/godotengine/godot#free-open-source-and-community-driven).
