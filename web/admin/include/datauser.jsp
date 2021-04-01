<%-- 
    Document   : datauser
    Created on : Apr 4, 2020, 7:15:15 PM
    Author     : acer
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DATAUSER</title>
    </head>

    <body>
        <div class="card" style="width: 18rem;">
            <div class="card-header" style="text-align: center;">
                <i class="fa fa-user-circle fa-lg"  aria-hidden="true">สถานะ</i>
            </div>
            <ul class="list-group list-group-flush">
                <!--<li class="list-group-item">สถานะ: <%-- out.println(session.getAttribute("state").toString()); --%></li>-->
                <li class="list-group-item">ชื่อ: <% out.println(session.getAttribute("name").toString());%></li>
            </ul>
            <div class="card-footer" style="text-align: center;">
                <a href="#" onclick="update()" class="btn btn-success btn-sm" style="width: 100%;"><i class="ion ion-ios-gear" style="font-size: 16px">เปลี่ยนรหัสผ่าน</i></a> 
            </div>
        </div>
        <script>
            function update() {
                if (confirm('คุณต้องการเปลี่ยนรหัสใช่หรือไม่ ! ') == true) {
                    window.location = `../userall/edit.jsp`;
                }
            }
            ;
        </script>
    </body>
</html>
