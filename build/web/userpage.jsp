<%-- 
    Document   : userpage
    Created on : Apr 23, 2020, 5:26:50 PM
    Author     : acer
--%>

<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="plugins/bootstrap/css/bootstrap.css" type="text/css" rel="stylesheet">
        <link href="assets/style.css" type="text/css" rel="stylesheet">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css">
        <title>USERPAGE</title>
    </head>
    <body>
        <% Connection connect = null;
            Statement s = null;
            String id = String.valueOf(session.getAttribute("name"));
            try {
                Class.forName("com.mysql.jdbc.Driver");

                connect = DriverManager.getConnection("jdbc:mysql://localhost/webhosting"
                        + "?user=root&password=");

                s = connect.createStatement();

                String sql = "SELECT * FROM data_users AS du INNER JOIN domain AS d ON du.username = d.username WHERE d.username = '" + id + "' ";

                ResultSet rec = s.executeQuery(sql);

                if (rec != null) {
                    rec.next();
        %>
        <%@include  file="navbar.jsp" %>
      
        <div class="container paper"  style="margin-top: 85px;margin-bottom: 15px">
             <a href="dashboard.jsp">ย้อนกลับ <i class="fa fa-arrow-circle-left"></i></a>
            <h1 class="border-short-bottom text-center" style="color:#345d7c; ">ยินดีต้อนรับ</h1>

            <form name="form1" method="post" action="edit.jsp?id=<%=rec.getString("username")%>" class="needs-validation" novalidate >
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="name" style="color: black;">Domain</label>
                            <input type="text" class="form-control" id="domain" name="domain" value=" <%=rec.getString("domain_name")%>" readonly>
                        </div>
   
                        <div class="form-group">
                            <label for="name" style="color: black;">ชื่อจริง</label>
                            <input type="text" class="form-control" id="name" name="name" value=" <%=rec.getString("name")%>" readonly>
                        </div>
                        <div class="form-group">
                            <label for="email" style="color: black;">Email address</label>
                            <input type="email" class="form-control" id="email1" name="email" value=" <%=rec.getString("email")%>" readonly>
                        </div>
                        <div class="form-group">
                            <label for="address" style="color: black;">ที่อยู่</label>
                            <input type="text" class="form-control" id="address" name ="address" value=" <%=rec.getString("address")%>" readonly>
                        </div>
                        <div class="form-group">
                            <label for="province" style="color: black;">รหัสบัตรประชาชน</label>
                            <input type="text" class="form-control" id="idcard" name ="idcard" value="<%=rec.getString("idcard")%>" readonly>
                        </div>
                        <div class="form-group" style="margin-top: 50px;">
                            <button onclick="Edituser()" class="btn btn-sm btn-edit" type="submit" style="width: 50%; " >EditData</button>
                        </div>
                    </div>


                    <div class="col-md-6">
                         <div class="form-group">
                            <label for="name" style="color: black;">Username</label>
                            <input type="text" class="form-control" id="username" name="username" value=" <%=rec.getString("username")%>" readonly>
                        </div>
                        <div class="form-group">
                            <label for="lastname" style="color: black;">นามสกุล</label>
                            <input type="text" class="form-control" id="lastname" name="lastname" value=" <%=rec.getString("lastname")%>" readonly>
                        </div>
                        <div class="form-group">
                            <label for="phone" style="color: black;">เบอร์โทร</label>
                            <input type="text" class="form-control" id="phone" name="phone" value=" <%=rec.getString("phone")%>" readonly>
                        </div>
                        <div class="form-group">
                            <label for="province" style="color: black;">จังหวัด</label>
                            <input type="text" class="form-control" id="province" name="province" value=" <%=rec.getString("province")%>" readonly>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-6">
                                    <label for="amphoe" style="color: black;">อำเภอ/เขต</label>
                                    <input type="text" class="form-control" id="amphoe" name="amphoe" value=" <%=rec.getString("amphoe")%>" readonly>
                                </div>
                                <div class="col-md-6">
                                    <label for="district" style="color: black;">เเขวง/ตำบล</label>
                                    <input type="text" class="form-control" id="district" name="district" value=" <%=rec.getString("district")%>" readonly>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="postalcode" style="color: black;">รหัสไปรษณีย์</label>
                            <input type="text" class="form-control" id="postalcode" name="postalcode" value=" <%=rec.getString("postalcode")%>" readonly>
                        </div>
                    </div>
                </div>
            </form>
        </div>







        <%@include  file="footer.jsp" %>
        <% }
                
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
        %>

        <script src="plugins/jquery/jquery.js"></script>
        <script src="plugins/bootstrap/js/bootstrap.js"></script>
        <script src="plugins/popper/umd/popper.js"></script>
        <script>
                                function Edituser() {
                                    confirm("ต้องการแก้ไขข้อมูลใช่หรือไม่!");
                                }
        </script>

    </body>
</html>
