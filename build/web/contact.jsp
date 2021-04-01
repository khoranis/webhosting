<%-- 
    Document   : contact
    Created on : Apr 16, 2020, 8:22:38 PM
    Author     : acer
--%>

<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="plugins/bootstrap/css/bootstrap.css" type="text/css" rel="stylesheet">
        <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
        <link href="assets/style.css" type="text/css" rel="stylesheet">
        <title>CONTACT</title>
    </head>
    <body>
        <%@include  file="navbar.jsp" %>

        <div id="carouselExampleFade" class="carousel slide carousel-fade" data-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="assets/1.jpg" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="assets/2.jpg" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="assets/3.jpg" class="d-block w-100" alt="...">
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleFade" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleFade" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>

        <div class="container">
            <h1 class="border-short-bottom text-center" style="color:#345d7c; ">Contact</h1>
            <div class="row col-md-12" style="margin-bottom: 15px;">
                <div class="row col-md-6">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3874.7176834132133!2d100.29829831483097!3d13.795884990318935!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x30e2937eb4d49a9d%3A0x9f6662afc7c1895e!2z4Lih4Lir4Liy4Lin4Li04LiX4Lii4Liy4Lil4Lix4Lii4LmA4LiX4LiE4LmC4LiZ4LmC4Lil4Lii4Li14Lij4Liy4LiK4Lih4LiH4LiE4Lil4Lij4Lix4LiV4LiZ4LmC4LiB4Liq4Li04LiZ4LiX4Lij4LmM!5e0!3m2!1sth!2sth!4v1587043630361!5m2!1sth!2sth" width="600" height="450" frameborder="0"
                            style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
                </div>
                <div class="row col-md-6 paper" style="margin-left: 45px;">
                    <div>
                        <h1>ติดต่อเรา</h1><br>
                        <div class="icon" style="display: flex;justify-content: center;">
                            <i class="ion-ios-location" style="font-size: 60px; color: red;"></i>
                            <p style="margin-left: 10px; margin-top: 10px;"><strong>ที่อยู่ :</strong>&nbsp;<span>96 หมู่ 3 ถนน พุทธมณฑลสาย 5 ตำบล ศาลายา อำเภอพุทธมณฑล นครปฐม 73170</span></p>
                        </div>
                        <div class="icon" style="display: flex;justify-content: center; margin-right: 130px;">
                            <i class="ion-android-phone-portrait" style="font-size: 60px; color: #0062cc;"></i>
                            <p style="margin-left: 10px; margin-top: 30px;"><strong>เบอร์โทร :</strong>&nbsp;<span><a href="tel:0980966894">0980966894</a></span></p>
                        </div>
                        <div class="icon" style="display: flex;justify-content: center; margin-right: 42px;">
                            <i class="ion-android-mail" style="font-size: 60px; color: #0062cc;"></i>
                            <p style="margin-left: 10px; margin-top: 30px;"><strong>Email :</strong>&nbsp;<span><a href="mailto:Khoranis20@gmail.com">Khoranis20@gmail.com</a></span></p>
                        </div> 
                    </div>
                </div>
            </div>
        </div>





        <%@include  file="footer.jsp" %>

        <script src="plugins/jquery/jquery.js"></script>
        <script src="plugins/bootstrap/js/bootstrap.js"></script>
        <script src="plugins/popper/umd/popper.js"></script>
    </body>
</html>
