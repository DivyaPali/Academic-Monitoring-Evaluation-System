<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import=" java.util.Arrays" %>
<%@ page import ="java.util.Iterator" %>
<%@ page import ="java.util.List" %>
<%
String rollno = request.getParameter("rollno");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "userdb";
String userid = "root";
String password = "";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>  
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">


<title>Internal</title>
</head>
<body>


<!--Navbar 1-->
     <nav class="navbar navbar-expand-md navbar-light bg-light">
      <div class="head">
        <a class="navbar-brand header" href="/">
          <img src="img/logo.jpg" width="50" height="50" alt="logo"> Academic Monitoring & Evaluation System
        </a>        
      </div>
    </nav>

    <div class="container-fluid sticky-top bg-dark">
      <nav class="container navbar navbar-expand-md navbar-dark">
        <div class="navbar-collapse collapse w-100 order-3 dual-collapse2">
          <ul class="navbar-nav mx-auto" style="letter-spacing:2px; font-size: 15px;">
            <li class="nav-item">
              <a class="nav-link mr-3" href="register.jsp">Student</a>
            </li>
            <li class="nav-item">
              <a class="nav-link mr-3" href="registerf.jsp">Faculty</a>
            </li>
            <li class="nav-item">
              <a class="nav-link mr-3" href="/">HOD</a>
            </li>
          </ul>
        </div>
      </nav>
    </div>
    
 <center>
    <div class="container-fluid main">
        <div class="row"></div>
        <div class="row row1">
              <div class="form-col">
                <div class="col1">
                     <div class="form-group cont">
                        <form action="Bdf" method="post">
                          <div class="intro"><p>Faculty Index</p></div>
                             <div class="inputs">
                                <table>
                                	<tr>
										<td>Roll No</td>
										<td>Marks </td>
									</tr>
										<%
										try{
										connection = DriverManager.getConnection(connectionUrl+database, userid, password);
										statement=connection.createStatement();
										String sql ="select rollno from member";	
										resultSet = statement.executeQuery(sql);
										while(resultSet.next()){
										%>
										<tr>
										<td><input type="number" name="rollno" value="<%=resultSet.getString("rollno") %>" readonly="readonly"/></td>
									    <td><input type="number" name="marks" /></td>									
										</tr>	
										<%}%>							 
										                                 				
                                </table>
                                 <div class="btn-box">
                                     <p></p>
                                     <button class="sub btn btn-primary" type="submit" value="Add">Add</button>
                                     <button class="btn btn-secondary" type="reset" value="Reset">Reset</button>                                     
                                 </div>
                                 <%
										connection.close();
										} catch (Exception e) {
										e.printStackTrace();
										}
										%>
                             </div>
                        </form>
                     </div>
                </div>

            </div>
        </div>
    </div>
</center>   
    
   


<footer id="contact" class="text-center">
    <div class="container-fluid bg-dark text-light mt-5 pt-5">
        <div class="container py-5">
            <div class="row">
                <div class="col-sm-12 col-md-3 col-lg-3">
                    <h3 class="space">Contact Us</h3>
                    <p class="font-weight-light">AMAES@gmail.com<br>
                        <a href="#" style="text-decoration:none;color:#fff;"><i class="fa fa-map-marker"></i>  Nagpur, India</a><br>
                        <a href="#" style="text-decoration:none;color:#fff;"><i class="fa fa-phone"></i>  11100700</a>
                    </p>
                </div>
                <div class="col-sm-12 col-md-3 col-lg-3">
                    <h3 class="space">Follow Us</h3>
                    <p class="icons">
                        <a href="#" class="icon-link i1"><i class="fa fa-youtube i1-fa"></i></a>
                        <a href="#" class="icon-link"><i class="fa fa-instagram"></i></a>
                    </p>
                </div>
                <div class="col-sm-12 col-md-6 col-lg-6">
                    <h3 class="space">
                        Academic Monitoring & Evaluation System
                    </h3>
                    <p class="font-weight-light">A Mega-Project by Group 14.<br> Government College of Engineering nagpur.<br>  Feel free to reach out to us if you have any questions.</p>
                </div>
            </div>
        </div>
        <div class="container text-center py-3">
            <p style="font-size:12px">Copyright © 2021 All Rights Reserved.</p>
        </div>
    </div>
</footer>

<style>

  body {
		background-repeat: no-repeat;
		background-size: cover;
		background-attachment: fixed;
		background-position: center bottom;
    backdrop-filter:blur(10px);
 }

 * {
    margin:0;
    padding:0;
    box-sizing: border-box;
 }

  .main {
    padding:50px 150px 50px 150px;
}

 @import url('https://fonts.googleapis.com/css?family=Ubuntu');

 nav .head{
    display:flex;
    align-items: center;
    justify-content: center;
    margin-left: auto;
    margin-right: auto;
 }

 .header {
    font-size:40px;
    font-weight: 500;
    font-family: 'Ubuntu', sans-serif;
    color: #343a40 !important;
    letter-spacing:2px;
 }

  .intro {
    color:#000;
    font-family: 'Ubuntu', sans-serif;
    letter-spacing: 2px;
    text-transform:capitalize;
    width:100%;
    margin-bottom: 0px;
    font-size:35px;
    font-weight:500;
    display:flex;
    align-items: center;
    justify-content: center;
  }

.row1 {
    margin-bottom:100px;
    display:flex;
    align-items: center;
    justify-content: center;
}

 

.form-col {
    margin-left:0px;
    padding-left:0px;
}

 .cont {
    padding:10px;
    backdrop-filter:blur(10px);
    border-radius:5px;
    color:#000;
    font-family: 'Oswald', sans-serif;
    font-size:14px;
    letter-spacing: 1px;
}

.inputs {
    text-align:center;
    margin:30px;
  }

  input {
    display:block;
    width:100px;
    height:30px;
    outline: none;
    border:none;
    border: 2px solid rgba(0,0,0,0.3);
    margin-bottom:5px;
    font-size: 16px;
    text-align:center;
    color: #000;
    background: transparent;
    letter-spacing:3px;
    margin-left: 8px;
  }

  .name {
    text-transform: capitalize;
  }

  input::-webkit-outer-spin-button,input::-webkit-inner-spin-button {
    -webkit-appearance:none;
  }

  .btn-box {
    margin-top:40px;
    display:flex;
    justify-content: center;
  }

  .btn-box p {
    font-size:.6rem;
    padding: 1rem 0;
  }

  .btn-box button {
    width:150px;
    height:40px;
    font-size: 1rem;
    border:none;
    outline: none;
    color:#000;
    display: block;
    background-color: transparent;
    border: 2px solid #898989;
    border-radius: 5px;
    letter-spacing: 1px;
    text-transform: uppercase;
    cursor: pointer;
  }

  .btn-box button:hover {
    transform: translate(-1px);
    
  }

  .loginlink {
    cursor: pointer;
  }

  .loginlink:hover {
    color: dodgerblue;
  }

  .sub{
    margin-right: 15px;
  }


footer{
    bottom:0;
    width:100%;
    height:50px;

}

.space {
    margin-bottom:30px;
}

.icons {
    display: flex;
    justify-content: space-evenly;
}

.icon-link {
  box-sizing:border-box;
  display: flex;
  justify-content: center;
  align-items: center;
  color:#fff;
  width: 40px;
  height: 40px;
  border: 2px solid #fff;
  text-decoration: none;
  border-radius: 50px;
}

.i1 {
    margin-right:40px;
}

.icon-link i {
    font-size:20px;
    text-decoration: none;
    color:#fff;
}
</style>

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

</body>
</html>