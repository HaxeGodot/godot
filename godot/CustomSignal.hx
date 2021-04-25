package godot;

import haxe.Constraints.Function;

// TODO doc class and methods
class CustomSignal<T:Function> {
	final callbacks:Array<T>;
	final name:String;

	/**
		Create a new custom signal.

		@param name Optional name, used for improved debug info.
	**/
	public function new(name:String = "") {
		this.callbacks = [];
		this.name = name;
	}


	public function isConnected(callback:T):Bool {
		return callbacks.indexOf(callback) != -1;
	}

	// TODO flags
	public function connect(callback:T#if !doc_gen, ?pos:haxe.PosInfos#end) {
		#if !doc_gen
		if (isConnected(callback)) {
			GD.pushError('Custom signal \'$name\' is already connected to given method at ${pos.fileName}:${pos.lineNumber}');
		} else {
			callbacks.push(callback);
		}
		#end
	}

	public function disconnect(callback:T#if !doc_gen, ?pos:haxe.PosInfos#end) {
		#if !doc_gen
		if (!isConnected(callback)) {
			GD.pushError('Disconnecting nonexistent custom signal \'$name\' at ${pos.fileName}:${pos.lineNumber}');
		} else {
			callbacks.push(callback);
		}
		#end
	}

	// TODO find typesafe way, macro?
	public function emit(arguments:Array<Any>) {
		for (callback in callbacks) {
			Reflect.callMethod(null, callback, arguments);
		}
	}
}
