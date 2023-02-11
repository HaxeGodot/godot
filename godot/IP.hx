// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
IP contains support functions for the Internet Protocol (IP). TCP/IP support is in different classes (see `godot.StreamPeerTCP` and `godot.TCP_Server`). IP provides DNS hostname resolution support, both blocking and threaded.
**/
@:libType
@:csNative
@:native("Godot.IP")
@:autoBuild(godot.Godot.buildUserClass())
extern class IP {
	@:native("Singleton") @:readOnly
	public static var SINGLETON(default, never):godot.Object;

	/**		
		Invalid ID constant. Returned if `godot.IP.resolverMaxQueries` is exceeded.
	**/
	@:native("ResolverInvalidId") @:readOnly
	public static var RESOLVER_INVALID_ID(default, never):Int;

	/**		
		Maximum number of concurrent DNS resolver queries allowed, `godot.IP.resolverInvalidId` is returned if exceeded.
	**/
	@:native("ResolverMaxQueries") @:readOnly
	public static var RESOLVER_MAX_QUERIES(default, never):Int;

	#if doc_gen
	/**		
		Returns a given hostname's IPv4 or IPv6 address when resolved (blocking-type method). The address type returned depends on the `godot.IP_Type` constant given as `ip_type`.
	**/
	@:native("ResolveHostname")
	public static function resolveHostname(host:std.String, ?ipType:godot.IP_Type):std.String;
	#else
	/**		
		Returns a given hostname's IPv4 or IPv6 address when resolved (blocking-type method). The address type returned depends on the `godot.IP_Type` constant given as `ip_type`.
	**/
	@:native("ResolveHostname")
	public static overload function resolveHostname(host:std.String):std.String;

	/**		
		Returns a given hostname's IPv4 or IPv6 address when resolved (blocking-type method). The address type returned depends on the `godot.IP_Type` constant given as `ip_type`.
	**/
	@:native("ResolveHostname")
	public static overload function resolveHostname(host:std.String, ipType:godot.IP_Type):std.String;
	#end

	#if doc_gen
	/**		
		Resolves a given hostname in a blocking way. Addresses are returned as an `godot.Collections_Array` of IPv4 or IPv6 depending on `ip_type`.
	**/
	@:native("ResolveHostnameAddresses")
	public static function resolveHostnameAddresses(host:std.String, ?ipType:godot.IP_Type):godot.collections.Array;
	#else
	/**		
		Resolves a given hostname in a blocking way. Addresses are returned as an `godot.Collections_Array` of IPv4 or IPv6 depending on `ip_type`.
	**/
	@:native("ResolveHostnameAddresses")
	public static overload function resolveHostnameAddresses(host:std.String):godot.collections.Array;

	/**		
		Resolves a given hostname in a blocking way. Addresses are returned as an `godot.Collections_Array` of IPv4 or IPv6 depending on `ip_type`.
	**/
	@:native("ResolveHostnameAddresses")
	public static overload function resolveHostnameAddresses(host:std.String, ipType:godot.IP_Type):godot.collections.Array;
	#end

	#if doc_gen
	/**		
		Creates a queue item to resolve a hostname to an IPv4 or IPv6 address depending on the `godot.IP_Type` constant given as `ip_type`. Returns the queue ID if successful, or `godot.IP.resolverInvalidId` on error.
	**/
	@:native("ResolveHostnameQueueItem")
	public static function resolveHostnameQueueItem(host:std.String, ?ipType:godot.IP_Type):Int;
	#else
	/**		
		Creates a queue item to resolve a hostname to an IPv4 or IPv6 address depending on the `godot.IP_Type` constant given as `ip_type`. Returns the queue ID if successful, or `godot.IP.resolverInvalidId` on error.
	**/
	@:native("ResolveHostnameQueueItem")
	public static overload function resolveHostnameQueueItem(host:std.String):Int;

	/**		
		Creates a queue item to resolve a hostname to an IPv4 or IPv6 address depending on the `godot.IP_Type` constant given as `ip_type`. Returns the queue ID if successful, or `godot.IP.resolverInvalidId` on error.
	**/
	@:native("ResolveHostnameQueueItem")
	public static overload function resolveHostnameQueueItem(host:std.String, ipType:godot.IP_Type):Int;
	#end

	/**		
		Returns a queued hostname's status as a `godot.IP_ResolverStatus` constant, given its queue `id`.
	**/
	@:native("GetResolveItemStatus")
	public static function getResolveItemStatus(id:Int):godot.IP_ResolverStatus;

	/**		
		Returns a queued hostname's IP address, given its queue `id`. Returns an empty string on error or if resolution hasn't happened yet (see `godot.IP.getResolveItemStatus`).
	**/
	@:native("GetResolveItemAddress")
	public static function getResolveItemAddress(id:Int):std.String;

	/**		
		Return resolved addresses, or an empty array if an error happened or resolution didn't happen yet (see `godot.IP.getResolveItemStatus`).
	**/
	@:native("GetResolveItemAddresses")
	public static function getResolveItemAddresses(id:Int):godot.collections.Array;

	/**		
		Removes a given item `id` from the queue. This should be used to free a queue after it has completed to enable more queries to happen.
	**/
	@:native("EraseResolveItem")
	public static function eraseResolveItem(id:Int):Void;

	/**		
		Returns all the user's current IPv4 and IPv6 addresses as an array.
	**/
	@:native("GetLocalAddresses")
	public static function getLocalAddresses():godot.collections.Array;

	/**		
		Returns all network adapters as an array.
		
		Each adapter is a dictionary of the form:
		
		```
		
		{
		"index": "1", # Interface index.
		"name": "eth0", # Interface name.
		"friendly": "Ethernet One", # A friendly name (might be empty).
		"addresses": ["192.168.1.101"], # An array of IP addresses associated to this interface.
		}
		
		```
	**/
	@:native("GetLocalInterfaces")
	public static function getLocalInterfaces():godot.collections.Array;

	#if doc_gen
	/**		
		Removes all of a `hostname`'s cached references. If no `hostname` is given, all cached IP addresses are removed.
	**/
	@:native("ClearCache")
	public static function clearCache(?hostname:std.String):Void;
	#else
	/**		
		Removes all of a `hostname`'s cached references. If no `hostname` is given, all cached IP addresses are removed.
	**/
	@:native("ClearCache")
	public static overload function clearCache():Void;

	/**		
		Removes all of a `hostname`'s cached references. If no `hostname` is given, all cached IP addresses are removed.
	**/
	@:native("ClearCache")
	public static overload function clearCache(hostname:std.String):Void;
	#end
}
