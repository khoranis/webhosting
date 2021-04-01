<%-- 
    Document   : updateaccept
    Created on : Apr 23, 2020, 4:44:06 PM
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
        <title></title>
    </head>
    <body>


        <%
            Connection connect = null;
            Statement s = null;
            request.setCharacterEncoding("UTF-8");
            response.setContentType("text/html; charset=UTF-8");
            response.setCharacterEncoding("UTF-8");
            try {
                Class.forName("com.mysql.jdbc.Driver");

                connect = DriverManager.getConnection("jdbc:mysql://localhost/webhosting"
                        + "?user=root&password=");

                s = connect.createStatement();
                
                String strId = request.getParameter("id");
                
         

                String sql = "UPDATE domain "
                        + "SET accept = '1'"
                        + " WHERE domain_name = '" + strId + "' ";
                s.executeUpdate(sql);

                response.sendRedirect("index.jsp");

            } catch (Exception e) {
                // TODO Auto-generated catch block
                out.println(e.getMessage());
                e.printStackTrace();
            }

            try {
                if (s != null) {
                    s.close();
                    connect.close();
                }
            } catch (SQLException e) {
                // TODO Auto-generated catch block
                out.println(e.getMessage());
                e.printStackTrace();
            }
        %>
    </body>
</html>
