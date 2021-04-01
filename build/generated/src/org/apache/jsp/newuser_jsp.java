package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.UUID;
import java.nio.charset.Charset;
import java.util.Random;
import java.sql.*;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.security.*;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.UUID;
import java.nio.charset.Charset;
import java.util.Random;
import java.sql.*;
import java.sql.*;

public final class newuser_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/navbar.jsp");
    _jspx_dependants.add("/footer.jsp");
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
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>NEWUSER</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

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

        
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link href=\"plugins/bootstrap/css/bootstrap.css\" type=\"text/css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"assets/style.css\" type=\"text/css\" rel=\"stylesheet\">\n");
      out.write("        <title>NAVBAR</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

            String authen = String.valueOf(session.getAttribute("authenuser"));
            String nameuser = String.valueOf(session.getAttribute("name"));
        
      out.write("\n");
      out.write("        <nav class=\"navbar fixed-top navbar-expand-lg navbar-light bg-dark\">\n");
      out.write("            <a class=\"navbar-brand nav-link disabled\" href=\"#\" aria-disabled=\"true\"><strong>WEB<span>HOSTING</span></strong></a>\n");
      out.write("            <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarNav\" aria-controls=\"navbarNav\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("                <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("            </button>\n");
      out.write("            <div class=\"collapse navbar-collapse\" id=\"navbarNav\">\n");
      out.write("                <ul class=\"navbar-nav\">\n");
      out.write("                    <li id=\"1\" class=\"nav-item\">\n");
      out.write("                        <a class=\"nav-link\" href=\"index.jsp\">Home<span class=\"sr-only\">(current)</span></a>\n");
      out.write("                    </li>\n");
      out.write("                    <li id=\"2\" class=\"nav-item\">\n");
      out.write("                        <a class=\"nav-link\" href=\"about.jsp\">About</a>\n");
      out.write("                    </li>\n");
      out.write("                    <li id=\"3\" class=\"nav-item\">\n");
      out.write("                        <a class=\"nav-link\" href=\"regis.jsp\">Register</a>\n");
      out.write("                    </li>\n");
      out.write("                    <li id=\"4\" class=\"nav-item\">\n");
      out.write("                        <a class=\"nav-link\" href=\"contact.jsp\">Contact</a>\n");
      out.write("                    </li>\n");
      out.write("                </ul>\n");
      out.write("\n");
      out.write("                ");
 if (authen.equals("null")) {
      out.write("\n");
      out.write("                <form action=\"login.jsp\" method=\"post\" class=\"form-inline my-2 my-lg-0\" style=\"margin-left: auto\">\n");
      out.write("                    <input class=\"form-control mr-sm-2\" name=\"Username\" type=\"text\" placeholder=\"Username\" aria-label=\"Username\" autocomplete=\"off\" required>\n");
      out.write("                    <input class=\"form-control mr-sm-2\" name=\"Password\" type=\"password\" placeholder=\"Password\" aria-label=\"Password\" autocomplete=\"off\" required>\n");
      out.write("                    <button class=\"btn my-2 my-sm-0 test\" type=\"submit\" style=\"border: 2px solid green; border-radius: 5px; color: green;\">Login</button>\n");
      out.write("                </form>\n");
      out.write("                ");
 } else {
      out.write("  \n");
      out.write("                <form action=\"logout.jsp\" method=\"post\" class=\"form-inline my-2 my-lg-0\" style=\"margin-left: auto\">\n");
      out.write("                    <label style=\"color: white; font-size: 15px; font-weight: 600px; margin-right: 10px;\">User Login: ");
 out.println(nameuser.toString());
      out.write("</label>\n");
      out.write("                    <button  class=\"btn my-2 my-sm-0 test1\" type=\"submit\" style=\"border: 2px solid red; border-radius: 5px; color: red;\">Logout</button>\n");
      out.write("                </form>\n");
      out.write("                ");

                    }
                
      out.write(" \n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </nav>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <script src=\"plugins/jquery/jquery.js\"></script>\n");
      out.write("        <script src=\"plugins/bootstrap/js/bootstrap.js\"></script>\n");
      out.write("        <script src=\"plugins/popper/umd/popper.js\"></script>\n");
      out.write("        <script>\n");
      out.write("                        (function () {\n");
      out.write("                            if (window.location.href.split('/')[5] == 'index.jsp') {\n");
      out.write("                                document.getElementById('1').className = \"nav-item active\";\n");
      out.write("                            } else if (window.location.href.split('/')[5] == 'about.jsp') {\n");
      out.write("                                document.getElementById('2').className = \"nav-item active\";\n");
      out.write("                            } else if (window.location.href.split('/')[5] == 'register.jsp') {\n");
      out.write("                                document.getElementById('3').className = \"nav-item active\";\n");
      out.write("                            } else if (window.location.href.split('/')[5] == 'contact.jsp') {\n");
      out.write("                                document.getElementById('4').className = \"nav-item active\";\n");
      out.write("                            }\n");
      out.write("\n");
      out.write("                        })();\n");
      out.write("        </script>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("        <div class=\"container paper\">\n");
      out.write("            <h4 align=\"center\">Change Password </h4>\n");
      out.write("            <div class=\"mb-3\">\n");
      out.write("                <a href=\"dashboard.jsp\" >ย้อนกลับ <i class=\"fa fa-arrow-circle-left\"></i></a>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"row\">\n");
      out.write("\n");
      out.write("                <div class=\"col-md-12\">                    \n");
      out.write("                    <form name=\"form1\" OnSubmit=\"return chkvalue();\" class=\"needs-validation\" novalidate >\n");
      out.write("                        <div class=\"container\">\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <input style=\"display:none\" type=\"text\" id=\"username\" class=\"form-control\" value=\"");
      out.print(String.valueOf(session.getAttribute("name")));
      out.write("\">\n");
      out.write("                                <label>New Password</label>\n");
      out.write("                                <input id=\"NewPassword\" type=\"password\" class=\"form-control\" placeholder=\"enter new password\" required>\n");
      out.write("                                <div class=\"invalid-feedback\">\n");
      out.write("                                    Please choose a New password.\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <label>Confirm Password</label>\n");
      out.write("                                <input id=\"ConfPassword\" type=\"password\" class=\"form-control\" placeholder=\"enter confirm password\" required>\n");
      out.write("                                <span id=\"available1\" class=\"text-danger\"></span>\n");
      out.write("                                <div class=\"invalid-feedback\">\n");
      out.write("                                    Please confirm password.\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"form-group\" style=\"margin-top: 50px;\">\n");
      out.write("                                <button class=\"btn btn-primary btn-sm\" type=\"submit\" style=\"width: 100%;\" >Submit form</button>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </form>\n");
      out.write("                    <div id=\"succes-insert\" role=\"alert\">\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link href=\"plugins/bootstrap/css/bootstrap.css\" type=\"text/css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"assets/style.css\" type=\"text/css\" rel=\"stylesheet\">\n");
      out.write("        <title>FOOTER</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <footer class=\"footer-copyright\">\n");
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
      out.write("\n");
      out.write("\n");
      out.write("        <script src=\"plugins/jquery/jquery.js\"></script>\n");
      out.write("        <script src=\"plugins/bootstrap/js/bootstrap.js\"></script>\n");
      out.write("        <script src=\"plugins/popper/umd/popper.js\"></script>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <script>\n");
      out.write("                        (function () {\n");
      out.write("                            'use strict';\n");
      out.write("                            window.addEventListener('load', function () {\n");
      out.write("                                var forms = document.getElementsByClassName('needs-validation');\n");
      out.write("                                var validation = Array.prototype.filter.call(forms, function (form) {\n");
      out.write("                                    form.addEventListener('submit', function (event) {\n");
      out.write("                                        if (form.checkValidity() === false) {\n");
      out.write("                                            event.preventDefault();\n");
      out.write("                                            event.stopPropagation();\n");
      out.write("                                        }\n");
      out.write("                                        form.classList.add('was-validated');\n");
      out.write("                                    }, false);\n");
      out.write("                                });\n");
      out.write("                            }, false);\n");
      out.write("                        })();\n");
      out.write("\n");
      out.write("                        function chkvalue() {\n");
      out.write("                            if (document.form1.NewPassword.value !== document.form1.ConfPassword.value) {\n");
      out.write("                                document.getElementById('available1').innerHTML = 'not is available'\n");
      out.write("                                return false;\n");
      out.write("                            } else {\n");
      out.write("                                document.getElementById('available1').innerHTML = ''\n");
      out.write("                                this.insertData()\n");
      out.write("                                return false;\n");
      out.write("                            }\n");
      out.write("                        }\n");
      out.write("                 \n");
      out.write("                        function insertData() {\n");
      out.write("                            var password = $(\"#NewPassword\").val();\n");
      out.write("                            var username = $(\"#username\").val();\n");
      out.write("                            if (password.length >= 3) {\n");
      out.write("                                $.ajax({\n");
      out.write("                                    url: \"checkpassform.jsp\",\n");
      out.write("                                    type: \"post\",\n");
      out.write("                                    data: {password: password, username: username},\n");
      out.write("                                    success: function (data)\n");
      out.write("                                    {\n");
      out.write("                                        document.getElementById('succes-insert').className = \"alert alert-primary\";\n");
      out.write("                                        $(\"#succes-insert\").html(data);\n");
      out.write("                                    }\n");
      out.write("                                });\n");
      out.write("                            }\n");
      out.write("                        }\n");
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
