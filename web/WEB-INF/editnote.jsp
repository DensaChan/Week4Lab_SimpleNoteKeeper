<%-- 
    Document   : editnote
    Created on : 30-Jan-2023, 9:38:47 AM
    Author     : Densa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Note</title>
    </head>
    <body>
        <h1>
            Simple Note Keeper
        </h1>
        <h2>
            View Note
        </h2>
        <div>
            <form action="note" method="post">
            <b>Title: </b><input type="text" name=="title" value="${note.title}"
        </div>
        <div>
            <b>Contents: </b>
            <textarea name=="conttents" rows="15" cols="50">${note.contents}</textarea>
            <input type="submit" value="Save">
            </form>
        </div>
    </body>
</html>
