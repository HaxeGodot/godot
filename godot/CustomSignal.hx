package godot;

/**
	User custom signal with the same api as the built-in signals.

	Naming the function signature arguments, if any, is recommended for improved error messages:
	```haxe
	final myCustomSignal = new CustomSignal<(name:String) -> Void>("myCustomSignal");
	```
**/
#if !doc_gen
@:using(godot.CustomSignalUsings)
#end
class CustomSignal<T> {
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

	/**
		Connects the custom signal to the `callback`.

		A signal can only be connected once to a `callback`. It will throw an error if already connected.
		To avoid this, first, use `isConnected` to check for existing connections.
	**/
	public function connect(callback:T#if !doc_gen, ?pos:haxe.PosInfos#end) {
		#if !doc_gen
		if (isConnected(callback)) {
			GD.pushError('Custom signal \'$name\' is already connected to given method at ${pos.fileName}:${pos.lineNumber}');
		} else {
			callbacks.push(callback);
		}
		#end
	}

	/**
		Disconnects the custom signal from the `callback`.

		If you try to disconnect a connection that does not exist, the method will throw an error.
		Use `isConnected` to ensure that the connection exists.
	**/
	public function disconnect(callback:T#if !doc_gen, ?pos:haxe.PosInfos#end) {
		#if !doc_gen
		if (!isConnected(callback)) {
			GD.pushError('Disconnecting nonexistent custom signal \'$name\' at ${pos.fileName}:${pos.lineNumber}');
		} else {
			callbacks.push(callback);
		}
		#end
	}

	/**
		Returns `true` if a connection exists between this custom signal and the `callback`.
	**/
	public function isConnected(callback:T):Bool {
		return callbacks.indexOf(callback) != -1;
	}

	#if doc_gen
	/**
		Emit the custom signal.

		The arguments type and number are checked at compile time.
	**/
	public function emitSignal(args:haxe.Rest<Any>):Void {
	}
	#end
}
