<%-- 
    Document   : datausers
    Created on : May 13, 2020, 5:06:00 PM
    Author     : acer
--%>
<%@page import="condb.ConnDB"%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!doctype html>
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
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css">
        <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
        <title>DATAUSER</title>
    </head>
    <body>
        <%
            //Connection connect = null;
            Connection connect = ConnDB.connect();
            Statement s = null;

            try {
                //Class.forName("com.mysql.jdbc.Driver");

                //connect = DriverManager.getConnection("jdbc:mysql://localhost/webhosting" + "?user=root&password=");

                //s = connect.createStatement(ResultSet.TYPE_FORWARD_ONLY,
                        //ResultSet.CONCUR_READ_ONLY);
                s = connect.createStatement();
                
                String sql = "";
                String name = String.valueOf(session.getAttribute("name"));
                ResultSet rec = null;

                sql = "SELECT * FROM domain WHERE username='" + name + "'";
                rec = s.executeQuery(sql);
                if (rec.next()) {
                    sql = "SELECT * FROM domain AS d INNER JOIN data_users AS du ON d.username = du.username WHERE d.domain_name ='" + rec.getString("domain_name") + "'";
                    rec = s.executeQuery(sql);
                }

        %>
        <%@include  file="navbar.jsp" %>
        <div style="margin-top: 85px;margin-bottom: 15px" class="container paper">
            <div class="table-responsive">
                <div class="mb-3">
                    <a href="dashboard.jsp" >ย้อนกลับ <i class="fa fa-arrow-circle-left"></i></a>
                </div>
                <table class="table " style="background-color: white; margin-bottom: 0px;" >
                    <thead>
                        <tr style="background-color: gray; color: wheat;">
                            <th>User Name</th>
                            <th>Password</th>
                            <th>E-mail</th>     
                        </tr>
                    </thead>
                    <tbody> 
                        <%while ((rec != null) && (rec.next())) {
                        %>
                        <tr>
                            <td><%=rec.getString("username")%></td>
                            <td><input value="<%=rec.getString("password")%>" type="password" class="form-control" disabled></input></td>
                            <td><%=rec.getString("email")%></td>
                        </tr> 
                        <%}%>
                    </tbody>
                </table> 
            </div>
            <form name="form1" method="post" action="addform.jsp" >
                <div class="row mt-3">
                    <div class="col-md-4">
                        <input type="email" placeholder="email@.com" class="form-control" name="email" required>
                    </div>
                    <div class="col-md-4">
                        <button class="btn btn-success" type="submit">เพิ่มผู้ใช้งาน</button>
                    </div>
                </div>
            </form>
        </div>


        <% } catch (Exception e) {
                // TODO Auto-generated catch block
                out.println(e.getMessage());
                e.printStackTrace();
            }

            try {
                if (s != null) {
                    s.close();
                    //connect.close();
                }
            } catch (SQLException e) {
                // TODO Auto-generated catch block
                out.println(e.getMessage());
                e.printStackTrace();
            }
        %>
        <%@include  file="footer.jsp" %>
        <script src="plugins/jquery/jquery.js"></script>
        <script src="plugins/bootstrap/js/bootstrap.js"></script>
        <script src="plugins/popper/umd/popper.js"></script>
    </body>
</html>
