<%-- 
    Document   : delete
    Created on : Jul 11, 2019, 9:56:15 PM
    Author     : Filmpy
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
            String sql = "";
            String strId = request.getParameter("id");
            try {
                Class.forName("com.mysql.jdbc.Driver");

                connect = DriverManager.getConnection("jdbc:mysql://localhost/webhosting"
                        + "?user=root&password=");

                s = connect.createStatement();

                sql = "DELETE FROM data_users "
                        + " WHERE username = '" + strId + "' ";
                s.executeUpdate(sql);
            } catch (Exception e) {
                out.println(e.getMessage());
                e.printStackTrace();
            }

            try {
                if (s != null) {
                    sql = "DELETE FROM domain "
                            + " WHERE username = '" + strId + "' ";
                    s.executeUpdate(sql);

                    if (s != null) {
                        s.close();
                        connect.close();
                        response.sendRedirect("index.jsp");
                    }

                }
            } catch (SQLException e) {
                out.println(e.getMessage());
                e.printStackTrace();
            }
        %>
    </body>
</html>

