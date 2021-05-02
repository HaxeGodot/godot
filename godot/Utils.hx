package godot;

class Utils {
	public static function as<T>(value:godot.Object, type:Class<T>):T {
		var cls:Class<Any> = Type.getClass(value);
		final type = Type.getClassName(type);

		while (cls != null) {
			if (Type.getClassName(cls) == type) {
				return cast value;
			} else {
				cls = Type.getSuperClass(cls);
			}
		}

		return null;
	}
}
