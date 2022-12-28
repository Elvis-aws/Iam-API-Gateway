

User Auth
    Iam roles
    Cognito
    Custom Authorizer
Custom DNS HTTPS 
    Using Certificate Manager
Sig v4
    pass Sig v4 inside headers 
Resource plocies
    For cross account access with json policy
    Filter IP addresses
    Allow specific VPC endpoint
Cognito User pool
    Manage user lifecycle
    API gateway verifies user auth using cognito
    Authorization is set at method level
Lambda Authorizer
    Json web token (Client authenticates through a 3rd party system)
    Token is forwarded to API Gateway using headers or request parameters
    Lambda Authorizer is programmed
    API Gateway send token to Lambda
    Lambda connects with 3rd party to verify token
    If valid, Lambda returns an IAM principle + policy to API Gateway
    This gets cached by API Gateway
    API Gateway then communicates with backend Lambda
    For 3rd party Authentication