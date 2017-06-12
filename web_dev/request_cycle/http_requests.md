# Common HTTP Errors

404 Not Found: the requested resource is not available at that location.

403 Forbidden: you are not allowed to view the requested resource.

500 Internal Server Error: catch-all error for web server issues.

503 Service Unavailable: the web server is unavailable at this time.

504 Gateway Timeout: indicates a timeout in the connection between the proxy server and the secondary web server (i.e DNS issue, etc.)

# GET vs. POST

POST and GET are both HTTP request methods. GET is usually intended to retrieve and use a limited amount of data. The data is transmitted as parameters appended to the URL, so it is visible to the user. If you were asking your user one or two questions to direct them to a certain page on your site, you might use GET.

POST is intended for changing the server state. It carries more data, and is more secure because the data is not visible in the URL.  You'd use POST for forms, comment posting, shopping carts, etc.

# Cookies

A cookie is a small piece of data sent from a website and stored on the user's computer by the user's web browser while the user is browsing, to remember browsing history or state-based info.



