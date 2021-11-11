// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.UPNP.UPNPResult")
@:csNative
extern enum UPNP_UPNPResult {
	/**		
		UPNP command or discovery was successful.
	**/
	Success;

	/**		
		Not authorized to use the command on the `godot.UPNPDevice`. May be returned when the user disabled UPNP on their router.
	**/
	NotAuthorized;

	/**		
		No port mapping was found for the given port, protocol combination on the given `godot.UPNPDevice`.
	**/
	PortMappingNotFound;

	/**		
		Inconsistent parameters.
	**/
	InconsistentParameters;

	/**		
		No such entry in array. May be returned if a given port, protocol combination is not found on an `godot.UPNPDevice`.
	**/
	NoSuchEntryInArray;

	/**		
		The action failed.
	**/
	ActionFailed;

	/**		
		The `godot.UPNPDevice` does not allow wildcard values for the source IP address.
	**/
	SrcIpWildcardNotPermitted;

	/**		
		The `godot.UPNPDevice` does not allow wildcard values for the external port.
	**/
	ExtPortWildcardNotPermitted;

	/**		
		The `godot.UPNPDevice` does not allow wildcard values for the internal port.
	**/
	IntPortWildcardNotPermitted;

	/**		
		The remote host value must be a wildcard.
	**/
	RemoteHostMustBeWildcard;

	/**		
		The external port value must be a wildcard.
	**/
	ExtPortMustBeWildcard;

	/**		
		No port maps are available. May also be returned if port mapping functionality is not available.
	**/
	NoPortMapsAvailable;

	/**		
		Conflict with other mechanism. May be returned instead of `godot.UPNP_UPNPResult.conflictWithOtherMapping` if a port mapping conflicts with an existing one.
	**/
	ConflictWithOtherMechanism;

	/**		
		Conflict with an existing port mapping.
	**/
	ConflictWithOtherMapping;

	/**		
		External and internal port values must be the same.
	**/
	SamePortValuesRequired;

	/**		
		Only permanent leases are supported. Do not use the `duration` parameter when adding port mappings.
	**/
	OnlyPermanentLeaseSupported;

	/**		
		Invalid gateway.
	**/
	InvalidGateway;

	/**		
		Invalid port.
	**/
	InvalidPort;

	/**		
		Invalid protocol.
	**/
	InvalidProtocol;

	/**		
		Invalid duration.
	**/
	InvalidDuration;

	/**		
		Invalid arguments.
	**/
	InvalidArgs;

	/**		
		Invalid response.
	**/
	InvalidResponse;

	/**		
		Invalid parameter.
	**/
	InvalidParam;

	/**		
		HTTP error.
	**/
	HttpError;

	/**		
		Socket error.
	**/
	SocketError;

	/**		
		Error allocating memory.
	**/
	MemAllocError;

	/**		
		No gateway available. You may need to call `godot.UPNP.discover` first, or discovery didn't detect any valid IGDs (InternetGatewayDevices).
	**/
	NoGateway;

	/**		
		No devices available. You may need to call `godot.UPNP.discover` first, or discovery didn't detect any valid `godot.UPNPDevice`s.
	**/
	NoDevices;

	/**		
		Unknown error.
	**/
	UnknownError;
}
