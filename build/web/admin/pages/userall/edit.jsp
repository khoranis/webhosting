<%-- 
    Document   : edit
    Created on : Jul 4, 2019, 3:18:09 PM
    Author     : Filmpy
--%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<html>
    <head>
        <meta charset="UTF-8">
        <title>EDIT</title>
        <link href="../../../plugins/bootstrap/css/bootstrap.css" type="text/css" rel="stylesheet">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css">
        <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
        <link href="../../../style.css" type="text/css" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="../../../teststyle.css">
    </head>

    <body>
        <%@include  file="../../include/navbar.jsp" %>  
       <div class="container paper">
            <h4 align="center">Change Password </h4>
            <div class="mb-3">
            </div>
            <div class="row">

                <div class="col-md-12">                    
                    <form name="form1" OnSubmit="return chkvalue();" class="needs-validation" novalidate >
                        <div class="container">
                            <div class="form-group">
                                <input style="display:none" type="text" id="username" class="form-control" value="<%=String.valueOf(session.getAttribute("name"))%>">
                                <label for="username">Password</label>
                                <input type="password" class="form-control" id="password" onblur="chkPass();" placeholder="enter password" autocomplete="off" required>
                                <span id="available"></span>

                                <div class="invalid-feedback">
                                    Please choose a password.
                                </div>

                            </div>
                            <div class="form-group">
                                <label>New Password</label>
                                <input id="NewPassword" type="password" class="form-control" placeholder="enter new password" required>
                                <div class="invalid-feedback">
                                    Please choose a New password.
                                </div>
                            </div>
                            <div class="form-group">
                                <label>Confirm Password</label>
                                <input id="ConfPassword" type="password" class="form-control" placeholder="enter confirm password" required>
                                <span id="available1" class="text-danger"></span>
                                <div class="invalid-feedback">
                                    Please confirm password.
                                </div>
                            </div>
                            <div class="form-group" style="margin-top: 50px;">
                                <button class="btn btn-primary btn-sm" type="submit" style="width: 100%;" >Submit form</button>
                            </div>
                        </div>
                    </form>
                    <div id="succes-insert" role="alert">

                    </div>
                </div>
            </div>
        </div>
        
              <%@include  file="../../include/footer.jsp" %>
        
        

        <script src="../../../plugins/jquery/jquery.min.js"></script>
        <script src="../../../plugins/bootstrap/js/bootstrap.js"></script>
        <script src="../../../plugins/popper/umd/popper.js"></script>


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

                                    function chkvalue() {
                                        if (document.form1.NewPassword.value !== document.form1.ConfPassword.value) {
                                            document.getElementById('available1').innerHTML = 'not is available'
                                            return false;
                                        } else {
                                            document.getElementById('available1').innerHTML = ''
                                            this.insertData()
                                            return false;
                                        }
                                    }
                                    function chkPass() {
                                        var password = $("#password").val();
                                        var username = $("#username").val();
                                        if (password.length >= 3) {
                                            $.ajax({
                                                url: "confirmedit.jsp",
                                                type: "post",
                                                data: {password: password, username: username},
                                                success: function (data)
                                                {
                                                    $("#available").html(data);

                                                }
                                            });
                                        } else {
                                            $("#available").html(" ");
                                        }
                                    }
                                    function insertData() {
                                        var password = $("#NewPassword").val();
                                        var username = $("#username").val();
                                        if (password.length >= 3) {
                                            $.ajax({
                                                url: "editform.jsp",
                                                type: "post",
                                                data: {password: password, username: username},
                                                success: function (data)
                                                {
                                                    document.getElementById('succes-insert').className = "alert alert-primary";
                                                    $("#succes-insert").html(data);
                                                }
                                            });
                                        }
                                    }
        </script>
    </body>
</html>
