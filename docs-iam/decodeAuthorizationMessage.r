
******************************
sts:DecodeAuthorizationMessage
******************************
  Decodes additional information about the authorization status of a request from an encoded message returned 
in response to an AWS request. The message is encoded because the details of the authorization status can 
contain privileged information that the user who requested the operation should not see. To decode an 
authorization status message, a user must be granted permissions through an IAM policy to request the 
DecodeAuthorizationMessage (sts:DecodeAuthorizationMessage) action.

{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "decodepolicy",
      "Effect": "Allow",
      "Action": "sts:DecodeAuthorizationMessage",
      "Resource": "*"
    }
  ]
}

API Call: aws sts decode-authorization-message --encoded-message <value>
