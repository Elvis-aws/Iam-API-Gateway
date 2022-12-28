
Credential provider chain
    All SDKs have a series of places (or sources) that they check in order to find valid credentials to use to 
    make a request to an AWS service. After valid credentials are found, the search is stopped. This systematic 
    search is called the default credential provider chain. Although the distinct chain used by each SDK varies, 
    they most often include sources such as the following:
        Static credentials (such as AWS_ACCESS_KEY_ID).
        Web identity token from AWS Security Token Service (AWS STS).
        AWS IAM Identity Center (successor to AWS Single Sign-On).
        Trusted entity provider (such as AWS_ROLE_ARN). 
        Amazon Elastic Container Service (Amazon ECS) credentials.
        Custom credential provider.
        Amazon Elastic Compute Cloud (Amazon EC2) instance profile credentials (IMDS credential provider).
    The CLI will look for credentials in this Order
        Command line options
        Environment variables
        CLI credential file
        CLI configuration file
        Container credentials for ECS
        Instance profile for EC2