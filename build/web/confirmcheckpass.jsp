<%-- 
    Document   : checkpass
    Created on : Jul 12, 2020, 9:24:21 PM
    Author     : khora
--%>
<%@page import="condb.ConnDB"%>
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CONFIRM</title>
    </head>
    <body>
        <%
            //Connection connect = null;
            Connection connect = ConnDB.connect();
            Statement s = null;
            if(request.getParameter("password")!=null) 
            {
                //Class.forName("com.mysql.jdbc.Driver");
                //connect = DriverManager.getConnection("jdbc:mysql://localhost/webhosting" + "?user=root&password=");
                String passwordToHash=request.getParameter("password"); 
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
                try
                {
                   
                   String sql = "SELECT * FROM data_users WHERE "
                            + " password = '" + password + "' AND "
                            + " username = '" + username + "'";
                    ResultSet rec = s.executeQuery(sql);
                    if(rec.next())               
                    {  
                        %>
                        <span class="text-success">Password success !</span>
                        <%
                    }
                    else
                    {
                        %>
                        <span class="text-danger">Password is available</span>
                        <%
                    }

                    connect.close(); //close connection
                }
                catch(Exception e)
                {
                    e.printStackTrace();
                }
            }
        %>
    </body>
</html>
