// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.HTTPClient.ResponseCode")
@:csNative
extern enum HTTPClient_ResponseCode {
	/**		
		HTTP status code `100 Continue`. Interim response that indicates everything so far is OK and that the client should continue with the request (or ignore this status if already finished).
	**/
	Continue;

	/**		
		HTTP status code `101 Switching Protocol`. Sent in response to an `Upgrade` request header by the client. Indicates the protocol the server is switching to.
	**/
	SwitchingProtocols;

	/**		
		HTTP status code `102 Processing` (WebDAV). Indicates that the server has received and is processing the request, but no response is available yet.
	**/
	Processing;

	/**		
		HTTP status code `200 OK`. The request has succeeded. Default response for successful requests. Meaning varies depending on the request. GET: The resource has been fetched and is transmitted in the message body. HEAD: The entity headers are in the message body. POST: The resource describing the result of the action is transmitted in the message body. TRACE: The message body contains the request message as received by the server.
	**/
	Ok;

	/**		
		HTTP status code `201 Created`. The request has succeeded and a new resource has been created as a result of it. This is typically the response sent after a PUT request.
	**/
	Created;

	/**		
		HTTP status code `202 Accepted`. The request has been received but not yet acted upon. It is non-committal, meaning that there is no way in HTTP to later send an asynchronous response indicating the outcome of processing the request. It is intended for cases where another process or server handles the request, or for batch processing.
	**/
	Accepted;

	/**		
		HTTP status code `203 Non-Authoritative Information`. This response code means returned meta-information set is not exact set as available from the origin server, but collected from a local or a third party copy. Except this condition, 200 OK response should be preferred instead of this response.
	**/
	NonAuthoritativeInformation;

	/**		
		HTTP status code `204 No Content`. There is no content to send for this request, but the headers may be useful. The user-agent may update its cached headers for this resource with the new ones.
	**/
	NoContent;

	/**		
		HTTP status code `205 Reset Content`. The server has fulfilled the request and desires that the client resets the "document view" that caused the request to be sent to its original state as received from the origin server.
	**/
	ResetContent;

	/**		
		HTTP status code `206 Partial Content`. This response code is used because of a range header sent by the client to separate download into multiple streams.
	**/
	PartialContent;

	/**		
		HTTP status code `207 Multi-Status` (WebDAV). A Multi-Status response conveys information about multiple resources in situations where multiple status codes might be appropriate.
	**/
	MultiStatus;

	/**		
		HTTP status code `208 Already Reported` (WebDAV). Used inside a DAV: propstat response element to avoid enumerating the internal members of multiple bindings to the same collection repeatedly.
	**/
	AlreadyReported;

	/**		
		HTTP status code `226 IM Used` (WebDAV). The server has fulfilled a GET request for the resource, and the response is a representation of the result of one or more instance-manipulations applied to the current instance.
	**/
	ImUsed;

	/**		
		HTTP status code `300 Multiple Choice`. The request has more than one possible responses and there is no standardized way to choose one of the responses. User-agent or user should choose one of them.
	**/
	MultipleChoices;

	/**		
		HTTP status code `301 Moved Permanently`. Redirection. This response code means the URI of requested resource has been changed. The new URI is usually included in the response.
	**/
	MovedPermanently;

	/**		
		HTTP status code `302 Found`. Temporary redirection. This response code means the URI of requested resource has been changed temporarily. New changes in the URI might be made in the future. Therefore, this same URI should be used by the client in future requests.
	**/
	Found;

	/**		
		HTTP status code `303 See Other`. The server is redirecting the user agent to a different resource, as indicated by a URI in the Location header field, which is intended to provide an indirect response to the original request.
	**/
	SeeOther;

	/**		
		HTTP status code `304 Not Modified`. A conditional GET or HEAD request has been received and would have resulted in a 200 OK response if it were not for the fact that the condition evaluated to `false`.
	**/
	NotModified;

	/**		
		HTTP status code `305 Use Proxy`. Deprecated. Do not use.
	**/
	UseProxy;

	/**		
		HTTP status code `306 Switch Proxy`. Deprecated. Do not use.
	**/
	SwitchProxy;

	/**		
		HTTP status code `307 Temporary Redirect`. The target resource resides temporarily under a different URI and the user agent MUST NOT change the request method if it performs an automatic redirection to that URI.
	**/
	TemporaryRedirect;

	/**		
		HTTP status code `308 Permanent Redirect`. The target resource has been assigned a new permanent URI and any future references to this resource ought to use one of the enclosed URIs.
	**/
	PermanentRedirect;

	/**		
		HTTP status code `400 Bad Request`. The request was invalid. The server cannot or will not process the request due to something that is perceived to be a client error (e.g., malformed request syntax, invalid request message framing, invalid request contents, or deceptive request routing).
	**/
	BadRequest;

	/**		
		HTTP status code `401 Unauthorized`. Credentials required. The request has not been applied because it lacks valid authentication credentials for the target resource.
	**/
	Unauthorized;

	/**		
		HTTP status code `402 Payment Required`. This response code is reserved for future use. Initial aim for creating this code was using it for digital payment systems, however this is not currently used.
	**/
	PaymentRequired;

	/**		
		HTTP status code `403 Forbidden`. The client does not have access rights to the content, i.e. they are unauthorized, so server is rejecting to give proper response. Unlike `401`, the client's identity is known to the server.
	**/
	Forbidden;

	/**		
		HTTP status code `404 Not Found`. The server can not find requested resource. Either the URL is not recognized or the endpoint is valid but the resource itself does not exist. May also be sent instead of 403 to hide existence of a resource if the client is not authorized.
	**/
	NotFound;

	/**		
		HTTP status code `405 Method Not Allowed`. The request's HTTP method is known by the server but has been disabled and cannot be used. For example, an API may forbid DELETE-ing a resource. The two mandatory methods, GET and HEAD, must never be disabled and should not return this error code.
	**/
	MethodNotAllowed;

	/**		
		HTTP status code `406 Not Acceptable`. The target resource does not have a current representation that would be acceptable to the user agent, according to the proactive negotiation header fields received in the request. Used when negotiation content.
	**/
	NotAcceptable;

	/**		
		HTTP status code `407 Proxy Authentication Required`. Similar to 401 Unauthorized, but it indicates that the client needs to authenticate itself in order to use a proxy.
	**/
	ProxyAuthenticationRequired;

	/**		
		HTTP status code `408 Request Timeout`. The server did not receive a complete request message within the time that it was prepared to wait.
	**/
	RequestTimeout;

	/**		
		HTTP status code `409 Conflict`. The request could not be completed due to a conflict with the current state of the target resource. This code is used in situations where the user might be able to resolve the conflict and resubmit the request.
	**/
	Conflict;

	/**		
		HTTP status code `410 Gone`. The target resource is no longer available at the origin server and this condition is likely permanent.
	**/
	Gone;

	/**		
		HTTP status code `411 Length Required`. The server refuses to accept the request without a defined Content-Length header.
	**/
	LengthRequired;

	/**		
		HTTP status code `412 Precondition Failed`. One or more conditions given in the request header fields evaluated to `false` when tested on the server.
	**/
	PreconditionFailed;

	/**		
		HTTP status code `413 Entity Too Large`. The server is refusing to process a request because the request payload is larger than the server is willing or able to process.
	**/
	RequestEntityTooLarge;

	/**		
		HTTP status code `414 Request-URI Too Long`. The server is refusing to service the request because the request-target is longer than the server is willing to interpret.
	**/
	RequestUriTooLong;

	/**		
		HTTP status code `415 Unsupported Media Type`. The origin server is refusing to service the request because the payload is in a format not supported by this method on the target resource.
	**/
	UnsupportedMediaType;

	/**		
		HTTP status code `416 Requested Range Not Satisfiable`. None of the ranges in the request's Range header field overlap the current extent of the selected resource or the set of ranges requested has been rejected due to invalid ranges or an excessive request of small or overlapping ranges.
	**/
	RequestedRangeNotSatisfiable;

	/**		
		HTTP status code `417 Expectation Failed`. The expectation given in the request's Expect header field could not be met by at least one of the inbound servers.
	**/
	ExpectationFailed;

	/**		
		HTTP status code `418 I'm A Teapot`. Any attempt to brew coffee with a teapot should result in the error code "418 I'm a teapot". The resulting entity body MAY be short and stout.
	**/
	ImATeapot;

	/**		
		HTTP status code `421 Misdirected Request`. The request was directed at a server that is not able to produce a response. This can be sent by a server that is not configured to produce responses for the combination of scheme and authority that are included in the request URI.
	**/
	MisdirectedRequest;

	/**		
		HTTP status code `422 Unprocessable Entity` (WebDAV). The server understands the content type of the request entity (hence a 415 Unsupported Media Type status code is inappropriate), and the syntax of the request entity is correct (thus a 400 Bad Request status code is inappropriate) but was unable to process the contained instructions.
	**/
	UnprocessableEntity;

	/**		
		HTTP status code `423 Locked` (WebDAV). The source or destination resource of a method is locked.
	**/
	Locked;

	/**		
		HTTP status code `424 Failed Dependency` (WebDAV). The method could not be performed on the resource because the requested action depended on another action and that action failed.
	**/
	FailedDependency;

	/**		
		HTTP status code `426 Upgrade Required`. The server refuses to perform the request using the current protocol but might be willing to do so after the client upgrades to a different protocol.
	**/
	UpgradeRequired;

	/**		
		HTTP status code `428 Precondition Required`. The origin server requires the request to be conditional.
	**/
	PreconditionRequired;

	/**		
		HTTP status code `429 Too Many Requests`. The user has sent too many requests in a given amount of time (see "rate limiting"). Back off and increase time between requests or try again later.
	**/
	TooManyRequests;

	/**		
		HTTP status code `431 Request Header Fields Too Large`. The server is unwilling to process the request because its header fields are too large. The request MAY be resubmitted after reducing the size of the request header fields.
	**/
	RequestHeaderFieldsTooLarge;

	/**		
		HTTP status code `451 Response Unavailable For Legal Reasons`. The server is denying access to the resource as a consequence of a legal demand.
	**/
	UnavailableForLegalReasons;

	/**		
		HTTP status code `500 Internal Server Error`. The server encountered an unexpected condition that prevented it from fulfilling the request.
	**/
	InternalServerError;

	/**		
		HTTP status code `501 Not Implemented`. The server does not support the functionality required to fulfill the request.
	**/
	NotImplemented;

	/**		
		HTTP status code `502 Bad Gateway`. The server, while acting as a gateway or proxy, received an invalid response from an inbound server it accessed while attempting to fulfill the request. Usually returned by load balancers or proxies.
	**/
	BadGateway;

	/**		
		HTTP status code `503 Service Unavailable`. The server is currently unable to handle the request due to a temporary overload or scheduled maintenance, which will likely be alleviated after some delay. Try again later.
	**/
	ServiceUnavailable;

	/**		
		HTTP status code `504 Gateway Timeout`. The server, while acting as a gateway or proxy, did not receive a timely response from an upstream server it needed to access in order to complete the request. Usually returned by load balancers or proxies.
	**/
	GatewayTimeout;

	/**		
		HTTP status code `505 HTTP Version Not Supported`. The server does not support, or refuses to support, the major version of HTTP that was used in the request message.
	**/
	HttpVersionNotSupported;

	/**		
		HTTP status code `506 Variant Also Negotiates`. The server has an internal configuration error: the chosen variant resource is configured to engage in transparent content negotiation itself, and is therefore not a proper end point in the negotiation process.
	**/
	VariantAlsoNegotiates;

	/**		
		HTTP status code `507 Insufficient Storage`. The method could not be performed on the resource because the server is unable to store the representation needed to successfully complete the request.
	**/
	InsufficientStorage;

	/**		
		HTTP status code `508 Loop Detected`. The server terminated an operation because it encountered an infinite loop while processing a request with "Depth: infinity". This status indicates that the entire operation failed.
	**/
	LoopDetected;

	/**		
		HTTP status code `510 Not Extended`. The policy for accessing the resource has not been met in the request. The server should send back all the information necessary for the client to issue an extended request.
	**/
	NotExtended;

	/**		
		HTTP status code `511 Network Authentication Required`. The client needs to authenticate to gain network access.
	**/
	NetworkAuthRequired;
}
