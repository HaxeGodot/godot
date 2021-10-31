package godot;

import godot.collections.Array;

class ArrayIterator {
	final handle:cs.system.collections.IEnumerator;
	var hasValue = true;

	@:allow(godot.collections.Array)
	function new(array:Array) {
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
