// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Provides UPNP functionality to discover `godot.UPNPDevice`s on the local network and execute commands on them, like managing port mappings (port forwarding) and querying the local and remote network IP address. Note that methods on this class are synchronous and block the calling thread.

To forward a specific port:

```

const PORT = 7777
var upnp = UPNP.new()
upnp.discover(2000, 2, "InternetGatewayDevice")
upnp.add_port_mapping(port)

```

To close a specific port (e.g. after you have finished using it):

```

upnp.delete_port_mapping(port)

```

Note: UPnP discovery blocks the current thread. To perform discovery without blocking the main thread, use `godot.Thread`s like this:

```

# Emitted when UPnP port mapping setup is completed (regardless of success or failure).
signal upnp_completed(error)

# Replace this with your own server port number between 1025 and 65535.
const SERVER_PORT = 3928
var thread = null

func _upnp_setup(server_port):
# UPNP queries take some time.
var upnp = UPNP.new()
var err = upnp.discover()

if err != OK:
push_error(str(err))
emit_signal("upnp_completed", err)
return

if upnp.get_gateway() and upnp.get_gateway().is_valid_gateway():
upnp.add_port_mapping(server_port, server_port, ProjectSettings.get_setting("application/config/name"), "UDP")
upnp.add_port_mapping(server_port, server_port, ProjectSettings.get_setting("application/config/name"), "TCP")
emit_signal("upnp_completed", OK)

func _ready():
thread = Thread.new()
thread.start(self, "_upnp_setup", SERVER_PORT)

func _exit_tree():
# Wait for thread finish here to handle game exit while the thread is running.
thread.wait_to_finish()

```
**/
@:libType
@:csNative
@:native("Godot.UPNP")
@:autoBuild(godot.Godot.buildUserClass())
extern class UPNP extends godot.Reference {
	/**		
		If `true`, IPv6 is used for `godot.UPNPDevice` discovery.
	**/
	@:native("DiscoverIpv6")
	public var discoverIpv6:Bool;

	/**		
		If `0`, the local port to use for discovery is chosen automatically by the system. If `1`, discovery will be done from the source port 1900 (same as destination port). Otherwise, the value will be used as the port.
	**/
	@:native("DiscoverLocalPort")
	public var discoverLocalPort:Int;

	/**		
		Multicast interface to use for discovery. Uses the default multicast interface if empty.
	**/
	@:native("DiscoverMulticastIf")
	public var discoverMulticastIf:std.String;

	@:native("new")
	public function new():Void;

	/**		
		Returns the number of discovered `godot.UPNPDevice`s.
	**/
	@:native("GetDeviceCount")
	public function getDeviceCount():Int;

	/**		
		Returns the `godot.UPNPDevice` at the given `index`.
	**/
	@:native("GetDevice")
	public function getDevice(index:Int):godot.UPNPDevice;

	/**		
		Adds the given `godot.UPNPDevice` to the list of discovered devices.
	**/
	@:native("AddDevice")
	public function addDevice(device:godot.UPNPDevice):Void;

	/**		
		Sets the device at `index` from the list of discovered devices to `device`.
	**/
	@:native("SetDevice")
	public function setDevice(index:Int, device:godot.UPNPDevice):Void;

	/**		
		Removes the device at `index` from the list of discovered devices.
	**/
	@:native("RemoveDevice")
	public function removeDevice(index:Int):Void;

	/**		
		Clears the list of discovered devices.
	**/
	@:native("ClearDevices")
	public function clearDevices():Void;

	/**		
		Returns the default gateway. That is the first discovered `godot.UPNPDevice` that is also a valid IGD (InternetGatewayDevice).
	**/
	@:native("GetGateway")
	public function getGateway():godot.UPNPDevice;

	#if doc_gen
	/**		
		Discovers local `godot.UPNPDevice`s. Clears the list of previously discovered devices.
		
		Filters for IGD (InternetGatewayDevice) type devices by default, as those manage port forwarding. `timeout` is the time to wait for responses in milliseconds. `ttl` is the time-to-live; only touch this if you know what you're doing.
		
		See `godot.UPNP_UPNPResult` for possible return values.
	**/
	@:native("Discover")
	public function discover(?timeout:Int, ?ttl:Int, ?deviceFilter:std.String):Int;
	#else
	/**		
		Discovers local `godot.UPNPDevice`s. Clears the list of previously discovered devices.
		
		Filters for IGD (InternetGatewayDevice) type devices by default, as those manage port forwarding. `timeout` is the time to wait for responses in milliseconds. `ttl` is the time-to-live; only touch this if you know what you're doing.
		
		See `godot.UPNP_UPNPResult` for possible return values.
	**/
	@:native("Discover")
	public overload function discover():Int;

	/**		
		Discovers local `godot.UPNPDevice`s. Clears the list of previously discovered devices.
		
		Filters for IGD (InternetGatewayDevice) type devices by default, as those manage port forwarding. `timeout` is the time to wait for responses in milliseconds. `ttl` is the time-to-live; only touch this if you know what you're doing.
		
		See `godot.UPNP_UPNPResult` for possible return values.
	**/
	@:native("Discover")
	public overload function discover(timeout:Int):Int;

	/**		
		Discovers local `godot.UPNPDevice`s. Clears the list of previously discovered devices.
		
		Filters for IGD (InternetGatewayDevice) type devices by default, as those manage port forwarding. `timeout` is the time to wait for responses in milliseconds. `ttl` is the time-to-live; only touch this if you know what you're doing.
		
		See `godot.UPNP_UPNPResult` for possible return values.
	**/
	@:native("Discover")
	public overload function discover(timeout:Int, ttl:Int):Int;

	/**		
		Discovers local `godot.UPNPDevice`s. Clears the list of previously discovered devices.
		
		Filters for IGD (InternetGatewayDevice) type devices by default, as those manage port forwarding. `timeout` is the time to wait for responses in milliseconds. `ttl` is the time-to-live; only touch this if you know what you're doing.
		
		See `godot.UPNP_UPNPResult` for possible return values.
	**/
	@:native("Discover")
	public overload function discover(timeout:Int, ttl:Int, deviceFilter:std.String):Int;
	#end

	/**		
		Returns the external `godot.IP` address of the default gateway (see `godot.UPNP.getGateway`) as string. Returns an empty string on error.
	**/
	@:native("QueryExternalAddress")
	public function queryExternalAddress():std.String;

	#if doc_gen
	/**		
		Adds a mapping to forward the external `port` (between 1 and 65535) on the default gateway (see `godot.UPNP.getGateway`) to the `internal_port` on the local machine for the given protocol `proto` (either `TCP` or `UDP`, with UDP being the default). If a port mapping for the given port and protocol combination already exists on that gateway device, this method tries to overwrite it. If that is not desired, you can retrieve the gateway manually with `godot.UPNP.getGateway` and call `godot.UPNP.addPortMapping` on it, if any.
		
		If `internal_port` is `0` (the default), the same port number is used for both the external and the internal port (the `port` value).
		
		The description (`desc`) is shown in some router UIs and can be used to point out which application added the mapping. The mapping's lease duration can be limited by specifying a `duration` (in seconds). However, some routers are incompatible with one or both of these, so use with caution and add fallback logic in case of errors to retry without them if in doubt.
		
		See `godot.UPNP_UPNPResult` for possible return values.
	**/
	@:native("AddPortMapping")
	public function addPortMapping(port:Int, ?portInternal:Int, ?desc:std.String, ?proto:std.String, ?duration:Int):Int;
	#else
	/**		
		Adds a mapping to forward the external `port` (between 1 and 65535) on the default gateway (see `godot.UPNP.getGateway`) to the `internal_port` on the local machine for the given protocol `proto` (either `TCP` or `UDP`, with UDP being the default). If a port mapping for the given port and protocol combination already exists on that gateway device, this method tries to overwrite it. If that is not desired, you can retrieve the gateway manually with `godot.UPNP.getGateway` and call `godot.UPNP.addPortMapping` on it, if any.
		
		If `internal_port` is `0` (the default), the same port number is used for both the external and the internal port (the `port` value).
		
		The description (`desc`) is shown in some router UIs and can be used to point out which application added the mapping. The mapping's lease duration can be limited by specifying a `duration` (in seconds). However, some routers are incompatible with one or both of these, so use with caution and add fallback logic in case of errors to retry without them if in doubt.
		
		See `godot.UPNP_UPNPResult` for possible return values.
	**/
	@:native("AddPortMapping")
	public overload function addPortMapping(port:Int):Int;

	/**		
		Adds a mapping to forward the external `port` (between 1 and 65535) on the default gateway (see `godot.UPNP.getGateway`) to the `internal_port` on the local machine for the given protocol `proto` (either `TCP` or `UDP`, with UDP being the default). If a port mapping for the given port and protocol combination already exists on that gateway device, this method tries to overwrite it. If that is not desired, you can retrieve the gateway manually with `godot.UPNP.getGateway` and call `godot.UPNP.addPortMapping` on it, if any.
		
		If `internal_port` is `0` (the default), the same port number is used for both the external and the internal port (the `port` value).
		
		The description (`desc`) is shown in some router UIs and can be used to point out which application added the mapping. The mapping's lease duration can be limited by specifying a `duration` (in seconds). However, some routers are incompatible with one or both of these, so use with caution and add fallback logic in case of errors to retry without them if in doubt.
		
		See `godot.UPNP_UPNPResult` for possible return values.
	**/
	@:native("AddPortMapping")
	public overload function addPortMapping(port:Int, portInternal:Int):Int;

	/**		
		Adds a mapping to forward the external `port` (between 1 and 65535) on the default gateway (see `godot.UPNP.getGateway`) to the `internal_port` on the local machine for the given protocol `proto` (either `TCP` or `UDP`, with UDP being the default). If a port mapping for the given port and protocol combination already exists on that gateway device, this method tries to overwrite it. If that is not desired, you can retrieve the gateway manually with `godot.UPNP.getGateway` and call `godot.UPNP.addPortMapping` on it, if any.
		
		If `internal_port` is `0` (the default), the same port number is used for both the external and the internal port (the `port` value).
		
		The description (`desc`) is shown in some router UIs and can be used to point out which application added the mapping. The mapping's lease duration can be limited by specifying a `duration` (in seconds). However, some routers are incompatible with one or both of these, so use with caution and add fallback logic in case of errors to retry without them if in doubt.
		
		See `godot.UPNP_UPNPResult` for possible return values.
	**/
	@:native("AddPortMapping")
	public overload function addPortMapping(port:Int, portInternal:Int, desc:std.String):Int;

	/**		
		Adds a mapping to forward the external `port` (between 1 and 65535) on the default gateway (see `godot.UPNP.getGateway`) to the `internal_port` on the local machine for the given protocol `proto` (either `TCP` or `UDP`, with UDP being the default). If a port mapping for the given port and protocol combination already exists on that gateway device, this method tries to overwrite it. If that is not desired, you can retrieve the gateway manually with `godot.UPNP.getGateway` and call `godot.UPNP.addPortMapping` on it, if any.
		
		If `internal_port` is `0` (the default), the same port number is used for both the external and the internal port (the `port` value).
		
		The description (`desc`) is shown in some router UIs and can be used to point out which application added the mapping. The mapping's lease duration can be limited by specifying a `duration` (in seconds). However, some routers are incompatible with one or both of these, so use with caution and add fallback logic in case of errors to retry without them if in doubt.
		
		See `godot.UPNP_UPNPResult` for possible return values.
	**/
	@:native("AddPortMapping")
	public overload function addPortMapping(port:Int, portInternal:Int, desc:std.String, proto:std.String):Int;

	/**		
		Adds a mapping to forward the external `port` (between 1 and 65535) on the default gateway (see `godot.UPNP.getGateway`) to the `internal_port` on the local machine for the given protocol `proto` (either `TCP` or `UDP`, with UDP being the default). If a port mapping for the given port and protocol combination already exists on that gateway device, this method tries to overwrite it. If that is not desired, you can retrieve the gateway manually with `godot.UPNP.getGateway` and call `godot.UPNP.addPortMapping` on it, if any.
		
		If `internal_port` is `0` (the default), the same port number is used for both the external and the internal port (the `port` value).
		
		The description (`desc`) is shown in some router UIs and can be used to point out which application added the mapping. The mapping's lease duration can be limited by specifying a `duration` (in seconds). However, some routers are incompatible with one or both of these, so use with caution and add fallback logic in case of errors to retry without them if in doubt.
		
		See `godot.UPNP_UPNPResult` for possible return values.
	**/
	@:native("AddPortMapping")
	public overload function addPortMapping(port:Int, portInternal:Int, desc:std.String, proto:std.String, duration:Int):Int;
	#end

	#if doc_gen
	/**		
		Deletes the port mapping for the given port and protocol combination on the default gateway (see `godot.UPNP.getGateway`) if one exists. `port` must be a valid port between 1 and 65535, `proto` can be either `TCP` or `UDP`. See `godot.UPNP_UPNPResult` for possible return values.
	**/
	@:native("DeletePortMapping")
	public function deletePortMapping(port:Int, ?proto:std.String):Int;
	#else
	/**		
		Deletes the port mapping for the given port and protocol combination on the default gateway (see `godot.UPNP.getGateway`) if one exists. `port` must be a valid port between 1 and 65535, `proto` can be either `TCP` or `UDP`. See `godot.UPNP_UPNPResult` for possible return values.
	**/
	@:native("DeletePortMapping")
	public overload function deletePortMapping(port:Int):Int;

	/**		
		Deletes the port mapping for the given port and protocol combination on the default gateway (see `godot.UPNP.getGateway`) if one exists. `port` must be a valid port between 1 and 65535, `proto` can be either `TCP` or `UDP`. See `godot.UPNP_UPNPResult` for possible return values.
	**/
	@:native("DeletePortMapping")
	public overload function deletePortMapping(port:Int, proto:std.String):Int;
	#end

	@:native("SetDiscoverMulticastIf")
	public function setDiscoverMulticastIf(mIf:std.String):Void;

	@:native("GetDiscoverMulticastIf")
	public function getDiscoverMulticastIf():std.String;

	@:native("SetDiscoverLocalPort")
	public function setDiscoverLocalPort(port:Int):Void;

	@:native("GetDiscoverLocalPort")
	public function getDiscoverLocalPort():Int;

	@:native("SetDiscoverIpv6")
	public function setDiscoverIpv6(ipv6:Bool):Void;

	@:native("IsDiscoverIpv6")
	public function isDiscoverIpv6():Bool;
}
