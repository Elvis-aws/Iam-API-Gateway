

************
Lambda-Proxy
************
    - The two possible integrations are Lambda-Proxy and Lambda
        ************
        Lambda-Proxy
        ************
            - Receives the whole request as such to the Lambda 
            - Response message and status code is set up in Lambda
        ******
        Lambda
        ******
            - Request transformatuion is done in API Gateway
            - Response transformation and status code setting is done in API Gateway 
        **************   
        Method Request 
        ************** 
            - It is the request originated from the client
        *******************
        Integration Request 
        *******************
            - It is the transformation that you can do with API Gateway
        ********************
        Integration Response
        ********************
            - This is where, you can assign appropriate status code and do response transformation, if present
        *******************
        Integration Request
        *******************
            - It is the part, where you transform the request by using the mapping template defined as per content-type
    