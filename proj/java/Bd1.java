import java.util.*;
import java.io.IOException;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




@WebServlet("/Bd1")
public class Bd1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Bd1() {
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
		
		List<Integer> rollno = new ArrayList<>();
		List<Integer> marks = new ArrayList<>();
			

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
		
		int n = 0;
		
		try{
			connection = DriverManager.getConnection(connectionUrl+database, userid, password);
			statement=connection.createStatement();
			String sql ="select count(*) from member";			
			resultSet = statement.executeQuery(sql);			 
			resultSet.next();
			n = resultSet.getInt(1);
			connection.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

		
		String[] rollno1 = (request.getParameterValues("rollno"));
		String[] marks1 = (request.getParameterValues("marks"));
		
		
		for(int x=0;x<n;x++){
			
			rollno.add(Integer.parseInt(rollno1[x]));
			marks.add(Integer.parseInt(marks1[x]));		
			
		}

		Bd1Dao iDao = new Bd1Dao();
		String result = iDao.insert(rollno, marks);
		response.getWriter().print(result);
		
	}

}
