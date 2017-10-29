<%-- 
    Document   : school1
    Created on : Sep 29, 2017, 11:14:40 PM
    Author     : Rahul
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.lang.String"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Schools</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
	<link rel="stylesheet" href="styles.css" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
        <link rel="stylesheet" type="text/css" href="https://rawgit.com/LeaVerou/awesomplete/gh-pages/awesomplete.css">
        <script type="text/javascript" src="https://rawgit.com/LeaVerou/awesomplete/gh-pages/awesomplete.min.js"></script>
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
						<h1>Search Schools in Your City</h1>
                                                <div id="id1">
                                                <form action="school1.jsp">
						<input type="text" class="awesomplete" name="search" id="myinput" data-minchars="0" placeholder="Search for a city.....">
                                                <input type="submit" value="Search" class="btn btn-info" style="margin-left: -5px"><br><br><br>
                                                </form>
                                                <%
                                                    Class.forName("com.mysql.jdbc.Driver");
                                                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/city","root","");
                                                    PreparedStatement st=con.prepareStatement("call srchschool(?)");
                                                    st.setString(1,request.getParameter("search"));
                                                    ResultSet rs=st.executeQuery();
                                                    if(rs.next())
                                                    {
                                                    do
                                                    {
                                                          out.println("<div align=\"left\" id=\"car\"><a href="+rs.getString(6)+" target=\"_blank\">"
                                                                  + "<h1>"+rs.getString(2)+
                                                                  "</h1></a><p><img src=school//"+rs.getString(5)+" align=\"left\"></p><p id=\"head\" style=\"font-size:25px\">Address:<br></p><p>"+rs.getString(3)+"<br></p><p id=\"head\" style=\"font-size:25px\">Phone:<br></p><p>"+rs.getString(4)+"</p></div>");
                                                    }while(rs.next());
                                                    }
                                                    else
                                                        out.println("<div id=\"car\"><h1>No Results Found</h1></div>");
                                                 %>
                                                </div>
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
                var input = document.getElementById("myinput");
                var awesomplete = new Awesomplete(input);
                awesomplete.list = ["Pune", "Nashik", "Jalgaon", "Amravati"];
                </script>
		
</body>

</html>
