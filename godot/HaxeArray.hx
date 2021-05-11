package godot;

import cs.NativeArray;

@:dox(hide)
@:noCompletion
abstract HaxeArray<T>(NativeArray<T>) from NativeArray<T> to NativeArray<T> {
	@:from static extern inline function fromArray<T>(array:Array<T>):HaxeArray<T> {
		return cs.Lib.nativeArray(array, true);
	}
}
