<%-- 
    Document   : altregis
    Created on : Apr 28, 2020, 6:26:57 PM
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
        <title>CONFIRM</title>
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
        <h1 class="border-short-bottom text-center" style="color:#345d7c; ">สถานะการลงทะเบียน</h1>

        <div class="container d-flex justify-content-center">
            <div class="card mt-3 mb-4" style="width: 18rem; background-color: #99cccc;">
                <div class="card-body">
                    <div class="icon" style="display: flex;">
                        <i class="ion-android-checkmark-circle" style="font-size: 30px; color: green;"></i>
                        <h4 class="card-title" style="margin-top: 5px; color: green;">การสมัครเสร็จสิ้น</h4>
                    </div>
                    <h6 class="card-subtitle mb-2 text-muted">รอยืนยัน กรุณาติดต่อ<a href="tel:0980966894"> 098-0966894</a></h6>
                    <div>
                        <p style="margin-top: 1px; margin-bottom: 2px;"><strong>Username</strong></p>
                        <input type="text" class="form-control" name="#" value="<% out.println(session.getAttribute("username").toString());%>" readonly>
                    </div>
                    <div>
                        <p style="margin-top: 5px; margin-bottom: 2px;"><strong>Password</strong></p>
                        <input type="text" class="form-control" name="#" value="<% out.println(session.getAttribute("password").toString());%>" readonly>
                    </div>
                    <button type="submit" onclick="goto()" style="width: 100%; margin-top: 20px; margin-bottom: 1px;" class="btn btn-danger">ตกลง</button>
                </div>
            </div>
        </div>






        <%@include  file="footer.jsp" %>


        <script src="plugins/jquery/jquery.js"></script>
        <script src="plugins/bootstrap/js/bootstrap.js"></script>
        <script src="plugins/popper/umd/popper.js"></script>
        <script>
                        function goto() {
                            if (confirm('คุณจำ password ได้เเล้ว ?') == true) {
                                window.location = `about.jsp`;
                            }
                        }
                        ;
        </script>
    </body>
</html>
