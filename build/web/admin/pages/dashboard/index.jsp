<%-- 
    Document   : index
    Created on : Apr 6, 2020, 6:04:38 PM
    Author     : acer
--%>

<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!doctype html>
<html>
    <head>
        <title>ADMIN</title>
        <link href="../../../plugins/bootstrap/css/bootstrap.css" type="text/css" rel="stylesheet">
        <link href="../../../style.css" type="text/css" rel="stylesheet">
        <link href="../../../teststyle.css" rel="stylesheet" type="text/css" >
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css">
        <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">

    </head>
    <body>

        <div class="animation-area">
            <ul class="box-area">
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
            </ul>
            <%@include  file="../../include/navbar.jsp" %>  
            <div class="container">
                <div class="row" style="padding-top: 10px;">
                    <div class="col-md-3">
                        <%@include file="../../include/datauser.jsp" %>  
                    </div>

                    <div class="col-md-9" style="padding-left: 30px;">
                        <h1 style="margin-bottom: 0px; color: white">ยินดีตอนรับ,<% out.println(session.getAttribute("name").toString());%></h1>
                        <hr style="margin-top: 8px;background-color: white;">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-3">
                                    <div class="card" >
                                        <div class="card-body">
                                            <div style="display: flex;
                                                 align-items: center;
                                                 justify-content: space-around;">
                                                <div class="icon">
                                                    <i class="ion ion-android-contact" style="font-size: 60px;;"></i>
                                                </div>
                                                <h5 class="card-title">User</h5>  
                                            </div>
                                            <a href="../userall/">More info <i class="fa fa-arrow-circle-right"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <%@include  file="../../include/footer.jsp" %>

        <script src="../../../plugins/jquery/jquery.js"></script>
        <script src="../../../plugins/bootstrap/js/bootstrap.js"></script>
        <script src="../../../plugins/popper/umd/popper.js"></script>

        <script>
            function myFunction1() {
                confirm("ต้องการลบข้อมูลใช่หรือไม่!");
            }
            function myFunction2() {
                confirm("ต้องการแก้ไขข้อมูลใช่หรือไม่!");
            }
        </script>
    </body>
</html>
