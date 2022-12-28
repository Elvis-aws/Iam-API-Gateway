**********
IAM Roles
**********
        An IAM role is an IAM identity that you can create in your account that has specific permissions. An IAM 
    role is similar to an IAM user, in that it is an AWS identity with permission policies that determine what 
    the identity can and cannot do in AWS. However, instead of being uniquely associated with one person, a 
    role is intended to be assumable by anyone who needs it. 
        Also, a role does not have standard long-term credentials such as a password or access keys associated 
    with it. Instead, when you assume a role, it provides you with temporary security credentials for your role 
    session. You can use roles to delegate access to users, applications, or services that dont normally have 
    access to your AWS resources. 
        For example, you might want to grant users in your AWS account access to resources they dont usually 
    have, or grant users in one AWS account access to resources in another account. Or you might want to allow 
    a mobile app to use AWS resources, but not want to embed AWS keys within the app (where they can be difficult 
    to rotate and where users can potentially extract them). Sometimes you want to give AWS access to users who 
    already have identities defined outside of AWS, such as in your corporate directory. Or, you might want to 
    grant access to your account to third parties so that they can perform 
    an audit on your resources.
        Temporary security credentials are created for the IAM role Users, AWS services that do not have access 
    to AWS resources and applications can assume this role Users of one account can be given roles to other 
    accounts.
        You assume an IAM role by calling the AWS Security Token Service (STS) Assume role API ie AssumeRole, 
    AssumeRoleWithWebIdentity and AssumeRoleWithSaml. These APIs return temporary security credentials that 
    applications can then use to sigm request to AWS service APIs.
        Only one role per instance A role can be assigned to a running EC2 instance or upon lunch.
    https://docs.aws.amazon.com/IAM/latest/UserGuide/intro-structure.html