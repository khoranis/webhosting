<%-- 
    Document   : index.jsp
    Created on : Apr 6, 2020, 5:24:38 PM
    Author     : acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>INDEX</title>
    </head>
    <body>
        <% 
            String authen = String.valueOf(session.getAttribute("authen"));
            if (authen.equals("null")){
             response.sendRedirect("login.jsp");
            }else {
                session.removeAttribute("authen");
                response.sendRedirect("login.jsp");
            }   
        %> 
    </body>
</html>
