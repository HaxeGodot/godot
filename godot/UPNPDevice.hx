// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
UPNP device. See `godot.UPNP` for UPNP discovery and utility functions. Provides low-level access to UPNP control commands. Allows to manage port mappings (port forwarding) and to query network information of the device (like local and external IP address and status). Note that methods on this class are synchronous and block the calling thread.
**/
@:libType
@:csNative
@:native("Godot.UPNPDevice")
@:autoBuild(godot.Godot.buildUserClass())
extern class UPNPDevice extends godot.Reference {
	/**		
		IGD status. See `godot.UPNPDevice_IGDStatus`.
	**/
	@:native("IgdStatus")
	public var igdStatus:godot.UPNPDevice_IGDStatus;

	/**		
		Address of the local machine in the network connecting it to this `godot.UPNPDevice`.
	**/
	@:native("IgdOurAddr")
	public var igdOurAddr:std.String;

	/**		
		IGD service type.
	**/
	@:native("IgdServiceType")
	public var igdServiceType:std.String;

	/**		
		IDG control URL.
	**/
	@:native("IgdControlUrl")
	public var igdControlUrl:std.String;

	/**		
		Service type.
	**/
	@:native("ServiceType")
	public var serviceType:std.String;

	/**		
		URL to the device description.
	**/
	@:native("DescriptionUrl")
	public var descriptionUrl:std.String;

	@:native("new")
	public function new():Void;

	/**		
		Returns `true` if this is a valid IGD (InternetGatewayDevice) which potentially supports port forwarding.
	**/
	@:native("IsValidGateway")
	public function isValidGateway():Bool;

	/**		
		Returns the external IP address of this `godot.UPNPDevice` or an empty string.
	**/
	@:native("QueryExternalAddress")
	public function queryExternalAddress():std.String;

	#if doc_gen
	/**		
		Adds a port mapping to forward the given external port on this `godot.UPNPDevice` for the given protocol to the local machine. See `godot.UPNP.addPortMapping`.
	**/
	@:native("AddPortMapping")
	public function addPortMapping(port:Int, ?portInternal:Int, ?desc:std.String, ?proto:std.String, ?duration:Int):Int;
	#else
	/**		
		Adds a port mapping to forward the given external port on this `godot.UPNPDevice` for the given protocol to the local machine. See `godot.UPNP.addPortMapping`.
	**/
	@:native("AddPortMapping")
	public overload function addPortMapping(port:Int):Int;

	/**		
		Adds a port mapping to forward the given external port on this `godot.UPNPDevice` for the given protocol to the local machine. See `godot.UPNP.addPortMapping`.
	**/
	@:native("AddPortMapping")
	public overload function addPortMapping(port:Int, portInternal:Int):Int;

	/**		
		Adds a port mapping to forward the given external port on this `godot.UPNPDevice` for the given protocol to the local machine. See `godot.UPNP.addPortMapping`.
	**/
	@:native("AddPortMapping")
	public overload function addPortMapping(port:Int, portInternal:Int, desc:std.String):Int;

	/**		
		Adds a port mapping to forward the given external port on this `godot.UPNPDevice` for the given protocol to the local machine. See `godot.UPNP.addPortMapping`.
	**/
	@:native("AddPortMapping")
	public overload function addPortMapping(port:Int, portInternal:Int, desc:std.String, proto:std.String):Int;

	/**		
		Adds a port mapping to forward the given external port on this `godot.UPNPDevice` for the given protocol to the local machine. See `godot.UPNP.addPortMapping`.
	**/
	@:native("AddPortMapping")
	public overload function addPortMapping(port:Int, portInternal:Int, desc:std.String, proto:std.String, duration:Int):Int;
	#end

	#if doc_gen
	/**		
		Deletes the port mapping identified by the given port and protocol combination on this device. See `godot.UPNP.deletePortMapping`.
	**/
	@:native("DeletePortMapping")
	public function deletePortMapping(port:Int, ?proto:std.String):Int;
	#else
	/**		
		Deletes the port mapping identified by the given port and protocol combination on this device. See `godot.UPNP.deletePortMapping`.
	**/
	@:native("DeletePortMapping")
	public overload function deletePortMapping(port:Int):Int;

	/**		
		Deletes the port mapping identified by the given port and protocol combination on this device. See `godot.UPNP.deletePortMapping`.
	**/
	@:native("DeletePortMapping")
	public overload function deletePortMapping(port:Int, proto:std.String):Int;
	#end

	@:native("SetDescriptionUrl")
	public function setDescriptionUrl(url:std.String):Void;

	@:native("GetDescriptionUrl")
	public function getDescriptionUrl():std.String;

	@:native("SetServiceType")
	public function setServiceType(type:std.String):Void;

	@:native("GetServiceType")
	public function getServiceType():std.String;

	@:native("SetIgdControlUrl")
	public function setIgdControlUrl(url:std.String):Void;

	@:native("GetIgdControlUrl")
	public function getIgdControlUrl():std.String;

	@:native("SetIgdServiceType")
	public function setIgdServiceType(type:std.String):Void;

	@:native("GetIgdServiceType")
	public function getIgdServiceType():std.String;

	@:native("SetIgdOurAddr")
	public function setIgdOurAddr(addr:std.String):Void;

	@:native("GetIgdOurAddr")
	public function getIgdOurAddr():std.String;

	@:native("SetIgdStatus")
	public function setIgdStatus(status:godot.UPNPDevice_IGDStatus):Void;

	@:native("GetIgdStatus")
	public function getIgdStatus():godot.UPNPDevice_IGDStatus;
}
