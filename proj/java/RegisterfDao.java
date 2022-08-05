    import java.sql.Connection;
	import java.sql.Driver;
	import java.sql.DriverManager;
	import java.sql.PreparedStatement;
	import java.sql.SQLException;

	public class RegisterfDao {
		
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
		
		
		public String insert(Faculty faculty)
		{
			loadDriver(dbDriver);
			Connection con = getConnection();
			String result = "S";
			String sql = "insert into faculty values(?,?,?,?,?)";
			
			PreparedStatement ps;
			try {
			ps = con.prepareStatement(sql);
			ps.setString(1, faculty.getName());
			ps.setString(2, faculty.getEmail());
			ps.setString(3, faculty.getPhone());
			ps.setString(4, faculty.getUname());
			ps.setString(5, faculty.getPassword());
			ps.executeUpdate();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				result = "Data not entered";
			}
			return result;
		}

	}

