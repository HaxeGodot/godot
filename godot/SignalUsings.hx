package godot;

import haxe.Rest;
import haxe.macro.Expr;

@:dox(hide)
@:noCompletion
class SignalUsings {
	/**
		Emit the signal.

		The arguments type and number are checked at compile time.
	**/
	public macro static function emitSignal<T>(signal:ExprOf<Signal<T>>, args:Rest<Expr>) {
		return macro @:privateAccess $signal.from.emitSignal(signal.signal, $a{args});
	}
}
