package org.apache.jsp.admin.pages.dashboard;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
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
    _jspx_dependants.add("/admin/pages/dashboard/../../include/navbar.jsp");
    _jspx_dependants.add("/admin/pages/dashboard/../../include/datauser.jsp");
    _jspx_dependants.add("/admin/pages/dashboard/../../include/footer.jsp");
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
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>ADMIN</title>\n");
      out.write("        <link href=\"../../../plugins/bootstrap/css/bootstrap.css\" type=\"text/css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"../../../style.css\" type=\"text/css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"../../../teststyle.css\" rel=\"stylesheet\" type=\"text/css\" >\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://use.fontawesome.com/releases/v5.0.13/css/all.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css\">\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        <div class=\"animation-area\">\n");
      out.write("            <ul class=\"box-area\">\n");
      out.write("                <li></li>\n");
      out.write("                <li></li>\n");
      out.write("                <li></li>\n");
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
      out.write("  \n");
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
      out.write("                        <h1 style=\"margin-bottom: 0px; color: white\">ยินดีตอนรับ,");
 out.println(session.getAttribute("name").toString());
      out.write("</h1>\n");
      out.write("                        <hr style=\"margin-top: 8px;background-color: white;\">\n");
      out.write("                        <div class=\"container\">\n");
      out.write("                            <div class=\"row\">\n");
      out.write("                                <div class=\"col-md-3\">\n");
      out.write("                                    <div class=\"card\" >\n");
      out.write("                                        <div class=\"card-body\">\n");
      out.write("                                            <div style=\"display: flex;\n");
      out.write("                                                 align-items: center;\n");
      out.write("                                                 justify-content: space-around;\">\n");
      out.write("                                                <div class=\"icon\">\n");
      out.write("                                                    <i class=\"ion ion-android-contact\" style=\"font-size: 60px;;\"></i>\n");
      out.write("                                                </div>\n");
      out.write("                                                <h5 class=\"card-title\">User</h5>  \n");
      out.write("                                            </div>\n");
      out.write("                                            <a href=\"../userall/\">More info <i class=\"fa fa-arrow-circle-right\"></i></a>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
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
      out.write("\n");
      out.write("        <script src=\"../../../plugins/jquery/jquery.js\"></script>\n");
      out.write("        <script src=\"../../../plugins/bootstrap/js/bootstrap.js\"></script>\n");
      out.write("        <script src=\"../../../plugins/popper/umd/popper.js\"></script>\n");
      out.write("\n");
      out.write("        <script>\n");
      out.write("            function myFunction1() {\n");
      out.write("                confirm(\"ต้องการลบข้อมูลใช่หรือไม่!\");\n");
      out.write("            }\n");
      out.write("            function myFunction2() {\n");
      out.write("                confirm(\"ต้องการแก้ไขข้อมูลใช่หรือไม่!\");\n");
      out.write("            }\n");
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
