<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/userdb";
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

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">


<title>LP CT1</title>
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
          <div class="navbar">
          	<div class="dropdown">
			  <button class="btn btn-secondary dropdown-toggle btn1" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
			    Class Test1
			  </button>
			  <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
			      <a class="dropdown-item" href="lpct1.jsp">Language Processor</a>
			      <a class="dropdown-item" href="bdct1.jsp">Big Data</a>
			      <a class="dropdown-item" href="mcct1.jsp">Mobile Computing</a>
			      <a class="dropdown-item" href="dwct1.jsp">Data warehouse and Mining</a>
			      <a class="dropdown-item" href="tcct1.jsp">TCPIP</a>
			  </div>
			</div>
			  <div class="dropdown">
			  <button class="btn btn-secondary dropdown-toggle btn2" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
			    Class Test2
			  </button>
			  <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
			      <a class="dropdown-item" href="lpct2.jsp">Language Processor</a>
			      <a class="dropdown-item" href="bdct2.jsp">Big Data</a>
			      <a class="dropdown-item" href="mcct2.jsp">Mobile Computing</a>
			      <a class="dropdown-item" href="dwct2.jsp">Data warehouse and Mining</a>
			      <a class="dropdown-item" href="tcct2.jsp">TCPIP</a>
			  </div>
			</div>
			  <div class="dropdown">
			  <button class="btn btn-secondary dropdown-toggle btn3" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
			    Final Result
			  </button>
			  <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
			      <a class="dropdown-item" href="lp.jsp">Language Processor</a>
			      <a class="dropdown-item" href="bd.jsp">Big Data</a>
			      <a class="dropdown-item" href="mc.jsp">Mobile Computing</a>
			      <a class="dropdown-item" href="dw.jsp">Data warehouse and Mining</a>
			      <a class="dropdown-item" href="tc.jsp">TCPIP</a>
			  </div>
			</div>               
  		  </div>
  		     <ul class="navbar-nav ml-auto" style="letter-spacing:2px; font-size: 15px;">
          	<li class="nav-item ml-auto">
              <a class="nav-link" href="Logoutf">Logout</a>
            </li>
          </ul>   
         </div>
      </nav>
    </div>
    	
    	
<div class="cta-banner">
	<div class="container py-5">
		<div class="row">
			<div class="col-sm-12 col-md-12 col-lg-6 pb-4">
				<h1 class=" cta-message display-4 font-weight-bold">Big Data Final Result</h1>
				<h5>An investment in knowledge pays the best interest</h5>
			</div>
		</div>
	</div>
</div> 	


<center>
    <div class="container-fluid main">
        <div class="row"></div>
        <div class="row row1">
              <div class="form-col">
                <div class="col1">
                     <div class="form-group cont">
                        <form action="Lp1" method="post">
                          <div class="intro"><p>Result</p></div>
                             <div class="inputs">
                                <table class="styled-table">
                                	<thead>
	                                	<tr class="active-row">
											<td>Roll No</td>
											<td>Name</td>
											

<td> CT1 Marks</td>
<td>CT2 Marks</td>
<td>Internal Marks</td>
<td>Total</td>
										</tr>
									</thead>	
									<tbody>
									<%
									try{
									connection = DriverManager.getConnection(connectionUrl, userid, password);
									statement=connection.createStatement();

String sql ="select s.rollno,m.name,f.marks,s.marks as ut2,i.marks as inter  from bd1 AS f INNER JOIN  member AS m ON m.rollno=f.rollno  INNER JOIN  bd2 AS s ON m.rollno=s.rollno INNER JOIN bdf AS i ON m.rollno=i.rollno";

									resultSet = statement.executeQuery(sql);
									while(resultSet.next()){
									%>
									<tr>
									<td><%=resultSet.getString("rollno") %></td>
<td><%=resultSet.getString("name") %></td>
<td><%=resultSet.getInt("marks") %></td>
<td><%=resultSet.getInt("ut2") %></td>
<td><%=resultSet.getInt("inter") %></td>
<td><%=resultSet.getInt("marks") + resultSet.getInt("ut2") + resultSet.getInt("inter") %></td>

									</tr>
									<%
									}
									connection.close();
									} catch (Exception e) {
									e.printStackTrace();
									}
									%>
									</tbody>														 									                                 				
                                </table>
                                 
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
            <p style="font-size:12px">Copyright � 2021 All Rights Reserved.</p>
        </div>
    </div>
</footer>


<style>
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

.cta-banner {
		background-image:linear-gradient( to left, rgba(10,10,10,0) 10%, #fff 85%),url("img/bg3.jpg");
		height:500px;
		background-attachment: fixed;
		background-position: center bottom;
		background-repeat: no-repeat;
		background-size: cover;
		z-index: auto;
		position: relative;
	}


.container {
	display:block;
	}
 
 
 .intro {
    color:#000;
    font-family: 'Ubuntu', sans-serif;
    letter-spacing: 2px;
    text-transform:capitalize;
    width:100%;
    margin-top:15px;
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
 
 

footer{
    position:;
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

.btn-secondary {
	color:#fff;
	background-color:#343a40;
	border:none;
}

.btn1,.btn2, .btn3 {
	margin-right:5px;
}

.styled-table {
    border-collapse: collapse;
    margin: 25px 0;
    font-size: 0.9em;
    font-family: sans-serif;
    min-width: 800px;
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
}

.styled-table thead tr {
    background-color: #009879;
    color: #ffffff;
    text-align: center;
}

.styled-table th,
.styled-table td {
    padding: 12px 15px;
}

.styled-table tbody tr {
    border-bottom: 1px solid #dddddd;
}

.styled-table tbody tr:nth-of-type(even) {
    background-color: #f3f3f3;
}

.styled-table tbody tr:last-of-type {
    border-bottom: 2px solid #009879;
}

.styled-table tbody tr.active-row {
    font-weight: bold;
    color: #009879;
}

td button {
    background-color: transparent;
    font-size: 15px;
    border:none;
    outline: none;
    }

td button i {
    color: #009879;
    margin-right:8px;
}



</style>

  <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>  
    


</body>
</html>