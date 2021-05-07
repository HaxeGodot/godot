// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
This control allows property editing for one or multiple properties into `godot.EditorInspector`. It is added via `godot.EditorInspectorPlugin`.
**/
@:libType
@:csNative
@:native("Godot.EditorProperty")
@:autoBuild(godot.Godot.buildUserClass())
extern class EditorProperty extends godot.Container {
	/**
		`multiple_properties_changed` signal.
		
		Emit it if you want multiple properties modified at the same time. Do not use if added via `editorInspectorPlugin.parseProperty`.
	**/
	public var onMultiplePropertiesChanged(get, never):Signal<(properties:std.Array<std.String>, value:godot.collections.Array)->Void>;
	@:dox(hide) @:noCompletion inline function get_onMultiplePropertiesChanged():Signal<(properties:std.Array<std.String>, value:godot.collections.Array)->Void> {
		return new Signal(this, "multiple_properties_changed", Signal.SignalHandlerPoolStringArrayArrayVoid.connectSignal, Signal.SignalHandlerPoolStringArrayArrayVoid.disconnectSignal, Signal.SignalHandlerPoolStringArrayArrayVoid.isSignalConnected);
	}

	/**
		`object_id_selected` signal.
		
		Used by sub-inspectors. Emit it if what was selected was an Object ID.
	**/
	public var onObjectIdSelected(get, never):Signal<(property:std.String, id:Int)->Void>;
	@:dox(hide) @:noCompletion inline function get_onObjectIdSelected():Signal<(property:std.String, id:Int)->Void> {
		return new Signal(this, "object_id_selected", Signal.SignalHandlerStringIntVoid.connectSignal, Signal.SignalHandlerStringIntVoid.disconnectSignal, Signal.SignalHandlerStringIntVoid.isSignalConnected);
	}

	/**
		`property_changed` signal.
		
		Do not emit this manually, use the `emitChanged` method instead.
	**/
	public var onPropertyChanged(get, never):Signal<(property:std.String, value:Any)->Void>;
	@:dox(hide) @:noCompletion inline function get_onPropertyChanged():Signal<(property:std.String, value:Any)->Void> {
		return new Signal(this, "property_changed", Signal.SignalHandlerStringVariantVoid.connectSignal, Signal.SignalHandlerStringVariantVoid.disconnectSignal, Signal.SignalHandlerStringVariantVoid.isSignalConnected);
	}

	/**
		`property_checked` signal.
		
		Emitted when a property was checked. Used internally.
	**/
	public var onPropertyChecked(get, never):Signal<(property:std.String, bool:std.String)->Void>;
	@:dox(hide) @:noCompletion inline function get_onPropertyChecked():Signal<(property:std.String, bool:std.String)->Void> {
		return new Signal(this, "property_checked", Signal.SignalHandlerStringStringVoid.connectSignal, Signal.SignalHandlerStringStringVoid.disconnectSignal, Signal.SignalHandlerStringStringVoid.isSignalConnected);
	}

	/**
		`property_keyed` signal.
		
		Emit it if you want to add this value as an animation key (check for keying being enabled first).
	**/
	public var onPropertyKeyed(get, never):Signal<(property:std.String)->Void>;
	@:dox(hide) @:noCompletion inline function get_onPropertyKeyed():Signal<(property:std.String)->Void> {
		return new Signal(this, "property_keyed", Signal.SignalHandlerStringVoid.connectSignal, Signal.SignalHandlerStringVoid.disconnectSignal, Signal.SignalHandlerStringVoid.isSignalConnected);
	}

	/**
		`property_keyed_with_value` signal.
		
		Emit it if you want to key a property with a single value.
	**/
	public var onPropertyKeyedWithValue(get, never):Signal<(property:std.String, value:Any)->Void>;
	@:dox(hide) @:noCompletion inline function get_onPropertyKeyedWithValue():Signal<(property:std.String, value:Any)->Void> {
		return new Signal(this, "property_keyed_with_value", Signal.SignalHandlerStringVariantVoid.connectSignal, Signal.SignalHandlerStringVariantVoid.disconnectSignal, Signal.SignalHandlerStringVariantVoid.isSignalConnected);
	}

	/**
		`resource_selected` signal.
		
		If you want a sub-resource to be edited, emit this signal with the resource.
	**/
	public var onResourceSelected(get, never):Signal<(path:std.String, resource:Resource)->Void>;
	@:dox(hide) @:noCompletion inline function get_onResourceSelected():Signal<(path:std.String, resource:Resource)->Void> {
		return new Signal(this, "resource_selected", Signal.SignalHandlerStringResourceVoid.connectSignal, Signal.SignalHandlerStringResourceVoid.disconnectSignal, Signal.SignalHandlerStringResourceVoid.isSignalConnected);
	}

	/**
		`selected` signal.
		
		Emitted when selected. Used internally.
	**/
	public var onSelected(get, never):Signal<(path:std.String, focusableIdx:Int)->Void>;
	@:dox(hide) @:noCompletion inline function get_onSelected():Signal<(path:std.String, focusableIdx:Int)->Void> {
		return new Signal(this, "selected", Signal.SignalHandlerStringIntVoid.connectSignal, Signal.SignalHandlerStringIntVoid.disconnectSignal, Signal.SignalHandlerStringIntVoid.isSignalConnected);
	}

	/**		
		Used by the inspector, set to `true` when the property can add keys for animation.
	**/
	@:native("Keying")
	public var keying:Bool;

	/**		
		Used by the inspector, set to `true` when the property must draw with error color. This is used for editable children's properties.
	**/
	@:native("DrawRed")
	public var drawRed:Bool;

	/**		
		Used by the inspector, set to `true` when the property is checked.
	**/
	@:native("Checked")
	public var checked:Bool;

	/**		
		Used by the inspector, set to `true` when the property is checkable.
	**/
	@:native("Checkable")
	public var checkable:Bool;

	/**		
		Used by the inspector, set to `true` when the property is read-only.
	**/
	@:native("ReadOnly")
	public var readOnly:Bool;

	/**		
		Set this property to change the label (if you want to show one).
	**/
	@:native("Label")
	public var label:std.String;

	@:native("new")
	public function new():Void;

	/**		
		When this virtual function is called, you must update your editor.
	**/
	@:native("UpdateProperty")
	public function updateProperty():Void;

	@:native("SetLabel")
	public function setLabel(text:std.String):Void;

	@:native("GetLabel")
	public function getLabel():std.String;

	@:native("SetReadOnly")
	public function setReadOnly(readOnly:Bool):Void;

	@:native("IsReadOnly")
	public function isReadOnly():Bool;

	@:native("SetCheckable")
	public function setCheckable(checkable:Bool):Void;

	@:native("IsCheckable")
	public function isCheckable():Bool;

	@:native("SetChecked")
	public function setChecked(checked:Bool):Void;

	@:native("IsChecked")
	public function isChecked():Bool;

	@:native("SetDrawRed")
	public function setDrawRed(drawRed:Bool):Void;

	@:native("IsDrawRed")
	public function isDrawRed():Bool;

	@:native("SetKeying")
	public function setKeying(keying:Bool):Void;

	@:native("IsKeying")
	public function isKeying():Bool;

	/**		
		Gets the edited property. If your editor is for a single property (added via `godot.EditorInspectorPlugin.parseProperty`), then this will return the property.
	**/
	@:native("GetEditedProperty")
	public function getEditedProperty():std.String;

	/**		
		Gets the edited object.
	**/
	@:native("GetEditedObject")
	public function getEditedObject():godot.Object;

	/**		
		Override if you want to allow a custom tooltip over your property.
	**/
	@:native("GetTooltipText")
	public function getTooltipText():std.String;

	/**		
		If any of the controls added can gain keyboard focus, add it here. This ensures that focus will be restored if the inspector is refreshed.
	**/
	@:native("AddFocusable")
	public function addFocusable(control:godot.Control):Void;

	/**		
		Adds controls with this function if you want them on the bottom (below the label).
	**/
	@:native("SetBottomEditor")
	public function setBottomEditor(editor:godot.Control):Void;

	#if doc_gen
	/**		
		If one or several properties have changed, this must be called. `field` is used in case your editor can modify fields separately (as an example, Vector3.x). The `changing` argument avoids the editor requesting this property to be refreshed (leave as `false` if unsure).
	**/
	@:native("EmitChanged")
	public function emitChanged(property:std.String, value:Dynamic, ?field:std.String, ?changing:Bool):Void;
	#else
	/**		
		If one or several properties have changed, this must be called. `field` is used in case your editor can modify fields separately (as an example, Vector3.x). The `changing` argument avoids the editor requesting this property to be refreshed (leave as `false` if unsure).
	**/
	@:native("EmitChanged")
	public overload function emitChanged(property:std.String, value:Dynamic):Void;

	/**		
		If one or several properties have changed, this must be called. `field` is used in case your editor can modify fields separately (as an example, Vector3.x). The `changing` argument avoids the editor requesting this property to be refreshed (leave as `false` if unsure).
	**/
	@:native("EmitChanged")
	public overload function emitChanged(property:std.String, value:Dynamic, field:std.String):Void;

	/**		
		If one or several properties have changed, this must be called. `field` is used in case your editor can modify fields separately (as an example, Vector3.x). The `changing` argument avoids the editor requesting this property to be refreshed (leave as `false` if unsure).
	**/
	@:native("EmitChanged")
	public overload function emitChanged(property:std.String, value:Dynamic, field:std.String, changing:Bool):Void;
	#end
}
