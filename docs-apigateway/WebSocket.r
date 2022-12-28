

WebSocket
    In API Gateway you can create a WebSocket API as a stateful frontend for an AWS service (such as Lambda or 
    DynamoDB) or for an HTTP endpoint. The WebSocket API invokes your backend based on the content of the 
    messages it receives from client apps.
    Unlike a REST API, which receives and responds to requests, a WebSocket API supports two-way communication 
    between client apps and your backend. The backend can send callback messages to connected clients.
    In your WebSocket API, incoming JSON messages are directed to backend integrations based on routes that 
    you configure. (Non-JSON messages are directed to a $default route that you configure.)
    A route includes a route key, which is the value that is expected once a route selection expression 
    is evaluated. The routeSelectionExpression is an attribute defined at the API level. It specifies a 
    JSON property that is expected to be present in the message payload.
    For example, if your JSON messages contain an action property, and you want to perform different actions 
    based on this property, your route selection expression might be ${request.body.action}. Your routing 
    table would specify which action to perform by matching the value of the action property against the 
    custom route key values that you have defined in the table.
    There are three predefined routes that can be used: $connect, $disconnect, and $default. In addition, 
    you can create custom routes.

Route selection expressions
    A route selection expression is evaluated when the service is selecting the route to follow for an 
    incoming message. The service uses the route whose routeKey exactly matches the evaluated value. 
    If none match and a route with the $default route key exists, that route is selected. If no routes 
    match the evaluated value and there is no $default route, the service returns an error. For 
    WebSocket-based APIs, the expression should be of the form $request.body.{path_to_body_element}
{
    "service" : "chat",
    "action" : "join",
    "data" : {
        "room" : "room1234"
   }
}

    You might want to select your APIs behavior based on the action property. In that case, you might 
    define the following route selection expression:
        $request.body.action