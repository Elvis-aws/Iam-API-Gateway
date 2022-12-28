

Logging and Tracing
    Cloudwatch logs
        Enable logging at stage level
        Log error, info, debug
        Logs contain info about request and body
    X-Ray
        Enable tracing at stage level
    Cloudwatch metrics
        Metrics are at stage level, detail monitoring can be configured
        CacheHitcount/CacheMissCount efficiency
        Integration latency
            The time between sending and receiving request/response to the backend
        Latency
            The time between receiving and sending request/response to the client
        Max time to make a request is 29 seconds