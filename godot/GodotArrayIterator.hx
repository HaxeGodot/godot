package godot;

@:dox(hide)
@:noCompletion
class GodotArrayIterator {
	final handle:cs.system.collections.IEnumerator;
	var hasValue = true;

	@:allow(godot.collections.Array)
	function new(array:godot.collections.Array) {
		handle = array.getEnumerator();
	}

	public function hasNext():Bool {
		return hasValue;
	}

	public function next():Any {
		final value = handle.Current;
		hasValue = handle.MoveNext();
		return value;
	}
}
