<%-- 
    Document   : login1
    Created on : Oct 3, 2017, 1:08:26 PM
    Author     : Rahul
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%
         Class.forName("com.mysql.jdbc.Driver");
         Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/city","root","");
         PreparedStatement st=con.prepareStatement("select * from login where username=? and password=?");
         st.setString(1,request.getParameter("us"));
         st.setString(2,request.getParameter("pass"));
         ResultSet rs=st.executeQuery();
         if(rs.next())
         { 
             session.setAttribute("user",request.getParameter("us"));
             response.sendRedirect("advertise.jsp");
         }
         else
         {
             session.setAttribute("wrong","Incorrect Username or Password");
             response.sendRedirect("login.jsp");
         }
%>
