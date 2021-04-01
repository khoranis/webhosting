<%-- 
    Document   : edit
    Created on : Apr 24, 2020, 12:14:17 AM
    Author     : acer
--%>

<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <link href="plugins/bootstrap/css/bootstrap.css" type="text/css" rel="stylesheet">
            <link href="assets/style.css" type="text/css" rel="stylesheet">
            <link href="AutoProvince.js" type="text/javascript">
            <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css">
    <title>EDIT</title>
    </head>

                            <%
                                Connection connect = null;
                                Statement s = null;
                                String id = request.getParameter("id");
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
                            <div style="margin-top: 85px;margin-bottom: 15px" class="container paper">
                                <a href="userpage.jsp">ย้อนกลับ <i class="fa fa-arrow-circle-left"></i></a>
                                <h1 class="border-short-bottom text-center" style="color:#345d7c; ">แก้ไขข้อมูล</h1>
                                <form name="form1" method="post" action="editform.jsp?id=<%=rec.getString("username")%>" >
                                    <div class="row">
                                        <div class="col-md-6">

                                            <div class="form-group">
                                                <label for="name" style="color: black;">Domain</label>
                                                <input type="text" class="form-control" id="domain" name="domain" value="<%=rec.getString("domain_name")%>" readonly>
                                            </div>
                                            
                                            <div class="form-group">
                                                <label for="name" style="color: black;">ชื่อจริง</label>
                                                <input type="text" class="form-control" id="name" name="name" value="<%=rec.getString("name")%>" autocomplete="off">
                                            </div>
                                            <div class="form-group">
                                                <label for="email" style="color: black;">Email address</label>
                                                <input type="email" class="form-control" id="email1" name="email" value="<%=rec.getString("email")%>" autocomplete="off">
                                            </div>
                                            <div class="form-group">
                                                <label for="address" style="color: black;">ที่อยู่</label>
                                                <input type="text" class="form-control" id="address" name ="address" value="<%=rec.getString("address")%>" autocomplete="off">
                                            </div>
                                            <div class="form-group">
                                                <label for="idcard" style="color: black;">รหัสบัตรประชาชน</label>
                                                <input type="text" class="form-control" id="idcard" name ="idcard" value="<%=rec.getString("idcard")%>" autocomplete="off">
                                            </div>

                                            <div class="form-group" style="margin-top: 50px;">
                                                <button onclick="saveEdituser()" class="btn btn-sm btn-save" type="submit" style="width: 50%; " >Save</button>
                                            </div>
                                        </div>


                                        <div class="col-md-6">
                                          <div class="form-group">
                                                <label for="name" style="color: black;">Username</label>
                                                <input type="text" class="form-control" id="username" name="username" value="<%=rec.getString("username")%>" autocomplete="off">
                                            </div>
                                            <div class="form-group">
                                                <label for="lastname" style="color: black;">นามสกุล</label>
                                                <input type="text" class="form-control" id="lastname" name="lastname" value="<%=rec.getString("lastname")%>" autocomplete="off">
                                            </div>
                                            <div class="form-group">
                                                <label for="phone" style="color: black;">เบอร์โทร</label>
                                                <input type="text" class="form-control" id="phone" name="phone" value="<%=rec.getString("phone")%>" autocomplete="off">
                                            </div>
                                            <div class="form-group">
                                                <label for="province" style="color: black;">จังหวัด</label>
                                                <select class="custom-select" name ="province" id="province">
                                                    <option>- กรุณาเลือกจังหวัด -</option>
                                                </select>

                                            </div>
                                            <div class="form-group">
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <label for="amphoe" style="color: black;">อำเภอ/เขต</label>
                                                        <select class="custom-select" name="amphur" id="amphur">
                                                            <option>- กรุณาเลือกอำเภอ -</option>
                                                        </select>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <label for="district" style="color: black;">เเขวง/ตำบล</label>
                                                        <select class="custom-select" name="district" id="district">
                                                            <option>- กรุณาเลือกตำบล -</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>  
                                            <div class="form-group">
                                                <label for="postalcode" style="color: black;">รหัสไปรษณีย์</label>
                                                <input type="text" class="form-control" id="postcode" name="postalcode" value="<%=rec.getString("postalcode")%>" autocomplete="off">
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>



                            <%@include  file="footer.jsp" %>
                            <% }
                                    //input type="text" name="txtPassword" size="20" value="
                                } catch (Exception e) {
                                    // TODO Auto-generated catch block
                                    out.println(e.getMessage());
                                    e.printStackTrace();
                                }

                                try {
                                    if (s != null) {
                                        s.close();
                                        connect.close();
                                    }
                                } catch (SQLException e) {
                                    // TODO Auto-generated catch block
                                    out.println(e.getMessage());
                                    e.printStackTrace();
                                }
                            %> 
                            <body>
                                <script src="plugins/jquery/jquery.js"></script>
                                <script src="plugins/bootstrap/js/bootstrap.js"></script>
                                <script src="plugins/popper/umd/popper.js"></script>
                                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
                                <script type="text/javascript" src="AutoProvince.js"></script>
                                <script>
                                                    $('body').AutoProvince({
                                                        PROVINCE: '#province', // select div สำหรับรายชื่อจังหวัด
                                                        AMPHUR: '#amphur', // select div สำหรับรายชื่ออำเภอ
                                                        DISTRICT: '#district', // select div สำหรับรายชื่อตำบล
                                                        POSTCODE: '#postcode', // input field สำหรับรายชื่อรหัสไปรษณีย์
                                                        arrangeByName: false // กำหนดให้เรียงตามตัวอักษร
                                                    });
                                </script>

                            </body>
                            </html>
