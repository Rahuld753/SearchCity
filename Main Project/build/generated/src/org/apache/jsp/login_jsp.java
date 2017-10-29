package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.PreparedStatement;
import java.sql.DriverManager;
import java.sql.Connection;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"utf-8\" />\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\n");
      out.write("    <title>Advertisement</title>\n");
      out.write("\t<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\">\n");
      out.write("\t<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js\"></script>\n");
      out.write("\t<script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\"></script> \n");
      out.write("\t<link rel=\"stylesheet\" href=\"styles.css\" />\n");
      out.write("\t<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css\" />\n");
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
      out.write("\t\t\t\t\t<li role=\"presentation\" class=\"active\"><a href=\"home.jsp\">Home</a></li>>\n");
      out.write("                    <li role=\"presentation\"><a href=\"AboutUs.jsp\">About Us</a></li>\n");
      out.write("                    <li role=\"presentation\"><a href=\"login.jsp\">Advertise</a></li>\n");
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
      out.write("                                            ");

                                                Class.forName("com.mysql.jdbc.Driver");
                                                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/city","root","");
                                                PreparedStatement st=con.prepareStatement("insert into login values(?,?)");
                                                st.setString(1,request.getParameter("us"));
                                                st.setString(2,request.getParameter("pass"));
                                                st.executeUpdate();
                                                if(session.getAttribute("wrong")!=null)
                                                out.println("<p style=\"color:red\">"+session.getAttribute("wrong")+"</p>");
                                                session.invalidate();
                                                
      out.write("\n");
      out.write("\t\t\t\t\t\t<h1 style=\"margin-bottom: 50px;\">LOG IN</h1>\n");
      out.write("                                                <div id=\"cd\">\n");
      out.write("                                                <form action=\"advertise.jsp\">\n");
      out.write("                                                <input type=\"text\" name=\"us\" placeholder=\"Enter Your Username....\"><br>\n");
      out.write("                                                <input type=\"password\" name=\"pass\" placeholder=\"Enter Your Password....\"><br>\n");
      out.write("                                                <input type=\"submit\" style=\"background:blueviolet\" value=\"Log In\" style=\"margin-bottom: 25px\"><br>\n");
      out.write("                                                <a href=\"register.jsp\" style=\"color: darkblue;font-size: 25px\">New User? Register..</a>\n");
      out.write("                                                </form>\n");
      out.write("                                                </div> \n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("        </div>\n");
      out.write("\t\t\n");
      out.write("\t\t\n");
      out.write("\t\t<script>\n");
      out.write("\t\t$(\"#menu-toggle\").click( function(e){\n");
      out.write("\t\t\te.preventDefault();\n");
      out.write("\t\t\t$(\"#wrapper\").toggleClass(\"menuDisplayed\");\n");
      out.write("\t\t});\n");
      out.write("\t</script>\n");
      out.write("</body>\n");
      out.write("\n");
      out.write("</html>\n");
      out.write("\n");
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
