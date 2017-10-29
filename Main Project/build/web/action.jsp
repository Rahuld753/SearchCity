<%-- 
    Document   : action
    Created on : Oct 2, 2017, 3:12:50 AM
    Author     : Rahul
--%>

<%@page import="com.sun.tools.xjc.generator.bean.field.IsSetField"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<?php
     <?php  
 session_start();  
 $connect = mysqli_connect("localhost","root","","city");  
 if(isset($_POST["username"]))  
 {  
      $query = "  
      SELECT * FROM login  
      WHERE username = '".$_POST["username"]."'  
      AND password = '".$_POST["password"]."'  
      ";  
      $result = mysqli_query($connect, $query);  
      if(mysqli_num_rows($result) > 0)  
      {  
           $_SESSION['username'] = $_POST['username'];  
           echo 'Yes';  
      }  
      else  
      {  
           echo 'No';  
      }  
 }  
 if(isset($_POST["action"]))  
 {  
      unset($_SESSION["username"]);  
 }  
 ?> 
?>
