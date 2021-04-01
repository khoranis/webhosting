<%-- 
    Document   : about
    Created on : Apr 15, 2020, 5:10:12 PM
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
        <title>ABOUT</title>
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

        <div class="container paper" style="margin-top: 10px; margin-bottom: 10px">

            <div class="jumbotron jumbotron-fluid ">
                <div class="container">
                    <h1 class="display-4">โฮสติ้งคือ.....</h1>
                    <p class="lead">This is a modified jumbotron that occupies the entire horizontal space of its parent.</p>
                </div>
            </div>

            <h1 class="border-short-bottom text-center" style="color:#345d7c; ">Service Hosting</h1>

            <div class="row" style="margin-bottom: 20px;">
                <div class="col-md-3 p-2">
                    <div class="card">
                        <div class="card-body">                            
                            <div class="icon" style="display: flex;justify-content: center;">
                                <i class="ion-android-mail" style="font-size: 60px;"></i>
                            </div>
                            <h5 class="card-title" style="text-align: center;"><strong>Mail</strong></h5>                           
                        </div>
                    </div>
                </div>
                <div class="col-md-3 p-2">
                    <div class="card">
                        <div class="card-body">                            
                            <div class="icon" style="display: flex;justify-content: center;">
                                <i class="ion-android-folder-open" style="font-size: 60px;"></i>
                            </div>
                            <h5 class="card-title" style="text-align: center;"><strong>File Manager</strong></h5>                           
                        </div>
                    </div>
                </div>
                <div class="col-md-3 p-2">
                    <div class="card">
                        <div class="card-body">                            
                            <div class="icon" style="display: flex;justify-content: center;">
                                <i class="ion-android-menu" style="font-size: 60px;"></i>
                            </div>
                            <h5 class="card-title" style="text-align: center;"><strong>MySQL</strong></h5>                           
                        </div>
                    </div>
                </div>
                <div class="col-md-3 p-2">
                    <div class="card">
                        <div class="card-body">                            
                            <div class="icon" style="display: flex;justify-content: center;">
                                <i class="ion-earth" style="font-size: 60px;"></i>
                            </div>
                            <h5 class="card-title" style="text-align: center;"><strong>Domains</strong></h5>                           
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
