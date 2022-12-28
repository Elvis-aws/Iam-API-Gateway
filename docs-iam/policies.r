
* Effect => Allow or deny 
* Who    => Principle 
* What   => Resources 
* If     => Condition 

A policy is an entity in AWS that when attached to an identity or resource, permissions are being defined
A policy contains different permissions that determine if the request is allowed or denied
They are stored in AWS as Json documents
They are attached to principles or resources
There are several types of Policies
    ***************
    Identity based
    ***************
        Policies you can attach to a principle
        They control what actions an identity can perform on what resources and under what conditions
        There are of two types Managed and Inline policies
            Managed Policies : AWS Managed, Customer Managed
            Inline: A policy created and embedded onto a principle
    ***************
    Resource based
    ***************
        Policies that you can attach to a resource such as S3 bucket
        They control what actions a principle can perform on what resources and under what conditions
        They are only inline and no managed resource based policies
    ***************************
    Access control lists (ACLs)
    ***************************
        Access control lists (ACLs) are service policies that allow you to control which principals in another 
        account can access a resource. ACLs cannot be used to control access for a principal within the same 
        account. ACLs are similar to resource-based policies, although they are the only policy type that does 
        not use the JSON policy document format. Amazon S3, AWS WAF, and Amazon VPC are examples of services 
        that support ACLs.
********************
Permissions Boundary
********************
    Assume that the IAM user named ShirleyRodriguez should be allowed to manage only Amazon S3, Amazon 
    CloudWatch, and Amazon EC2. To enforce this rule, you can use the following policy to set the permissions 
    boundary for the ShirleyRodriguez user:
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                "s3:*",
                "cloudwatch:*",
                "ec2:*"
            ],
            "Resource": "*"
        }
    ]
}

The following example policy expands on the previous example. It allows a user to attach only the managed 
policies that include the path /TEAM-A/ to only the user groups and roles that include the path /TEAM-A/

{
  "Version": "2012-10-17",
  "Statement": {
    "Effect": "Allow",
    "Action": [
      "iam:AttachGroupPolicy",
      "iam:AttachRolePolicy"
    ],
    "Resource": [
      "arn:aws:iam::account-id:group/TEAM-A/*",
      "arn:aws:iam::account-id:role/TEAM-A/*"
    ],
    "Condition": {"ArnLike": 
      {"iam:PolicyARN": "arn:aws:iam::account-id:policy/TEAM-A/*"}
    }
  }
}

If a policy includes multiple statement, AWS applies a "logical OR" across the statements at evaluation time.

{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "s3:ListAllMyBuckets",
        "s3:GetBucketLocation"
      ],
      "Resource": "arn:aws:s3:::*"
    },
    {
      "Effect": "Allow",
      "Action": "s3:ListBucket",
      "Resource": "arn:aws:s3:::BUCKET-NAME",
      "Condition": {"StringLike": {"s3:prefix": [
        "",
        "home/",
        "home/${aws:username}/"
      ]}}
    },
    {
      "Effect": "Allow",
      "Action": "s3:*",
      "Resource": [
        "arn:aws:s3:::BUCKET-NAME/home/${aws:username}",
        "arn:aws:s3:::BUCKET-NAME/home/${aws:username}/*"
      ]
    }
  ]
}
***********************
Policy evaluation logic
***********************
    Assume that a principal sends a request to AWS to access a resource in the same account as the principals 
    entity. The AWS enforcement code decides whether the request should be allowed or denied. AWS evaluates all 
    policies that are applicable to the request context. The following is a summary of the AWS evaluation logic 
    for policies within a single account.
        - By default, all requests are implicitly denied with the exception of the AWS account root user, which 
        has full access.
        - An explicit allow in an identity-based or resource-based policy overrides this default.
        - If a permissions boundary, Organizations SCP, or session policy is present, it might override the allow 
        with an implicit deny.
        - An explicit deny in any policy overrides any allows.
    Explicit Deny => Explicit Allow => Default Deny