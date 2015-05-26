package Classes;
import java.sql.*;

public class Posting {
	
	static final String DRIVER = "com.mysql.jdbc.Driver";
	static final String DATABASE_URL = "jdbc:mysql://localhost/bursaloker";
	static final String USERNAME = "root";
	static final String PASSWORD = "";
	
	private static String makeNewID(Connection conn) throws ClassNotFoundException, SQLException
	{
		String ID = "";
		String newID;
		String query = "SELECT MAX(post_id) FROM posts;";
		
		Statement s = conn.createStatement();
		ResultSet result = s.executeQuery(query);
		
		while(result.next())
			ID = result.getString(1);

		if(ID == null) newID = "PS000";
		else
		{
			int post_id = Integer.parseInt(ID.substring(2,ID.length()));
			post_id++;
			newID = "PS" + String.format("%3s",post_id).replace(' ','0');
		}
		
		return newID;
	}
	
	public static int addNewPost(String content) throws ClassNotFoundException, SQLException
	{
		Class.forName(DRIVER);
		Connection conn = DriverManager.getConnection(DATABASE_URL,USERNAME,PASSWORD);
		
		String ID = makeNewID(conn);
		String query = "INSERT INTO posts(post_id,description,start_date) VALUES('" + ID + "','" + content + "',SUBSTR(SYSDATE(),1,10));";
		
		Statement s = conn.createStatement();
		int result = s.executeUpdate(query);
		
		conn.close();
		
		return result;
	}
}
