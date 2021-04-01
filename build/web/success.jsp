<%-- 
    Document   : success
    Created on : Apr 16, 2020, 5:30:53 PM
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
        <title>SUCCESS</title>
    </head>
    <body>
        <%@include  file="navbar.jsp" %>

        <div id="carouselExampleFade" class="carousel slide carousel-fade" data-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="assets/1.jpg" class="d-block w-100 h-50" alt="...">
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

        <div class="icon" style="display: flex;justify-content: center;">
            <i class="ion-android-checkmark-circle" style="font-size: 60px; color: green;"></i>
            <h1 class="border-short-bottom text-center" style="color: green; ">สมัครสมาชิกสำเร็จ</h1>
        </div>


        <!--        <div class="container paper">
                    <form name="form1" method="post" action="#" class="needs-validation" novalidate >
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="name" style="color: black;">ชื่อจริง</label>
                                    <input type="text" class="form-control" id="name" name="name" required>
                                    <div class="invalid-feedback">
                                        Please choose a Name.
                                    </div>
                                    <div class="valid-feedback">
                                        Looks good!
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="email" style="color: black;">Email address</label>
                                    <input type="email" class="form-control" id="email1" name="email" required>
                                    <div class="invalid-feedback">
                                        Please choose an Email.
                                    </div>
                                    <div class="valid-feedback">
                                        Looks good!
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="address" style="color: black;">ที่อยู่</label>
                                    <input type="text" class="form-control" id="address" name ="address" required>
                                    <div class="invalid-feedback">
                                        Please choose an Address.
                                    </div>
                                    <div class="valid-feedback">
                                        Looks good!
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="province" style="color: black;">จังหวัด</label>
                                    <input type="text" class="form-control" id="province" name="province" required >
                                    <div class="invalid-feedback">
                                        Please choose a Province.
                                    </div>
                                    <div class="valid-feedback">
                                        Looks good!
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="idcard" style="color: black;">รหัสบัตรประชาชน</label>
                                    <input type="text" class="form-control" id="idcard" name ="idcard" required>
                                    <div class="invalid-feedback">
                                        Please choose an Idcard.
                                    </div>
                                    <div class="valid-feedback">
                                        Looks good!
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="password" style="color: black;">Password</label>
                                    <input type="text" class="form-control" id="password" name="password" required>
                                    <div class="invalid-feedback">
                                        Please choose a Postalcode.
                                    </div>
                                    <div class="valid-feedback">
                                        Looks good!
                                    </div>
                                </div>
                            </div>
        
        
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="lastname" style="color: black;">นามสกุล</label>
                                    <input type="text" class="form-control" id="lastname" name="lastname" required >
                                    <div class="invalid-feedback">
                                        Please choose a Last Name.
                                    </div>
                                    <div class="valid-feedback">
                                        Looks good!
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="phone" style="color: black;">เบอร์โทร</label>
                                    <input type="text" class="form-control" id="phone" name="phone" required>
                                    <div class="invalid-feedback">
                                        Please choose a Phone.
                                    </div>
                                    <div class="valid-feedback">
                                        Looks good!
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="amphoe" style="color: black;">อำเภอ/เขต</label>
                                    <input type="text" class="form-control" id="amphoe" name="amphoe" required>
                                    <div class="invalid-feedback">
                                        Please choose an Amphoe.
                                    </div>
                                    <div class="valid-feedback">
                                        Looks good!
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="postalcode" style="color: black;">รหัสไปรษณียร์</label>
                                    <input type="text" class="form-control" id="postalcode" name="postalcode" required>
                                    <div class="invalid-feedback">
                                        Please choose a Postalcode.
                                    </div>
                                    <div class="valid-feedback">
                                        Looks good!
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="username" style="color: black;">User ID</label>
                                    <input type="text" class="form-control" id="username" name="username" required>
                                    <div class="invalid-feedback">
                                        Please choose a Postalcode.
                                    </div>
                                    <div class="valid-feedback">
                                        Looks good!
                                    </div>
                                </div>
        
                                <div class="form-group" style="margin-top: 50px;">
                                    <button class="btn btn-primary btn-sm" type="submit" style="width: 100%;" >Submit form</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>-->







        <%@include  file="footer.jsp" %>

        <script src="plugins/jquery/jquery.js"></script>
        <script src="plugins/bootstrap/js/bootstrap.js"></script>
        <script src="plugins/popper/umd/popper.js"></script>
        <script>
            (function () {
                'use strict';
                window.addEventListener('load', function () {
// Fetch all the forms we want to apply custom Bootstrap validation styles to
                    var forms = document.getElementsByClassName('needs-validation');
// Loop over them and prevent submission
                    var validation = Array.prototype.filter.call(forms, function (form) {
                        form.addEventListener('submit', function (event) {
                            if (form.checkValidity() === false) {
                                event.preventDefault();
                                event.stopPropagation();
                            }
                            form.classList.add('was-validated');
                        }, false);
                    });
                }, false);
            })();
        </script>

    </body>
</html>
