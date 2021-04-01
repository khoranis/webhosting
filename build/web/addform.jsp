<%-- 
    Document   : addform
    Created on : May 13, 2020, 5:44:46 PM
    Author     : acer
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
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ADDFORM</title>
    </head>
    <body>
        <%
            Connection connect = null;
            Statement s = null;
            String sql = "";
            String username = request.getParameter("email");
            String key = UUID.randomUUID().toString();
            String[] pass = key.split("-");
            
            request.setCharacterEncoding("UTF-8");
            response.setContentType("text/html; charset=UTF-8");
            response.setCharacterEncoding("UTF-8");
            try {
                Class.forName("com.mysql.jdbc.Driver");

                connect = DriverManager.getConnection("jdbc:mysql://localhost/webhosting"
                        + "?user=root&password=");

                s = connect.createStatement();

                String name = String.valueOf(session.getAttribute("name"));

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

                sql = "SELECT COUNT(username)as a FROM data_users WHERE username = '" + username + "'";
                ResultSet rec = s.executeQuery(sql);
                if (rec.next()) {

                    if (rec.getString("a").equals("1")) {

        %>
        <span class="text-success">username is exis ! <a href="datausers.jsp">กลับไปหน้าหลัก</a></span>
        <%                    } else {
                        sql = "INSERT INTO data_users "
                                + "(username,password,email) "
                                + "VALUES ('" + username + "' "
                                + ",'" + strPassword + "' "
                                + ",'" + username + "') ";
                        s.executeUpdate(sql);

                        if (s != null) {
                            sql = "SELECT domain_name FROM domain WHERE username ='" + name + "'";
                            rec = s.executeQuery(sql);
                            String link = "http://localhost:8080/Webhosting/index.jsp/newuser.jsp?id=" + username;
                            if (rec.next()) {
                                sql = "INSERT INTO domain "
                                        + "(domain_name,username,main,accept,link) "
                                        + "VALUES ('" + rec.getString("domain_name") + "' "
                                        + ",'" + username + "'"
                                        + ",0,'0','" + link + "')";
                                s.executeUpdate(sql);
                                response.sendRedirect("datausers.jsp");
                            }
                        }
                    }
                }

            } catch (Exception e) {
                sql = "DELETE FROM data_users "
                        + " WHERE username = '" + username + "' ";
                s.executeUpdate(sql);
                if (s != null) {
                    s.close();
                    connect.close();
                }
                out.println(e.getMessage());
                e.printStackTrace();
            }

        %>
    </body>
</html>
