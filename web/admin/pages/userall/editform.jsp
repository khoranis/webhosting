<%-- 
    Document   : editform
    Created on : Jul 6, 2019, 11:10:34 PM
    Author     : Filmpy
--%>

<%@page import="java.util.UUID"%>
<%@page import="java.nio.charset.Charset"%>
<%@page import="java.util.Random"%>
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
<%@ page import="java.util.UUID"%>
<%@ page import="java.nio.charset.Charset"%>
<%@ page import="java.util.Random"%>
<%@page import="java.sql.PreparedStatement"%>

<html>
    <head>
        <title></title>
    </head>
    <body>


       <%
            Connection connect = null;
            Statement s = null;
            Class.forName("com.mysql.jdbc.Driver");
            connect = DriverManager.getConnection("jdbc:mysql://localhost/webhosting" + "?user=root&password=");
            String passwordToHash = request.getParameter("password"); //getable "uname" store in new "user_name variable"
            String generatedPassword = null;
            MessageDigest md = MessageDigest.getInstance("MD5");
            md.update(passwordToHash.getBytes());
            byte[] bytes = md.digest();
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < bytes.length; i++) {
                sb.append(Integer.toString((bytes[i] & 0xff) + 0x100, 16).substring(1));
            }
            generatedPassword = sb.toString();

            String password = generatedPassword;
            String username = request.getParameter("username");
            s = connect.createStatement();
            try {
                String sql = "UPDATE admin "
                        + "SET password = '" + password + "' "
                        + "WHERE username = '" + username + "' ";
                s.executeUpdate(sql);
                if (s != null) {
        %>
        <span class="text-success">change password success ! <a href="../dashboard/">กลับไปหน้าหลัก</a></span>
        <%
        } else {
        %>
        <span class="text-danger">ข้อมูลผิดพลาด!</span>
        <%
                }
                connect.close(); //close connection
            } catch (Exception e) {
                e.printStackTrace();
            }

        %>
    </body>
</html>