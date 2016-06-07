1. What are some common HTTP status codes?
   
   
   200 SERIES (SUCCESS)
   200 OK        : Standard response for successful HTTP requests.
   201 Created   : The request has been fulfilled and resulted in a new resource 
                   being created.
                   If resource cannot be created immediately should get "202 Accepted"
   204 No Content: The server successfully processed the request, but is not 
                   returning any content.
   
   300 SERIES (REDIRECION)
   304 Not Modified: Indicates the resource has not been modified since last requested.
   
   400 SERIES (CLIENT ERROR)
   400 Bad Request:  The request cannot be fulfilled due to bad syntax.
   401 Unauthorized: Similar to 403 Forbidden, but specifically for use when 
                     authentication 
                     is possible but has failed or not yet been provided.
   403 Forbidden:    The request was a legal request, but the server is refusing to 
                     respond to it. 
                     Unlike a 401 Unauthorized response, authenticating will make no   
                     difference.
   
   
   404 Not Found:    The requested resource could not be found but may be available 
   			         again in the future. 
   409 Conflict:     Indicates that the request could not be processed because of a 
                     resource conflict in the request, such as an edit conflict.
   
   500 SERIES (SERVER ERROR)
   500 Internal Server Error: A generic error message, given when no more specific
                              message is suitable.
   
   
   
   2. What is the difference between a GET request and a POST request? When might 
      each be used?
   
   
      GET:  Requests data from a specified resource
            GET requests can be cached, remain in the browser history, and can 
            be bookmarked
   
   
      POST: Submits data to be processed to a specified resource
            None of the above is true, POST is more secure for passwords and other 
            sensitive info.



   3. Optional bonus question: What is a cookie (the technical kind, not the delicious    
      kind)? How does it relate to HTTP requests?
   
      A cookie is a bit of data shared by a server with a client browser.  It can serve functions such as monitoring if a user remains logged in and with which account a user is logged in.  I can remember history of selections, as well as history of entries such as name, address, password and credit card information.  Designed in part to maintain security there are significant security concerns, and the belief among many that there are better, ,more secure, methods available today.




