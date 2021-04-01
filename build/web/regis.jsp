<%-- 
    Document   : regis
    Created on : Apr 28, 2020, 4:35:50 PM
    Author     : acer
--%>

<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="plugins/bootstrap/css/bootstrap.css" type="text/css" rel="stylesheet">
        <link href="assets/style.css" type="text/css" rel="stylesheet">
        <title>REGISTER</title>
    </head>
    <body>
        <%@include  file="navbar.jsp" %>

        <div class="container d-flex justify-content-center">

            <div class="card mb-4" style="width: 75%;margin-top: 100px;">
                <div class="card-body">
                    <h1>สมัครสมาชิก</h1>
                    <div class="row justify-content-center">

                        <div class="col-md-8 d-flex">
                            <form name="form1" method="post" action="regisform.jsp" >
                                <div class="row">

                                    <div class="col-md-8">
                                        <p class="mb-0">ระบุโดเมน</p>
                                        <div class="input-group mr-3">
                                            <div class="input-group-prepend">
                                                <label class="input-group-text" >www.</label>
                                            </div>
                                            <input type="text" class="form-control" name="namedomain" autocomplete="off">
                                            <div class="input-group-append">
                                                <select class="custom-select" id="state" name="type">
                                                    <option value=".com">.com</option>
                                                    <option value=".net">.net</option>
                                                    <option value=".org">.org</option>
                                                    <option value=".info">.info</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-8">
                                        <p class="mb-0">ระบุ email</p>
                                        <div class="input-group mr-3">
                                          
                                            <input type="email" class="form-control" name="email" required autocomplete="off">
                                            
                                        </div>
                                    </div>
                                    <div class="col-md-4" style="display:flex;align-items: flex-end">
                                        <button type="submit" style="width: 100%;" class="btn btn-primary">ลงทะเบียน</button>
                                    </div>
                                </div>
                            </form>
                        </div>

                    </div>
                </div>
            </div>
        </form>
    </div>

    <%@include  file="footer.jsp" %>


    <script src="plugins/jquery/jquery.js"></script>
    <script src="plugins/bootstrap/js/bootstrap.js"></script>
    <script src="plugins/popper/umd/popper.js"></script>

</body>
</html>
