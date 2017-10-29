package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.lang.String;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Connection;

public final class restaurant_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

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
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"utf-8\" />\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\n");
      out.write("    <title>Restaurants</title>\n");
      out.write("\t<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\">\n");
      out.write("\t<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js\"></script>\n");
      out.write("\t<script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\"></script> \n");
      out.write("\t<link rel=\"stylesheet\" href=\"styles.css\" />\n");
      out.write("\t<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css\" />\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"https://rawgit.com/LeaVerou/awesomplete/gh-pages/awesomplete.css\">\n");
      out.write("        <script type=\"text/javascript\" src=\"https://rawgit.com/LeaVerou/awesomplete/gh-pages/awesomplete.min.js\"></script>\n");
      out.write("\t<!-- Start WOWSlider.com HEAD section -->\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"engine1/style.css\" />\n");
      out.write("\t<script type=\"text/javascript\" src=\"engine1/jquery.js\"></script>\n");
      out.write("\t<!-- End WOWSlider.com HEAD section -->\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("    <nav class=\"navbar navbar-inverse navbar-fixed-top\" id=\"navi\">\n");
      out.write("        <div class=\"container-fluid\">\n");
      out.write("            <div class=\"navbar-header\">\n");
      out.write("\t\t\t\t<a href=\"#\" class=\"navbar-brand navbar-link\"><button class=\"btn btn-success btn-sm\" type=\"button\" id=\"menu-toggle\">\n");
      out.write("\t\t\t\t    <div id=\"m\"></div>\n");
      out.write("\t\t\t\t\t<div id=\"m\"></div>\n");
      out.write("\t\t\t\t\t<div id=\"m\"></div>\n");
      out.write("\t\t\t\t</button></a>\n");
      out.write("\t\t\t\t<a href=\"#\" class=\"navbar-brand navbar-link\"><img src=\"srch.png\"/></a>\n");
      out.write("\t\t\t\t<a href=\"#\" class=\"navbar-brand navbar-link\">SearchCity </a>\n");
      out.write("                <button data-toggle=\"collapse\" data-target=\"#navcol-1\" class=\"navbar-toggle collapsed\"><span class=\"sr-only\">Toggle navigation</span><span class=\"icon-bar\"></span><span class=\"icon-bar\"></span><span class=\"icon-bar\"></span></button>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"collapse navbar-collapse\" id=\"navcol-1\">\n");
      out.write("                <ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("\t\t\t\t\t<li role=\"presentation\" class=\"active\"><a href=\"home.jsp\">Home</a></li>\n");
      out.write("                    <li role=\"presentation\"><a href=\"#\">Advertise </a></li>\n");
      out.write("                    <li role=\"presentation\"><a href=\"AboutUs.jsp\">About Us</a></li>\n");
      out.write("                    <li role=\"presentation\"><a href=\"#\" data-toggle=\"modal\" data-target=\"#popWindow\" >Log In</a></li>\n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </nav>\n");
      out.write("\t\n");
      out.write("\n");
      out.write("\t<div id=\"wrapper\" class=\"menuDisplayed\">\n");
      out.write("\t\t<div id=\"sidebar-wrapper\">\n");
      out.write("\t\t\t<ul class=\"sidebar-nav\">\n");
      out.write("\t\t\t\t<li><a href=\"restaurant.jsp\"><i class=\"fa fa-spoon\" aria-hidden=\"true\"></i>Restaurants</a></li>\n");
      out.write("\t\t\t\t<li><a href=\"hospital.jsp\"><i class=\"fa fa-h-square\" aria-hidden=\"true\"></i>Hospitals</a></li>\n");
      out.write("\t\t\t\t<li><a href=\"school.jsp\"><i class=\"fa fa-graduation-cap\" aria-hidden=\"true\"></i>Schools</a></li>\n");
      out.write("\t\t\t</ul>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<div id=\"page-content-wrapper\">\n");
      out.write("\t\t\t<div class=\"container-fluid\">\n");
      out.write("\t\t\t\t<div class=\"row\">\n");
      out.write("\t\t\t\t\t<div class=\"col-lg-12\" align=\"center\">\n");
      out.write("\t\t\t\t\t\t<h1>Search Restaurants in Your City</h1>\n");
      out.write("                                                <div id=\"id1\">\n");
      out.write("                                                <form action=\"restaurant1.jsp\">\n");
      out.write("\t\t\t\t\t\t<input type=\"text\" class=\"awesomplete\" name=\"search\" id=\"myinput\" data-minchars=\"0\" placeholder=\"Search for a city.....\">\n");
      out.write("                                                <input type=\"submit\" value=\"Search\" class=\"btn btn-info\" style=\"margin-left: -5px\"><br><br><br>\n");
      out.write("                                                </form>\n");
      out.write("                                                </div>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("\t\n");
      out.write("\t\n");
      out.write("\t\t<div class=\"modal fade\" id=\"popWindow\">\n");
      out.write("\t\t\t<div class=\"modal-dialog\">\n");
      out.write("\t\t\t\t<div class=\"modal-content\">\n");
      out.write("\t\t\t\t\t<div class=\"modal-header\">\n");
      out.write("\t\t\t\t\t\t<button type=\"button\" class=\"close\" data-dismiss=\"modal\">&times;</button>\n");
      out.write("\t\t\t\t\t\t<h3>LOG IN</h3>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<div class=\"modal-body\">\n");
      out.write("\t\t\t\t\t\t<form role=\"form\">\n");
      out.write("\t\t\t\t\t\t\t<div class=\"form-group\">\n");
      out.write("\t\t\t\t\t\t\t\t<input type=\"email\" class=\"form-control\" placeholder=\"Email\">\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t<div class=\"form-group\">\n");
      out.write("\t\t\t\t\t\t\t\t<input type=\"password\" class=\"form-control\" placeholder=\"Password\">\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<div class=\"modal-footer\"><button class=\"btn btn-primary btn-block\">Log In</button></div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t\n");
      out.write("\t\t<script>\n");
      out.write("\t\t$(\"#menu-toggle\").click( function(e){\n");
      out.write("\t\t\te.preventDefault();\n");
      out.write("\t\t\t$(\"#wrapper\").toggleClass(\"menuDisplayed\");\n");
      out.write("\t\t});\n");
      out.write("                var input = document.getElementById(\"myinput\");\n");
      out.write("                var awesomplete = new Awesomplete(input);\n");
      out.write("                awesomplete.list = [\"Pune\", \"Nashik\", \"Jalgaon\", \"Amravati\"];\n");
      out.write("\t</script>\n");
      out.write("\t\t\n");
      out.write("</body>\n");
      out.write("\n");
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
