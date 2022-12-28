

API Gateway caching
    Reduces number of calls made to backend
    TTL is 300 seconds default (min: 0s, max: 3600s/1h)
    1 cache per stage
    Encryption option
    Size is 0.5GB to 273GB
    Invalidate or flush cache
    Clients can invalidate using header.Cache-Control:max-age=0(With proper IAM auth)
    Use invalidate cache policy
