package godot;

class Utils {
	public static inline function as<T>(obj:Dynamic, type:Class<T>):T {
		return cs.Lib.as(obj, type);
	}
}
