<%-- 
    Document   : regisform
    Created on : Apr 28, 2020, 6:00:59 PM
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
<%@ page import="java.util.UUID"%>
<%@ page import="java.nio.charset.Charset"%>
<%@ page import="java.util.Random"%>
<%@ page import="condb.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>REGISTER</title>
    </head>
    <body>
        <% 
            Statement s = null;
            request.setCharacterEncoding("UTF-8");
            response.setContentType("text/html; charset=UTF-8");
            response.setCharacterEncoding("UTF-8");

            try {
                Class.forName("com.mysql.jdbc.Driver");
//                connect = DriverManager.getConnection("jdbc:mysql://localhost/webhosting?user=root&password=");

                s = dbconnect.connect();
                String key = UUID.randomUUID().toString();
                String[] pass = key.split("-");

                String strDomain_name = request.getParameter("namedomain") + request.getParameter("type");
                String strUsername = request.getParameter("email");

                String passwordToHash = pass[0];
                String generatedPassword = null;
                MessageDigest md = MessageDigest.getInstance("MD5");
                md.update(passwordToHash.getBytes());
                byte[] bytes = md.digest();
                StringBuilder sb = new StringBuilder();
                for (int i = 0; i < bytes.length; i++) {
                    sb.append(Integer.toString((bytes[i] & 0xff) + 0x100, 16).substring(1));
                }
                generatedPassword = sb.toString();
                String strPassword = generatedPassword;
                String sql = "";

                sql = "INSERT INTO data_users "
                        + "(username,password,email) "
                        + "VALUES ('" + strUsername + "' "
                        + ",'" + strPassword + "'"
                        + ",'" + request.getParameter("email") + "' ) ";
                s.executeUpdate(sql);
                if (s != null) {
                    sql = "INSERT INTO domain "
                            + "(domain_name,username,main) "
                            + "VALUES ('" + strDomain_name + "' "
                            + ",'" + strUsername + "'"
                            + ",1)";
                    s.executeUpdate(sql);
                    if (s != null) {
                        out.println("Record Inserted Successfully");
                        session.setAttribute("username", strUsername);
                        session.setAttribute("password", pass[0]);
                        response.sendRedirect("altregis.jsp");
                    }
                }
                s.close();
//                connect.close();
            } catch (Exception e) {
                out.println(e.getMessage());
                e.printStackTrace();
            }
        %> 
    </body>
</html>
