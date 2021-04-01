<%-- 
    Document   : dashboard
    Created on : May 10, 2020, 4:28:25 PM
    Author     : acer
--%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html>
<%@ page import="java.security.*" %>
<%@ page import= "java.security.MessageDigest" %>
<%@ page import= "java.security.NoSuchAlgorithmException" %>
<%@ page import= "java.security.SecureRandom" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="plugins/bootstrap/css/bootstrap.css" type="text/css" rel="stylesheet">
        <link href="assets/style.css" type="text/css" rel="stylesheet">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css">
        <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
        <title>DASHBOARD</title>
    </head>
    <body>
        <%@include  file="navbar.jsp" %>
        <div style="margin-top: 85px;margin-bottom: 15px" class="container paper">
            <h3 style="margin-bottom: 25px ">เมนูการใช้งาน</h3>

            <p style="margin: 0px">ข้อมูลของคุณ</p>
            <hr style="margin-top: 0px">

            <div class="container">
                <div class="row">
                    <div class="col-md-3 pl-0">
                        <div class="card" >
                            <div class="card-body">
                                <div style="display: flex;
                                     align-items: center;
                                     justify-content: space-around;">
                                    <div class="icon">
                                        <i class="ion ion-ios-cog" style="font-size: 60px;;"></i>
                                    </div>
                                    <p class="card-title ml-3">รายละเอียดข้อมูลส่วนตัว</p>  
                                </div>
                                <a href="userpage.jsp">More info <i class="fa fa-arrow-circle-right"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 pl-0">
                        <div class="card" >
                            <div class="card-body">
                                <div style="display: flex;
                                     align-items: center;
                                     justify-content: space-around;">
                                    <div class="icon">
                                        <i class="ion ion-android-unlock" style="font-size: 60px;;"></i>
                                    </div>
                                    <p class="card-title ml-3">เปลี่ยนรหัสผ่าน</p>  
                                </div>
                                <a href="checkpass.jsp">More info <i class="fa fa-arrow-circle-right"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <% if (String.valueOf(session.getAttribute("main")).equals("0")) {
            %> 
            <p style="margin-bottom: 0px;margin-top: 15px">จัดการ</p>
            <hr style="margin-top: 0px">
            <div class="col-md-3 pl-0" >
                <div class="card" >
                    <div class="card-body">
                        <div style="display: flex;
                             align-items: center;
                             justify-content: space-around;">
                            <div class="icon">
                                <i class="ion ion-email" style="font-size: 60px;;"></i>
                            </div>
                            <p class="card-title ml-3">ตรวจสอบอีเมล</p>  
                        </div>
                        <a href="#">More info <i class="fa fa-arrow-circle-right"></i></a>
                    </div>
                </div>
            </div>
            <%} else {%>
            <p style="margin-bottom: 0px;margin-top: 15px">จัดการ</p>
            <hr style="margin-top: 0px">
            <div class="container">
                <div class="row">
                    <div class="col-md-3 pl-0" >
                        <div class="card" >
                            <div class="card-body">
                                <div style="display: flex;
                                     align-items: center;
                                     justify-content: space-around;">
                                    <div class="icon">
                                        <i class="ion ion-person-add" style="font-size: 60px;;"></i>
                                    </div>
                                    <p class="card-title ml-3">เพิ่มผู้ใช้งาาน</p>  
                                </div>
                                <a href="datausers.jsp">More info <i class="fa fa-arrow-circle-right"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 pl-0" >
                        <div class="card" >
                            <div class="card-body">
                                <div style="display: flex;
                                     align-items: center;
                                     justify-content: space-around;">
                                    <div class="icon">
                                        <i class="ion ion-email" style="font-size: 60px;;"></i>
                                    </div>
                                    <p class="card-title ml-3">ตรวจสอบอีเมล</p>  
                                </div>
                                <a href="#">More info <i class="fa fa-arrow-circle-right"></i></a>
                            </div>
                        </div>
                    </div>
                    <% }%>
                </div>
            </div>    

        </div>



        <%@include  file="footer.jsp" %>
        <script src="plugins/jquery/jquery.js"></script>
        <script src="plugins/bootstrap/js/bootstrap.js"></script>
        <script src="plugins/popper/umd/popper.js"></script>
    </body>
</html>
