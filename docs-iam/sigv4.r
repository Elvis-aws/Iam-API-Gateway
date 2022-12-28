
*****************************
How Signature Version 4 works
*****************************
    - Create a canonical request.
    - Use the canonical request and additional metadata to create a string for signing.
    - Derive a signing key from your AWS secret access key. Then use the signing key, and the string from 
      the previous 
    step, to create a signature.
    - Add the resulting signature to the HTTP request in a header or as a query string parameter.
    - When an AWS service receives the request, it performs the same steps that you did to calculate the 
      signature you sent in your request. AWS then compares its calculated signature to the one you sent 
      with the request. If the signatures match, the request is processed. If the signatures dont match, 
      the request is denied.

GET https://iam.amazonaws.com/?Action=ListUsers&Version=2010-05-08 HTTP/1.1
Content-Type: application/x-www-form-urlencoded; charset=utf-8
Host: iam.amazonaws.com
X-Amz-Date: 20150830T123600Z


GET https://iam.amazonaws.com/?Action=ListUsers&Version=2010-05-08 HTTP/1.1
Authorization: AWS4-HMAC-SHA256 Credential=AKIDEXAMPLE/20150830/us-east-1/iam/aws4_request, 
SignedHeaders=content-type;host;x-amz-date, Signature=5d672d79c15b13162d9279b0855cfba6789a8edb4c82c400e06b5924a6f2b5d7
content-type: application/x-www-form-urlencoded; charset=utf-8
host: iam.amazonaws.com
x-amz-date: 20150830T123600Z