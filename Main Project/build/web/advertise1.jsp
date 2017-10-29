<%-- 
    Document   : advertise
    Created on : Oct 2, 2017, 1:55:35 AM
    Author     : Rahul
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Advertise</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
	<link rel="stylesheet" href="styles.css" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
    </head>
    <body>
    <nav class="navbar navbar-inverse navbar-fixed-top" id="navi">
        <div class="container-fluid">
            <div class="navbar-header">
				<a href="#" class="navbar-brand navbar-link"><button class="btn btn-success btn-sm" type="button" id="menu-toggle">
				    <div id="m"></div>
					<div id="m"></div>
					<div id="m"></div>
				</button></a>
				<a href="#" class="navbar-brand navbar-link"><img src="srch.png"/></a>
				<a href="#" class="navbar-brand navbar-link">SearchCity </a>
                <button data-toggle="collapse" data-target="#navcol-1" class="navbar-toggle collapsed"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
            </div>
            <div class="collapse navbar-collapse" id="navcol-1">
                <ul class="nav navbar-nav navbar-right">
					<li role="presentation" class="active"><a href="home.jsp">Home</a></li>
                    <li role="presentation"><a href="AboutUs.jsp">About Us</a></li>
                    <li role="presentation"><a href="login.jsp">Advertise</a></li>
                </ul>
            </div>
        </div>
    </nav>   
 
	<div id="wrapper" class="menuDisplayed">
		<div id="sidebar-wrapper">
			<ul class="sidebar-nav">
				<li><a href="restaurant.jsp"><i class="fa fa-spoon" aria-hidden="true"></i>Restaurants</a></li>
				<li><a href="hospital.jsp"><i class="fa fa-h-square" aria-hidden="true"></i>Hospitals</a></li>
				<li><a href="school.jsp"><i class="fa fa-graduation-cap" aria-hidden="true"></i>Schools</a></li>
			</ul>
		</div>
		<div id="page-content-wrapper">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12" align="center">
                                            <%
                                                if(request.getParameter("name")=="" || request.getParameter("addres")=="" || request.getParameter("ph")=="" || request.getParameter("busi")=="" || request.getParameter("c")=="" || request.getParameter("im")=="" || request.getParameter("url")=="")
                                                {
                                                    response.sendRedirect("advertise.jsp");
                                                }
                                                else
                                                {
                                                    Class.forName("com.mysql.jdbc.Driver");
                                                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/city","root","");
                                                    PreparedStatement st=con.prepareStatement("insert into "+request.getParameter("busi")+" values(?,?,?,?,?,?)");
                                                    st.setString(1,request.getParameter("c"));
                                                    st.setString(2,request.getParameter("name"));
                                                    st.setString(3,request.getParameter("addres"));
                                                    st.setString(4,request.getParameter("ph"));
                                                    st.setString(5,request.getParameter("im"));
                                                    st.setString(6,request.getParameter("url"));
                                                    st.executeUpdate();
                                                    out.println("<div id=\"car\"><h1>Your Advertisement Created....</h1></div>");
                                                }
                                            %>           
					</div>
				</div>
			</div>
		</div>
	</div>
    </body>
</html>
