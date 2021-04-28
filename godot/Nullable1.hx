package godot;

import cs.system.Nullable_1;

@:dox(hide)
@:noCompletion
abstract Nullable1<T>(Nullable_1<T>) from Nullable_1<T> to Nullable_1<T> {
	@:from static extern inline function fromT<T>(t:T):Nullable1<T> {
		return new Nullable_1(t);
	}
}
