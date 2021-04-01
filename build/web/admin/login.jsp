<%-- 
    Document   : index
    Created on : Jun 6, 2019, 7:59:52 PM
    Author     : Filmpy
--%>
<%@page import="condb.ConnDB"%>
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
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LOGIN</title>
        <link href="../plugins/bootstrap/css/bootstrap.css" type="text/css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css">

    </head>



    <body>

        <%
            boolean chk = false;

            if (request.getParameter("submit") != null) {
                Connection connect = ConnDB.connect();
                Statement s = null;

                try {

                    String username = request.getParameter("Username");

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
                    String password = generatedPassword;

                    s = connect.createStatement();

                    String sql = "SELECT * FROM admin WHERE "
                            + " Username = '" + username + "' AND "
                            + " Password = '" + password + "'";
                    ResultSet rec = s.executeQuery(sql);
                    if (!rec.next()) {
                        chk = true;
                    } else {
                        rec.first();
                        session.setAttribute("name", rec.getString("username"));
                        session.setAttribute("authen", "1");
                        response.sendRedirect("pages/dashboard");
                    }

                } catch (Exception e) {
                    out.println(e.getMessage());
                    e.printStackTrace();
                }
                try {
                    if (s != null) {
                        s.close();
                        connect.close();
                    }
                } catch (SQLException e) {
                    out.println(e.getMessage());
                    e.printStackTrace();
                }
            }


        %>
        <div class="container animated fadeInDown" style="margin-top: 20px;">
            <div class="alert alert-warning alert-dismissible fade <% if (chk) {
                    out.println(" " + "show");
                }%>" role="alert">
                Username หรือ Password ไม่ถูกต้อง!
            </div>
        </div>

        <div class="container animated fadeInDown" style="display:flex; justify-content: center; margin-top: 50px;">     
            <div class="card" style="background-color: cadetblue; width: 500px;">
                <div class="card-body">

                    <h1 style="text-align: center;">LOGIN</h1>
                    <form name="form1" method="post" action="#">
                        <label for="Username"><strong> Username </strong></label>
                        <input type="text" class="form-control" placeholder="Username" name ="Username" id="Username" autocomplete="off" required>


                        <label for="Password"><strong> Password </strong></label>
                        <input style="margin-bottom: 10px; " type="password" class="form-control" placeholder="Password" name ="Password" id="Password" required>

                        <button type="submit" class="btn btn-dark" name="submit" >LOGIN</button>

                    </form>
                </div>
            </div>
        </div>
        <script src="../plugins/jquery/jquery.js"></script>
        <script src="../plugins/bootstrap/js/bootstrap.js"></script>
        <script src="../plugins/popper/umd/popper.js"></script>

    </body>
</html>