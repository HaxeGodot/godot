// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Operating System functions. OS wraps the most common functionality to communicate with the host operating system, such as the clipboard, video driver, date and time, timers, environment variables, execution of binaries, command line, etc.
**/
@:libType
@:csNative
@:native("Godot.OS")
@:autoBuild(godot.Godot.buildUserClass())
extern class OS {
	@:native("Singleton")
	public static var SINGLETON(default, never):godot.Object;

	/**		
		The size of the window (without counting window manager decorations).
	**/
	@:native("WindowSize")
	public static var WINDOW_SIZE:godot.Vector2;

	/**		
		The window position relative to the screen, the origin is the top left corner, +Y axis goes to the bottom and +X axis goes to the right.
	**/
	@:native("WindowPosition")
	public static var WINDOW_POSITION:godot.Vector2;

	/**		
		If `true`, the window is resizable by the user.
	**/
	@:native("WindowResizable")
	public static var WINDOW_RESIZABLE:Bool;

	/**		
		If `true`, the window is minimized.
	**/
	@:native("WindowMinimized")
	public static var WINDOW_MINIMIZED:Bool;

	/**		
		If `true`, the window is maximized.
	**/
	@:native("WindowMaximized")
	public static var WINDOW_MAXIMIZED:Bool;

	/**		
		If `true`, the window is fullscreen.
	**/
	@:native("WindowFullscreen")
	public static var WINDOW_FULLSCREEN:Bool;

	/**		
		If `true`, the window background is transparent and window frame is removed.
		
		Use `get_tree().get_root().set_transparent_background(true)` to disable main viewport background rendering.
		
		Note: This property has no effect if Project &gt; Project Settings &gt; Display &gt; Window &gt; Per-pixel transparency &gt; Allowed setting is disabled.
		
		Note: This property is implemented on HTML5, Linux, macOS and Windows.
	**/
	@:native("WindowPerPixelTransparencyEnabled")
	public static var WINDOW_PER_PIXEL_TRANSPARENCY_ENABLED:Bool;

	/**		
		If `true`, removes the window frame.
		
		Note: Setting `window_borderless` to `false` disables per-pixel transparency.
	**/
	@:native("WindowBorderless")
	public static var WINDOW_BORDERLESS:Bool;

	/**		
		The current screen orientation.
	**/
	@:native("ScreenOrientation")
	public static var SCREEN_ORIENTATION:godot.OS_ScreenOrientationEnum;

	/**		
		The maximum size of the window (without counting window manager decorations). Does not affect fullscreen mode. Set to `(0, 0)` to reset to the system default value.
	**/
	@:native("MaxWindowSize")
	public static var MAX_WINDOW_SIZE:godot.Vector2;

	/**		
		The minimum size of the window (without counting window manager decorations). Does not affect fullscreen mode. Set to `(0, 0)` to reset to the system default value.
	**/
	@:native("MinWindowSize")
	public static var MIN_WINDOW_SIZE:godot.Vector2;

	/**		
		If `true`, the engine tries to keep the screen on while the game is running. Useful on mobile.
	**/
	@:native("KeepScreenOn")
	public static var KEEP_SCREEN_ON:Bool;

	/**		
		The amount of sleeping between frames when the low-processor usage mode is enabled (in microseconds). Higher values will result in lower CPU usage.
	**/
	@:native("LowProcessorUsageModeSleepUsec")
	public static var LOW_PROCESSOR_USAGE_MODE_SLEEP_USEC:Int;

	/**		
		If `true`, the engine optimizes for low processor usage by only refreshing the screen if needed. Can improve battery consumption on mobile.
	**/
	@:native("LowProcessorUsageMode")
	public static var LOW_PROCESSOR_USAGE_MODE:Bool;

	/**		
		If `true` and `vsync_enabled` is true, the operating system's window compositor will be used for vsync when the compositor is enabled and the game is in windowed mode.
		
		Note: This option is experimental and meant to alleviate stutter experienced by some users. However, some users have experienced a Vsync framerate halving (e.g. from 60 FPS to 30 FPS) when using it.
		
		Note: This property is only implemented on Windows.
	**/
	@:native("VsyncViaCompositor")
	public static var VSYNC_VIA_COMPOSITOR:Bool;

	/**		
		If `true`, vertical synchronization (Vsync) is enabled.
	**/
	@:native("VsyncEnabled")
	public static var VSYNC_ENABLED:Bool;

	/**		
		The exit code passed to the OS when the main loop exits. By convention, an exit code of `0` indicates success whereas a non-zero exit code indicates an error. For portability reasons, the exit code should be set between 0 and 125 (inclusive).
		
		Note: This value will be ignored if using `godot.SceneTree.quit` with an `exit_code` argument passed.
	**/
	@:native("ExitCode")
	public static var EXIT_CODE:Int;

	/**		
		The current screen index (starting from 0).
	**/
	@:native("CurrentScreen")
	public static var CURRENT_SCREEN:Int;

	/**		
		The clipboard from the host OS. Might be unavailable on some platforms.
	**/
	@:native("Clipboard")
	public static var CLIPBOARD:std.String;

	/**		
		The current tablet driver in use.
	**/
	@:native("TabletDriver")
	public static var TABLET_DRIVER:std.String;

	@:native("SetClipboard")
	public static function setClipboard(clipboard:std.String):Void;

	@:native("GetClipboard")
	public static function getClipboard():std.String;

	/**		
		Add a new item with text "label" to global menu. Use "_dock" menu to add item to the macOS dock icon menu.
		
		Note: This method is implemented on macOS.
	**/
	@:native("GlobalMenuAddItem")
	public static function globalMenuAddItem(menu:std.String, label:std.String, id:Dynamic, meta:Dynamic):Void;

	/**		
		Add a separator between items. Separators also occupy an index.
		
		Note: This method is implemented on macOS.
	**/
	@:native("GlobalMenuAddSeparator")
	public static function globalMenuAddSeparator(menu:std.String):Void;

	/**		
		Removes the item at index "idx" from the global menu. Note that the indexes of items after the removed item are going to be shifted by one.
		
		Note: This method is implemented on macOS.
	**/
	@:native("GlobalMenuRemoveItem")
	public static function globalMenuRemoveItem(menu:std.String, idx:Int):Void;

	/**		
		Clear the global menu, in effect removing all items.
		
		Note: This method is implemented on macOS.
	**/
	@:native("GlobalMenuClear")
	public static function globalMenuClear(menu:std.String):Void;

	/**		
		Returns the number of video drivers supported on the current platform.
	**/
	@:native("GetVideoDriverCount")
	public static function getVideoDriverCount():Int;

	/**		
		Returns the name of the video driver matching the given `driver` index. This index is a value from `godot.OS_VideoDriver`, and you can use `godot.OS.getCurrentVideoDriver` to get the current backend's index.
	**/
	@:native("GetVideoDriverName")
	public static function getVideoDriverName(driver:godot.OS_VideoDriver):std.String;

	/**		
		Returns the currently used video driver, using one of the values from `godot.OS_VideoDriver`.
	**/
	@:native("GetCurrentVideoDriver")
	public static function getCurrentVideoDriver():godot.OS_VideoDriver;

	/**		
		Returns the total number of available audio drivers.
	**/
	@:native("GetAudioDriverCount")
	public static function getAudioDriverCount():Int;

	/**		
		Returns the audio driver name for the given index.
	**/
	@:native("GetAudioDriverName")
	public static function getAudioDriverName(driver:Int):std.String;

	/**		
		Returns an array of MIDI device names.
		
		The returned array will be empty if the system MIDI driver has not previously been initialised with `godot.OS.openMidiInputs`.
		
		Note: This method is implemented on Linux, macOS and Windows.
	**/
	public static extern inline function getConnectedMidiInputs():std.Array<std.String> {
		return cs.Lib.array(cs.Syntax.code("GetConnectedMidiInputs()"));
	}

	/**		
		Initialises the singleton for the system MIDI driver.
		
		Note: This method is implemented on Linux, macOS and Windows.
	**/
	@:native("OpenMidiInputs")
	public static function openMidiInputs():Void;

	/**		
		Shuts down system MIDI driver.
		
		Note: This method is implemented on Linux, macOS and Windows.
	**/
	@:native("CloseMidiInputs")
	public static function closeMidiInputs():Void;

	/**		
		Returns the number of displays attached to the host machine.
	**/
	@:native("GetScreenCount")
	public static function getScreenCount():Int;

	@:native("GetCurrentScreen")
	public static function getCurrentScreen():Int;

	@:native("SetCurrentScreen")
	public static function setCurrentScreen(screen:Int):Void;

	#if doc_gen
	/**		
		Returns the position of the specified screen by index. If `screen` is [/code]-1[/code] (the default value), the current screen will be used.
	**/
	@:native("GetScreenPosition")
	public static function getScreenPosition(?screen:Int):godot.Vector2;
	#else
	/**		
		Returns the position of the specified screen by index. If `screen` is [/code]-1[/code] (the default value), the current screen will be used.
	**/
	@:native("GetScreenPosition")
	public static overload function getScreenPosition():godot.Vector2;

	/**		
		Returns the position of the specified screen by index. If `screen` is [/code]-1[/code] (the default value), the current screen will be used.
	**/
	@:native("GetScreenPosition")
	public static overload function getScreenPosition(screen:Int):godot.Vector2;
	#end

	#if doc_gen
	/**		
		Returns the dimensions in pixels of the specified screen. If `screen` is [/code]-1[/code] (the default value), the current screen will be used.
	**/
	@:native("GetScreenSize")
	public static function getScreenSize(?screen:Int):godot.Vector2;
	#else
	/**		
		Returns the dimensions in pixels of the specified screen. If `screen` is [/code]-1[/code] (the default value), the current screen will be used.
	**/
	@:native("GetScreenSize")
	public static overload function getScreenSize():godot.Vector2;

	/**		
		Returns the dimensions in pixels of the specified screen. If `screen` is [/code]-1[/code] (the default value), the current screen will be used.
	**/
	@:native("GetScreenSize")
	public static overload function getScreenSize(screen:Int):godot.Vector2;
	#end

	#if doc_gen
	/**		
		Returns the dots per inch density of the specified screen. If `screen` is [/code]-1[/code] (the default value), the current screen will be used.
		
		Note: On macOS, returned value is inaccurate if fractional display scaling mode is used.
		
		Note: On Android devices, the actual screen densities are grouped into six generalized densities:
		
		```
		
		ldpi - 120 dpi
		mdpi - 160 dpi
		hdpi - 240 dpi
		xhdpi - 320 dpi
		xxhdpi - 480 dpi
		xxxhdpi - 640 dpi
		
		```
		
		Note: This method is implemented on Android, Linux, macOS and Windows. Returns `72` on unsupported platforms.
	**/
	@:native("GetScreenDpi")
	public static function getScreenDpi(?screen:Int):Int;
	#else
	/**		
		Returns the dots per inch density of the specified screen. If `screen` is [/code]-1[/code] (the default value), the current screen will be used.
		
		Note: On macOS, returned value is inaccurate if fractional display scaling mode is used.
		
		Note: On Android devices, the actual screen densities are grouped into six generalized densities:
		
		```
		
		ldpi - 120 dpi
		mdpi - 160 dpi
		hdpi - 240 dpi
		xhdpi - 320 dpi
		xxhdpi - 480 dpi
		xxxhdpi - 640 dpi
		
		```
		
		Note: This method is implemented on Android, Linux, macOS and Windows. Returns `72` on unsupported platforms.
	**/
	@:native("GetScreenDpi")
	public static overload function getScreenDpi():Int;

	/**		
		Returns the dots per inch density of the specified screen. If `screen` is [/code]-1[/code] (the default value), the current screen will be used.
		
		Note: On macOS, returned value is inaccurate if fractional display scaling mode is used.
		
		Note: On Android devices, the actual screen densities are grouped into six generalized densities:
		
		```
		
		ldpi - 120 dpi
		mdpi - 160 dpi
		hdpi - 240 dpi
		xhdpi - 320 dpi
		xxhdpi - 480 dpi
		xxxhdpi - 640 dpi
		
		```
		
		Note: This method is implemented on Android, Linux, macOS and Windows. Returns `72` on unsupported platforms.
	**/
	@:native("GetScreenDpi")
	public static overload function getScreenDpi(screen:Int):Int;
	#end

	#if doc_gen
	/**		
		Return the scale factor of the specified screen by index. If `screen` is [/code]-1[/code] (the default value), the current screen will be used.
		
		Note: On macOS returned value is `2.0` for hiDPI (Retina) screen, and `1.0` for all other cases.
		
		Note: This method is implemented on macOS.
	**/
	@:native("GetScreenScale")
	public static function getScreenScale(?screen:Int):Single;
	#else
	/**		
		Return the scale factor of the specified screen by index. If `screen` is [/code]-1[/code] (the default value), the current screen will be used.
		
		Note: On macOS returned value is `2.0` for hiDPI (Retina) screen, and `1.0` for all other cases.
		
		Note: This method is implemented on macOS.
	**/
	@:native("GetScreenScale")
	public static overload function getScreenScale():Single;

	/**		
		Return the scale factor of the specified screen by index. If `screen` is [/code]-1[/code] (the default value), the current screen will be used.
		
		Note: On macOS returned value is `2.0` for hiDPI (Retina) screen, and `1.0` for all other cases.
		
		Note: This method is implemented on macOS.
	**/
	@:native("GetScreenScale")
	public static overload function getScreenScale(screen:Int):Single;
	#end

	/**		
		Return the greatest scale factor of all screens.
		
		Note: On macOS returned value is `2.0` if there is at least one hiDPI (Retina) screen in the system, and `1.0` in all other cases.
		
		Note: This method is implemented on macOS.
	**/
	@:native("GetScreenMaxScale")
	public static function getScreenMaxScale():Single;

	@:native("GetWindowPosition")
	public static function getWindowPosition():godot.Vector2;

	@:native("SetWindowPosition")
	public static function setWindowPosition(position:godot.Vector2):Void;

	@:native("GetWindowSize")
	public static function getWindowSize():godot.Vector2;

	@:native("GetMaxWindowSize")
	public static function getMaxWindowSize():godot.Vector2;

	@:native("GetMinWindowSize")
	public static function getMinWindowSize():godot.Vector2;

	@:native("SetMaxWindowSize")
	public static function setMaxWindowSize(size:godot.Vector2):Void;

	@:native("SetMinWindowSize")
	public static function setMinWindowSize(size:godot.Vector2):Void;

	@:native("SetWindowSize")
	public static function setWindowSize(size:godot.Vector2):Void;

	/**		
		Returns unobscured area of the window where interactive controls should be rendered.
	**/
	@:native("GetWindowSafeArea")
	public static function getWindowSafeArea():godot.Rect2;

	@:native("SetWindowFullscreen")
	public static function setWindowFullscreen(enabled:Bool):Void;

	@:native("IsWindowFullscreen")
	public static function isWindowFullscreen():Bool;

	@:native("SetWindowResizable")
	public static function setWindowResizable(enabled:Bool):Void;

	@:native("IsWindowResizable")
	public static function isWindowResizable():Bool;

	@:native("SetWindowMinimized")
	public static function setWindowMinimized(enabled:Bool):Void;

	@:native("IsWindowMinimized")
	public static function isWindowMinimized():Bool;

	@:native("SetWindowMaximized")
	public static function setWindowMaximized(enabled:Bool):Void;

	@:native("IsWindowMaximized")
	public static function isWindowMaximized():Bool;

	/**		
		Sets whether the window should always be on top.
		
		Note: This method is implemented on Linux, macOS and Windows.
	**/
	@:native("SetWindowAlwaysOnTop")
	public static function setWindowAlwaysOnTop(enabled:Bool):Void;

	/**		
		Returns `true` if the window should always be on top of other windows.
	**/
	@:native("IsWindowAlwaysOnTop")
	public static function isWindowAlwaysOnTop():Bool;

	/**		
		Returns `true` if the window is currently focused.
		
		Note: Only implemented on desktop platforms. On other platforms, it will always return `true`.
	**/
	@:native("IsWindowFocused")
	public static function isWindowFocused():Bool;

	/**		
		Request the user attention to the window. It'll flash the taskbar button on Windows or bounce the dock icon on OSX.
		
		Note: This method is implemented on Linux, macOS and Windows.
	**/
	@:native("RequestAttention")
	public static function requestAttention():Void;

	/**		
		Returns the window size including decorations like window borders.
	**/
	@:native("GetRealWindowSize")
	public static function getRealWindowSize():godot.Vector2;

	/**		
		Centers the window on the screen if in windowed mode.
	**/
	@:native("CenterWindow")
	public static function centerWindow():Void;

	/**		
		Moves the window to the front.
		
		Note: This method is implemented on Linux, macOS and Windows.
	**/
	@:native("MoveWindowToForeground")
	public static function moveWindowToForeground():Void;

	/**		
		Returns internal structure pointers for use in GDNative plugins.
		
		Note: This method is implemented on Linux and Windows (other OSs will soon be supported).
	**/
	@:native("GetNativeHandle")
	public static function getNativeHandle(handleType:godot.OS_HandleType):haxe.Int64;

	@:native("SetBorderlessWindow")
	public static function setBorderlessWindow(borderless:Bool):Void;

	@:native("GetBorderlessWindow")
	public static function getBorderlessWindow():Bool;

	@:native("GetWindowPerPixelTransparencyEnabled")
	public static function getWindowPerPixelTransparencyEnabled():Bool;

	@:native("SetWindowPerPixelTransparencyEnabled")
	public static function setWindowPerPixelTransparencyEnabled(enabled:Bool):Void;

	/**		
		Sets whether IME input mode should be enabled.
		
		If active IME handles key events before the application and creates an composition string and suggestion list.
		
		Application can retrieve the composition status by using `godot.OS.getImeSelection` and `godot.OS.getImeText` functions.
		
		Completed composition string is committed when input is finished.
		
		Note: This method is implemented on Linux, macOS and Windows.
	**/
	@:native("SetImeActive")
	public static function setImeActive(active:Bool):Void;

	/**		
		Sets position of IME suggestion list popup (in window coordinates).
		
		Note: This method is implemented on Linux, macOS and Windows.
	**/
	@:native("SetImePosition")
	public static function setImePosition(position:godot.Vector2):Void;

	/**		
		Returns the IME cursor position (the currently-edited portion of the string) relative to the characters in the composition string.
		
		is sent to the application to notify it of changes to the IME cursor position.
		
		Note: This method is implemented on macOS.
	**/
	@:native("GetImeSelection")
	public static function getImeSelection():godot.Vector2;

	/**		
		Returns the IME intermediate composition string.
		
		is sent to the application to notify it of changes to the IME composition string.
		
		Note: This method is implemented on macOS.
	**/
	@:native("GetImeText")
	public static function getImeText():std.String;

	@:native("SetScreenOrientation")
	public static function setScreenOrientation(orientation:godot.OS_ScreenOrientationEnum):Void;

	@:native("GetScreenOrientation")
	public static function getScreenOrientation():godot.OS_ScreenOrientationEnum;

	@:native("SetKeepScreenOn")
	public static function setKeepScreenOn(enabled:Bool):Void;

	@:native("IsKeepScreenOn")
	public static function isKeepScreenOn():Bool;

	/**		
		Returns `true` if the device has a touchscreen or emulates one.
	**/
	@:native("HasTouchscreenUiHint")
	public static function hasTouchscreenUiHint():Bool;

	/**		
		Sets the window title to the specified string.
		
		Note: This should be used sporadically. Don't set this every frame, as that will negatively affect performance on some window managers.
		
		Note: This method is implemented on HTML5, Linux, macOS and Windows.
	**/
	@:native("SetWindowTitle")
	public static function setWindowTitle(title:std.String):Void;

	/**		
		Sets a polygonal region of the window which accepts mouse events. Mouse events outside the region will be passed through.
		
		Passing an empty array will disable passthrough support (all mouse events will be intercepted by the window, which is the default behavior).
		
		```
		
		# Set region, using Path2D node.
		OS.set_window_mouse_passthrough($Path2D.curve.get_baked_points())
		
		# Set region, using Polygon2D node.
		OS.set_window_mouse_passthrough($Polygon2D.polygon)
		
		# Reset region to default.
		OS.set_window_mouse_passthrough([])
		
		```
		
		Note: On Windows, the portion of a window that lies outside the region is not drawn, while on Linux and macOS it is.
		
		Note: This method is implemented on Linux, macOS and Windows.
	**/
	@:native("SetWindowMousePassthrough")
	public static function setWindowMousePassthrough(region:haxe.Rest<godot.Vector2>):Void;

	@:native("SetLowProcessorUsageMode")
	public static function setLowProcessorUsageMode(enable:Bool):Void;

	@:native("IsInLowProcessorUsageMode")
	public static function isInLowProcessorUsageMode():Bool;

	@:native("SetLowProcessorUsageModeSleepUsec")
	public static function setLowProcessorUsageModeSleepUsec(usec:Int):Void;

	@:native("GetLowProcessorUsageModeSleepUsec")
	public static function getLowProcessorUsageModeSleepUsec():Int;

	/**		
		Returns the number of threads available on the host machine.
	**/
	@:native("GetProcessorCount")
	public static function getProcessorCount():Int;

	/**		
		Returns the path to the current engine executable.
	**/
	@:native("GetExecutablePath")
	public static function getExecutablePath():std.String;

	#if doc_gen
	/**		
		Execute the file at the given path with the arguments passed as an array of strings. Platform path resolution will take place. The resolved file must exist and be executable.
		
		The arguments are used in the given order and separated by a space, so `OS.execute("ping", ["-w", "3", "godotengine.org"], false)` will resolve to `ping -w 3 godotengine.org` in the system's shell.
		
		This method has slightly different behavior based on whether the `blocking` mode is enabled.
		
		If `blocking` is `true`, the Godot thread will pause its execution while waiting for the process to terminate. The shell output of the process will be written to the `output` array as a single string. When the process terminates, the Godot thread will resume execution.
		
		If `blocking` is `false`, the Godot thread will continue while the new process runs. It is not possible to retrieve the shell output in non-blocking mode, so `output` will be empty.
		
		The return value also depends on the blocking mode. When blocking, the method will return an exit code of the process. When non-blocking, the method returns a process ID, which you can use to monitor the process (and potentially terminate it with `godot.OS.kill`). If the process forking (non-blocking) or opening (blocking) fails, the method will return `-1` or another exit code.
		
		Example of blocking mode and retrieving the shell output:
		
		```
		
		var output = []
		var exit_code = OS.execute("ls", ["-l", "/tmp"], true, output)
		
		```
		
		Example of non-blocking mode, running another instance of the project and storing its process ID:
		
		```
		
		var pid = OS.execute(OS.get_executable_path(), [], false)
		
		```
		
		If you wish to access a shell built-in or perform a composite command, a platform-specific shell can be invoked. For example:
		
		```
		
		OS.execute("CMD.exe", ["/C", "cd %TEMP% &amp;&amp; dir"], true, output)
		
		```
		
		Note: This method is implemented on Android, iOS, Linux, macOS and Windows.
		
		@param output If the parameter is null, then the default value is new Godot.Collections.Array {}
	**/
	@:native("Execute")
	public static function execute(path:std.String, arguments:std.Array<std.String>, ?blocking:Bool, ?output:godot.collections.Array, ?readStderr:Bool):Int;
	#else
	/**		
		Execute the file at the given path with the arguments passed as an array of strings. Platform path resolution will take place. The resolved file must exist and be executable.
		
		The arguments are used in the given order and separated by a space, so `OS.execute("ping", ["-w", "3", "godotengine.org"], false)` will resolve to `ping -w 3 godotengine.org` in the system's shell.
		
		This method has slightly different behavior based on whether the `blocking` mode is enabled.
		
		If `blocking` is `true`, the Godot thread will pause its execution while waiting for the process to terminate. The shell output of the process will be written to the `output` array as a single string. When the process terminates, the Godot thread will resume execution.
		
		If `blocking` is `false`, the Godot thread will continue while the new process runs. It is not possible to retrieve the shell output in non-blocking mode, so `output` will be empty.
		
		The return value also depends on the blocking mode. When blocking, the method will return an exit code of the process. When non-blocking, the method returns a process ID, which you can use to monitor the process (and potentially terminate it with `godot.OS.kill`). If the process forking (non-blocking) or opening (blocking) fails, the method will return `-1` or another exit code.
		
		Example of blocking mode and retrieving the shell output:
		
		```
		
		var output = []
		var exit_code = OS.execute("ls", ["-l", "/tmp"], true, output)
		
		```
		
		Example of non-blocking mode, running another instance of the project and storing its process ID:
		
		```
		
		var pid = OS.execute(OS.get_executable_path(), [], false)
		
		```
		
		If you wish to access a shell built-in or perform a composite command, a platform-specific shell can be invoked. For example:
		
		```
		
		OS.execute("CMD.exe", ["/C", "cd %TEMP% &amp;&amp; dir"], true, output)
		
		```
		
		Note: This method is implemented on Android, iOS, Linux, macOS and Windows.
		
		@param output If the parameter is null, then the default value is new Godot.Collections.Array {}
	**/
	@:native("Execute")
	public static overload function execute(path:std.String, arguments:HaxeArray<std.String>):Int;

	/**		
		Execute the file at the given path with the arguments passed as an array of strings. Platform path resolution will take place. The resolved file must exist and be executable.
		
		The arguments are used in the given order and separated by a space, so `OS.execute("ping", ["-w", "3", "godotengine.org"], false)` will resolve to `ping -w 3 godotengine.org` in the system's shell.
		
		This method has slightly different behavior based on whether the `blocking` mode is enabled.
		
		If `blocking` is `true`, the Godot thread will pause its execution while waiting for the process to terminate. The shell output of the process will be written to the `output` array as a single string. When the process terminates, the Godot thread will resume execution.
		
		If `blocking` is `false`, the Godot thread will continue while the new process runs. It is not possible to retrieve the shell output in non-blocking mode, so `output` will be empty.
		
		The return value also depends on the blocking mode. When blocking, the method will return an exit code of the process. When non-blocking, the method returns a process ID, which you can use to monitor the process (and potentially terminate it with `godot.OS.kill`). If the process forking (non-blocking) or opening (blocking) fails, the method will return `-1` or another exit code.
		
		Example of blocking mode and retrieving the shell output:
		
		```
		
		var output = []
		var exit_code = OS.execute("ls", ["-l", "/tmp"], true, output)
		
		```
		
		Example of non-blocking mode, running another instance of the project and storing its process ID:
		
		```
		
		var pid = OS.execute(OS.get_executable_path(), [], false)
		
		```
		
		If you wish to access a shell built-in or perform a composite command, a platform-specific shell can be invoked. For example:
		
		```
		
		OS.execute("CMD.exe", ["/C", "cd %TEMP% &amp;&amp; dir"], true, output)
		
		```
		
		Note: This method is implemented on Android, iOS, Linux, macOS and Windows.
		
		@param output If the parameter is null, then the default value is new Godot.Collections.Array {}
	**/
	@:native("Execute")
	public static overload function execute(path:std.String, arguments:HaxeArray<std.String>, blocking:Bool):Int;

	/**		
		Execute the file at the given path with the arguments passed as an array of strings. Platform path resolution will take place. The resolved file must exist and be executable.
		
		The arguments are used in the given order and separated by a space, so `OS.execute("ping", ["-w", "3", "godotengine.org"], false)` will resolve to `ping -w 3 godotengine.org` in the system's shell.
		
		This method has slightly different behavior based on whether the `blocking` mode is enabled.
		
		If `blocking` is `true`, the Godot thread will pause its execution while waiting for the process to terminate. The shell output of the process will be written to the `output` array as a single string. When the process terminates, the Godot thread will resume execution.
		
		If `blocking` is `false`, the Godot thread will continue while the new process runs. It is not possible to retrieve the shell output in non-blocking mode, so `output` will be empty.
		
		The return value also depends on the blocking mode. When blocking, the method will return an exit code of the process. When non-blocking, the method returns a process ID, which you can use to monitor the process (and potentially terminate it with `godot.OS.kill`). If the process forking (non-blocking) or opening (blocking) fails, the method will return `-1` or another exit code.
		
		Example of blocking mode and retrieving the shell output:
		
		```
		
		var output = []
		var exit_code = OS.execute("ls", ["-l", "/tmp"], true, output)
		
		```
		
		Example of non-blocking mode, running another instance of the project and storing its process ID:
		
		```
		
		var pid = OS.execute(OS.get_executable_path(), [], false)
		
		```
		
		If you wish to access a shell built-in or perform a composite command, a platform-specific shell can be invoked. For example:
		
		```
		
		OS.execute("CMD.exe", ["/C", "cd %TEMP% &amp;&amp; dir"], true, output)
		
		```
		
		Note: This method is implemented on Android, iOS, Linux, macOS and Windows.
		
		@param output If the parameter is null, then the default value is new Godot.Collections.Array {}
	**/
	@:native("Execute")
	public static overload function execute(path:std.String, arguments:HaxeArray<std.String>, blocking:Bool, output:godot.collections.Array):Int;

	/**		
		Execute the file at the given path with the arguments passed as an array of strings. Platform path resolution will take place. The resolved file must exist and be executable.
		
		The arguments are used in the given order and separated by a space, so `OS.execute("ping", ["-w", "3", "godotengine.org"], false)` will resolve to `ping -w 3 godotengine.org` in the system's shell.
		
		This method has slightly different behavior based on whether the `blocking` mode is enabled.
		
		If `blocking` is `true`, the Godot thread will pause its execution while waiting for the process to terminate. The shell output of the process will be written to the `output` array as a single string. When the process terminates, the Godot thread will resume execution.
		
		If `blocking` is `false`, the Godot thread will continue while the new process runs. It is not possible to retrieve the shell output in non-blocking mode, so `output` will be empty.
		
		The return value also depends on the blocking mode. When blocking, the method will return an exit code of the process. When non-blocking, the method returns a process ID, which you can use to monitor the process (and potentially terminate it with `godot.OS.kill`). If the process forking (non-blocking) or opening (blocking) fails, the method will return `-1` or another exit code.
		
		Example of blocking mode and retrieving the shell output:
		
		```
		
		var output = []
		var exit_code = OS.execute("ls", ["-l", "/tmp"], true, output)
		
		```
		
		Example of non-blocking mode, running another instance of the project and storing its process ID:
		
		```
		
		var pid = OS.execute(OS.get_executable_path(), [], false)
		
		```
		
		If you wish to access a shell built-in or perform a composite command, a platform-specific shell can be invoked. For example:
		
		```
		
		OS.execute("CMD.exe", ["/C", "cd %TEMP% &amp;&amp; dir"], true, output)
		
		```
		
		Note: This method is implemented on Android, iOS, Linux, macOS and Windows.
		
		@param output If the parameter is null, then the default value is new Godot.Collections.Array {}
	**/
	@:native("Execute")
	public static overload function execute(path:std.String, arguments:HaxeArray<std.String>, blocking:Bool, output:godot.collections.Array, readStderr:Bool):Int;
	#end

	/**		
		Kill (terminate) the process identified by the given process ID (`pid`), e.g. the one returned by `godot.OS.execute` in non-blocking mode.
		
		Note: This method can also be used to kill processes that were not spawned by the game.
		
		Note: This method is implemented on Android, iOS, Linux, macOS and Windows.
	**/
	@:native("Kill")
	public static function kill(pid:Int):godot.Error;

	/**		
		Requests the OS to open a resource with the most appropriate program. For example:
		
		- `OS.shell_open("C:\\Users\name\Downloads")` on Windows opens the file explorer at the user's Downloads folder.
		
		- `OS.shell_open("https://godotengine.org")` opens the default web browser on the official Godot website.
		
		- `OS.shell_open("mailto:example@example.com")` opens the default email client with the "To" field set to `example@example.com`. See [https://blog.escapecreative.com/customizing-mailto-links/](Customizing `mailto:` Links) for a list of fields that can be added.
		
		Use `godot.ProjectSettings.globalizePath` to convert a `res://` or `user://` path into a system path for use with this method.
		
		Note: This method is implemented on Android, iOS, HTML5, Linux, macOS and Windows.
	**/
	@:native("ShellOpen")
	public static function shellOpen(uri:std.String):godot.Error;

	/**		
		Returns the project's process ID.
		
		Note: This method is implemented on Android, iOS, Linux, macOS and Windows.
	**/
	@:native("GetProcessId")
	public static function getProcessId():Int;

	/**		
		Returns the value of an environment variable. Returns an empty string if the environment variable doesn't exist.
		
		Note: Double-check the casing of `variable`. Environment variable names are case-sensitive on all platforms except Windows.
	**/
	@:native("GetEnvironment")
	public static function getEnvironment(variable:std.String):std.String;

	/**		
		Sets the value of the environment variable `variable` to `value`. The environment variable will be set for the Godot process and any process executed with `godot.OS.execute` after running `godot.OS.setEnvironment`. The environment variable will not persist to processes run after the Godot process was terminated.
		
		Note: Double-check the casing of `variable`. Environment variable names are case-sensitive on all platforms except Windows.
	**/
	@:native("SetEnvironment")
	public static function setEnvironment(variable:std.String, value:std.String):Bool;

	/**		
		Returns `true` if the environment variable with the name `variable` exists.
		
		Note: Double-check the casing of `variable`. Environment variable names are case-sensitive on all platforms except Windows.
	**/
	@:native("HasEnvironment")
	public static function hasEnvironment(variable:std.String):Bool;

	/**		
		Returns the name of the host OS. Possible values are: `"Android"`, `"iOS"`, `"HTML5"`, `"OSX"`, `"Server"`, `"Windows"`, `"UWP"`, `"X11"`.
	**/
	@:native("GetName")
	public static function getName():std.String;

	/**		
		Returns the command-line arguments passed to the engine.
		
		Command-line arguments can be written in any form, including both `--key value` and `--key=value` forms so they can be properly parsed, as long as custom command-line arguments do not conflict with engine arguments.
		
		You can also incorporate environment variables using the `godot.OS.getEnvironment` method.
		
		You can set `editor/main_run_args` in the Project Settings to define command-line arguments to be passed by the editor when running the project.
		
		Here's a minimal example on how to parse command-line arguments into a dictionary using the `--key=value` form for arguments:
		
		```
		
		var arguments = {}
		for argument in OS.get_cmdline_args():
		if argument.find("=") &gt; -1:
		var key_value = argument.split("=")
		arguments[key_value[0].lstrip("--")] = key_value[1]
		
		```
	**/
	public static extern inline function getCmdlineArgs():std.Array<std.String> {
		return cs.Lib.array(cs.Syntax.code("GetCmdlineArgs()"));
	}

	#if doc_gen
	/**		
		Returns current datetime as a dictionary of keys: `year`, `month`, `day`, `weekday`, `dst` (Daylight Savings Time), `hour`, `minute`, `second`.
	**/
	@:native("GetDatetime")
	public static function getDatetime(?utc:Bool):godot.collections.Dictionary;
	#else
	/**		
		Returns current datetime as a dictionary of keys: `year`, `month`, `day`, `weekday`, `dst` (Daylight Savings Time), `hour`, `minute`, `second`.
	**/
	@:native("GetDatetime")
	public static overload function getDatetime():godot.collections.Dictionary;

	/**		
		Returns current datetime as a dictionary of keys: `year`, `month`, `day`, `weekday`, `dst` (Daylight Savings Time), `hour`, `minute`, `second`.
	**/
	@:native("GetDatetime")
	public static overload function getDatetime(utc:Bool):godot.collections.Dictionary;
	#end

	#if doc_gen
	/**		
		Returns current date as a dictionary of keys: `year`, `month`, `day`, `weekday`, `dst` (Daylight Savings Time).
	**/
	@:native("GetDate")
	public static function getDate(?utc:Bool):godot.collections.Dictionary;
	#else
	/**		
		Returns current date as a dictionary of keys: `year`, `month`, `day`, `weekday`, `dst` (Daylight Savings Time).
	**/
	@:native("GetDate")
	public static overload function getDate():godot.collections.Dictionary;

	/**		
		Returns current date as a dictionary of keys: `year`, `month`, `day`, `weekday`, `dst` (Daylight Savings Time).
	**/
	@:native("GetDate")
	public static overload function getDate(utc:Bool):godot.collections.Dictionary;
	#end

	#if doc_gen
	/**		
		Returns current time as a dictionary of keys: hour, minute, second.
	**/
	@:native("GetTime")
	public static function getTime(?utc:Bool):godot.collections.Dictionary;
	#else
	/**		
		Returns current time as a dictionary of keys: hour, minute, second.
	**/
	@:native("GetTime")
	public static overload function getTime():godot.collections.Dictionary;

	/**		
		Returns current time as a dictionary of keys: hour, minute, second.
	**/
	@:native("GetTime")
	public static overload function getTime(utc:Bool):godot.collections.Dictionary;
	#end

	/**		
		Returns the current time zone as a dictionary with the keys: bias and name.
	**/
	@:native("GetTimeZoneInfo")
	public static function getTimeZoneInfo():godot.collections.Dictionary;

	/**		
		Returns the current UNIX epoch timestamp in seconds.
		
		Important: This is the system clock that the user can manully set. Never use this method for precise time calculation since its results are also subject to automatic adjustments by the operating system. Always use `godot.OS.getTicksUsec` or `godot.OS.getTicksMsec` for precise time calculation instead, since they are guaranteed to be monotonic (i.e. never decrease).
	**/
	@:native("GetUnixTime")
	public static function getUnixTime():cs.types.UInt64;

	/**		
		Gets a dictionary of time values corresponding to the given UNIX epoch time (in seconds).
		
		The returned Dictionary's values will be the same as `godot.OS.getDatetime`, with the exception of Daylight Savings Time as it cannot be determined from the epoch.
	**/
	@:native("GetDatetimeFromUnixTime")
	public static function getDatetimeFromUnixTime(unixTimeVal:haxe.Int64):godot.collections.Dictionary;

	/**		
		Gets an epoch time value from a dictionary of time values.
		
		`datetime` must be populated with the following keys: `year`, `month`, `day`, `hour`, `minute`, `second`.
		
		If the dictionary is empty `0` is returned.
		
		You can pass the output from `godot.OS.getDatetimeFromUnixTime` directly into this function. Daylight Savings Time (`dst`), if present, is ignored.
	**/
	@:native("GetUnixTimeFromDatetime")
	public static function getUnixTimeFromDatetime(datetime:godot.collections.Dictionary):haxe.Int64;

	/**		
		Returns the epoch time of the operating system in seconds.
	**/
	@:native("GetSystemTimeSecs")
	public static function getSystemTimeSecs():cs.types.UInt64;

	/**		
		Returns the epoch time of the operating system in milliseconds.
	**/
	@:native("GetSystemTimeMsecs")
	public static function getSystemTimeMsecs():cs.types.UInt64;

	/**		
		Sets the game's icon using a multi-size platform-specific icon file (`*.ico` on Windows and `*.icns` on macOS).
		
		Appropriate size sub-icons are used for window caption, taskbar/dock and window selection dialog.
		
		Note: This method is implemented on macOS and Windows.
	**/
	@:native("SetNativeIcon")
	public static function setNativeIcon(filename:std.String):Void;

	/**		
		Sets the game's icon using an `godot.Image` resource.
		
		The same image is used for window caption, taskbar/dock and window selection dialog. Image is scaled as needed.
		
		Note: This method is implemented on HTML5, Linux, macOS and Windows.
	**/
	@:native("SetIcon")
	public static function setIcon(icon:godot.Image):Void;

	@:native("GetExitCode")
	public static function getExitCode():Int;

	@:native("SetExitCode")
	public static function setExitCode(code:Int):Void;

	/**		
		Delay execution of the current thread by `usec` microseconds. `usec` must be greater than or equal to `0`. Otherwise, `godot.OS.delayUsec` will do nothing and will print an error message.
	**/
	@:native("DelayUsec")
	public static function delayUsec(usec:Int):Void;

	/**		
		Delay execution of the current thread by `msec` milliseconds. `usec` must be greater than or equal to `0`. Otherwise, `godot.OS.delayMsec` will do nothing and will print an error message.
	**/
	@:native("DelayMsec")
	public static function delayMsec(msec:Int):Void;

	/**		
		Returns the amount of time passed in milliseconds since the engine started.
	**/
	@:native("GetTicksMsec")
	public static function getTicksMsec():UInt;

	/**		
		Returns the amount of time passed in microseconds since the engine started.
	**/
	@:native("GetTicksUsec")
	public static function getTicksUsec():cs.types.UInt64;

	/**		
		Returns the amount of time in milliseconds it took for the boot logo to appear.
	**/
	@:native("GetSplashTickMsec")
	public static function getSplashTickMsec():UInt;

	/**		
		Returns the host OS locale.
	**/
	@:native("GetLocale")
	public static function getLocale():std.String;

	/**		
		Returns the current latin keyboard variant as a String.
		
		Possible return values are: `"QWERTY"`, `"AZERTY"`, `"QZERTY"`, `"DVORAK"`, `"NEO"`, `"COLEMAK"` or `"ERROR"`.
		
		Note: This method is implemented on Linux, macOS and Windows. Returns `"QWERTY"` on unsupported platforms.
	**/
	@:native("GetLatinKeyboardVariant")
	public static function getLatinKeyboardVariant():std.String;

	/**		
		Returns the model name of the current device.
		
		Note: This method is implemented on Android and iOS. Returns `"GenericDevice"` on unsupported platforms.
	**/
	@:native("GetModelName")
	public static function getModelName():std.String;

	/**		
		Returns the number of keyboard layouts.
		
		Note: This method is implemented on Linux, macOS and Windows.
	**/
	@:native("KeyboardGetLayoutCount")
	public static function keyboardGetLayoutCount():Int;

	/**		
		Returns active keyboard layout index.
		
		Note: This method is implemented on Linux, macOS and Windows.
	**/
	@:native("KeyboardGetCurrentLayout")
	public static function keyboardGetCurrentLayout():Int;

	/**		
		Sets active keyboard layout.
		
		Note: This method is implemented on Linux, macOS and Windows.
	**/
	@:native("KeyboardSetCurrentLayout")
	public static function keyboardSetCurrentLayout(index:Int):Void;

	/**		
		Returns the ISO-639/BCP-47 language code of the keyboard layout at position `index`.
		
		Note: This method is implemented on Linux, macOS and Windows.
	**/
	@:native("KeyboardGetLayoutLanguage")
	public static function keyboardGetLayoutLanguage(index:Int):std.String;

	/**		
		Returns the localized name of the keyboard layout at position `index`.
		
		Note: This method is implemented on Linux, macOS and Windows.
	**/
	@:native("KeyboardGetLayoutName")
	public static function keyboardGetLayoutName(index:Int):std.String;

	/**		
		Returns `true` if the host OS allows drawing.
	**/
	@:native("CanDraw")
	public static function canDraw():Bool;

	/**		
		If `true`, the `user://` file system is persistent, so that its state is the same after a player quits and starts the game again. Relevant to the HTML5 platform, where this persistence may be unavailable.
	**/
	@:native("IsUserfsPersistent")
	public static function isUserfsPersistent():Bool;

	/**		
		Returns `true` if the engine was executed with `-v` (verbose stdout).
	**/
	@:native("IsStdoutVerbose")
	public static function isStdoutVerbose():Bool;

	/**		
		Returns `true` if the current host platform is using multiple threads.
	**/
	@:native("CanUseThreads")
	public static function canUseThreads():Bool;

	/**		
		Returns `true` if the Godot binary used to run the project is a debug export template, or when running in the editor.
		
		Returns `false` if the Godot binary used to run the project is a release export template.
		
		To check whether the Godot binary used to run the project is an export template (debug or release), use `OS.has_feature("standalone")` instead.
	**/
	@:native("IsDebugBuild")
	public static function isDebugBuild():Bool;

	/**		
		Dumps the memory allocation ringlist to a file (only works in debug).
		
		Entry format per line: "Address - Size - Description".
	**/
	@:native("DumpMemoryToFile")
	public static function dumpMemoryToFile(file:std.String):Void;

	/**		
		Dumps all used resources to file (only works in debug).
		
		Entry format per line: "Resource Type : Resource Location".
		
		At the end of the file is a statistic of all used Resource Types.
	**/
	@:native("DumpResourcesToFile")
	public static function dumpResourcesToFile(file:std.String):Void;

	/**		
		Returns `true` if the platform has a virtual keyboard, `false` otherwise.
	**/
	@:native("HasVirtualKeyboard")
	public static function hasVirtualKeyboard():Bool;

	#if doc_gen
	/**		
		Shows the virtual keyboard if the platform has one.
		
		The `existing_text` parameter is useful for implementing your own `godot.LineEdit` or `godot.TextEdit`, as it tells the virtual keyboard what text has already been typed (the virtual keyboard uses it for auto-correct and predictions).
		
		The `multiline` parameter needs to be set to `true` to be able to enter multiple lines of text, as in `godot.TextEdit`.
		
		Note: This method is implemented on Android, iOS and UWP.
	**/
	@:native("ShowVirtualKeyboard")
	public static function showVirtualKeyboard(?existingText:std.String, ?multiline:Bool):Void;
	#else
	/**		
		Shows the virtual keyboard if the platform has one.
		
		The `existing_text` parameter is useful for implementing your own `godot.LineEdit` or `godot.TextEdit`, as it tells the virtual keyboard what text has already been typed (the virtual keyboard uses it for auto-correct and predictions).
		
		The `multiline` parameter needs to be set to `true` to be able to enter multiple lines of text, as in `godot.TextEdit`.
		
		Note: This method is implemented on Android, iOS and UWP.
	**/
	@:native("ShowVirtualKeyboard")
	public static overload function showVirtualKeyboard():Void;

	/**		
		Shows the virtual keyboard if the platform has one.
		
		The `existing_text` parameter is useful for implementing your own `godot.LineEdit` or `godot.TextEdit`, as it tells the virtual keyboard what text has already been typed (the virtual keyboard uses it for auto-correct and predictions).
		
		The `multiline` parameter needs to be set to `true` to be able to enter multiple lines of text, as in `godot.TextEdit`.
		
		Note: This method is implemented on Android, iOS and UWP.
	**/
	@:native("ShowVirtualKeyboard")
	public static overload function showVirtualKeyboard(existingText:std.String):Void;

	/**		
		Shows the virtual keyboard if the platform has one.
		
		The `existing_text` parameter is useful for implementing your own `godot.LineEdit` or `godot.TextEdit`, as it tells the virtual keyboard what text has already been typed (the virtual keyboard uses it for auto-correct and predictions).
		
		The `multiline` parameter needs to be set to `true` to be able to enter multiple lines of text, as in `godot.TextEdit`.
		
		Note: This method is implemented on Android, iOS and UWP.
	**/
	@:native("ShowVirtualKeyboard")
	public static overload function showVirtualKeyboard(existingText:std.String, multiline:Bool):Void;
	#end

	/**		
		Hides the virtual keyboard if it is shown, does nothing otherwise.
	**/
	@:native("HideVirtualKeyboard")
	public static function hideVirtualKeyboard():Void;

	/**		
		Returns the on-screen keyboard's height in pixels. Returns 0 if there is no keyboard or if it is currently hidden.
	**/
	@:native("GetVirtualKeyboardHeight")
	public static function getVirtualKeyboardHeight():Int;

	#if doc_gen
	/**		
		Shows all resources currently used by the game.
	**/
	@:native("PrintResourcesInUse")
	public static function printResourcesInUse(?short:Bool):Void;
	#else
	/**		
		Shows all resources currently used by the game.
	**/
	@:native("PrintResourcesInUse")
	public static overload function printResourcesInUse():Void;

	/**		
		Shows all resources currently used by the game.
	**/
	@:native("PrintResourcesInUse")
	public static overload function printResourcesInUse(short:Bool):Void;
	#end

	#if doc_gen
	/**		
		Shows all resources in the game. Optionally, the list can be written to a file by specifying a file path in `tofile`.
	**/
	@:native("PrintAllResources")
	public static function printAllResources(?tofile:std.String):Void;
	#else
	/**		
		Shows all resources in the game. Optionally, the list can be written to a file by specifying a file path in `tofile`.
	**/
	@:native("PrintAllResources")
	public static overload function printAllResources():Void;

	/**		
		Shows all resources in the game. Optionally, the list can be written to a file by specifying a file path in `tofile`.
	**/
	@:native("PrintAllResources")
	public static overload function printAllResources(tofile:std.String):Void;
	#end

	/**		
		Returns the amount of static memory being used by the program in bytes.
	**/
	@:native("GetStaticMemoryUsage")
	public static function getStaticMemoryUsage():cs.types.UInt64;

	/**		
		Returns the maximum amount of static memory used (only works in debug).
	**/
	@:native("GetStaticMemoryPeakUsage")
	public static function getStaticMemoryPeakUsage():cs.types.UInt64;

	/**		
		Returns the total amount of dynamic memory used (only works in debug).
	**/
	@:native("GetDynamicMemoryUsage")
	public static function getDynamicMemoryUsage():cs.types.UInt64;

	/**		
		Returns the absolute directory path where user data is written (`user://`).
		
		On Linux, this is `~/.local/share/godot/app_userdata/[project_name]`, or `~/.local/share/[custom_name]` if `use_custom_user_dir` is set.
		
		On macOS, this is `~/Library/Application Support/Godot/app_userdata/[project_name]`, or `~/Library/Application Support/[custom_name]` if `use_custom_user_dir` is set.
		
		On Windows, this is `%APPDATA%\Godot\app_userdata\[project_name]`, or `%APPDATA%\[custom_name]` if `use_custom_user_dir` is set. `%APPDATA%` expands to `%USERPROFILE%\AppData\Roaming`.
		
		If the project name is empty, `user://` falls back to `res://`.
	**/
	@:native("GetUserDataDir")
	public static function getUserDataDir():std.String;

	/**		
		Returns the actual path to commonly used folders across different platforms. Available locations are specified in `godot.OS_SystemDir`.
		
		Note: This method is implemented on Android, Linux, macOS and Windows.
	**/
	@:native("GetSystemDir")
	public static function getSystemDir(dir:godot.OS_SystemDir):std.String;

	/**		
		Returns a string that is unique to the device.
		
		Note: Returns an empty string on HTML5 and UWP, as this method isn't implemented on those platforms yet.
	**/
	@:native("GetUniqueId")
	public static function getUniqueId():std.String;

	/**		
		Returns `true` if the OK button should appear on the left and Cancel on the right.
	**/
	@:native("IsOkLeftAndCancelRight")
	public static function isOkLeftAndCancelRight():Bool;

	/**		
		Shows the list of loaded textures sorted by size in memory.
	**/
	@:native("PrintAllTexturesBySize")
	public static function printAllTexturesBySize():Void;

	/**		
		Shows the number of resources loaded by the game of the given types.
	**/
	@:native("PrintResourcesByType")
	public static function printResourcesByType(types:haxe.Rest<std.String>):Void;

	/**		
		Plays native video from the specified path, at the given volume and with audio and subtitle tracks.
		
		Note: This method is implemented on Android and iOS, and the current Android implementation does not support the `volume`, `audio_track` and `subtitle_track` options.
	**/
	@:native("NativeVideoPlay")
	public static function nativeVideoPlay(path:std.String, volume:Single, audioTrack:std.String, subtitleTrack:std.String):godot.Error;

	/**		
		Returns `true` if native video is playing.
		
		Note: This method is implemented on Android and iOS.
	**/
	@:native("NativeVideoIsPlaying")
	public static function nativeVideoIsPlaying():Bool;

	/**		
		Stops native video playback.
		
		Note: This method is implemented on Android and iOS.
	**/
	@:native("NativeVideoStop")
	public static function nativeVideoStop():Void;

	/**		
		Pauses native video playback.
		
		Note: This method is implemented on Android and iOS.
	**/
	@:native("NativeVideoPause")
	public static function nativeVideoPause():Void;

	/**		
		Resumes native video playback.
		
		Note: This method is implemented on Android and iOS.
	**/
	@:native("NativeVideoUnpause")
	public static function nativeVideoUnpause():Void;

	/**		
		Returns the given scancode as a string (e.g. Return values: `"Escape"`, `"Shift+Escape"`).
		
		See also `godot.InputEventKey.scancode` and `godot.InputEventKey.getScancodeWithModifiers`.
	**/
	@:native("GetScancodeString")
	public static function getScancodeString(code:UInt):std.String;

	/**		
		Returns `true` if the input scancode corresponds to a Unicode character.
	**/
	@:native("IsScancodeUnicode")
	public static function isScancodeUnicode(code:UInt):Bool;

	/**		
		Returns the scancode of the given string (e.g. "Escape").
	**/
	@:native("FindScancodeFromString")
	public static function findScancodeFromString(string:std.String):Int;

	/**		
		Enables backup saves if `enabled` is `true`.
	**/
	@:native("SetUseFileAccessSaveAndSwap")
	public static function setUseFileAccessSaveAndSwap(enabled:Bool):Void;

	#if doc_gen
	/**		
		Displays a modal dialog box using the host OS' facilities. Execution is blocked until the dialog is closed.
	**/
	@:native("Alert")
	public static function alert(text:std.String, ?title:std.String):Void;
	#else
	/**		
		Displays a modal dialog box using the host OS' facilities. Execution is blocked until the dialog is closed.
	**/
	@:native("Alert")
	public static overload function alert(text:std.String):Void;

	/**		
		Displays a modal dialog box using the host OS' facilities. Execution is blocked until the dialog is closed.
	**/
	@:native("Alert")
	public static overload function alert(text:std.String, title:std.String):Void;
	#end

	/**		
		Sets the name of the current thread.
	**/
	@:native("SetThreadName")
	public static function setThreadName(name:std.String):godot.Error;

	/**		
		Returns the ID of the current thread. This can be used in logs to ease debugging of multi-threaded applications.
		
		Note: Thread IDs are not deterministic and may be reused across application restarts.
	**/
	@:native("GetThreadCallerId")
	public static function getThreadCallerId():cs.types.UInt64;

	@:native("SetUseVsync")
	public static function setUseVsync(enable:Bool):Void;

	@:native("IsVsyncEnabled")
	public static function isVsyncEnabled():Bool;

	@:native("SetVsyncViaCompositor")
	public static function setVsyncViaCompositor(enable:Bool):Void;

	@:native("IsVsyncViaCompositorEnabled")
	public static function isVsyncViaCompositorEnabled():Bool;

	/**		
		Returns `true` if the feature for the given feature tag is supported in the currently running instance, depending on platform, build etc. Can be used to check whether you're currently running a debug build, on a certain platform or arch, etc. Refer to the [https://docs.godotengine.org/en/3.3/getting_started/workflow/export/feature_tags.html](Feature Tags) documentation for more details.
		
		Note: Tag names are case-sensitive.
	**/
	@:native("HasFeature")
	public static function hasFeature(tagName:std.String):Bool;

	/**		
		Returns the current state of the device regarding battery and power. See `godot.OS_PowerState` constants.
		
		Note: This method is implemented on Linux, macOS and Windows.
	**/
	@:native("GetPowerState")
	public static function getPowerState():godot.OS_PowerState;

	/**		
		Returns an estimate of the time left in seconds before the device runs out of battery. Returns `-1` if power state is unknown.
		
		Note: This method is implemented on Linux, macOS and Windows.
	**/
	@:native("GetPowerSecondsLeft")
	public static function getPowerSecondsLeft():Int;

	/**		
		Returns the amount of battery left in the device as a percentage. Returns `-1` if power state is unknown.
		
		Note: This method is implemented on Linux, macOS and Windows.
	**/
	@:native("GetPowerPercentLeft")
	public static function getPowerPercentLeft():Int;

	/**		
		At the moment this function is only used by `AudioDriverOpenSL` to request permission for `RECORD_AUDIO` on Android.
	**/
	@:native("RequestPermission")
	public static function requestPermission(name:std.String):Bool;

	/**		
		With this function you can request dangerous permissions since normal permissions are automatically granted at install time in Android application.
		
		Note: This method is implemented on Android.
	**/
	@:native("RequestPermissions")
	public static function requestPermissions():Bool;

	/**		
		With this function you can get the list of dangerous permissions that have been granted to the Android application.
		
		Note: This method is implemented on Android.
	**/
	public static extern inline function getGrantedPermissions():std.Array<std.String> {
		return cs.Lib.array(cs.Syntax.code("GetGrantedPermissions()"));
	}

	/**		
		Returns the total number of available tablet drivers.
		
		Note: This method is implemented on Windows.
	**/
	@:native("GetTabletDriverCount")
	public static function getTabletDriverCount():Int;

	/**		
		Returns the tablet driver name for the given index.
		
		Note: This method is implemented on Windows.
	**/
	@:native("GetTabletDriverName")
	public static function getTabletDriverName(idx:Int):std.String;

	@:native("GetCurrentTabletDriver")
	public static function getCurrentTabletDriver():std.String;

	@:native("SetCurrentTabletDriver")
	public static function setCurrentTabletDriver(name:std.String):Void;
}
