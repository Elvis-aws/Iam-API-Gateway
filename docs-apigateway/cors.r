
Cors process API Gateway and S3
    API Gateway makes a request to S3 to get a static website
    API Gateway makes the options pre-flight request to the cross origin
        OPTIONS/
        Host: api.example.com
        Origin:https://www.example.com
    API Gateway receives a pre-flight response
        Access-Control-Allow-Methods: GET, PUT, POST, DELETE
        Access-Control-Allow-Origin: https://www.example.com
API Gateway Cors
    Enable Cors to receive API calls from another Domain
    The OPTIONS pre-flight request must conatin the following headers
        Access-Control-Allow-Methods
        Access-Control-Allow-Headers
        Access-Control-Allow-Origin
Cors does not work with a Lambda proxy