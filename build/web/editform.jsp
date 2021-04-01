<%-- 
    Document   : editform
    Created on : Apr 24, 2020, 12:14:41 AM
    Author     : acer
--%>
<%@page import="condb.ConnDB"%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="condb.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="plugins/bootstrap/css/bootstrap.css" type="text/css" rel="stylesheet">
        <link href="assets/style.css" type="text/css" rel="stylesheet">
        <title>EDIT</title>
    </head>
    <body>
        <%
           //Connection connect = null;
           Connection connect = ConnDB.connect();
            Statement s = null;
            request.setCharacterEncoding("UTF-8");
            response.setContentType("text/html; charset=UTF-8");
            response.setCharacterEncoding("UTF-8");
            try {
                //Class.forName("com.mysql.jdbc.Driver");

                s = connect.createStatement();

                String strId = request.getParameter("id");

                String strUsername = request.getParameter("username").toString().trim();
                String strName = request.getParameter("name");
                String strEmail = request.getParameter("email");
                String strAddress = request.getParameter("address");
                String strProvince = request.getParameter("province").split(" ")[1];
                String strIdcard = request.getParameter("idcard");
                String strLastname = request.getParameter("lastname");
                String strPhone = request.getParameter("phone");
                String strAmphoe = request.getParameter("amphur").split(" ")[1];
                String strPostalcode = request.getParameter("postalcode");
                String strDistrict = request.getParameter("district").split(" ")[1];
                out.println(strPhone);
                
                String sql = "UPDATE data_users "
                        + "SET name = '" + strName + "' "
                        + ", email = '" + strEmail + "' "
                        + ", address = '" + strAddress + "' "
                        + ", province = '" + strProvince + "' "
                        + ", lastname = '" + strLastname + "' "
                        + ", phone = '" + strPhone + "' "
                        + ", amphoe = '" + strAmphoe + "' "
                        + ", postalcode = '" + strPostalcode + "' "
                        + ", username = '" + strUsername + "' "
                        + ", district = '" + strDistrict + "' "
                        + ", idcard = '" + strIdcard + "' "
                        + " WHERE username = '" + strId + "' ";
                
                s.executeUpdate(sql);

                response.sendRedirect("userpage.jsp");

            } catch (Exception e) {
                // TODO Auto-generated catch block
                out.println(e.getMessage());
                e.printStackTrace();
            }

            try {
                if (s != null) {
                    s.close();
                }
            } catch (SQLException e) {
                // TODO Auto-generated catch block
                out.println(e.getMessage());
                e.printStackTrace();
            }
        %>

        <script src="plugins/jquery/jquery.js"></script>
        <script src="plugins/bootstrap/js/bootstrap.js"></script>
        <script src="plugins/popper/umd/popper.js"></script>
    </body>
</html>
