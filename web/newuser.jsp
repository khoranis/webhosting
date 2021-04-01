<%-- 
    Document   : newuser
    Created on : Sep 2, 2020, 12:00:39 AM
    Author     : khora
--%>
<%@page import="java.util.UUID"%>
<%@page import="java.nio.charset.Charset"%>
<%@page import="java.util.Random"%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.security.*" %>
<%@ page import= "java.security.MessageDigest" %>
<%@ page import= "java.security.NoSuchAlgorithmException" %>
<%@ page import= "java.security.SecureRandom" %>
<%@ page import="java.util.UUID"%>
<%@ page import="java.nio.charset.Charset"%>
<%@ page import="java.util.Random"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>NEWUSER</title>
    </head>
    <body>
        <%
            Connection connect = null;
            Statement s = null;
            try {
                Class.forName("com.mysql.jdbc.Driver");
                connect = DriverManager.getConnection("jdbc:mysql://localhost/webhosting" + "?user=root&password=");
                s = connect.createStatement();
                
               String username = request.getParameter("id");
               
                String sql = "SELECT * FROM data_users AS du INNER JOIN domain AS do ON du.username = do.username WHERE du.username = '"+ username +"' AND do.accept = '1' ";
                ResultSet rec = s.executeQuery(sql);
                if (rec.next()) {
                    session.setAttribute("name", rec.getString("username"));
                    session.setAttribute("authenuser", "1");
                    session.setAttribute("main", rec.getString("main"));
                   
                }
            } catch (Exception e) {
                out.println(e.getMessage());
                e.printStackTrace();
            }

        %>
        <%@include  file="navbar.jsp" %>
        <div class="container paper">
            <h4 align="center">Change Password </h4>
            <div class="mb-3">
                <a href="dashboard.jsp" >ย้อนกลับ <i class="fa fa-arrow-circle-left"></i></a>
            </div>
            <div class="row">

                <div class="col-md-12">                    
                    <form name="form1" OnSubmit="return chkvalue();" class="needs-validation" novalidate >
                        <div class="container">
                            <div class="form-group">
                                <input style="display:none" type="text" id="username" class="form-control" value="<%=String.valueOf(session.getAttribute("name"))%>">
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

        <%@include  file="footer.jsp" %>



        <script src="plugins/jquery/jquery.js"></script>
        <script src="plugins/bootstrap/js/bootstrap.js"></script>
        <script src="plugins/popper/umd/popper.js"></script>


        <script>
                        (function () {
                            'use strict';
                            window.addEventListener('load', function () {
                                var forms = document.getElementsByClassName('needs-validation');
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
                 
                        function insertData() {
                            var password = $("#NewPassword").val();
                            var username = $("#username").val();
                            if (password.length >= 3) {
                                $.ajax({
                                    url: "checkpassform.jsp",
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
