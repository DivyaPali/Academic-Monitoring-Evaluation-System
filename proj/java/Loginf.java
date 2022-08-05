

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Loginf")
public class Loginf extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Loginf() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
   
 
        String uname = request.getParameter("uname");
        String password = request.getParameter("password");
 
        Faculty faculty = new Faculty(); //creating object for LoginBean class, which is a normal java class, contains just setters and getters. Bean classes are efficiently used in java to access user information wherever required in the application.
 
        faculty.setUname(uname); //setting the username and password through the loginBean object then only you can get it in future.
         faculty.setPassword(password);
 
        LoginfDao loginDao = new LoginfDao(); //creating object for LoginDao. This class contains main logic of the application.
 
        String userValidate = loginDao.authenticateUser(faculty); //Calling authenticateUser function
 
        if(userValidate.equals("SUCCESS")) //If function returns success string then user will be rooted to Home page
         {
             request.setAttribute("uname", uname); //with setAttribute() you can define a "key" and value pair so that you can get it in future using getAttribute("key")
             request.getRequestDispatcher("/homef.jsp").forward(request, response);//RequestDispatcher is used to send the control to the invoked page.
         }
         else
         {
             request.setAttribute("errMessage", userValidate); //If authenticateUser() function returnsother than SUCCESS string it will be sent to Login page again. Here the error message returned from function has been stored in a errMessage key.
             request.getRequestDispatcher("/login.jsp").forward(request, response);//forwarding the request
         }
    }
}


