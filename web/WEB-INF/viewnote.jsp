<%-- 
    Document   : viewnote
    Created on : 30-Jan-2023, 9:38:38 AM
    Author     : Densa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Note</title>
    </head>
    <body>
        <h1>
            Simple Note Keeper
        </h1>
        <h2>
            View Note
        </h2>
        <div>
            <p>
                <b>Title: </b>${note.title}
            </p>
        </div>
        <div>
            <p>
                <b>Contents</b><br>${note.contents}
            </p>
        </div>
        <div>
            <a href="noteServlet">Edit</a>
        </div>  
    </body>
</html>
