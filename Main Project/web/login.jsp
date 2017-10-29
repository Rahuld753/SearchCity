<%-- 
    Document   : login
    Created on : Oct 2, 2017, 10:26:01 PM
    Author     : Rahul
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Advertisement</title>
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
					<li role="presentation" class="active"><a href="home.jsp">Home</a></li>>
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
                                                if(request.getParameter("us1")!=null && request.getParameter("pass1")!=null)
                                                {
                                                Class.forName("com.mysql.jdbc.Driver");
                                                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/city","root","");
                                                PreparedStatement st=con.prepareStatement("insert into login values(?,?)");
                                                st.setString(1,request.getParameter("us1"));
                                                st.setString(2,request.getParameter("pass1"));
                                                st.executeUpdate();
                                                }
                                                if(session.getAttribute("wrong")!=null)
                                                out.println("<p style=\"color:red\">"+session.getAttribute("wrong")+"</p>");
                                                session.invalidate();
                                                %>
						<h1 style="margin-bottom: 50px;">LOG IN</h1>
                                                <div id="cd">
                                                <form action="login1.jsp">
                                                <input type="text" name="us" placeholder="Enter Your Username...."><br>
                                                <input type="password" name="pass" placeholder="Enter Your Password...."><br>
                                                <input type="submit" style="background:blueviolet" value="Log In" style="margin-bottom: 25px"><br>
                                                <a href="register.jsp" style="color: darkblue;font-size: 25px">New User? Register..</a>
                                                </form>
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
	</script>
</body>

</html>

