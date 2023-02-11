// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
A pre-parsed relative or absolute path in a scene tree,
for use with `godot.Node.getNode` and similar functions.
It can reference a node, a resource within a node, or a property
of a node or resource.
For instance, `"Path2D/PathFollow2D/Sprite2D:texture:size"`
would refer to the `size` property of the `texture`
resource on the node named `"Sprite2D"` which is a child of
the other named nodes in the path.
You will usually just pass a string to `godot.Node.getNode`
and it will be automatically converted, but you may occasionally
want to parse a path ahead of time with NodePath.
Exporting a NodePath variable will give you a node selection widget
in the properties panel of the editor, which can often be useful.
A NodePath is composed of a list of slash-separated node names
(like a filesystem path) and an optional colon-separated list of
"subnames" which can be resources or properties.

Note: In the editor, NodePath properties are automatically updated when moving,
renaming or deleting a node in the scene tree, but they are never updated at runtime.

Some examples of NodePaths include the following:

```

// No leading slash means it is relative to the current node.
new NodePath("A"); // Immediate child A.
new NodePath("A/B"); // A's child B.
new NodePath("."); // The current node.
new NodePath(".."); // The parent node.
new NodePath("../C"); // A sibling node C.
// A leading slash means it is absolute from the SceneTree.
new NodePath("/root"); // Equivalent to GetTree().Root
new NodePath("/root/Main"); // If your main scene's root node were named "Main".
new NodePath("/root/MyAutoload"); // If you have an autoloaded node or scene.

```
**/
#if doc_gen
@:libType
@:csNative
@:native("Godot.NodePath")
@:autoBuild(godot.Godot.buildUserClass())
extern class NodePath implements cs.system.IDisposable {
#else
@:forward
@:forwardStatics
extern abstract NodePath(NodePath_) from NodePath_ to NodePath_ {
#end
	#if !doc_gen
	/**		
		Constructs an empty `godot.NodePath`.
	**/
	public overload inline function new() {
		this = new NodePath_();
	}
	#end

	#if !doc_gen
	/**		
		Constructs a `godot.NodePath` from a string `path`,
		e.g.: `"Path2D/PathFollow2D/Sprite2D:texture:size"`.
		A path is absolute if it starts with a slash. Absolute paths
		are only valid in the global scene tree, not within individual
		scenes. In a relative path, `"."` and `".."` indicate
		the current node and its parent.
		The "subnames" optionally included after the path to the target
		node can point to resources or properties, and can also be nested.
		
		Examples of valid NodePaths (assuming that those nodes exist and
		have the referenced resources or properties):
		
		```
		
		// Points to the Sprite2D node.
		"Path2D/PathFollow2D/Sprite2D"
		// Points to the Sprite2D node and its "texture" resource.
		// GetNode() would retrieve "Sprite2D", while GetNodeAndResource()
		// would retrieve both the Sprite2D node and the "texture" resource.
		"Path2D/PathFollow2D/Sprite2D:texture"
		// Points to the Sprite2D node and its "position" property.
		"Path2D/PathFollow2D/Sprite2D:position"
		// Points to the Sprite2D node and the "x" component of its "position" property.
		"Path2D/PathFollow2D/Sprite2D:position:x"
		// Absolute path (from "root")
		"/root/Level/Path2D"
		
		```
		
		@param path
	**/
	public overload inline function new(path:std.String) {
		this = new NodePath_(path);
	}
	#end

	/**
		Implicit cast.
	**/
	@:from static inline function fromString(obj:std.String):godot.NodePath {
		return cs.Syntax.code("{0}", obj);
	}

	/**
		Implicit cast.
	**/
	@:to static inline function toString(obj:godot.NodePath):std.String {
		return cs.Syntax.code("{0}", obj);
	}
#if !doc_gen
}

@:libType
@:csNative
@:native("Godot.NodePath")
@:autoBuild(godot.Godot.buildUserClass())
extern class NodePath_ implements cs.system.IDisposable {
#end
	/**		
		The pointer to the native instance of this `godot.NodePath`.
	**/
	@:native("NativeInstance") @:readOnly
	public var nativeInstance(default, never):cs.system.IntPtr;

	/**		
		Disposes of this `godot.NodePath`.
	**/
	@:native("Dispose")
	public function dispose():Void;

	/**		
		Constructs an empty `godot.NodePath`.
	**/
	@:native("new")
	public overload function new():Void;

	/**		
		Constructs a `godot.NodePath` from a string `path`,
		e.g.: `"Path2D/PathFollow2D/Sprite2D:texture:size"`.
		A path is absolute if it starts with a slash. Absolute paths
		are only valid in the global scene tree, not within individual
		scenes. In a relative path, `"."` and `".."` indicate
		the current node and its parent.
		The "subnames" optionally included after the path to the target
		node can point to resources or properties, and can also be nested.
		
		Examples of valid NodePaths (assuming that those nodes exist and
		have the referenced resources or properties):
		
		```
		
		// Points to the Sprite2D node.
		"Path2D/PathFollow2D/Sprite2D"
		// Points to the Sprite2D node and its "texture" resource.
		// GetNode() would retrieve "Sprite2D", while GetNodeAndResource()
		// would retrieve both the Sprite2D node and the "texture" resource.
		"Path2D/PathFollow2D/Sprite2D:texture"
		// Points to the Sprite2D node and its "position" property.
		"Path2D/PathFollow2D/Sprite2D:position"
		// Points to the Sprite2D node and the "x" component of its "position" property.
		"Path2D/PathFollow2D/Sprite2D:position:x"
		// Absolute path (from "root")
		"/root/Level/Path2D"
		
		```
		
		@param path
	**/
	@:native("new")
	public overload function new(path:std.String):Void;

	/**		
		Converts this `godot.NodePath` to a string.
		
		@returns A string representation of this `godot.NodePath`.
	**/
	@:native("ToString")
	public function toString():std.String;

	/**		
		Returns a node path with a colon character (`:`) prepended,
		transforming it to a pure property path with no node name (defaults
		to resolving from the current node).
		
		```
		
		// This will be parsed as a node path to the "x" property in the "position" node.
		var nodePath = new NodePath("position:x");
		// This will be parsed as a node path to the "x" component of the "position" property in the current node.
		NodePath propertyPath = nodePath.GetAsPropertyPath();
		GD.Print(propertyPath); // :position:x
		
		```
		
		@returns The `godot.NodePath` as a pure property path.
	**/
	@:native("GetAsPropertyPath")
	public function getAsPropertyPath():godot.NodePath;

	/**		
		Returns all subnames concatenated with a colon character (`:`)
		as separator, i.e. the right side of the first colon in a node path.
		
		```
		
		var nodepath = new NodePath("Path2D/PathFollow2D/Sprite2D:texture:load_path");
		GD.Print(nodepath.GetConcatenatedSubnames()); // texture:load_path
		
		```
		
		@returns The subnames concatenated with `:`.
	**/
	@:native("GetConcatenatedSubnames")
	public function getConcatenatedSubnames():std.String;

	/**		
		Gets the node name indicated by `idx` (0 to `godot.NodePath.getNameCount`).
		
		```
		
		var nodePath = new NodePath("Path2D/PathFollow2D/Sprite2D");
		GD.Print(nodePath.GetName(0)); // Path2D
		GD.Print(nodePath.GetName(1)); // PathFollow2D
		GD.Print(nodePath.GetName(2)); // Sprite
		
		```
		
		@param idx The name index.
		@returns The name at the given index `idx`.
	**/
	@:native("GetName")
	public function getName(idx:Int):std.String;

	/**		
		Gets the number of node names which make up the path.
		Subnames (see `godot.NodePath.getSubnameCount`) are not included.
		For example, `"Path2D/PathFollow2D/Sprite2D"` has 3 names.
		
		@returns The number of node names which make up the path.
	**/
	@:native("GetNameCount")
	public function getNameCount():Int;

	/**		
		Gets the resource or property name indicated by `idx` (0 to `godot.NodePath.getSubnameCount`).
		
		@param idx The subname index.
		@returns The subname at the given index `idx`.
	**/
	@:native("GetSubname")
	public function getSubname(idx:Int):std.String;

	/**		
		Gets the number of resource or property names ("subnames") in the path.
		Each subname is listed after a colon character (`:`) in the node path.
		For example, `"Path2D/PathFollow2D/Sprite2D:texture:load_path"` has 2 subnames.
		
		@returns The number of subnames in the path.
	**/
	@:native("GetSubnameCount")
	public function getSubnameCount():Int;

	/**		
		Returns `true` if the node path is absolute (as opposed to relative),
		which means that it starts with a slash character (`/`). Absolute node paths can
		be used to access the root node (`"/root"`) or autoloads (e.g. `"/global"`
		if a "global" autoload was registered).
		
		@returns If the `godot.NodePath` is an absolute path.
	**/
	@:native("IsAbsolute")
	public function isAbsolute():Bool;

	/**		
		Returns `true` if the node path is empty.
		
		@returns If the `godot.NodePath` is empty.
	**/
	@:native("IsEmpty")
	public function isEmpty():Bool;
}
