import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.*;

public class Lp1Dao {

	private String dbUrl = "jdbc:mysql://localhost:3306/userdb";
	private String dbUname = "root";
	private String dbPassword = "";
	private String dbDriver = "com.mysql.jdbc.Driver";
	
	public void loadDriver(String dbDriver)
	{
		try {
			Class.forName(dbDriver);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public Connection getConnection()
	{
		Connection con = null;
		try {
			con = DriverManager.getConnection(dbUrl, dbUname, dbPassword);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return con;
	}
	
	
	public String insert(List rollno, List marks)
	{
		loadDriver(dbDriver);
		Connection con = getConnection();
		String result = "S";
		String sql = "insert into lp1t values(?,?)";	
		String sql1 = "truncate table lp1t";
		
		PreparedStatement ps, ps1;
		
		try {
			
			ps1 = con.prepareStatement(sql1);
			ps1.executeUpdate();
			
		
			for(int i=0;i<rollno.size();i++){				 
					ps = con.prepareStatement(sql);
					ps.setInt(1, (int) rollno.get(i));
					ps.setInt(2, (int) marks.get(i));					
					ps.executeUpdate();				
	        }
				
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			result = "Data not entered";
		}
		return result;
	}
}