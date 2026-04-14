%dw 2.0
output application/json
---
{
	"errorDescription" : error.errorMessage.payload.errorDescription default error.description,
	"errorType": error.errorMessage.payload.errorType default (error.errorType.namespace ++ ":" ++ error.errorType.identifier)
}