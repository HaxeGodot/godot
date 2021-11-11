package godot;

/**
	Typesafe signal.
**/
@:nativeGen
#if !doc_gen
@:using(godot.SignalUsings)
#end
class Signal<T> {
	final from:Object;
	final signal:String;
	final connectFn:(Object, String, T)->Void;
	final disconnectFn:(Object, String, T)->Void;
	final isConnectedFn:(Object, String, T)->Bool;

	@:allow(godot)
	function new(from:Object, signal:String, connectFn:(Object, String, T)->Void, disconnectFn:(Object, String, T)->Void, isConnectedFn:(Object, String, T)->Bool) {
		this.from = from;
		this.signal = signal;
		this.connectFn = connectFn;
		this.disconnectFn = disconnectFn;
		this.isConnectedFn = isConnectedFn;
	}

	/**
		Connects the signal to the `callback`.

		A signal can only be connected once to a `callback`. It will throw an error if already connected.
		To avoid this, first, use `isConnected` to check for existing connections.
	**/
	public function connect(callback:T):Void {
		connectFn(from, signal, callback);
	}

	/**
		Disconnects the signal from the `callback`.

		If you try to disconnect a connection that does not exist, the method will throw an error.
		Use `isConnected` to ensure that the connection exists.
	**/
	public function disconnect(callback:T):Void {
		disconnectFn(from, signal, callback);
	}

	/**
		Returns `true` if a connection exists between this signal and the `callback`.
	**/
	public function isConnected(callback:T):Bool {
		return isConnectedFn(from, signal, callback);
	}

	#if doc_gen
	/**
		Emit the signal.

		The arguments type and number are checked at compile time.
	**/
	public function emitSignal(args:haxe.Rest<Any>):Void {
	}
	#end
}

@:nativeGen
@:dox(hide)
@:noCompletion
class SignalHandler {
	public static function isSignalConnected<T>(refs:Map<String, Map<Object, Array<T>>>, source:Object, signal:String, callback:T):Bool {
		final key = '${source.getInstanceId()}-$signal';

		if (!refs.exists(key)) {
			return false;
		}

		for (_ => ref in refs.get(key)) {
			if (ref.indexOf(callback) != -1) {
				return true;
			}
		}

		return false;
	}

	public static function disconnectSignal<T>(refs:Map<String, Map<Object, Array<T>>>, source:Object, signal:String, callback:T) {
		final key = '${source.getInstanceId()}-$signal';

		if (!isSignalConnected(refs, source, signal, callback)) {
			source.disconnect(signal, new Reference(), "handleSignal");
			return;
		}

		for (handler => ref in refs.get(key)) {
			if (ref.indexOf(callback) != -1) {
				source.disconnect(signal, handler, "handleSignal");
				refs.get(key).remove(handler);

				if (Lambda.count(refs.get(key)) == 0) {
					refs.remove(key);
				}

				break;
			}
		}
	}

	public static function connectSignal<T>(refs:Map<String, Map<Object, Array<T>>>, builder:(Object, String, T) -> Object, source:Object, signal:String,
			callback:T) {
		final key = '${source.getInstanceId()}-$signal';
		var handler = null;

		if (refs.exists(key)) {
			for (h => ref in refs.get(key)) {
				if (ref.indexOf(callback) != -1) {
					handler = h;
					break;
				}
			}
		}

		if (handler == null) {
			handler = builder(source, signal, callback);
		}

		source.connect(signal, handler, "handleSignal");
	}
}

@:nativeGen
@:dox(hide)
@:noCompletion
class SignalHandlerVoidVoid extends Reference {
	static final refs = new Map<String, Map<Object, Array<Void->Void>>>();

	public static function isSignalConnected(source:Object, signal:String, callback:Void->Void):Bool {
		return SignalHandler.isSignalConnected(refs, source, signal, callback);
	}

	public static function disconnectSignal(source:Object, signal:String, callback:Void->Void) {
		SignalHandler.disconnectSignal(refs, source, signal, callback);
	}

	public static function connectSignal(source:Object, signal:String, callback:Void->Void) {
		SignalHandler.connectSignal(refs, SignalHandlerVoidVoid.new, source, signal, callback);
	}

	final callback:Void->Void;

	function new(source:Object, signal:String, callback:Void->Void) {
		super();
		this.callback = callback;

		final key = "" + source.getInstanceId() + "-" + signal;

		if (!refs.exists(key)) {
			refs.set(key, new Map<Object, Array<Void->Void>>());
		}

		refs.get(key).set(this, [callback]);
	}

	@:keep function handleSignal() {
		callback();
	}
}

@:nativeGen
@:dox(hide)
@:noCompletion
class SignalHandlerViewportVoid extends Reference {
	static final refs = new Map<String, Map<Object, Array<Viewport->Void>>>();

	public static function isSignalConnected(source:Object, signal:String, callback:Viewport->Void):Bool {
		return SignalHandler.isSignalConnected(refs, source, signal, callback);
	}

	public static function disconnectSignal(source:Object, signal:String, callback:Viewport->Void) {
		SignalHandler.disconnectSignal(refs, source, signal, callback);
	}

	public static function connectSignal(source:Object, signal:String, callback:Viewport->Void) {
		SignalHandler.connectSignal(refs, SignalHandlerViewportVoid.new, source, signal, callback);
	}

	final callback:Viewport->Void;

	function new(source:Object, signal:String, callback:Viewport->Void) {
		super();
		this.callback = callback;

		final key = "" + source.getInstanceId() + "-" + signal;

		if (!refs.exists(key)) {
			refs.set(key, new Map<Object, Array<Viewport->Void>>());
		}

		refs.get(key).set(this, [callback]);
	}

	@:keep function handleSignal(arg0:Viewport) {
		callback(arg0);
	}
}

@:nativeGen
@:dox(hide)
@:noCompletion
class SignalHandlerVector3Void extends Reference {
	static final refs = new Map<String, Map<Object, Array<Vector3->Void>>>();

	public static function isSignalConnected(source:Object, signal:String, callback:Vector3->Void):Bool {
		return SignalHandler.isSignalConnected(refs, source, signal, callback);
	}

	public static function disconnectSignal(source:Object, signal:String, callback:Vector3->Void) {
		SignalHandler.disconnectSignal(refs, source, signal, callback);
	}

	public static function connectSignal(source:Object, signal:String, callback:Vector3->Void) {
		SignalHandler.connectSignal(refs, SignalHandlerVector3Void.new, source, signal, callback);
	}

	final callback:Vector3->Void;

	function new(source:Object, signal:String, callback:Vector3->Void) {
		super();
		this.callback = callback;

		final key = "" + source.getInstanceId() + "-" + signal;

		if (!refs.exists(key)) {
			refs.set(key, new Map<Object, Array<Vector3->Void>>());
		}

		refs.get(key).set(this, [callback]);
	}

	@:keep function handleSignal(arg0:Vector3) {
		callback(arg0);
	}
}

@:nativeGen
@:dox(hide)
@:noCompletion
class SignalHandlerVector2Void extends Reference {
	static final refs = new Map<String, Map<Object, Array<Vector2->Void>>>();

	public static function isSignalConnected(source:Object, signal:String, callback:Vector2->Void):Bool {
		return SignalHandler.isSignalConnected(refs, source, signal, callback);
	}

	public static function disconnectSignal(source:Object, signal:String, callback:Vector2->Void) {
		SignalHandler.disconnectSignal(refs, source, signal, callback);
	}

	public static function connectSignal(source:Object, signal:String, callback:Vector2->Void) {
		SignalHandler.connectSignal(refs, SignalHandlerVector2Void.new, source, signal, callback);
	}

	final callback:Vector2->Void;

	function new(source:Object, signal:String, callback:Vector2->Void) {
		super();
		this.callback = callback;

		final key = "" + source.getInstanceId() + "-" + signal;

		if (!refs.exists(key)) {
			refs.set(key, new Map<Object, Array<Vector2->Void>>());
		}

		refs.get(key).set(this, [callback]);
	}

	@:keep function handleSignal(arg0:Vector2) {
		callback(arg0);
	}
}

@:nativeGen
@:dox(hide)
@:noCompletion
class SignalHandlerVector2Vector2Void extends Reference {
	static final refs = new Map<String, Map<Object, Array<Vector2->Vector2->Void>>>();

	public static function isSignalConnected(source:Object, signal:String, callback:Vector2->Vector2->Void):Bool {
		return SignalHandler.isSignalConnected(refs, source, signal, callback);
	}

	public static function disconnectSignal(source:Object, signal:String, callback:Vector2->Vector2->Void) {
		SignalHandler.disconnectSignal(refs, source, signal, callback);
	}

	public static function connectSignal(source:Object, signal:String, callback:Vector2->Vector2->Void) {
		SignalHandler.connectSignal(refs, SignalHandlerVector2Vector2Void.new, source, signal, callback);
	}

	final callback:Vector2->Vector2->Void;

	function new(source:Object, signal:String, callback:Vector2->Vector2->Void) {
		super();
		this.callback = callback;

		final key = "" + source.getInstanceId() + "-" + signal;

		if (!refs.exists(key)) {
			refs.set(key, new Map<Object, Array<Vector2->Vector2->Void>>());
		}

		refs.get(key).set(this, [callback]);
	}

	@:keep function handleSignal(arg0:Vector2, arg1:Vector2) {
		callback(arg0, arg1);
	}
}

@:nativeGen
@:dox(hide)
@:noCompletion
class SignalHandlerVariantVoid extends Reference {
	static final refs = new Map<String, Map<Object, Array<Any->Void>>>();

	public static function isSignalConnected(source:Object, signal:String, callback:Any->Void):Bool {
		return SignalHandler.isSignalConnected(refs, source, signal, callback);
	}

	public static function disconnectSignal(source:Object, signal:String, callback:Any->Void) {
		SignalHandler.disconnectSignal(refs, source, signal, callback);
	}

	public static function connectSignal(source:Object, signal:String, callback:Any->Void) {
		SignalHandler.connectSignal(refs, SignalHandlerVariantVoid.new, source, signal, callback);
	}

	final callback:Any->Void;

	function new(source:Object, signal:String, callback:Any->Void) {
		super();
		this.callback = callback;

		final key = "" + source.getInstanceId() + "-" + signal;

		if (!refs.exists(key)) {
			refs.set(key, new Map<Object, Array<Any->Void>>());
		}

		refs.get(key).set(this, [callback]);
	}

	@:keep function handleSignal(arg0:Any) {
		callback(arg0);
	}
}

@:nativeGen
@:dox(hide)
@:noCompletion
class SignalHandlerVariantVariantVoid extends Reference {
	static final refs = new Map<String, Map<Object, Array<Any->Any->Void>>>();

	public static function isSignalConnected(source:Object, signal:String, callback:Any->Any->Void):Bool {
		return SignalHandler.isSignalConnected(refs, source, signal, callback);
	}

	public static function disconnectSignal(source:Object, signal:String, callback:Any->Any->Void) {
		SignalHandler.disconnectSignal(refs, source, signal, callback);
	}

	public static function connectSignal(source:Object, signal:String, callback:Any->Any->Void) {
		SignalHandler.connectSignal(refs, SignalHandlerVariantVariantVoid.new, source, signal, callback);
	}

	final callback:Any->Any->Void;

	function new(source:Object, signal:String, callback:Any->Any->Void) {
		super();
		this.callback = callback;

		final key = "" + source.getInstanceId() + "-" + signal;

		if (!refs.exists(key)) {
			refs.set(key, new Map<Object, Array<Any->Any->Void>>());
		}

		refs.get(key).set(this, [callback]);
	}

	@:keep function handleSignal(arg0:Any, arg1:Any) {
		callback(arg0, arg1);
	}
}

@:nativeGen
@:dox(hide)
@:noCompletion
class SignalHandlerTreeItemVoid extends Reference {
	static final refs = new Map<String, Map<Object, Array<TreeItem->Void>>>();

	public static function isSignalConnected(source:Object, signal:String, callback:TreeItem->Void):Bool {
		return SignalHandler.isSignalConnected(refs, source, signal, callback);
	}

	public static function disconnectSignal(source:Object, signal:String, callback:TreeItem->Void) {
		SignalHandler.disconnectSignal(refs, source, signal, callback);
	}

	public static function connectSignal(source:Object, signal:String, callback:TreeItem->Void) {
		SignalHandler.connectSignal(refs, SignalHandlerTreeItemVoid.new, source, signal, callback);
	}

	final callback:TreeItem->Void;

	function new(source:Object, signal:String, callback:TreeItem->Void) {
		super();
		this.callback = callback;

		final key = "" + source.getInstanceId() + "-" + signal;

		if (!refs.exists(key)) {
			refs.set(key, new Map<Object, Array<TreeItem->Void>>());
		}

		refs.get(key).set(this, [callback]);
	}

	@:keep function handleSignal(arg0:TreeItem) {
		callback(arg0);
	}
}

@:nativeGen
@:dox(hide)
@:noCompletion
class SignalHandlerTreeItemIntIntVoid extends Reference {
	static final refs = new Map<String, Map<Object, Array<TreeItem->Int->Int->Void>>>();

	public static function isSignalConnected(source:Object, signal:String, callback:TreeItem->Int->Int->Void):Bool {
		return SignalHandler.isSignalConnected(refs, source, signal, callback);
	}

	public static function disconnectSignal(source:Object, signal:String, callback:TreeItem->Int->Int->Void) {
		SignalHandler.disconnectSignal(refs, source, signal, callback);
	}

	public static function connectSignal(source:Object, signal:String, callback:TreeItem->Int->Int->Void) {
		SignalHandler.connectSignal(refs, SignalHandlerTreeItemIntIntVoid.new, source, signal, callback);
	}

	final callback:TreeItem->Int->Int->Void;

	function new(source:Object, signal:String, callback:TreeItem->Int->Int->Void) {
		super();
		this.callback = callback;

		final key = "" + source.getInstanceId() + "-" + signal;

		if (!refs.exists(key)) {
			refs.set(key, new Map<Object, Array<TreeItem->Int->Int->Void>>());
		}

		refs.get(key).set(this, [callback]);
	}

	@:keep function handleSignal(arg0:TreeItem, arg1:Int, arg2:Int) {
		callback(arg0, arg1, arg2);
	}
}

@:nativeGen
@:dox(hide)
@:noCompletion
class SignalHandlerTreeItemIntBoolVoid extends Reference {
	static final refs = new Map<String, Map<Object, Array<TreeItem->Int->Bool->Void>>>();

	public static function isSignalConnected(source:Object, signal:String, callback:TreeItem->Int->Bool->Void):Bool {
		return SignalHandler.isSignalConnected(refs, source, signal, callback);
	}

	public static function disconnectSignal(source:Object, signal:String, callback:TreeItem->Int->Bool->Void) {
		SignalHandler.disconnectSignal(refs, source, signal, callback);
	}

	public static function connectSignal(source:Object, signal:String, callback:TreeItem->Int->Bool->Void) {
		SignalHandler.connectSignal(refs, SignalHandlerTreeItemIntBoolVoid.new, source, signal, callback);
	}

	final callback:TreeItem->Int->Bool->Void;

	function new(source:Object, signal:String, callback:TreeItem->Int->Bool->Void) {
		super();
		this.callback = callback;

		final key = "" + source.getInstanceId() + "-" + signal;

		if (!refs.exists(key)) {
			refs.set(key, new Map<Object, Array<TreeItem->Int->Bool->Void>>());
		}

		refs.get(key).set(this, [callback]);
	}

	@:keep function handleSignal(arg0:TreeItem, arg1:Int, arg2:Bool) {
		callback(arg0, arg1, arg2);
	}
}

@:nativeGen
@:dox(hide)
@:noCompletion
class SignalHandlerStringVoid extends Reference {
	static final refs = new Map<String, Map<Object, Array<std.String->Void>>>();

	public static function isSignalConnected(source:Object, signal:String, callback:std.String->Void):Bool {
		return SignalHandler.isSignalConnected(refs, source, signal, callback);
	}

	public static function disconnectSignal(source:Object, signal:String, callback:std.String->Void) {
		SignalHandler.disconnectSignal(refs, source, signal, callback);
	}

	public static function connectSignal(source:Object, signal:String, callback:std.String->Void) {
		SignalHandler.connectSignal(refs, SignalHandlerStringVoid.new, source, signal, callback);
	}

	final callback:std.String->Void;

	function new(source:Object, signal:String, callback:std.String->Void) {
		super();
		this.callback = callback;

		final key = "" + source.getInstanceId() + "-" + signal;

		if (!refs.exists(key)) {
			refs.set(key, new Map<Object, Array<std.String->Void>>());
		}

		refs.get(key).set(this, [callback]);
	}

	@:keep function handleSignal(arg0:std.String) {
		callback(arg0);
	}
}

@:nativeGen
@:dox(hide)
@:noCompletion
class SignalHandlerStringVariantVoid extends Reference {
	static final refs = new Map<String, Map<Object, Array<std.String->Any->Void>>>();

	public static function isSignalConnected(source:Object, signal:String, callback:std.String->Any->Void):Bool {
		return SignalHandler.isSignalConnected(refs, source, signal, callback);
	}

	public static function disconnectSignal(source:Object, signal:String, callback:std.String->Any->Void) {
		SignalHandler.disconnectSignal(refs, source, signal, callback);
	}

	public static function connectSignal(source:Object, signal:String, callback:std.String->Any->Void) {
		SignalHandler.connectSignal(refs, SignalHandlerStringVariantVoid.new, source, signal, callback);
	}

	final callback:std.String->Any->Void;

	function new(source:Object, signal:String, callback:std.String->Any->Void) {
		super();
		this.callback = callback;

		final key = "" + source.getInstanceId() + "-" + signal;

		if (!refs.exists(key)) {
			refs.set(key, new Map<Object, Array<std.String->Any->Void>>());
		}

		refs.get(key).set(this, [callback]);
	}

	@:keep function handleSignal(arg0:std.String, arg1:Any) {
		callback(arg0, arg1);
	}
}

@:nativeGen
@:dox(hide)
@:noCompletion
class SignalHandlerStringStringVoid extends Reference {
	static final refs = new Map<String, Map<Object, Array<std.String->std.String->Void>>>();

	public static function isSignalConnected(source:Object, signal:String, callback:std.String->std.String->Void):Bool {
		return SignalHandler.isSignalConnected(refs, source, signal, callback);
	}

	public static function disconnectSignal(source:Object, signal:String, callback:std.String->std.String->Void) {
		SignalHandler.disconnectSignal(refs, source, signal, callback);
	}

	public static function connectSignal(source:Object, signal:String, callback:std.String->std.String->Void) {
		SignalHandler.connectSignal(refs, SignalHandlerStringStringVoid.new, source, signal, callback);
	}

	final callback:std.String->std.String->Void;

	function new(source:Object, signal:String, callback:std.String->std.String->Void) {
		super();
		this.callback = callback;

		final key = "" + source.getInstanceId() + "-" + signal;

		if (!refs.exists(key)) {
			refs.set(key, new Map<Object, Array<std.String->std.String->Void>>());
		}

		refs.get(key).set(this, [callback]);
	}

	@:keep function handleSignal(arg0:std.String, arg1:std.String) {
		callback(arg0, arg1);
	}
}

@:nativeGen
@:dox(hide)
@:noCompletion
class SignalHandlerStringResourceVoid extends Reference {
	static final refs = new Map<String, Map<Object, Array<std.String->Resource->Void>>>();

	public static function isSignalConnected(source:Object, signal:String, callback:std.String->Resource->Void):Bool {
		return SignalHandler.isSignalConnected(refs, source, signal, callback);
	}

	public static function disconnectSignal(source:Object, signal:String, callback:std.String->Resource->Void) {
		SignalHandler.disconnectSignal(refs, source, signal, callback);
	}

	public static function connectSignal(source:Object, signal:String, callback:std.String->Resource->Void) {
		SignalHandler.connectSignal(refs, SignalHandlerStringResourceVoid.new, source, signal, callback);
	}

	final callback:std.String->Resource->Void;

	function new(source:Object, signal:String, callback:std.String->Resource->Void) {
		super();
		this.callback = callback;

		final key = "" + source.getInstanceId() + "-" + signal;

		if (!refs.exists(key)) {
			refs.set(key, new Map<Object, Array<std.String->Resource->Void>>());
		}

		refs.get(key).set(this, [callback]);
	}

	@:keep function handleSignal(arg0:std.String, arg1:Resource) {
		callback(arg0, arg1);
	}
}

@:nativeGen
@:dox(hide)
@:noCompletion
class SignalHandlerStringIntVoid extends Reference {
	static final refs = new Map<String, Map<Object, Array<std.String->Int->Void>>>();

	public static function isSignalConnected(source:Object, signal:String, callback:std.String->Int->Void):Bool {
		return SignalHandler.isSignalConnected(refs, source, signal, callback);
	}

	public static function disconnectSignal(source:Object, signal:String, callback:std.String->Int->Void) {
		SignalHandler.disconnectSignal(refs, source, signal, callback);
	}

	public static function connectSignal(source:Object, signal:String, callback:std.String->Int->Void) {
		SignalHandler.connectSignal(refs, SignalHandlerStringIntVoid.new, source, signal, callback);
	}

	final callback:std.String->Int->Void;

	function new(source:Object, signal:String, callback:std.String->Int->Void) {
		super();
		this.callback = callback;

		final key = "" + source.getInstanceId() + "-" + signal;

		if (!refs.exists(key)) {
			refs.set(key, new Map<Object, Array<std.String->Int->Void>>());
		}

		refs.get(key).set(this, [callback]);
	}

	@:keep function handleSignal(arg0:std.String, arg1:Int) {
		callback(arg0, arg1);
	}
}

@:nativeGen
@:dox(hide)
@:noCompletion
class SignalHandlerStringIntVector2Void extends Reference {
	static final refs = new Map<String, Map<Object, Array<std.String->Int->Vector2->Void>>>();

	public static function isSignalConnected(source:Object, signal:String, callback:std.String->Int->Vector2->Void):Bool {
		return SignalHandler.isSignalConnected(refs, source, signal, callback);
	}

	public static function disconnectSignal(source:Object, signal:String, callback:std.String->Int->Vector2->Void) {
		SignalHandler.disconnectSignal(refs, source, signal, callback);
	}

	public static function connectSignal(source:Object, signal:String, callback:std.String->Int->Vector2->Void) {
		SignalHandler.connectSignal(refs, SignalHandlerStringIntVector2Void.new, source, signal, callback);
	}

	final callback:std.String->Int->Vector2->Void;

	function new(source:Object, signal:String, callback:std.String->Int->Vector2->Void) {
		super();
		this.callback = callback;

		final key = "" + source.getInstanceId() + "-" + signal;

		if (!refs.exists(key)) {
			refs.set(key, new Map<Object, Array<std.String->Int->Vector2->Void>>());
		}

		refs.get(key).set(this, [callback]);
	}

	@:keep function handleSignal(arg0:std.String, arg1:Int, arg2:Vector2) {
		callback(arg0, arg1, arg2);
	}
}

@:nativeGen
@:dox(hide)
@:noCompletion
class SignalHandlerStringIntStringVoid extends Reference {
	static final refs = new Map<String, Map<Object, Array<std.String->Int->std.String->Void>>>();

	public static function isSignalConnected(source:Object, signal:String, callback:std.String->Int->std.String->Void):Bool {
		return SignalHandler.isSignalConnected(refs, source, signal, callback);
	}

	public static function disconnectSignal(source:Object, signal:String, callback:std.String->Int->std.String->Void) {
		SignalHandler.disconnectSignal(refs, source, signal, callback);
	}

	public static function connectSignal(source:Object, signal:String, callback:std.String->Int->std.String->Void) {
		SignalHandler.connectSignal(refs, SignalHandlerStringIntStringVoid.new, source, signal, callback);
	}

	final callback:std.String->Int->std.String->Void;

	function new(source:Object, signal:String, callback:std.String->Int->std.String->Void) {
		super();
		this.callback = callback;

		final key = "" + source.getInstanceId() + "-" + signal;

		if (!refs.exists(key)) {
			refs.set(key, new Map<Object, Array<std.String->Int->std.String->Void>>());
		}

		refs.get(key).set(this, [callback]);
	}

	@:keep function handleSignal(arg0:std.String, arg1:Int, arg2:std.String) {
		callback(arg0, arg1, arg2);
	}
}

@:nativeGen
@:dox(hide)
@:noCompletion
class SignalHandlerStringIntStringIntVoid extends Reference {
	static final refs = new Map<String, Map<Object, Array<std.String->Int->std.String->Int->Void>>>();

	public static function isSignalConnected(source:Object, signal:String, callback:std.String->Int->std.String->Int->Void):Bool {
		return SignalHandler.isSignalConnected(refs, source, signal, callback);
	}

	public static function disconnectSignal(source:Object, signal:String, callback:std.String->Int->std.String->Int->Void) {
		SignalHandler.disconnectSignal(refs, source, signal, callback);
	}

	public static function connectSignal(source:Object, signal:String, callback:std.String->Int->std.String->Int->Void) {
		SignalHandler.connectSignal(refs, SignalHandlerStringIntStringIntVoid.new, source, signal, callback);
	}

	final callback:std.String->Int->std.String->Int->Void;

	function new(source:Object, signal:String, callback:std.String->Int->std.String->Int->Void) {
		super();
		this.callback = callback;

		final key = "" + source.getInstanceId() + "-" + signal;

		if (!refs.exists(key)) {
			refs.set(key, new Map<Object, Array<std.String->Int->std.String->Int->Void>>());
		}

		refs.get(key).set(this, [callback]);
	}

	@:keep function handleSignal(arg0:std.String, arg1:Int, arg2:std.String, arg3:Int) {
		callback(arg0, arg1, arg2, arg3);
	}
}

@:nativeGen
@:dox(hide)
@:noCompletion
class SignalHandlerStringIntIntVoid extends Reference {
	static final refs = new Map<String, Map<Object, Array<std.String->Int->Int->Void>>>();

	public static function isSignalConnected(source:Object, signal:String, callback:std.String->Int->Int->Void):Bool {
		return SignalHandler.isSignalConnected(refs, source, signal, callback);
	}

	public static function disconnectSignal(source:Object, signal:String, callback:std.String->Int->Int->Void) {
		SignalHandler.disconnectSignal(refs, source, signal, callback);
	}

	public static function connectSignal(source:Object, signal:String, callback:std.String->Int->Int->Void) {
		SignalHandler.connectSignal(refs, SignalHandlerStringIntIntVoid.new, source, signal, callback);
	}

	final callback:std.String->Int->Int->Void;

	function new(source:Object, signal:String, callback:std.String->Int->Int->Void) {
		super();
		this.callback = callback;

		final key = "" + source.getInstanceId() + "-" + signal;

		if (!refs.exists(key)) {
			refs.set(key, new Map<Object, Array<std.String->Int->Int->Void>>());
		}

		refs.get(key).set(this, [callback]);
	}

	@:keep function handleSignal(arg0:std.String, arg1:Int, arg2:Int) {
		callback(arg0, arg1, arg2);
	}
}

@:nativeGen
@:dox(hide)
@:noCompletion
class SignalHandlerStringBoolVoid extends Reference {
	static final refs = new Map<String, Map<Object, Array<std.String->Bool->Void>>>();

	public static function isSignalConnected(source:Object, signal:String, callback:std.String->Bool->Void):Bool {
		return SignalHandler.isSignalConnected(refs, source, signal, callback);
	}

	public static function disconnectSignal(source:Object, signal:String, callback:std.String->Bool->Void) {
		SignalHandler.disconnectSignal(refs, source, signal, callback);
	}

	public static function connectSignal(source:Object, signal:String, callback:std.String->Bool->Void) {
		SignalHandler.connectSignal(refs, SignalHandlerStringBoolVoid.new, source, signal, callback);
	}

	final callback:std.String->Bool->Void;

	function new(source:Object, signal:String, callback:std.String->Bool->Void) {
		super();
		this.callback = callback;

		final key = "" + source.getInstanceId() + "-" + signal;

		if (!refs.exists(key)) {
			refs.set(key, new Map<Object, Array<std.String->Bool->Void>>());
		}

		refs.get(key).set(this, [callback]);
	}

	@:keep function handleSignal(arg0:std.String, arg1:Bool) {
		callback(arg0, arg1);
	}
}

@:nativeGen
@:dox(hide)
@:noCompletion
class SignalHandlerStringArrayVoid extends Reference {
	static final refs = new Map<String, Map<Object, Array<std.String->godot.collections.Array->Void>>>();

	public static function isSignalConnected(source:Object, signal:String, callback:std.String->godot.collections.Array->Void):Bool {
		return SignalHandler.isSignalConnected(refs, source, signal, callback);
	}

	public static function disconnectSignal(source:Object, signal:String, callback:std.String->godot.collections.Array->Void) {
		SignalHandler.disconnectSignal(refs, source, signal, callback);
	}

	public static function connectSignal(source:Object, signal:String, callback:std.String->godot.collections.Array->Void) {
		SignalHandler.connectSignal(refs, SignalHandlerStringArrayVoid.new, source, signal, callback);
	}

	final callback:std.String->godot.collections.Array->Void;

	function new(source:Object, signal:String, callback:std.String->godot.collections.Array->Void) {
		super();
		this.callback = callback;

		final key = "" + source.getInstanceId() + "-" + signal;

		if (!refs.exists(key)) {
			refs.set(key, new Map<Object, Array<std.String->godot.collections.Array->Void>>());
		}

		refs.get(key).set(this, [callback]);
	}

	@:keep function handleSignal(arg0:std.String, arg1:godot.collections.Array) {
		callback(arg0, arg1);
	}
}

@:nativeGen
@:dox(hide)
@:noCompletion
class SignalHandlerScriptVoid extends Reference {
	static final refs = new Map<String, Map<Object, Array<Script->Void>>>();

	public static function isSignalConnected(source:Object, signal:String, callback:Script->Void):Bool {
		return SignalHandler.isSignalConnected(refs, source, signal, callback);
	}

	public static function disconnectSignal(source:Object, signal:String, callback:Script->Void) {
		SignalHandler.disconnectSignal(refs, source, signal, callback);
	}

	public static function connectSignal(source:Object, signal:String, callback:Script->Void) {
		SignalHandler.connectSignal(refs, SignalHandlerScriptVoid.new, source, signal, callback);
	}

	final callback:Script->Void;

	function new(source:Object, signal:String, callback:Script->Void) {
		super();
		this.callback = callback;

		final key = "" + source.getInstanceId() + "-" + signal;

		if (!refs.exists(key)) {
			refs.set(key, new Map<Object, Array<Script->Void>>());
		}

		refs.get(key).set(this, [callback]);
	}

	@:keep function handleSignal(arg0:Script) {
		callback(arg0);
	}
}

@:nativeGen
@:dox(hide)
@:noCompletion
class SignalHandlerResourceVoid extends Reference {
	static final refs = new Map<String, Map<Object, Array<Resource->Void>>>();

	public static function isSignalConnected(source:Object, signal:String, callback:Resource->Void):Bool {
		return SignalHandler.isSignalConnected(refs, source, signal, callback);
	}

	public static function disconnectSignal(source:Object, signal:String, callback:Resource->Void) {
		SignalHandler.disconnectSignal(refs, source, signal, callback);
	}

	public static function connectSignal(source:Object, signal:String, callback:Resource->Void) {
		SignalHandler.connectSignal(refs, SignalHandlerResourceVoid.new, source, signal, callback);
	}

	final callback:Resource->Void;

	function new(source:Object, signal:String, callback:Resource->Void) {
		super();
		this.callback = callback;

		final key = "" + source.getInstanceId() + "-" + signal;

		if (!refs.exists(key)) {
			refs.set(key, new Map<Object, Array<Resource->Void>>());
		}

		refs.get(key).set(this, [callback]);
	}

	@:keep function handleSignal(arg0:Resource) {
		callback(arg0);
	}
}

@:nativeGen
@:dox(hide)
@:noCompletion
class SignalHandlerResourceBoolVoid extends Reference {
	static final refs = new Map<String, Map<Object, Array<Resource->Bool->Void>>>();

	public static function isSignalConnected(source:Object, signal:String, callback:Resource->Bool->Void):Bool {
		return SignalHandler.isSignalConnected(refs, source, signal, callback);
	}

	public static function disconnectSignal(source:Object, signal:String, callback:Resource->Bool->Void) {
		SignalHandler.disconnectSignal(refs, source, signal, callback);
	}

	public static function connectSignal(source:Object, signal:String, callback:Resource->Bool->Void) {
		SignalHandler.connectSignal(refs, SignalHandlerResourceBoolVoid.new, source, signal, callback);
	}

	final callback:Resource->Bool->Void;

	function new(source:Object, signal:String, callback:Resource->Bool->Void) {
		super();
		this.callback = callback;

		final key = "" + source.getInstanceId() + "-" + signal;

		if (!refs.exists(key)) {
			refs.set(key, new Map<Object, Array<Resource->Bool->Void>>());
		}

		refs.get(key).set(this, [callback]);
	}

	@:keep function handleSignal(arg0:Resource, arg1:Bool) {
		callback(arg0, arg1);
	}
}

@:nativeGen
@:dox(hide)
@:noCompletion
class SignalHandlerRIDNodeIntIntVoid extends Reference {
	static final refs = new Map<String, Map<Object, Array<RID->Node->Int->Int->Void>>>();

	public static function isSignalConnected(source:Object, signal:String, callback:RID->Node->Int->Int->Void):Bool {
		return SignalHandler.isSignalConnected(refs, source, signal, callback);
	}

	public static function disconnectSignal(source:Object, signal:String, callback:RID->Node->Int->Int->Void) {
		SignalHandler.disconnectSignal(refs, source, signal, callback);
	}

	public static function connectSignal(source:Object, signal:String, callback:RID->Node->Int->Int->Void) {
		SignalHandler.connectSignal(refs, SignalHandlerRIDNodeIntIntVoid.new, source, signal, callback);
	}

	final callback:RID->Node->Int->Int->Void;

	function new(source:Object, signal:String, callback:RID->Node->Int->Int->Void) {
		super();
		this.callback = callback;

		final key = "" + source.getInstanceId() + "-" + signal;

		if (!refs.exists(key)) {
			refs.set(key, new Map<Object, Array<RID->Node->Int->Int->Void>>());
		}

		refs.get(key).set(this, [callback]);
	}

	@:keep function handleSignal(arg0:RID, arg1:Node, arg2:Int, arg3:Int) {
		callback(arg0, arg1, arg2, arg3);
	}
}

@:nativeGen
@:dox(hide)
@:noCompletion
class SignalHandlerRIDAreaIntIntVoid extends Reference {
	static final refs = new Map<String, Map<Object, Array<RID->Area->Int->Int->Void>>>();

	public static function isSignalConnected(source:Object, signal:String, callback:RID->Area->Int->Int->Void):Bool {
		return SignalHandler.isSignalConnected(refs, source, signal, callback);
	}

	public static function disconnectSignal(source:Object, signal:String, callback:RID->Area->Int->Int->Void) {
		SignalHandler.disconnectSignal(refs, source, signal, callback);
	}

	public static function connectSignal(source:Object, signal:String, callback:RID->Area->Int->Int->Void) {
		SignalHandler.connectSignal(refs, SignalHandlerRIDAreaIntIntVoid.new, source, signal, callback);
	}

	final callback:RID->Area->Int->Int->Void;

	function new(source:Object, signal:String, callback:RID->Area->Int->Int->Void) {
		super();
		this.callback = callback;

		final key = "" + source.getInstanceId() + "-" + signal;

		if (!refs.exists(key)) {
			refs.set(key, new Map<Object, Array<RID->Area->Int->Int->Void>>());
		}

		refs.get(key).set(this, [callback]);
	}

	@:keep function handleSignal(arg0:RID, arg1:Area, arg2:Int, arg3:Int) {
		callback(arg0, arg1, arg2, arg3);
	}
}

@:nativeGen
@:dox(hide)
@:noCompletion
class SignalHandlerRIDArea2DIntIntVoid extends Reference {
	static final refs = new Map<String, Map<Object, Array<RID->Area2D->Int->Int->Void>>>();

	public static function isSignalConnected(source:Object, signal:String, callback:RID->Area2D->Int->Int->Void):Bool {
		return SignalHandler.isSignalConnected(refs, source, signal, callback);
	}

	public static function disconnectSignal(source:Object, signal:String, callback:RID->Area2D->Int->Int->Void) {
		SignalHandler.disconnectSignal(refs, source, signal, callback);
	}

	public static function connectSignal(source:Object, signal:String, callback:RID->Area2D->Int->Int->Void) {
		SignalHandler.connectSignal(refs, SignalHandlerRIDArea2DIntIntVoid.new, source, signal, callback);
	}

	final callback:RID->Area2D->Int->Int->Void;

	function new(source:Object, signal:String, callback:RID->Area2D->Int->Int->Void) {
		super();
		this.callback = callback;

		final key = "" + source.getInstanceId() + "-" + signal;

		if (!refs.exists(key)) {
			refs.set(key, new Map<Object, Array<RID->Area2D->Int->Int->Void>>());
		}

		refs.get(key).set(this, [callback]);
	}

	@:keep function handleSignal(arg0:RID, arg1:Area2D, arg2:Int, arg3:Int) {
		callback(arg0, arg1, arg2, arg3);
	}
}

@:nativeGen
@:dox(hide)
@:noCompletion
class SignalHandlerPoolStringArrayVoid extends Reference {
	static final refs = new Map<String, Map<Object, Array<std.Array<std.String>->Void>>>();

	public static function isSignalConnected(source:Object, signal:String, callback:std.Array<std.String>->Void):Bool {
		return SignalHandler.isSignalConnected(refs, source, signal, callback);
	}

	public static function disconnectSignal(source:Object, signal:String, callback:std.Array<std.String>->Void) {
		SignalHandler.disconnectSignal(refs, source, signal, callback);
	}

	public static function connectSignal(source:Object, signal:String, callback:std.Array<std.String>->Void) {
		SignalHandler.connectSignal(refs, SignalHandlerPoolStringArrayVoid.new, source, signal, callback);
	}

	final callback:std.Array<std.String>->Void;

	function new(source:Object, signal:String, callback:std.Array<std.String>->Void) {
		super();
		this.callback = callback;

		final key = "" + source.getInstanceId() + "-" + signal;

		if (!refs.exists(key)) {
			refs.set(key, new Map<Object, Array<std.Array<std.String>->Void>>());
		}

		refs.get(key).set(this, [callback]);
	}

	@:keep function handleSignal(arg0:std.Array<std.String>) {
		callback(arg0);
	}
}

@:nativeGen
@:dox(hide)
@:noCompletion
class SignalHandlerPoolStringArrayIntVoid extends Reference {
	static final refs = new Map<String, Map<Object, Array<std.Array<std.String>->Int->Void>>>();

	public static function isSignalConnected(source:Object, signal:String, callback:std.Array<std.String>->Int->Void):Bool {
		return SignalHandler.isSignalConnected(refs, source, signal, callback);
	}

	public static function disconnectSignal(source:Object, signal:String, callback:std.Array<std.String>->Int->Void) {
		SignalHandler.disconnectSignal(refs, source, signal, callback);
	}

	public static function connectSignal(source:Object, signal:String, callback:std.Array<std.String>->Int->Void) {
		SignalHandler.connectSignal(refs, SignalHandlerPoolStringArrayIntVoid.new, source, signal, callback);
	}

	final callback:std.Array<std.String>->Int->Void;

	function new(source:Object, signal:String, callback:std.Array<std.String>->Int->Void) {
		super();
		this.callback = callback;

		final key = "" + source.getInstanceId() + "-" + signal;

		if (!refs.exists(key)) {
			refs.set(key, new Map<Object, Array<std.Array<std.String>->Int->Void>>());
		}

		refs.get(key).set(this, [callback]);
	}

	@:keep function handleSignal(arg0:std.Array<std.String>, arg1:Int) {
		callback(arg0, arg1);
	}
}

@:nativeGen
@:dox(hide)
@:noCompletion
class SignalHandlerPoolStringArrayArrayVoid extends Reference {
	static final refs = new Map<String, Map<Object, Array<std.Array<std.String>->godot.collections.Array->Void>>>();

	public static function isSignalConnected(source:Object, signal:String, callback:std.Array<std.String>->godot.collections.Array->Void):Bool {
		return SignalHandler.isSignalConnected(refs, source, signal, callback);
	}

	public static function disconnectSignal(source:Object, signal:String, callback:std.Array<std.String>->godot.collections.Array->Void) {
		SignalHandler.disconnectSignal(refs, source, signal, callback);
	}

	public static function connectSignal(source:Object, signal:String, callback:std.Array<std.String>->godot.collections.Array->Void) {
		SignalHandler.connectSignal(refs, SignalHandlerPoolStringArrayArrayVoid.new, source, signal, callback);
	}

	final callback:std.Array<std.String>->godot.collections.Array->Void;

	function new(source:Object, signal:String, callback:std.Array<std.String>->godot.collections.Array->Void) {
		super();
		this.callback = callback;

		final key = "" + source.getInstanceId() + "-" + signal;

		if (!refs.exists(key)) {
			refs.set(key, new Map<Object, Array<std.Array<std.String>->godot.collections.Array->Void>>());
		}

		refs.get(key).set(this, [callback]);
	}

	@:keep function handleSignal(arg0:std.Array<std.String>, arg1:godot.collections.Array) {
		callback(arg0, arg1);
	}
}

@:nativeGen
@:dox(hide)
@:noCompletion
class SignalHandlerObjectVoid extends Reference {
	static final refs = new Map<String, Map<Object, Array<godot.Object->Void>>>();

	public static function isSignalConnected(source:Object, signal:String, callback:godot.Object->Void):Bool {
		return SignalHandler.isSignalConnected(refs, source, signal, callback);
	}

	public static function disconnectSignal(source:Object, signal:String, callback:godot.Object->Void) {
		SignalHandler.disconnectSignal(refs, source, signal, callback);
	}

	public static function connectSignal(source:Object, signal:String, callback:godot.Object->Void) {
		SignalHandler.connectSignal(refs, SignalHandlerObjectVoid.new, source, signal, callback);
	}

	final callback:godot.Object->Void;

	function new(source:Object, signal:String, callback:godot.Object->Void) {
		super();
		this.callback = callback;

		final key = "" + source.getInstanceId() + "-" + signal;

		if (!refs.exists(key)) {
			refs.set(key, new Map<Object, Array<godot.Object->Void>>());
		}

		refs.get(key).set(this, [callback]);
	}

	@:keep function handleSignal(arg0:godot.Object) {
		callback(arg0);
	}
}

@:nativeGen
@:dox(hide)
@:noCompletion
class SignalHandlerObjectStringVoid extends Reference {
	static final refs = new Map<String, Map<Object, Array<godot.Object->std.String->Void>>>();

	public static function isSignalConnected(source:Object, signal:String, callback:godot.Object->std.String->Void):Bool {
		return SignalHandler.isSignalConnected(refs, source, signal, callback);
	}

	public static function disconnectSignal(source:Object, signal:String, callback:godot.Object->std.String->Void) {
		SignalHandler.disconnectSignal(refs, source, signal, callback);
	}

	public static function connectSignal(source:Object, signal:String, callback:godot.Object->std.String->Void) {
		SignalHandler.connectSignal(refs, SignalHandlerObjectStringVoid.new, source, signal, callback);
	}

	final callback:godot.Object->std.String->Void;

	function new(source:Object, signal:String, callback:godot.Object->std.String->Void) {
		super();
		this.callback = callback;

		final key = "" + source.getInstanceId() + "-" + signal;

		if (!refs.exists(key)) {
			refs.set(key, new Map<Object, Array<godot.Object->std.String->Void>>());
		}

		refs.get(key).set(this, [callback]);
	}

	@:keep function handleSignal(arg0:godot.Object, arg1:std.String) {
		callback(arg0, arg1);
	}
}

@:nativeGen
@:dox(hide)
@:noCompletion
class SignalHandlerObjectNodePathVoid extends Reference {
	static final refs = new Map<String, Map<Object, Array<godot.Object->NodePath->Void>>>();

	public static function isSignalConnected(source:Object, signal:String, callback:godot.Object->NodePath->Void):Bool {
		return SignalHandler.isSignalConnected(refs, source, signal, callback);
	}

	public static function disconnectSignal(source:Object, signal:String, callback:godot.Object->NodePath->Void) {
		SignalHandler.disconnectSignal(refs, source, signal, callback);
	}

	public static function connectSignal(source:Object, signal:String, callback:godot.Object->NodePath->Void) {
		SignalHandler.connectSignal(refs, SignalHandlerObjectNodePathVoid.new, source, signal, callback);
	}

	final callback:godot.Object->NodePath->Void;

	function new(source:Object, signal:String, callback:godot.Object->NodePath->Void) {
		super();
		this.callback = callback;

		final key = "" + source.getInstanceId() + "-" + signal;

		if (!refs.exists(key)) {
			refs.set(key, new Map<Object, Array<godot.Object->NodePath->Void>>());
		}

		refs.get(key).set(this, [callback]);
	}

	@:keep function handleSignal(arg0:godot.Object, arg1:NodePath) {
		callback(arg0, arg1);
	}
}

@:nativeGen
@:dox(hide)
@:noCompletion
class SignalHandlerObjectNodePathFloatObjectVoid extends Reference {
	static final refs = new Map<String, Map<Object, Array<godot.Object->NodePath->Float->godot.Object->Void>>>();

	public static function isSignalConnected(source:Object, signal:String, callback:godot.Object->NodePath->Float->godot.Object->Void):Bool {
		return SignalHandler.isSignalConnected(refs, source, signal, callback);
	}

	public static function disconnectSignal(source:Object, signal:String, callback:godot.Object->NodePath->Float->godot.Object->Void) {
		SignalHandler.disconnectSignal(refs, source, signal, callback);
	}

	public static function connectSignal(source:Object, signal:String, callback:godot.Object->NodePath->Float->godot.Object->Void) {
		SignalHandler.connectSignal(refs, SignalHandlerObjectNodePathFloatObjectVoid.new, source, signal, callback);
	}

	final callback:godot.Object->NodePath->Float->godot.Object->Void;

	function new(source:Object, signal:String, callback:godot.Object->NodePath->Float->godot.Object->Void) {
		super();
		this.callback = callback;

		final key = "" + source.getInstanceId() + "-" + signal;

		if (!refs.exists(key)) {
			refs.set(key, new Map<Object, Array<godot.Object->NodePath->Float->godot.Object->Void>>());
		}

		refs.get(key).set(this, [callback]);
	}

	@:keep function handleSignal(arg0:godot.Object, arg1:NodePath, arg2:Float, arg3:godot.Object) {
		callback(arg0, arg1, arg2, arg3);
	}
}

@:nativeGen
@:dox(hide)
@:noCompletion
class SignalHandlerNodeVoid extends Reference {
	static final refs = new Map<String, Map<Object, Array<Node->Void>>>();

	public static function isSignalConnected(source:Object, signal:String, callback:Node->Void):Bool {
		return SignalHandler.isSignalConnected(refs, source, signal, callback);
	}

	public static function disconnectSignal(source:Object, signal:String, callback:Node->Void) {
		SignalHandler.disconnectSignal(refs, source, signal, callback);
	}

	public static function connectSignal(source:Object, signal:String, callback:Node->Void) {
		SignalHandler.connectSignal(refs, SignalHandlerNodeVoid.new, source, signal, callback);
	}

	final callback:Node->Void;

	function new(source:Object, signal:String, callback:Node->Void) {
		super();
		this.callback = callback;

		final key = "" + source.getInstanceId() + "-" + signal;

		if (!refs.exists(key)) {
			refs.set(key, new Map<Object, Array<Node->Void>>());
		}

		refs.get(key).set(this, [callback]);
	}

	@:keep function handleSignal(arg0:Node) {
		callback(arg0);
	}
}

@:nativeGen
@:dox(hide)
@:noCompletion
class SignalHandlerNodeInputEventVector3Vector3IntVoid extends Reference {
	static final refs = new Map<String, Map<Object, Array<Node->InputEvent->Vector3->Vector3->Int->Void>>>();

	public static function isSignalConnected(source:Object, signal:String, callback:Node->InputEvent->Vector3->Vector3->Int->Void):Bool {
		return SignalHandler.isSignalConnected(refs, source, signal, callback);
	}

	public static function disconnectSignal(source:Object, signal:String, callback:Node->InputEvent->Vector3->Vector3->Int->Void) {
		SignalHandler.disconnectSignal(refs, source, signal, callback);
	}

	public static function connectSignal(source:Object, signal:String, callback:Node->InputEvent->Vector3->Vector3->Int->Void) {
		SignalHandler.connectSignal(refs, SignalHandlerNodeInputEventVector3Vector3IntVoid.new, source, signal, callback);
	}

	final callback:Node->InputEvent->Vector3->Vector3->Int->Void;

	function new(source:Object, signal:String, callback:Node->InputEvent->Vector3->Vector3->Int->Void) {
		super();
		this.callback = callback;

		final key = "" + source.getInstanceId() + "-" + signal;

		if (!refs.exists(key)) {
			refs.set(key, new Map<Object, Array<Node->InputEvent->Vector3->Vector3->Int->Void>>());
		}

		refs.get(key).set(this, [callback]);
	}

	@:keep function handleSignal(arg0:Node, arg1:InputEvent, arg2:Vector3, arg3:Vector3, arg4:Int) {
		callback(arg0, arg1, arg2, arg3, arg4);
	}
}

@:nativeGen
@:dox(hide)
@:noCompletion
class SignalHandlerNodeInputEventIntVoid extends Reference {
	static final refs = new Map<String, Map<Object, Array<Node->InputEvent->Int->Void>>>();

	public static function isSignalConnected(source:Object, signal:String, callback:Node->InputEvent->Int->Void):Bool {
		return SignalHandler.isSignalConnected(refs, source, signal, callback);
	}

	public static function disconnectSignal(source:Object, signal:String, callback:Node->InputEvent->Int->Void) {
		SignalHandler.disconnectSignal(refs, source, signal, callback);
	}

	public static function connectSignal(source:Object, signal:String, callback:Node->InputEvent->Int->Void) {
		SignalHandler.connectSignal(refs, SignalHandlerNodeInputEventIntVoid.new, source, signal, callback);
	}

	final callback:Node->InputEvent->Int->Void;

	function new(source:Object, signal:String, callback:Node->InputEvent->Int->Void) {
		super();
		this.callback = callback;

		final key = "" + source.getInstanceId() + "-" + signal;

		if (!refs.exists(key)) {
			refs.set(key, new Map<Object, Array<Node->InputEvent->Int->Void>>());
		}

		refs.get(key).set(this, [callback]);
	}

	@:keep function handleSignal(arg0:Node, arg1:InputEvent, arg2:Int) {
		callback(arg0, arg1, arg2);
	}
}

@:nativeGen
@:dox(hide)
@:noCompletion
class SignalHandlerMeshVoid extends Reference {
	static final refs = new Map<String, Map<Object, Array<Mesh->Void>>>();

	public static function isSignalConnected(source:Object, signal:String, callback:Mesh->Void):Bool {
		return SignalHandler.isSignalConnected(refs, source, signal, callback);
	}

	public static function disconnectSignal(source:Object, signal:String, callback:Mesh->Void) {
		SignalHandler.disconnectSignal(refs, source, signal, callback);
	}

	public static function connectSignal(source:Object, signal:String, callback:Mesh->Void) {
		SignalHandler.connectSignal(refs, SignalHandlerMeshVoid.new, source, signal, callback);
	}

	final callback:Mesh->Void;

	function new(source:Object, signal:String, callback:Mesh->Void) {
		super();
		this.callback = callback;

		final key = "" + source.getInstanceId() + "-" + signal;

		if (!refs.exists(key)) {
			refs.set(key, new Map<Object, Array<Mesh->Void>>());
		}

		refs.get(key).set(this, [callback]);
	}

	@:keep function handleSignal(arg0:Mesh) {
		callback(arg0);
	}
}

@:nativeGen
@:dox(hide)
@:noCompletion
class SignalHandlerIntVoid extends Reference {
	static final refs = new Map<String, Map<Object, Array<Int->Void>>>();

	public static function isSignalConnected(source:Object, signal:String, callback:Int->Void):Bool {
		return SignalHandler.isSignalConnected(refs, source, signal, callback);
	}

	public static function disconnectSignal(source:Object, signal:String, callback:Int->Void) {
		SignalHandler.disconnectSignal(refs, source, signal, callback);
	}

	public static function connectSignal(source:Object, signal:String, callback:Int->Void) {
		SignalHandler.connectSignal(refs, SignalHandlerIntVoid.new, source, signal, callback);
	}

	final callback:Int->Void;

	function new(source:Object, signal:String, callback:Int->Void) {
		super();
		this.callback = callback;

		final key = "" + source.getInstanceId() + "-" + signal;

		if (!refs.exists(key)) {
			refs.set(key, new Map<Object, Array<Int->Void>>());
		}

		refs.get(key).set(this, [callback]);
	}

	@:keep function handleSignal(arg0:Int) {
		callback(arg0);
	}
}

@:nativeGen
@:dox(hide)
@:noCompletion
class SignalHandlerIntVector2Void extends Reference {
	static final refs = new Map<String, Map<Object, Array<Int->Vector2->Void>>>();

	public static function isSignalConnected(source:Object, signal:String, callback:Int->Vector2->Void):Bool {
		return SignalHandler.isSignalConnected(refs, source, signal, callback);
	}

	public static function disconnectSignal(source:Object, signal:String, callback:Int->Vector2->Void) {
		SignalHandler.disconnectSignal(refs, source, signal, callback);
	}

	public static function connectSignal(source:Object, signal:String, callback:Int->Vector2->Void) {
		SignalHandler.connectSignal(refs, SignalHandlerIntVector2Void.new, source, signal, callback);
	}

	final callback:Int->Vector2->Void;

	function new(source:Object, signal:String, callback:Int->Vector2->Void) {
		super();
		this.callback = callback;

		final key = "" + source.getInstanceId() + "-" + signal;

		if (!refs.exists(key)) {
			refs.set(key, new Map<Object, Array<Int->Vector2->Void>>());
		}

		refs.get(key).set(this, [callback]);
	}

	@:keep function handleSignal(arg0:Int, arg1:Vector2) {
		callback(arg0, arg1);
	}
}

@:nativeGen
@:dox(hide)
@:noCompletion
class SignalHandlerIntStringVoid extends Reference {
	static final refs = new Map<String, Map<Object, Array<Int->std.String->Void>>>();

	public static function isSignalConnected(source:Object, signal:String, callback:Int->std.String->Void):Bool {
		return SignalHandler.isSignalConnected(refs, source, signal, callback);
	}

	public static function disconnectSignal(source:Object, signal:String, callback:Int->std.String->Void) {
		SignalHandler.disconnectSignal(refs, source, signal, callback);
	}

	public static function connectSignal(source:Object, signal:String, callback:Int->std.String->Void) {
		SignalHandler.connectSignal(refs, SignalHandlerIntStringVoid.new, source, signal, callback);
	}

	final callback:Int->std.String->Void;

	function new(source:Object, signal:String, callback:Int->std.String->Void) {
		super();
		this.callback = callback;

		final key = "" + source.getInstanceId() + "-" + signal;

		if (!refs.exists(key)) {
			refs.set(key, new Map<Object, Array<Int->std.String->Void>>());
		}

		refs.get(key).set(this, [callback]);
	}

	@:keep function handleSignal(arg0:Int, arg1:std.String) {
		callback(arg0, arg1);
	}
}

@:nativeGen
@:dox(hide)
@:noCompletion
class SignalHandlerIntPoolByteArrayVoid extends Reference {
	static final refs = new Map<String, Map<Object, Array<Int->std.Array<cs.types.UInt8>->Void>>>();

	public static function isSignalConnected(source:Object, signal:String, callback:Int->std.Array<cs.types.UInt8>->Void):Bool {
		return SignalHandler.isSignalConnected(refs, source, signal, callback);
	}

	public static function disconnectSignal(source:Object, signal:String, callback:Int->std.Array<cs.types.UInt8>->Void) {
		SignalHandler.disconnectSignal(refs, source, signal, callback);
	}

	public static function connectSignal(source:Object, signal:String, callback:Int->std.Array<cs.types.UInt8>->Void) {
		SignalHandler.connectSignal(refs, SignalHandlerIntPoolByteArrayVoid.new, source, signal, callback);
	}

	final callback:Int->std.Array<cs.types.UInt8>->Void;

	function new(source:Object, signal:String, callback:Int->std.Array<cs.types.UInt8>->Void) {
		super();
		this.callback = callback;

		final key = "" + source.getInstanceId() + "-" + signal;

		if (!refs.exists(key)) {
			refs.set(key, new Map<Object, Array<Int->std.Array<cs.types.UInt8>->Void>>());
		}

		refs.get(key).set(this, [callback]);
	}

	@:keep function handleSignal(arg0:Int, arg1:std.Array<cs.types.UInt8>) {
		callback(arg0, arg1);
	}
}

@:nativeGen
@:dox(hide)
@:noCompletion
class SignalHandlerIntIntStringVoid extends Reference {
	static final refs = new Map<String, Map<Object, Array<Int->Int->std.String->Void>>>();

	public static function isSignalConnected(source:Object, signal:String, callback:Int->Int->std.String->Void):Bool {
		return SignalHandler.isSignalConnected(refs, source, signal, callback);
	}

	public static function disconnectSignal(source:Object, signal:String, callback:Int->Int->std.String->Void) {
		SignalHandler.disconnectSignal(refs, source, signal, callback);
	}

	public static function connectSignal(source:Object, signal:String, callback:Int->Int->std.String->Void) {
		SignalHandler.connectSignal(refs, SignalHandlerIntIntStringVoid.new, source, signal, callback);
	}

	final callback:Int->Int->std.String->Void;

	function new(source:Object, signal:String, callback:Int->Int->std.String->Void) {
		super();
		this.callback = callback;

		final key = "" + source.getInstanceId() + "-" + signal;

		if (!refs.exists(key)) {
			refs.set(key, new Map<Object, Array<Int->Int->std.String->Void>>());
		}

		refs.get(key).set(this, [callback]);
	}

	@:keep function handleSignal(arg0:Int, arg1:Int, arg2:std.String) {
		callback(arg0, arg1, arg2);
	}
}

@:nativeGen
@:dox(hide)
@:noCompletion
class SignalHandlerIntIntPoolStringArrayPoolByteArrayVoid extends Reference {
	static final refs = new Map<String, Map<Object, Array<Int->Int->std.Array<std.String>->std.Array<cs.types.UInt8>->Void>>>();

	public static function isSignalConnected(source:Object, signal:String, callback:Int->Int->std.Array<std.String>->std.Array<cs.types.UInt8>->Void):Bool {
		return SignalHandler.isSignalConnected(refs, source, signal, callback);
	}

	public static function disconnectSignal(source:Object, signal:String, callback:Int->Int->std.Array<std.String>->std.Array<cs.types.UInt8>->Void) {
		SignalHandler.disconnectSignal(refs, source, signal, callback);
	}

	public static function connectSignal(source:Object, signal:String, callback:Int->Int->std.Array<std.String>->std.Array<cs.types.UInt8>->Void) {
		SignalHandler.connectSignal(refs, SignalHandlerIntIntPoolStringArrayPoolByteArrayVoid.new, source, signal, callback);
	}

	final callback:Int->Int->std.Array<std.String>->std.Array<cs.types.UInt8>->Void;

	function new(source:Object, signal:String, callback:Int->Int->std.Array<std.String>->std.Array<cs.types.UInt8>->Void) {
		super();
		this.callback = callback;

		final key = "" + source.getInstanceId() + "-" + signal;

		if (!refs.exists(key)) {
			refs.set(key, new Map<Object, Array<Int->Int->std.Array<std.String>->std.Array<cs.types.UInt8>->Void>>());
		}

		refs.get(key).set(this, [callback]);
	}

	@:keep function handleSignal(arg0:Int, arg1:Int, arg2:std.Array<std.String>, arg3:std.Array<cs.types.UInt8>) {
		callback(arg0, arg1, arg2, arg3);
	}
}

@:nativeGen
@:dox(hide)
@:noCompletion
class SignalHandlerIntBoolVoid extends Reference {
	static final refs = new Map<String, Map<Object, Array<Int->Bool->Void>>>();

	public static function isSignalConnected(source:Object, signal:String, callback:Int->Bool->Void):Bool {
		return SignalHandler.isSignalConnected(refs, source, signal, callback);
	}

	public static function disconnectSignal(source:Object, signal:String, callback:Int->Bool->Void) {
		SignalHandler.disconnectSignal(refs, source, signal, callback);
	}

	public static function connectSignal(source:Object, signal:String, callback:Int->Bool->Void) {
		SignalHandler.connectSignal(refs, SignalHandlerIntBoolVoid.new, source, signal, callback);
	}

	final callback:Int->Bool->Void;

	function new(source:Object, signal:String, callback:Int->Bool->Void) {
		super();
		this.callback = callback;

		final key = "" + source.getInstanceId() + "-" + signal;

		if (!refs.exists(key)) {
			refs.set(key, new Map<Object, Array<Int->Bool->Void>>());
		}

		refs.get(key).set(this, [callback]);
	}

	@:keep function handleSignal(arg0:Int, arg1:Bool) {
		callback(arg0, arg1);
	}
}

@:nativeGen
@:dox(hide)
@:noCompletion
class SignalHandlerInputEventVoid extends Reference {
	static final refs = new Map<String, Map<Object, Array<InputEvent->Void>>>();

	public static function isSignalConnected(source:Object, signal:String, callback:InputEvent->Void):Bool {
		return SignalHandler.isSignalConnected(refs, source, signal, callback);
	}

	public static function disconnectSignal(source:Object, signal:String, callback:InputEvent->Void) {
		SignalHandler.disconnectSignal(refs, source, signal, callback);
	}

	public static function connectSignal(source:Object, signal:String, callback:InputEvent->Void) {
		SignalHandler.connectSignal(refs, SignalHandlerInputEventVoid.new, source, signal, callback);
	}

	final callback:InputEvent->Void;

	function new(source:Object, signal:String, callback:InputEvent->Void) {
		super();
		this.callback = callback;

		final key = "" + source.getInstanceId() + "-" + signal;

		if (!refs.exists(key)) {
			refs.set(key, new Map<Object, Array<InputEvent->Void>>());
		}

		refs.get(key).set(this, [callback]);
	}

	@:keep function handleSignal(arg0:InputEvent) {
		callback(arg0);
	}
}

@:nativeGen
@:dox(hide)
@:noCompletion
class SignalHandlerFloatVoid extends Reference {
	static final refs = new Map<String, Map<Object, Array<Float->Void>>>();

	public static function isSignalConnected(source:Object, signal:String, callback:Float->Void):Bool {
		return SignalHandler.isSignalConnected(refs, source, signal, callback);
	}

	public static function disconnectSignal(source:Object, signal:String, callback:Float->Void) {
		SignalHandler.disconnectSignal(refs, source, signal, callback);
	}

	public static function connectSignal(source:Object, signal:String, callback:Float->Void) {
		SignalHandler.connectSignal(refs, SignalHandlerFloatVoid.new, source, signal, callback);
	}

	final callback:Float->Void;

	function new(source:Object, signal:String, callback:Float->Void) {
		super();
		this.callback = callback;

		final key = "" + source.getInstanceId() + "-" + signal;

		if (!refs.exists(key)) {
			refs.set(key, new Map<Object, Array<Float->Void>>());
		}

		refs.get(key).set(this, [callback]);
	}

	@:keep function handleSignal(arg0:Float) {
		callback(arg0);
	}
}

@:nativeGen
@:dox(hide)
@:noCompletion
class SignalHandlerControlVoid extends Reference {
	static final refs = new Map<String, Map<Object, Array<Control->Void>>>();

	public static function isSignalConnected(source:Object, signal:String, callback:Control->Void):Bool {
		return SignalHandler.isSignalConnected(refs, source, signal, callback);
	}

	public static function disconnectSignal(source:Object, signal:String, callback:Control->Void) {
		SignalHandler.disconnectSignal(refs, source, signal, callback);
	}

	public static function connectSignal(source:Object, signal:String, callback:Control->Void) {
		SignalHandler.connectSignal(refs, SignalHandlerControlVoid.new, source, signal, callback);
	}

	final callback:Control->Void;

	function new(source:Object, signal:String, callback:Control->Void) {
		super();
		this.callback = callback;

		final key = "" + source.getInstanceId() + "-" + signal;

		if (!refs.exists(key)) {
			refs.set(key, new Map<Object, Array<Control->Void>>());
		}

		refs.get(key).set(this, [callback]);
	}

	@:keep function handleSignal(arg0:Control) {
		callback(arg0);
	}
}

@:nativeGen
@:dox(hide)
@:noCompletion
class SignalHandlerColorVoid extends Reference {
	static final refs = new Map<String, Map<Object, Array<Color->Void>>>();

	public static function isSignalConnected(source:Object, signal:String, callback:Color->Void):Bool {
		return SignalHandler.isSignalConnected(refs, source, signal, callback);
	}

	public static function disconnectSignal(source:Object, signal:String, callback:Color->Void) {
		SignalHandler.disconnectSignal(refs, source, signal, callback);
	}

	public static function connectSignal(source:Object, signal:String, callback:Color->Void) {
		SignalHandler.connectSignal(refs, SignalHandlerColorVoid.new, source, signal, callback);
	}

	final callback:Color->Void;

	function new(source:Object, signal:String, callback:Color->Void) {
		super();
		this.callback = callback;

		final key = "" + source.getInstanceId() + "-" + signal;

		if (!refs.exists(key)) {
			refs.set(key, new Map<Object, Array<Color->Void>>());
		}

		refs.get(key).set(this, [callback]);
	}

	@:keep function handleSignal(arg0:Color) {
		callback(arg0);
	}
}

@:nativeGen
@:dox(hide)
@:noCompletion
class SignalHandlerCameraVoid extends Reference {
	static final refs = new Map<String, Map<Object, Array<Camera->Void>>>();

	public static function isSignalConnected(source:Object, signal:String, callback:Camera->Void):Bool {
		return SignalHandler.isSignalConnected(refs, source, signal, callback);
	}

	public static function disconnectSignal(source:Object, signal:String, callback:Camera->Void) {
		SignalHandler.disconnectSignal(refs, source, signal, callback);
	}

	public static function connectSignal(source:Object, signal:String, callback:Camera->Void) {
		SignalHandler.connectSignal(refs, SignalHandlerCameraVoid.new, source, signal, callback);
	}

	final callback:Camera->Void;

	function new(source:Object, signal:String, callback:Camera->Void) {
		super();
		this.callback = callback;

		final key = "" + source.getInstanceId() + "-" + signal;

		if (!refs.exists(key)) {
			refs.set(key, new Map<Object, Array<Camera->Void>>());
		}

		refs.get(key).set(this, [callback]);
	}

	@:keep function handleSignal(arg0:Camera) {
		callback(arg0);
	}
}

@:nativeGen
@:dox(hide)
@:noCompletion
class SignalHandlerBoolVoid extends Reference {
	static final refs = new Map<String, Map<Object, Array<Bool->Void>>>();

	public static function isSignalConnected(source:Object, signal:String, callback:Bool->Void):Bool {
		return SignalHandler.isSignalConnected(refs, source, signal, callback);
	}

	public static function disconnectSignal(source:Object, signal:String, callback:Bool->Void) {
		SignalHandler.disconnectSignal(refs, source, signal, callback);
	}

	public static function connectSignal(source:Object, signal:String, callback:Bool->Void) {
		SignalHandler.connectSignal(refs, SignalHandlerBoolVoid.new, source, signal, callback);
	}

	final callback:Bool->Void;

	function new(source:Object, signal:String, callback:Bool->Void) {
		super();
		this.callback = callback;

		final key = "" + source.getInstanceId() + "-" + signal;

		if (!refs.exists(key)) {
			refs.set(key, new Map<Object, Array<Bool->Void>>());
		}

		refs.get(key).set(this, [callback]);
	}

	@:keep function handleSignal(arg0:Bool) {
		callback(arg0);
	}
}

@:nativeGen
@:dox(hide)
@:noCompletion
class SignalHandlerAreaVoid extends Reference {
	static final refs = new Map<String, Map<Object, Array<Area->Void>>>();

	public static function isSignalConnected(source:Object, signal:String, callback:Area->Void):Bool {
		return SignalHandler.isSignalConnected(refs, source, signal, callback);
	}

	public static function disconnectSignal(source:Object, signal:String, callback:Area->Void) {
		SignalHandler.disconnectSignal(refs, source, signal, callback);
	}

	public static function connectSignal(source:Object, signal:String, callback:Area->Void) {
		SignalHandler.connectSignal(refs, SignalHandlerAreaVoid.new, source, signal, callback);
	}

	final callback:Area->Void;

	function new(source:Object, signal:String, callback:Area->Void) {
		super();
		this.callback = callback;

		final key = "" + source.getInstanceId() + "-" + signal;

		if (!refs.exists(key)) {
			refs.set(key, new Map<Object, Array<Area->Void>>());
		}

		refs.get(key).set(this, [callback]);
	}

	@:keep function handleSignal(arg0:Area) {
		callback(arg0);
	}
}

@:nativeGen
@:dox(hide)
@:noCompletion
class SignalHandlerArea2DVoid extends Reference {
	static final refs = new Map<String, Map<Object, Array<Area2D->Void>>>();

	public static function isSignalConnected(source:Object, signal:String, callback:Area2D->Void):Bool {
		return SignalHandler.isSignalConnected(refs, source, signal, callback);
	}

	public static function disconnectSignal(source:Object, signal:String, callback:Area2D->Void) {
		SignalHandler.disconnectSignal(refs, source, signal, callback);
	}

	public static function connectSignal(source:Object, signal:String, callback:Area2D->Void) {
		SignalHandler.connectSignal(refs, SignalHandlerArea2DVoid.new, source, signal, callback);
	}

	final callback:Area2D->Void;

	function new(source:Object, signal:String, callback:Area2D->Void) {
		super();
		this.callback = callback;

		final key = "" + source.getInstanceId() + "-" + signal;

		if (!refs.exists(key)) {
			refs.set(key, new Map<Object, Array<Area2D->Void>>());
		}

		refs.get(key).set(this, [callback]);
	}

	@:keep function handleSignal(arg0:Area2D) {
		callback(arg0);
	}
}
