<%-- 
    Document   : login
    Created on : Apr 23, 2020, 5:09:01 PM
    Author     : acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.security.*" %>
<%@ page import= "java.security.MessageDigest" %>
<%@ page import= "java.security.NoSuchAlgorithmException" %>
<%@ page import= "java.security.SecureRandom" %>
<%@ page import="condb.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LOGIN</title>
        <link href="../plugins/bootstrap/css/bootstrap.css" type="text/css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css">

    </head>



    <body>
        <%
//            Connection connect = null;
            Statement s = null;
            try {
                Class.forName("com.mysql.jdbc.Driver");
//                connect = DriverManager.getConnection("jdbc:mysql://localhost/webhosting" + "?user=root&password=");

                String passwordToHash = request.getParameter("Password");
                String generatedPassword = null;

                MessageDigest md = MessageDigest.getInstance("MD5");
                md.update(passwordToHash.getBytes());
                byte[] bytes = md.digest();
                StringBuilder sb = new StringBuilder();

                for (int i = 0; i < bytes.length; i++) {
                    sb.append(Integer.toString((bytes[i] & 0xff) + 0x100, 16).substring(1));
                }
                generatedPassword = sb.toString();
                String username = request.getParameter("Username");
                String password = generatedPassword;
                s = dbconnect.connect();

                String sql = "SELECT * FROM domain AS d INNER JOIN data_users AS du ON d.username = du.username WHERE "
                        + " du.username = '" + username + "' AND "
                        + " du.password = '" + password + "' AND "
                        + " d.accept = '1' ";
                ResultSet rec = s.executeQuery(sql);
                if (!rec.next()) {
                    response.sendRedirect("index.jsp");
                } else {
                    rec.first();
                    
                    session.setAttribute("name", rec.getString("username"));
                    session.setAttribute("authenuser", "1");
                    session.setAttribute("main", rec.getString("main"));
                    response.sendRedirect("dashboard.jsp");
                }
            } catch (Exception e) {
                out.println(e.getMessage());
                e.printStackTrace();
            }
            try {
                if (s != null) {
                    s.close();
//                    connect.close();
                }
            } catch (SQLException e) {
                out.println(e.getMessage());
                e.printStackTrace();
            }


        %>

    </body>
</html>
