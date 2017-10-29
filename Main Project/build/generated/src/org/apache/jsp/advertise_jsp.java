package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.DriverManager;
import java.sql.Connection;

public final class advertise_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("\t<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\">\n");
      out.write("\t<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js\"></script>\n");
      out.write("\t<script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\"></script> \n");
      out.write("\t<link rel=\"stylesheet\" href=\"styles.css\" />\n");
      out.write("\t<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css\" />\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"https://rawgit.com/LeaVerou/awesomplete/gh-pages/awesomplete.css\">\n");
      out.write("        <title>Advertise</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
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
      out.write("                    <li role=\"presentation\"><a href=\"AboutUs.jsp\">About Us</a></li>\n");
      out.write("                    <li role=\"presentation\"><a href=\"advertise.jsp\">Advertise</a></li>\n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </nav>   \n");
      out.write(" \n");
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
      out.write("\t\t\t\t\t\t<h1>Advertise Your Business Here</h1>\n");
      out.write("                                                <img src=\"adv_1.JPG\" width=\"500\" height=\"300\" alt=\"advertise\" style=\"margin-bottom: 50px\"/>\n");
      out.write("                                                <p style=\"color: red\"><b>*All Fields are required to be filled</b></p>\n");
      out.write("                                                <form action=\"advertise1.jsp\" id=\"sel\">\n");
      out.write("                                                <select name=\"busi\" id=\"bus\">\n");
      out.write("                                                    <option value=\"\" disabled selected>Select type of Business....</option>\n");
      out.write("                                                    <option value=\"restaurant\">Restaurant</option>\n");
      out.write("                                                    <option value=\"hospital\">Hospital</option>\n");
      out.write("                                                    <option value=\"school\">School</option>\n");
      out.write("                                                </select><br>\n");
      out.write("                                                <select name=\"c\" id=\"ci\">\n");
      out.write("                                                    <option value=\"\" disabled selected>Select Your City....</option>\n");
      out.write("                                                    <option value=\"Pune\">Pune</option>\n");
      out.write("                                                    <option value=\"Jalgaon\">Jalgaon</option>\n");
      out.write("                                                    <option value=\"Nashik\">Nashik</option>\n");
      out.write("                                                    <option value=\"Amravati\">Amravati</option>\n");
      out.write("                                                </select><br>\n");
      out.write("                                                <input type=\"text\" name=\"name\"  placeholder=\"Enter Name of your Business...\"><br>\n");
      out.write("                                                <input type=\"text\" name=\"addres\"  placeholder=\"Enter your address of Your Business....\"><br>\n");
      out.write("                                                <input type=\"text\" name=\"ph\" placeholder=\"Enter your Phone No.....\"><br>\n");
      out.write("                                                <p style=\"color: white\">Choose an Image for your Business....</p>\n");
      out.write("                                                <input id=\"up\" name=\"im\" value=\"\" type=\"file\" accept=\"image/*\"><br>\n");
      out.write("                                                <input type=\"text\" name=\"url\" placeholder=\"Enter your Google map short link.....\"><br>\n");
      out.write("                                                <input type=\"submit\" value=\"Advertise Here\" style=\"background-color: greenyellow\" id=\"sub\">\n");
      out.write("                                                </form>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("        \n");
      out.write("        <script>\n");
      out.write("\t\t$(\"#menu-toggle\").click( function(e){\n");
      out.write("\t\t\te.preventDefault();\n");
      out.write("\t\t\t$(\"#wrapper\").toggleClass(\"menuDisplayed\");\n");
      out.write("\t\t}); \n");
      out.write("\t</script>\n");
      out.write("        \n");
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
