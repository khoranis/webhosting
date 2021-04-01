<%-- 
    Document   : link
    Created on : Jun 6, 2019, 8:42:23 PM
    Author     : Filmpy
--%>

<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>NAVBAR</title>
  
    </head>
    <body>
        <nav class="navbar navbar-expand-lg" >
            <form method="post" action="../../logout.jsp" class="form-inline my-2 my-lg-0" style="padding-left: 1000px;">
                <label style="color: white; font-size: 20px; font-weight: 600px;margin-right: 10px;">User Login: <% out.println(session.getAttribute("name").toString());%></label>
                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">LOGOUT</button>
            </form>
        </nav>

    </body>
</html>
