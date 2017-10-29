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
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
	<link rel="stylesheet" href="styles.css" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
        <link rel="stylesheet" type="text/css" href="https://rawgit.com/LeaVerou/awesomplete/gh-pages/awesomplete.css">
        <title>Advertise</title>
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
                                                        <h1>Welcome <%out.println(session.getAttribute("user"));%></h1>
                                                        <h1>Advertise Your Business Here</h1>
                                                        <img src="adv_1.JPG" width="500" height="300" alt="advertise" style="margin-bottom: 50px"/>
                                                        <p style="color: red"><b>*All Fields are required to be filled</b></p>
                                                        <form action="advertise1.jsp" id="sel">
                                                        <select name="busi" id="bus">
                                                            <option value="" disabled selected>Select type of Business....</option>
                                                            <option value="restaurant">Restaurant</option>
                                                            <option value="hospital">Hospital</option>
                                                            <option value="school">School</option>
                                                        </select><br>
                                                        <select name="c" id="ci">
                                                            <option value="" disabled selected>Select Your City....</option>
                                                            <option value="Pune">Pune</option>
                                                            <option value="Jalgaon">Jalgaon</option>
                                                            <option value="Nashik">Nashik</option>
                                                            <option value="Amravati">Amravati</option>
                                                        </select><br>
                                                        <input type="text" name="name"  placeholder="Enter Name of your Business..."><br>
                                                        <input type="text" name="addres"  placeholder="Enter your address of Your Business...."><br>
                                                        <input type="text" name="ph" placeholder="Enter your Phone No....."><br>
                                                        <p style="color: white">Choose an Image for your Business....</p>
                                                        <input id="up" name="im" value="" type="file" accept="image/*"><br>                                                        
                                                        <input type="text" name="url" placeholder="Enter your Google map short link....."><br>
                                                        <input type="submit" value="Advertise Here" style="background-color: greenyellow" id="sub">
                                                        </form>
					</div>
				</div>
			</div>
		</div>
	</div>
        
        <script>
		$("#menu-toggle").click( function(e){
			e.preventDefault();
			$("#wrapper").toggleClass("menuDisplayed");
		}); 
	</script>
        
    </body>
</html>
