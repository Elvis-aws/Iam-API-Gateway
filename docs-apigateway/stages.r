

Setting stage variables
    You must have an API available in API Gateway
    You must have deployed the API at least once
    You must have created the first stage for a deployed API
        Publish lambda function
        Create function versions
        Create lambda Aliases eg test, dev, prod pointing to different lambda versions
        Edit API gateway proxy set-up
        Where you select the lambda function to be triggered add the stage varible at the end
             MyLambdaFuntionName:${stageVariables.lambdaAlias}
        Add Permission to Lambda Function
            aws lambda add-permission --function-name arn:aws:lambda:us-east-1:account-id:function:HelloWorld --source-arn arn:aws:execute-api:us-east-1:account-id:api-id/*/GET/lambdasv1 --principal apigateway.amazonaws.com --statement-id statement-id-guid --action lambda:InvokeFunction --region eu-west2
            aws lambda add-permission    --function-name "arn:aws:lambda:eu-west-2:696685998805:function:employee-app-EmployeeTestFunction-mCeGXshN2DyO:production"    --source-arn "arn:aws:execute-api:eu-west-2:696685998805:otl2z2frq6/*/GET/test"    --principal apigateway.amazonaws.com    --statement-id 135041f7-20e0-449f-be6e-01be4dc4bec6    --action lambda:InvokeFunction  --region eu-west-2
            (Make sure to replace ${stageVariables.function} with the Lambda function Alias)
            e.g  MyLambdaFuntionName:Alias
            This adds resource based policy to ur function
        Deploy API in the environment of your choosen
        Go to stage variables and set Name: lambdaAlias value:Alias
Stage settings
    Enable caching at stage level
    Firewall WAF
    Method throttling so some methods are not called often
    Enable CloudWatch logs and metrics
    Custom access logging
    X-Ray Tracing
    Deployment history
    Canary