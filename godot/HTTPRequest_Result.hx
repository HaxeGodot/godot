// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.HTTPRequest.Result")
@:csNative
extern enum HTTPRequest_Result {
	/**		
		Request successful.
	**/
	Success;

	ChunkedBodySizeMismatch;

	/**		
		Request failed while connecting.
	**/
	CantConnect;

	/**		
		Request failed while resolving.
	**/
	CantResolve;

	/**		
		Request failed due to connection (read/write) error.
	**/
	ConnectionError;

	/**		
		Request failed on SSL handshake.
	**/
	SslHandshakeError;

	/**		
		Request does not have a response (yet).
	**/
	NoResponse;

	/**		
		Request exceeded its maximum size limit, see `godot.HTTPRequest.bodySizeLimit`.
	**/
	BodySizeLimitExceeded;

	/**		
		Request failed (currently unused).
	**/
	RequestFailed;

	/**		
		HTTPRequest couldn't open the download file.
	**/
	DownloadFileCantOpen;

	/**		
		HTTPRequest couldn't write to the download file.
	**/
	DownloadFileWriteError;

	/**		
		Request reached its maximum redirect limit, see `godot.HTTPRequest.maxRedirects`.
	**/
	RedirectLimitReached;

	Timeout;
}
