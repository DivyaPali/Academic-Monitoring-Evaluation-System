
 
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

 
public class LoginDao 
{
	private String dbUrl = "jdbc:mysql://localhost:3306/userdb";
	private String dbUname = "root";
	private String dbPassword = "";
	private String dbDriver = "com.mysql.jdbc.Driver";
	
	public void loadDriver(String dbDriver)
	{
		try {
			Class.forName(dbDriver);
		} catch (ClassNotFoundException e) 
		{
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
	
	public String authenticateUser(Member member )
    {
        String userName = member.getUname(); //Assign user entered values to temporary variables.
        String password = member.getPassword();

        
        Statement statement = null;
        ResultSet resultSet = null;

        String userNameDB = "";
        String passwordDB = "";
        loadDriver(dbDriver);
		Connection con = getConnection();
        
        try
        {
           
            statement = con.createStatement(); //Statement is used to write queries. Read more about it.
            resultSet = statement.executeQuery("select uname,password from member"); //the table name is users and userName,password are columns. Fetching all the records and storing in a resultSet.

            while(resultSet.next()) // Until next row is present otherwise it return false
            {
             userNameDB = resultSet.getString("uname"); //fetch the values present in database
             passwordDB = resultSet.getString("password");

              if(userName.equals(userNameDB) && password.equals(passwordDB))
              {
                 return "SUCCESS"; ////If the user entered values are already present in the database, which means user has already registered so return a SUCCESS message.
              }
            }
        }
            catch(SQLException e)
            {
               e.printStackTrace();
            }
            return "Invalid user credentials"; // Return appropriate message in case of failure
        
    }
}