package godot;

import haxe.Rest;
import haxe.macro.Expr;

@:dox(hide)
@:noCompletion
class CustomSignalUsings {
	/**
		Emit the signal.

		The arguments type and number are checked at compile time.
	**/
	public macro static function emitSignal<T>(signal:ExprOf<CustomSignal<T>>, args:Rest<Expr>) {
		return macro for (fn in @:privateAccess $signal.callbacks) { fn($a{args}); };
	}
}
