<%-- 
    Document   : index
    Created on : Apr 6, 2020, 7:16:05 PM
    Author     : acer
--%>

<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!doctype html>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<html>
    <head>
        <title>ADMIN</title>
        <link href="../../../plugins/bootstrap/css/bootstrap.css" type="text/css" rel="stylesheet">
        <link href="../../../style.css" type="text/css" rel="stylesheet">
        <link href="../../../teststyle.css" type="text/css" rel="stylesheet" >
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css">
        <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
        <!--<link rel="stylesheet" href="../../../plugins/datatables/dataTables.bootstrap4.min.css">-->    
    </head>
    <body>
        <%
            Connection connect = null;
            Statement s = null;
            int size = 0;
            int limit = 0;
            int ofset = 5;
            String chkpag = request.getParameter("pag");

            try {
                Class.forName("com.mysql.jdbc.Driver");

                connect = DriverManager.getConnection("jdbc:mysql://localhost/webhosting" + "?user=root&password=");

                s = connect.createStatement(ResultSet.TYPE_FORWARD_ONLY,
                        ResultSet.CONCUR_READ_ONLY);
                String sql = "";
                ResultSet rec = null;
                if (chkpag == null) {
                    sql = "SELECT * FROM domain LIMIT " + limit + "," + ofset + "";
                    rec = s.executeQuery(sql);
                } else {
                    if (chkpag.equals("1")) {
                        sql = "SELECT * FROM domain LIMIT " + limit + "," + ofset + "";
                        rec = s.executeQuery(sql);
                    } else {
                        int i = Integer.parseInt(chkpag);
                        limit = (5 * i) - 5;
                        ofset = 5 * i;
                        sql = "SELECT * FROM domain LIMIT " + limit + "," + ofset + "";
                        rec = s.executeQuery(sql);
                    }
                }


        %>
        <div class="animation-area">
            <ul class="box-area">
                <li></li>
                <li></li>
                <li></li>   
                <li></li>
                <li></li>
                <li></li>
            </ul>
            <%@include file="../../include/navbar.jsp" %>
            <div class="container">
                <div class="row" style="padding-top: 10px;">
                    <div class="col-md-3">
                        <%@include file="../../include/datauser.jsp" %>  
                    </div>

                    <div class="col-md-9" style="padding-left: 30px;">
                        <h1 style="margin-bottom: 0px; color: white">ข้อมูลผู้ใช้งาน</h1>
                        <hr style="margin-top: 8px;background-color: white;">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-sm-6" style="padding-left: 0px;">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="../dashboard">Dashboard</a></li>
                                        <li class="breadcrumb-item active">User Management</li>
                                    </ol>
                                </div>

                            </div>
                        </div> 
                        <form name="form1" method="post" action="#">
                            <div class="table-responsive">
                                <table class="table table-striped" style="background-color: white; margin-bottom: 0px;" >
                                    <thead>
                                        <tr style="background-color: gray; color: wheat;">
                                            <th>Domain</th>
                                            <th>User Name</th>
                                            <th>Accept</th>
                                            <th>Delete</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <%while ((rec != null) && (rec.next())) {
                                        %>
                                        <tr>

                                            <td><%=rec.getString("domain_name")%></td>
                                            <td><%=rec.getString("username")%></td>
                                            <td><a href="#" onclick="accupdate('<%=rec.getString("domain_name")%>')" class="btn btn-sm btn-success text-white 
                                                   <% if (rec.getString("accept").equals("1")) {
                                                            out.println(" " + "disabled");
                                                       } 
                                                    %> ">Accept</a></td>
                                            <td><a href="#" onclick="deletefn('<%=rec.getString("username")%>')" class="btn btn-sm btn-danger">delete</a></td></td>
                                        </tr>
                                        <%}%>
                                    </tbody>
                                </table> 


                            </div>
                        </form>

                        <%
                            int num = 0;
                            int pag = 0;

                            String sql1 = "SELECT * FROM domain ";

                            ResultSet rec1 = s.executeQuery(sql1);

                            while ((rec1 != null) && (rec1.next())) {
                                size++;
                            }

                            if (size % 5 == 0) {
                                num = size / 5;
                                pag = num;
                            } else {
                                num = size / 5;
                                if (num == 0) {
                                    pag = 1;
                                } else {
                                    pag = num + 1;
                                }

                            }

                        %>

                        <nav aria-label="Page navigation example">
                            <ul class="pagination mt-3" style="display:flex;justify-content: center;">
                                <li class="page-item 
                                    <%  if (chkpag != null) {
                                            if (Integer.parseInt(chkpag) == 1) {
                                                out.println(" " + "disabled");
                                            }
                                        } else {
                                            out.println(" " + "disabled");
                                        }

                                    %>">
                                    <a class="page-link" href="index.jsp?pag=<%if (chkpag != null) {
                                            out.println(Integer.parseInt(chkpag) - 1);
                                        }%>" aria-label="Previous">
                                        <span aria-hidden="true">&laquo;</span>
                                    </a>
                                </li>
                                <% for (int i = 0; i < pag; i++) {%>
                                <li class="page-item 
                                    <%
                                        if (chkpag != null) {
                                            if (Integer.parseInt(chkpag) == (i + 1)) {
                                                out.println(" " + "active");
                                            }
                                        }
                                    %>
                                    ">
                                    <a class="page-link" href="index.jsp?pag=<%= i + 1%>"><% out.println(i + 1); %></a></li>
                                    <% }%>
                                <li class="page-item 
                                    <% if (chkpag != null) {
                                            if (Integer.parseInt(chkpag) == pag) {
                                                out.println(" " + "disabled");
                                            }
                                        } else {
                                            out.println(" " + "disabled");
                                        }
                                    %>">
                                    <a class="page-link" href="index.jsp?pag=<%if (chkpag != null) {
                                            out.println(Integer.parseInt(chkpag) + 1);
                                        }%>" aria-label="Next">
                                        <span aria-hidden="true">&raquo;</span>
                                    </a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>


        <%@include  file="../../include/footer.jsp" %>
        <%
            } catch (Exception e) {
                // TODO Auto-generated catch block
                out.println(e.getMessage());
                e.printStackTrace();
            }

            try {
                if (s != null) {
                    s.close();
                    connect.close();
                }
            } catch (SQLException e) {
                // TODO Auto-generated catch block
                out.println(e.getMessage());
                e.printStackTrace();
            }
        %>
        <script src="../../../plugins/jquery/jquery.js"></script>
        <script src="../../../plugins/bootstrap/js/bootstrap.js"></script>
        <script src="../../../plugins/popper/umd/popper.js"></script>

        <script>
                                                function update(id) {
                                                    if (confirm('Are you sure, you want to update this item?') == true) {
                                                        window.location = `edit.jsp?id=` + id;
                                                    }
                                                }
                                                ;
                                               function deletefn(id) {
                                                    if (confirm('Are you sure, you want to delete this item?') == true) {       
                                                        window.location = `delete.jsp?id=` + id;   
                                                    }
                                                }
                                                ;
                                                function accupdate(id) {
                                                    if (confirm('You want confirm user?') == true) {
                                                        window.location = `updateaccept.jsp?id=` + id;
                                                    }
                                                    
                                                }
                                               
        </script>
    </body>
</html>
