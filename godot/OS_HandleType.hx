// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.OS.HandleType")
@:csNative
extern enum OS_HandleType {
	/**		
		Application handle:
		
		- Windows: `HINSTANCE` of the application
		
		- MacOS: `NSApplication*` of the application (not yet implemented)
		
		- Android: `JNIEnv*` of the application (not yet implemented)
	**/
	ApplicationHandle;

	/**		
		Display handle:
		
		- Linux: `X11::Display*` for the display
	**/
	DisplayHandle;

	/**		
		Window handle:
		
		- Windows: `HWND` of the main window
		
		- Linux: `X11::Window*` of the main window
		
		- MacOS: `NSWindow*` of the main window (not yet implemented)
		
		- Android: `jObject` the main android activity (not yet implemented)
	**/
	WindowHandle;

	/**		
		Window view:
		
		- Windows: `HDC` of the main window drawing context
		
		- MacOS: `NSView*` of the main windows view (not yet implemented)
	**/
	WindowView;

	/**		
		OpenGL Context:
		
		- Windows: `HGLRC`
		
		- Linux: `X11::GLXContext`
		
		- MacOS: `NSOpenGLContext*` (not yet implemented)
	**/
	OpenglContext;
}
