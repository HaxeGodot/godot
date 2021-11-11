// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
An expression can be made of any arithmetic operation, built-in math function call, method call of a passed instance, or built-in type construction call.

An example expression text using the built-in math functions could be `sqrt(pow(3,2) + pow(4,2))`.

In the following example we use a `godot.LineEdit` node to write our expression and show the result.

```

onready var expression = Expression.new()

func _ready():
$LineEdit.connect("text_entered", self, "_on_text_entered")

func _on_text_entered(command):
var error = expression.parse(command, [])
if error != OK:
print(expression.get_error_text())
return
var result = expression.execute([], null, true)
if not expression.has_execute_failed():
$LineEdit.text = str(result)

```
**/
@:libType
@:csNative
@:native("Godot.Expression")
@:autoBuild(godot.Godot.buildUserClass())
extern class Expression extends godot.Reference {
	@:native("new")
	public function new():Void;

	#if doc_gen
	/**		
		Parses the expression and returns an `godot.Error` code.
		
		You can optionally specify names of variables that may appear in the expression with `input_names`, so that you can bind them when it gets executed.
		
		@param inputNames If the parameter is null, then the default value is Array.Empty&lt;string&gt;()
	**/
	@:native("Parse")
	public function parse(expression:std.String, ?inputNames:std.Array<std.String>):godot.Error;
	#else
	/**		
		Parses the expression and returns an `godot.Error` code.
		
		You can optionally specify names of variables that may appear in the expression with `input_names`, so that you can bind them when it gets executed.
		
		@param inputNames If the parameter is null, then the default value is Array.Empty&lt;string&gt;()
	**/
	@:native("Parse")
	public overload function parse(expression:std.String):godot.Error;

	/**		
		Parses the expression and returns an `godot.Error` code.
		
		You can optionally specify names of variables that may appear in the expression with `input_names`, so that you can bind them when it gets executed.
		
		@param inputNames If the parameter is null, then the default value is Array.Empty&lt;string&gt;()
	**/
	@:native("Parse")
	public overload function parse(expression:std.String, inputNames:HaxeArray<std.String>):godot.Error;
	#end

	#if doc_gen
	/**		
		Executes the expression that was previously parsed by `godot.Expression.parse` and returns the result. Before you use the returned object, you should check if the method failed by calling `godot.Expression.hasExecuteFailed`.
		
		If you defined input variables in `godot.Expression.parse`, you can specify their values in the inputs array, in the same order.
		
		@param inputs If the parameter is null, then the default value is new Godot.Collections.Array { }
	**/
	@:native("Execute")
	public function execute(?inputs:godot.collections.Array, ?baseInstance:godot.Object, ?showError:Bool):Dynamic;
	#else
	/**		
		Executes the expression that was previously parsed by `godot.Expression.parse` and returns the result. Before you use the returned object, you should check if the method failed by calling `godot.Expression.hasExecuteFailed`.
		
		If you defined input variables in `godot.Expression.parse`, you can specify their values in the inputs array, in the same order.
		
		@param inputs If the parameter is null, then the default value is new Godot.Collections.Array { }
	**/
	@:native("Execute")
	public overload function execute():Dynamic;

	/**		
		Executes the expression that was previously parsed by `godot.Expression.parse` and returns the result. Before you use the returned object, you should check if the method failed by calling `godot.Expression.hasExecuteFailed`.
		
		If you defined input variables in `godot.Expression.parse`, you can specify their values in the inputs array, in the same order.
		
		@param inputs If the parameter is null, then the default value is new Godot.Collections.Array { }
	**/
	@:native("Execute")
	public overload function execute(inputs:godot.collections.Array):Dynamic;

	/**		
		Executes the expression that was previously parsed by `godot.Expression.parse` and returns the result. Before you use the returned object, you should check if the method failed by calling `godot.Expression.hasExecuteFailed`.
		
		If you defined input variables in `godot.Expression.parse`, you can specify their values in the inputs array, in the same order.
		
		@param inputs If the parameter is null, then the default value is new Godot.Collections.Array { }
	**/
	@:native("Execute")
	public overload function execute(inputs:godot.collections.Array, baseInstance:godot.Object):Dynamic;

	/**		
		Executes the expression that was previously parsed by `godot.Expression.parse` and returns the result. Before you use the returned object, you should check if the method failed by calling `godot.Expression.hasExecuteFailed`.
		
		If you defined input variables in `godot.Expression.parse`, you can specify their values in the inputs array, in the same order.
		
		@param inputs If the parameter is null, then the default value is new Godot.Collections.Array { }
	**/
	@:native("Execute")
	public overload function execute(inputs:godot.collections.Array, baseInstance:godot.Object, showError:Bool):Dynamic;
	#end

	/**		
		Returns `true` if `godot.Expression.execute` has failed.
	**/
	@:native("HasExecuteFailed")
	public function hasExecuteFailed():Bool;

	/**		
		Returns the error text if `godot.Expression.parse` has failed.
	**/
	@:native("GetErrorText")
	public function getErrorText():std.String;
}
