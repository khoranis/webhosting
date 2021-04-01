<%-- 
    Document   : logout
    Created on : Apr 4, 2020, 4:07:29 PM
    Author     : acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LOGOUT</title>
    </head>
    <body>
        <% 
            session.setAttribute("state", "");
            session.setAttribute("name", "");
            session.setAttribute("id", "");
            session.setAttribute("authenuser", null);
            response.sendRedirect("index.jsp");
        %> 
    </body>
</html>
