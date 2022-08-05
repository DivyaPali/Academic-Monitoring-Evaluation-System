

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <center>
    <div class="container-fluid main">
        <div class="row"></div>
        <div class="row row1">
              <div class="form-col">
                <div class="col1">
                     <div class="form-group cont">
                        <form action="Langs" method="post">
                          <div class="intro"><p>Student Registration</p></div>
                             <div class="inputs">
                                <table>
                                  <tr><td>Subject </td><td><input type="text" name="subject"></td></tr>
                                  <tr><td>Link </td><td><input type="number" name="link"></td></tr>
                                  									
                                </table>
                                <div class="btn-box">
                                     <p></p>
                                     <button class="sub btn btn-primary" type="submit" value="Save">Submit</button>
                                     <button class="btn btn-secondary" type="reset" value="Reset">Reset</button>                                     
                                </div>
                                <div class="loginlink text-center"><a class="nav-link mr-3" href="login.jsp">Already registered click Login</a></div>
                             </div>
                        </form>
                     </div>
                </div>
            </div>
        </div>
    </div>
</center>
    </body>
</html>
