<%-- 
    Document   : navbar
    Created on : Apr 14, 2020, 1:45:48 PM
    Author     : acer
--%>

<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="plugins/bootstrap/css/bootstrap.css" type="text/css" rel="stylesheet">
        <link href="assets/style.css" type="text/css" rel="stylesheet">
        <title>NAVBAR</title>
    </head>
    <body>
        <%
            String authen = String.valueOf(session.getAttribute("authenuser"));
            String nameuser = String.valueOf(session.getAttribute("name"));
        %>
        <nav class="navbar fixed-top navbar-expand-lg navbar-light bg-dark">
            <a class="navbar-brand nav-link disabled" href="#" aria-disabled="true"><strong>WEB<span>HOSTING</span></strong></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li id="1" class="nav-item">
                        <a class="nav-link" href="index.jsp">Home<span class="sr-only">(current)</span></a>
                    </li>
                    <li id="2" class="nav-item">
                        <a class="nav-link" href="about.jsp">About</a>
                    </li>
                    <li id="3" class="nav-item">
                        <a class="nav-link" href="regis.jsp">Register</a>
                    </li>
                    <li id="4" class="nav-item">
                        <a class="nav-link" href="contact.jsp">Contact</a>
                    </li>
                </ul>

                <% if (authen.equals("null")) {%>
                <form action="login.jsp" method="post" class="form-inline my-2 my-lg-0" style="margin-left: auto">
                    <input class="form-control mr-sm-2" name="Username" type="text" placeholder="Username" aria-label="Username" autocomplete="off" required>
                    <input class="form-control mr-sm-2" name="Password" type="password" placeholder="Password" aria-label="Password" autocomplete="off" required>
                    <button class="btn my-2 my-sm-0 test" type="submit" style="border: 2px solid green; border-radius: 5px; color: green;">Login</button>
                </form>
                <% } else {%>  
                <form action="logout.jsp" method="post" class="form-inline my-2 my-lg-0" style="margin-left: auto">
                    <label style="color: white; font-size: 15px; font-weight: 600px; margin-right: 10px;">User Login: <% out.println(nameuser.toString());%></label>
                    <button  class="btn my-2 my-sm-0 test1" type="submit" style="border: 2px solid red; border-radius: 5px; color: red;">Logout</button>
                </form>
                <%
                    }
                %> 



            </div>
        </nav>


        <script src="plugins/jquery/jquery.js"></script>
        <script src="plugins/bootstrap/js/bootstrap.js"></script>
        <script src="plugins/popper/umd/popper.js"></script>
        <script>
                        (function () {
                            if (window.location.href.split('/')[5] == 'index.jsp') {
                                document.getElementById('1').className = "nav-item active";
                            } else if (window.location.href.split('/')[5] == 'about.jsp') {
                                document.getElementById('2').className = "nav-item active";
                            } else if (window.location.href.split('/')[5] == 'register.jsp') {
                                document.getElementById('3').className = "nav-item active";
                            } else if (window.location.href.split('/')[5] == 'contact.jsp') {
                                document.getElementById('4').className = "nav-item active";
                            }

                        })();
        </script>
    </body>
</html>
