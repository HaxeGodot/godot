package godot;

class Utils {
	public static inline function as<T>(obj:godot.Object, type:Class<T>):T {
		return cs.Lib.as(obj, type);
	}
}
