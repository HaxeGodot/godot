// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
2D axis-aligned bounding box. Rect2 consists of a position, a size, and
several utility functions. It is typically used for fast overlap tests.
**/
#if doc_gen
@:struct
@:libType
@:csNative
@:native("Godot.Rect2")
@:autoBuild(godot.Godot.buildUserClass())
extern class Rect2 extends cs.system.ValueType implements cs.system.IEquatable_1<godot.Rect2> {
#else
@:forward
@:forwardStatics
extern abstract Rect2(Rect2_) from Rect2_ to Rect2_ {
#end
	#if !doc_gen
	/**		
		Constructs a Rect2 from a position and size.
		
		@param position The position.
		@param size The size.
	**/
	public overload inline function new(position:godot.Vector2, size:godot.Vector2) {
		this = new Rect2_(position, size);
	}
	#end

	#if !doc_gen
	/**		
		Constructs a Rect2 from a position, width, and height.
		
		@param position The position.
		@param width The width.
		@param height The height.
	**/
	public overload inline function new(position:godot.Vector2, width:Single, height:Single) {
		this = new Rect2_(position, width, height);
	}
	#end

	#if !doc_gen
	/**		
		Constructs a Rect2 from x, y, and size.
		
		@param x The position's X coordinate.
		@param y The position's Y coordinate.
		@param size The size.
	**/
	public overload inline function new(x:Single, y:Single, size:godot.Vector2) {
		this = new Rect2_(x, y, size);
	}
	#end

	#if !doc_gen
	/**		
		Constructs a Rect2 from x, y, width, and height.
		
		@param x The position's X coordinate.
		@param y The position's Y coordinate.
		@param width The width.
		@param height The height.
	**/
	public overload inline function new(x:Single, y:Single, width:Single, height:Single) {
		this = new Rect2_(x, y, width, height);
	}
	#end

	/**
		Operator overload for `godot.Rect2` == `godot.Rect2`.
	**/
	@:op(A == B) static inline function op_Equality(left:godot.Rect2, right:godot.Rect2):Bool {
		return cs.Syntax.code("{0} == {1}", left, right);
	}

	/**
		Operator overload for `godot.Rect2` != `godot.Rect2`.
	**/
	@:op(A != B) static inline function op_Inequality(left:godot.Rect2, right:godot.Rect2):Bool {
		return cs.Syntax.code("{0} != {1}", left, right);
	}
#if !doc_gen
}

@:struct
@:libType
@:csNative
@:native("Godot.Rect2")
@:autoBuild(godot.Godot.buildUserClass())
extern class Rect2_ extends cs.system.ValueType implements cs.system.IEquatable_1<godot.Rect2> {
#end
	/**		
		The area of this rect.
		
		Value: Equivalent to `godot.Rect2.getArea`.
	**/
	@:native("Area")
	public var area(default, never):Single;

	/**		
		Ending corner. This is calculated as `godot.Rect2.position` plus
		`godot.Rect2.size`. Setting this value will change the size.
		
		Value: Getting is equivalent to `value = Position + Size`, setting is equivalent to `Size = value - Position`.
	**/
	@:native("End")
	public var end:godot.Vector2;

	/**		
		Size from Position to End. Typically all components are positive.
		If the size is negative, you can use `godot.Rect2.abs` to fix it.
		
		Value: Directly uses a private field.
	**/
	@:native("Size")
	public var size:godot.Vector2;

	/**		
		Beginning corner. Typically has values lower than End.
		
		Value: Directly uses a private field.
	**/
	@:native("Position")
	public var position:godot.Vector2;

	/**		
		Returns a Rect2 with equivalent position and size, modified so that
		the top-left corner is the origin and width and height are positive.
		
		@returns The modified rect.
	**/
	@:native("Abs")
	public function abs():godot.Rect2;

	/**		
		Returns the intersection of this Rect2 and `b`.
		
		@param b The other rect.
		@returns The clipped rect.
	**/
	@:native("Clip")
	public function clip(b:godot.Rect2):godot.Rect2;

	/**		
		Returns true if this Rect2 completely encloses another one.
		
		@param b The other rect that may be enclosed.
		@returns A bool for whether or not this rect encloses `b`.
	**/
	@:native("Encloses")
	public function encloses(b:godot.Rect2):Bool;

	/**		
		Returns this Rect2 expanded to include a given point.
		
		@param to The point to include.
		@returns The expanded rect.
	**/
	@:native("Expand")
	public function expand(to:godot.Vector2):godot.Rect2;

	/**		
		Returns the area of the Rect2.
		
		@returns The area.
	**/
	@:native("GetArea")
	public function getArea():Single;

	/**		
		Returns a copy of the Rect2 grown a given amount of units towards all the sides.
		
		@param by The amount to grow by.
		@returns The grown rect.
	**/
	@:native("Grow")
	public function grow(by:Single):godot.Rect2;

	/**		
		Returns a copy of the Rect2 grown a given amount of units towards each direction individually.
		
		@param left The amount to grow by on the left.
		@param top The amount to grow by on the top.
		@param right The amount to grow by on the right.
		@param bottom The amount to grow by on the bottom.
		@returns The grown rect.
	**/
	@:native("GrowIndividual")
	public function growIndividual(left:Single, top:Single, right:Single, bottom:Single):godot.Rect2;

	/**		
		Returns a copy of the Rect2 grown a given amount of units towards the `godot.Margin` direction.
		
		@param margin The direction to grow in.
		@param by The amount to grow by.
		@returns The grown rect.
	**/
	@:native("GrowMargin")
	public function growMargin(margin:godot.Margin, by:Single):godot.Rect2;

	/**		
		Returns true if the Rect2 is flat or empty, or false otherwise.
		
		@returns A bool for whether or not the rect has area.
	**/
	@:native("HasNoArea")
	public function hasNoArea():Bool;

	/**		
		Returns true if the Rect2 contains a point, or false otherwise.
		
		@param point The point to check.
		@returns A bool for whether or not the rect contains `point`.
	**/
	@:native("HasPoint")
	public function hasPoint(point:godot.Vector2):Bool;

	#if doc_gen
	/**		
		Returns true if the Rect2 overlaps with `b`
		(i.e. they have at least one point in common).
		
		If `includeBorders` is true, they will also be considered overlapping
		if their borders touch, even without intersection.
		
		@param b The other rect to check for intersections with.
		@param includeBorders Whether or not to consider borders.
		@returns A bool for whether or not they are intersecting.
	**/
	@:native("Intersects")
	public function intersects(b:godot.Rect2, ?includeBorders:Bool):Bool;
	#else
	/**		
		Returns true if the Rect2 overlaps with `b`
		(i.e. they have at least one point in common).
		
		If `includeBorders` is true, they will also be considered overlapping
		if their borders touch, even without intersection.
		
		@param b The other rect to check for intersections with.
		@param includeBorders Whether or not to consider borders.
		@returns A bool for whether or not they are intersecting.
	**/
	@:native("Intersects")
	public overload function intersects(b:godot.Rect2):Bool;

	/**		
		Returns true if the Rect2 overlaps with `b`
		(i.e. they have at least one point in common).
		
		If `includeBorders` is true, they will also be considered overlapping
		if their borders touch, even without intersection.
		
		@param b The other rect to check for intersections with.
		@param includeBorders Whether or not to consider borders.
		@returns A bool for whether or not they are intersecting.
	**/
	@:native("Intersects")
	public overload function intersects(b:godot.Rect2, includeBorders:Bool):Bool;
	#end

	/**		
		Returns a larger Rect2 that contains this Rect2 and `b`.
		
		@param b The other rect.
		@returns The merged rect.
	**/
	@:native("Merge")
	public function merge(b:godot.Rect2):godot.Rect2;

	/**		
		Constructs a Rect2 from a position and size.
		
		@param position The position.
		@param size The size.
	**/
	@:native("new")
	public overload function new(position:godot.Vector2, size:godot.Vector2):Void;

	/**		
		Constructs a Rect2 from a position, width, and height.
		
		@param position The position.
		@param width The width.
		@param height The height.
	**/
	@:native("new")
	public overload function new(position:godot.Vector2, width:Single, height:Single):Void;

	/**		
		Constructs a Rect2 from x, y, and size.
		
		@param x The position's X coordinate.
		@param y The position's Y coordinate.
		@param size The size.
	**/
	@:native("new")
	public overload function new(x:Single, y:Single, size:godot.Vector2):Void;

	/**		
		Constructs a Rect2 from x, y, width, and height.
		
		@param x The position's X coordinate.
		@param y The position's Y coordinate.
		@param width The width.
		@param height The height.
	**/
	@:native("new")
	public overload function new(x:Single, y:Single, width:Single, height:Single):Void;

	/**		
		Returns true if this rect and `other` are approximately equal, by running
		`godot.Vector2.isEqualApprox` on each component.
		
		@param other The other rect to compare.
		@returns Whether or not the rects are approximately equal.
	**/
	@:native("IsEqualApprox")
	public function isEqualApprox(other:godot.Rect2):Bool;

	@:native("ToString")
	public overload function toString():std.String;

	@:native("ToString")
	public overload function toString(format:std.String):std.String;
}
