
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Register
 */
@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Register() {
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
	
		String name = request.getParameter("name");
	   int  rollno = Integer.parseInt(request.getParameter("rollno"));
		String sem = request.getParameter("sem");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String uname = request.getParameter("uname");
		String password = request.getParameter("password");
		
		Member member = new Member(name,rollno,sem, email, phone,uname, password);
		
		RegisterDao rDao = new RegisterDao();
		String result = rDao.insert(member);
		
		 if(result.equals("S")) //If function returns success string then user will be rooted to Home page
         {
             request.setAttribute("uname", uname); //with setAttribute() you can define a "key" and value pair so that you can get it in future using getAttribute("key")
             request.getRequestDispatcher("/login.jsp").forward(request, response);//RequestDispatcher is used to send the control to the invoked page.
         }
		 else
		 {
			   request.setAttribute("uname", uname); //with setAttribute() you can define a "key" and value pair so that you can get it in future using getAttribute("key")
	             request.getRequestDispatcher("/register.jsp").forward(request, response);//RequestDispatcher is used to send the control to the invoked page.
	         
		 }
		
	}

}