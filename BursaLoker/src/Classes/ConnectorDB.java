package Classes;
import java.sql.*;

public class ConnectorDB 
{
	static final String DRIVER = "com.mysql.jdbc.Driver";
	static final String DATABASE_URL = "jdbc:mysql://localhost/bursaloker";
	static final String USERNAME = "root";
	static final String PASSWORD = "";
	
	static Connection connection;
	
	public ConnectorDB() throws SQLException, ClassNotFoundException
	{
		
		
	}
	
	public static Connection getConnection() throws ClassNotFoundException, SQLException
	{
		
		Class.forName(DRIVER);
		
		connection = DriverManager.getConnection(DATABASE_URL, USERNAME, PASSWORD);
		
		return connection;
		
	}
	
	public static void closeConnection() throws SQLException
	{
		connection.close();
	}
}
