<%-- 
    Document   : index.jsp
    Created on : Apr 6, 2020, 5:24:38 PM
    Author     : acer
--%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>WELCOME</title>
    </head>
    <body style="background-image: linear-gradient(rgba(0,0,0,0.6),rgba(0,0,0,0.6)),url(assets/123.jpg);">
        <%@include  file="navbar.jsp" %>
        <div class="title">
            <p><h1><strong>WELCOME TO</strong></h1></p>
            <p><h1>WEBHOSTING</h1></p>
        </div>
        <div class="button">
            <a href="regis.jsp" style="text-decoration: none;" class="btn-index">Register</a>
        </div>  
        <footer style="margin-top: 500px;">
        <%@include  file="footer.jsp" %>
        </footer>
        <script src="plugins/jquery/jquery.js"></script>
        <script src="plugins/bootstrap/js/bootstrap.js"></script>
        <script src="plugins/popper/umd/popper.js"></script>
</body>
</html>
