// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
This class provides access to a number of different monitors related to performance, such as memory usage, draw calls, and FPS. These are the same as the values displayed in the Monitor tab in the editor's Debugger panel. By using the `godot.Performance.getMonitor` method of this class, you can access this data from your code.

Note: A few of these monitors are only available in debug mode and will always return 0 when used in a release build.

Note: Many of these monitors are not updated in real-time, so there may be a short delay between changes.
**/
@:libType
@:csNative
@:native("Godot.Performance")
@:autoBuild(godot.Godot.buildUserClass())
extern class Performance {
	@:native("Singleton") @:readOnly
	public static var SINGLETON(default, never):godot.Object;

	/**		
		Returns the value of one of the available monitors. You should provide one of the `godot.Performance_Monitor` constants as the argument, like this:
		
		```
		
		print(Performance.get_monitor(Performance.TIME_FPS)) # Prints the FPS to the console
		
		```
	**/
	@:native("GetMonitor")
	public static function getMonitor(monitor:godot.Performance_Monitor):Single;
}
