package org.apache.jsp.admin.pages.userall;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.*;
import java.sql.*;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(3);
    _jspx_dependants.add("/admin/pages/userall/../../include/navbar.jsp");
    _jspx_dependants.add("/admin/pages/userall/../../include/datauser.jsp");
    _jspx_dependants.add("/admin/pages/userall/../../include/footer.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html; charset=utf-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			"", true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!doctype html>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>ADMIN</title>\n");
      out.write("        <link href=\"../../../plugins/bootstrap/css/bootstrap.css\" type=\"text/css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"../../../style.css\" type=\"text/css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"../../../teststyle.css\" type=\"text/css\" rel=\"stylesheet\" >\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://use.fontawesome.com/releases/v5.0.13/css/all.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css\">\n");
      out.write("        <!--<link rel=\"stylesheet\" href=\"../../../plugins/datatables/dataTables.bootstrap4.min.css\">-->    \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

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


        
      out.write("\n");
      out.write("        <div class=\"animation-area\">\n");
      out.write("            <ul class=\"box-area\">\n");
      out.write("                <li></li>\n");
      out.write("                <li></li>\n");
      out.write("                <li></li>   \n");
      out.write("                <li></li>\n");
      out.write("                <li></li>\n");
      out.write("                <li></li>\n");
      out.write("            </ul>\n");
      out.write("            ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>NAVBAR</title>\n");
      out.write("  \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <nav class=\"navbar navbar-expand-lg\" >\n");
      out.write("            <form method=\"post\" action=\"../../logout.jsp\" class=\"form-inline my-2 my-lg-0\" style=\"padding-left: 1000px;\">\n");
      out.write("                <label style=\"color: white; font-size: 20px; font-weight: 600px;margin-right: 10px;\">User Login: ");
 out.println(session.getAttribute("name").toString());
      out.write("</label>\n");
      out.write("                <button class=\"btn btn-outline-success my-2 my-sm-0\" type=\"submit\">LOGOUT</button>\n");
      out.write("            </form>\n");
      out.write("        </nav>\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\" style=\"padding-top: 10px;\">\n");
      out.write("                    <div class=\"col-md-3\">\n");
      out.write("                        ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>DATAUSER</title>\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("        <div class=\"card\" style=\"width: 18rem;\">\n");
      out.write("            <div class=\"card-header\" style=\"text-align: center;\">\n");
      out.write("                <i class=\"fa fa-user-circle fa-lg\"  aria-hidden=\"true\">สถานะ</i>\n");
      out.write("            </div>\n");
      out.write("            <ul class=\"list-group list-group-flush\">\n");
      out.write("                <!--<li class=\"list-group-item\">สถานะ: ");
      out.write("</li>-->\n");
      out.write("                <li class=\"list-group-item\">ชื่อ: ");
 out.println(session.getAttribute("name").toString());
      out.write("</li>\n");
      out.write("            </ul>\n");
      out.write("            <div class=\"card-footer\" style=\"text-align: center;\">\n");
      out.write("                <a href=\"#\" onclick=\"update()\" class=\"btn btn-success btn-sm\" style=\"width: 100%;\"><i class=\"ion ion-ios-gear\" style=\"font-size: 16px\">เปลี่ยนรหัสผ่าน</i></a> \n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <script>\n");
      out.write("            function update() {\n");
      out.write("                if (confirm('คุณต้องการเปลี่ยนรหัสใช่หรือไม่ ! ') == true) {\n");
      out.write("                    window.location = `../userall/edit.jsp`;\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("            ;\n");
      out.write("        </script>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("  \n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <div class=\"col-md-9\" style=\"padding-left: 30px;\">\n");
      out.write("                        <h1 style=\"margin-bottom: 0px; color: white\">ข้อมูลผู้ใช้งาน</h1>\n");
      out.write("                        <hr style=\"margin-top: 8px;background-color: white;\">\n");
      out.write("                        <div class=\"container-fluid\">\n");
      out.write("                            <div class=\"row\">\n");
      out.write("                                <div class=\"col-sm-6\" style=\"padding-left: 0px;\">\n");
      out.write("                                    <ol class=\"breadcrumb\">\n");
      out.write("                                        <li class=\"breadcrumb-item\"><a href=\"../dashboard\">Dashboard</a></li>\n");
      out.write("                                        <li class=\"breadcrumb-item active\">User Management</li>\n");
      out.write("                                    </ol>\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("                            </div>\n");
      out.write("                        </div> \n");
      out.write("                        <form name=\"form1\" method=\"post\" action=\"#\">\n");
      out.write("                            <div class=\"table-responsive\">\n");
      out.write("                                <table class=\"table table-striped\" style=\"background-color: white; margin-bottom: 0px;\" >\n");
      out.write("                                    <thead>\n");
      out.write("                                        <tr style=\"background-color: gray; color: wheat;\">\n");
      out.write("                                            <th>Domain</th>\n");
      out.write("                                            <th>User Name</th>\n");
      out.write("                                            <th>Accept</th>\n");
      out.write("                                            <th>Delete</th>\n");
      out.write("                                        </tr>\n");
      out.write("                                    </thead>\n");
      out.write("                                    <tbody>\n");
      out.write("                                        ");
while ((rec != null) && (rec.next())) {
                                        
      out.write("\n");
      out.write("                                        <tr>\n");
      out.write("\n");
      out.write("                                            <td>");
      out.print(rec.getString("domain_name"));
      out.write("</td>\n");
      out.write("                                            <td>");
      out.print(rec.getString("username"));
      out.write("</td>\n");
      out.write("                                            <td><a href=\"#\" onclick=\"accupdate('");
      out.print(rec.getString("domain_name"));
      out.write("')\" class=\"btn btn-sm btn-success text-white \n");
      out.write("                                                   ");
 if (rec.getString("accept").equals("1")) {
                                                            out.println(" " + "disabled");
                                                       } 
                                                    
      out.write(" \">Accept</a></td>\n");
      out.write("                                            <td><a href=\"#\" onclick=\"deletefn('");
      out.print(rec.getString("username"));
      out.write("')\" class=\"btn btn-sm btn-danger\">delete</a></td></td>\n");
      out.write("                                        </tr>\n");
      out.write("                                        ");
}
      out.write("\n");
      out.write("                                    </tbody>\n");
      out.write("                                </table> \n");
      out.write("\n");
      out.write("\n");
      out.write("                            </div>\n");
      out.write("                        </form>\n");
      out.write("\n");
      out.write("                        ");

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

                        
      out.write("\n");
      out.write("\n");
      out.write("                        <nav aria-label=\"Page navigation example\">\n");
      out.write("                            <ul class=\"pagination mt-3\" style=\"display:flex;justify-content: center;\">\n");
      out.write("                                <li class=\"page-item \n");
      out.write("                                    ");
  if (chkpag != null) {
                                            if (Integer.parseInt(chkpag) == 1) {
                                                out.println(" " + "disabled");
                                            }
                                        } else {
                                            out.println(" " + "disabled");
                                        }

                                    
      out.write("\">\n");
      out.write("                                    <a class=\"page-link\" href=\"index.jsp?pag=");
if (chkpag != null) {
                                            out.println(Integer.parseInt(chkpag) - 1);
                                        }
      out.write("\" aria-label=\"Previous\">\n");
      out.write("                                        <span aria-hidden=\"true\">&laquo;</span>\n");
      out.write("                                    </a>\n");
      out.write("                                </li>\n");
      out.write("                                ");
 for (int i = 0; i < pag; i++) {
      out.write("\n");
      out.write("                                <li class=\"page-item \n");
      out.write("                                    ");

                                        if (chkpag != null) {
                                            if (Integer.parseInt(chkpag) == (i + 1)) {
                                                out.println(" " + "active");
                                            }
                                        }
                                    
      out.write("\n");
      out.write("                                    \">\n");
      out.write("                                    <a class=\"page-link\" href=\"index.jsp?pag=");
      out.print( i + 1);
      out.write('"');
      out.write('>');
 out.println(i + 1); 
      out.write("</a></li>\n");
      out.write("                                    ");
 }
      out.write("\n");
      out.write("                                <li class=\"page-item \n");
      out.write("                                    ");
 if (chkpag != null) {
                                            if (Integer.parseInt(chkpag) == pag) {
                                                out.println(" " + "disabled");
                                            }
                                        } else {
                                            out.println(" " + "disabled");
                                        }
                                    
      out.write("\">\n");
      out.write("                                    <a class=\"page-link\" href=\"index.jsp?pag=");
if (chkpag != null) {
                                            out.println(Integer.parseInt(chkpag) + 1);
                                        }
      out.write("\" aria-label=\"Next\">\n");
      out.write("                                        <span aria-hidden=\"true\">&raquo;</span>\n");
      out.write("                                    </a>\n");
      out.write("                                </li>\n");
      out.write("                            </ul>\n");
      out.write("                        </nav>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>FOOTER</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <footer class=\"footer\">\n");
      out.write("            <span> COPYRIGHT © 2020\n");
      out.write("                <a href=\"#\" target=\"_blank\">CPE 07</a>\n");
      out.write("                ALL Right Reserved\n");
      out.write("            </span>\n");
      out.write("        </footer>\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("        ");

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
        
      out.write("\n");
      out.write("        <script src=\"../../../plugins/jquery/jquery.js\"></script>\n");
      out.write("        <script src=\"../../../plugins/bootstrap/js/bootstrap.js\"></script>\n");
      out.write("        <script src=\"../../../plugins/popper/umd/popper.js\"></script>\n");
      out.write("\n");
      out.write("        <script>\n");
      out.write("                                                function update(id) {\n");
      out.write("                                                    if (confirm('Are you sure, you want to update this item?') == true) {\n");
      out.write("                                                        window.location = `edit.jsp?id=` + id;\n");
      out.write("                                                    }\n");
      out.write("                                                }\n");
      out.write("                                                ;\n");
      out.write("                                               function deletefn(id) {\n");
      out.write("                                                    if (confirm('Are you sure, you want to delete this item?') == true) {       \n");
      out.write("                                                        window.location = `delete.jsp?id=` + id;   \n");
      out.write("                                                    }\n");
      out.write("                                                }\n");
      out.write("                                                ;\n");
      out.write("                                                function accupdate(id) {\n");
      out.write("                                                    if (confirm('You want confirm user?') == true) {\n");
      out.write("                                                        window.location = `updateaccept.jsp?id=` + id;\n");
      out.write("                                                    }\n");
      out.write("                                                    \n");
      out.write("                                                }\n");
      out.write("                                               \n");
      out.write("        </script>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
