

API Gateway
    API Gateway is an AWS service that supports the following
        Creating, deploying, and managing a RESTful application programming interface (API) to expose backend 
        HTTP endpoints, AWS Lambda functions, or other AWS services.
        Creating, deploying, and managing a WebSocket API to expose AWS Lambda functions or other AWS services.
        Invoking exposed API methods through the frontend HTTP and WebSocket endpoints.
    API deployment
        A point-in-time snapshot of your API Gateway API. To be available for clients to use, the deployment must 
        be associated with one or more API stages.
    API stage
        A logical reference to a lifecycle state of your API (for example, 'dev', 'prod', 'beta', 'v2'). API 
        stages are identified by API ID and stage name.
        Stages can be rolled back as deployment history is kept
    Integration request
        The internal interface of a WebSocket API route or REST API method in API Gateway, in which you map the 
        body of a route request or the parameters and body of a method request to the formats required by the 
        backend.
    Integration response
        The internal interface of a WebSocket API route or REST API method in API Gateway, in which you map the 
        status codes, headers, and payload that are received from the backend to the response format that is 
        returned to a client app.
    Mapping template
        A script in Velocity Template Language (VTL) that transforms a request body from the frontend data format 
        to the backend data format, or that transforms a response body from the backend data format to the frontend 
        data format. Mapping templates can be specified in the integration request or in the integration response. 
        They can reference data made available at runtime as context and stage variables.
    Method request
        The public interface of an API method in API Gateway that defines the parameters and body that an app 
        developer must send in requests to access the backend through the API.
    Method response
        The public interface of a REST API that defines the status codes, headers, and body models that an 
        app developer should expect in responses from the API.
    Mock integration
        In a mock integration, API responses are generated from API Gateway directly, without the need for an 
        integration backend. As an API developer, you decide how API Gateway responds to a mock integration 
        request. For this, you configure the methods integration request and integration response to associate 
        a response with a given status code.
    Proxy integration
        A simplified API Gateway integration configuration. You can set up a proxy integration as an HTTP proxy 
        integration or a Lambda proxy integration. For HTTP proxy integration, API Gateway passes the entire request 
        and response between the frontend and an HTTP backend. For Lambda proxy integration, API Gateway sends 
        the entire request as input to a backend Lambda function. API Gateway then transforms the Lambda function 
        output to a frontend HTTP response. In REST APIs, proxy integration is most commonly used with a proxy 
        resource, which is represented by a greedy path variable (for example, {proxy+}) combined with a 
        catch-all ANY method.
        We can not use mapping templates to change either request or response lambda integration
    API Gateway stage variables
        You can use API Gateway stage variables to access the HTTP and Lambda backends for different API deployment 
        stages. You can also use stage variables to pass stage-specific configuration metadata into an HTTP backend 
        as a query parameter and into a Lambda function as a payload that is generated in an input mapping template.

