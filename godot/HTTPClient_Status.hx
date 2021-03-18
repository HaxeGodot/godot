// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.HTTPClient.Status")
@:csNative
extern enum HTTPClient_Status {
	/**		
		Status: Disconnected from the server.
	**/
	Disconnected;

	/**		
		Status: Currently resolving the hostname for the given URL into an IP.
	**/
	Resolving;

	/**		
		Status: DNS failure: Can't resolve the hostname for the given URL.
	**/
	CantResolve;

	/**		
		Status: Currently connecting to server.
	**/
	Connecting;

	/**		
		Status: Can't connect to the server.
	**/
	CantConnect;

	/**		
		Status: Connection established.
	**/
	Connected;

	/**		
		Status: Currently sending request.
	**/
	Requesting;

	/**		
		Status: HTTP body received.
	**/
	Body;

	/**		
		Status: Error in HTTP connection.
	**/
	ConnectionError;

	/**		
		Status: Error in SSL handshake.
	**/
	SslHandshakeError;
}
