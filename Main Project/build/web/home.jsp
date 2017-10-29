<%-- 
    Document   : home
    Created on : Sep 28, 2017, 10:35:35 AM
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
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Home</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
	<link rel="stylesheet" href="styles.css" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
        <link rel="stylesheet" type="text/css" href="https://rawgit.com/LeaVerou/awesomplete/gh-pages/awesomplete.css">
        <script type="text/javascript" src="https://rawgit.com/LeaVerou/awesomplete/gh-pages/awesomplete.min.js"></script>
	<!-- Start WOWSlider.com HEAD section -->
	<link rel="stylesheet" type="text/css" href="engine1/style.css" />
	<script type="text/javascript" src="engine1/jquery.js"></script>
	<!-- End WOWSlider.com HEAD section -->
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
						<h1>Explore Your City</h1>
						<!-- Start WOWSlider.com BODY section -->
                                        <div id="wowslider-container1">
						<div class="ws_images"><ul>
								<li><img src="data1/images/search_for_hospitals.jpg" alt="Search For Hospitals" title="Search For Hospitals" id="wows1_1"/></li>
								<li><img src="data1/images/search_for_restaurants.jpg" alt="wowslider.net" title="Search For Restaurants" id="wows1_2"/></li>
								<li><img src="data1/images/search_for_schools.jpg" alt="Search For Schools" title="Search For Schools" id="wows1_3"/></li>
						</ul></div>
                                                <div class="ws_bullets"><div>
								<a href="#" title="Search For Hospitals"><span><img src="data1/tooltips/search_for_hospitals.jpg" alt="Search For Hospitals"/>2</span></a>
								<a href="#" title="Search For Restaurants"><span><img src="data1/tooltips/search_for_restaurants.jpg" alt="Search For Restaurants"/>3</span></a>
								<a href="#" title="Search For Schools"><span><img src="data1/tooltips/search_for_schools.jpg" alt="Search For Schools"/>4</span></a>
							</div>
						<script type="text/javascript" src="engine1/wowslider.js"></script>
						<script type="text/javascript" src="engine1/script.js"></script>
						<!-- End WOWSlider.com BODY section -->
                                                </div>
                                        </div><br>
                                                <div id="id1">
                                                <form action="home1.jsp">
						<input type="text" class="awesomplete" name="search" id="myinput" data-minchars="0" placeholder="Search for a city.....">
						<input type="submit" value="Search" class="btn btn-info" style="margin-left: -5px"><br><br><br>
                                                </form>
                                                </div>
				<h2>Popular Services...</h2>
				<ul class="content" id="fon">
					<li><a href="restaurant.jsp" title="Restaurants"><i class="fa fa-spoon" aria-hidden="true"></i></a></li>
				        <li><a href="hospital.jsp" title="Hospitals"><i class="fa fa-h-square" aria-hidden="true"></i></a></li>
					<li><a href="school.jsp" title="Schools"><i class="fa fa-graduation-cap" aria-hidden="true"></i></a></li>
				</ul><br><br><br><br><br><br><br><br>
                                <div id="khatm">
                                    <%
                                       Class.forName("com.mysql.jdbc.Driver");
                                       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/city","root","");
                                       PreparedStatement st=con.prepareStatement("select * from cntitems");
                                       ResultSet rs=st.executeQuery();
                                       while(rs.next())
                                       {
                                           out.println("<p style=\"color:red;font-size:18px;margin-bottom:-5px\">No. of Search items in "+rs.getString(1)+": "+rs.getString(2)+"</p><br>");
                                       }
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