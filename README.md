![](https://raw.github.com/HaxeGodot/godot/main/.github/logo.png)

[haxe externs](https://github.com/HaxeGodot/godot) | [editor plugin](https://github.com/HaxeGodot/editor-plugin) | [demo](https://github.com/HaxeGodot/squash-the-creeps-3d) | [api doc](https://haxegodot.github.io/godot/) | [discussions](https://github.com/HaxeGodot/godot/discussions)

[![CI](https://img.shields.io/github/workflow/status/HaxeGodot/godot/Main.svg?logo=github)](https://github.com/HaxeGodot/godot/actions?query=workflow%3AMain)
[![Haxelib Version](https://badgen.net/haxelib/v/godot)](https://lib.haxe.org/p/godot)
[![Haxelib Downloads](https://badgen.net/haxelib/d/godot?color=blue)](https://lib.haxe.org/p/godot)
[![Haxelib License](https://badgen.net/haxelib/license/godot)](LICENSE.md)

# Haxe/C# externs for Godot 3.3.0

Use the Godot engine with Haxe scripting, using the Haxe/C# target.

Using the [editor plugin](https://github.com/HaxeGodot/editor-plugin) plugin is recommended, see the documentation on how to [install it](https://github.com/HaxeGodot/editor-plugin#installation), [setup a project](https://github.com/HaxeGodot/editor-plugin#setup), [using Haxe scripts](https://github.com/HaxeGodot/editor-plugin#haxe-scripts) and [building your project](https://github.com/HaxeGodot/editor-plugin#building).

Godot will show many warnings about the Haxe generated C# code, this is because of <https://github.com/godotengine/godot/issues/28293>.

## Differences with the C# API

* Casing
  * Variables and functions use the camelCase formating instead of C#'s PascalCase
  * Enums and types still use PascalCase
  * Constants use ALL_CAPS
  * Due to Haxe's module handling C# subtypes like `Godot.Animation.InterpolationType` are `godot.Animation_InterpolationType`
* Export meta for variables is `@:export`, C# is `[Export]`
* Haxe has different keywords than C#, if the C# API use an Haxe keyword it'll be suffixed with a `_`
* Typesafe signals with lambda support, for improved safety and dce support
  * `signal_name` become a `onSignalName` variable of type `Signal` with `connect`/`disconnect`/`isConnected` functions
  * Replace `mynode.connect("the_signal", myHandler, "myFunction")` with `mynode.onTheSignal.connect(myHandler.myFunction)`
  * This prevent typos on signal name, function name, and mismatch signature on the connected function or on the `emitSignal` function
  * Define your own signals with `CustomSignal<FunctionType>` and use it with the same api as the built-in signals
* Typesafe actions
  * The `project.godot` file is read for its input action list and used to populate the `godot.Action` enum
  * You can pass an `Action` to functions like `Input.isActionPressed` eg `Input.isActionPressed(MoveLeft)` instead of `Input.isActionPressed("MoveLeft")`
  * This prevents typos on actions and give you autocompletion of the actions
  * Note: the patched functions still accept strings as normal
* The `as` operator is a function on godot object, if using `godot.Utils`
* Similar to GDScript you can delay a variable initialization until the node is ready by using `@:onready var myNode = getNode("Path/To/Node).as(Spatial);`, and `myNode` will only call `getNode` once `_Ready` is called

## TODOs

* Mark deprecated functions
* Array access on `Vector2`, `Vector3`, `Transform`, `Transform2D`, `Quat`, `Color` and `Basis`
* Missing types `Godot.DynamicGodotObject` and `Godot.MarshalUtils`
* Explicit constructors
* Function with type parameters on `PackedScene.Instance`, `PackedScene.InstanceOrNull`
* `cs.system.EventHandler_1` on `GD.UnhandledException`

## License

The generated externs and support code are MIT licensed, the original C# externs and the Godot engine are [MIT licensed](https://github.com/godotengine/godot#free-open-source-and-community-driven).
