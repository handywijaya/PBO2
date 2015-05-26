package Classes;


import java.util.ArrayList;
import java.sql.*;

public class Jabatan
{
	/*private String id;
	private String nama_jabatan;
	private ArrayList<Jabatan_Detil> AlJabatan = new ArrayList<Jabatan_Detil>();*/
	
	static final String DRIVER = "com.mysql.jdbc.Driver";
	static final String DATABASE_URL = "jdbc:mysql://localhost/bursaloker";
	static final String USERNAME = "root";
	static final String PASSWORD = "";
	
	static Connection connection;
	

	public Jabatan() throws ClassNotFoundException, SQLException
	{
		System.out.println("test");
		Class.forName(DRIVER);
		
		connection = DriverManager.getConnection(DATABASE_URL, USERNAME, PASSWORD);
		
	}
	
	public String getter() {
		
		return "kampret";
	}
	
	public static String getJabatan() throws SQLException, ClassNotFoundException
	{
		
		
		String query = "SELECT tag_id, nama_tag FROM tag_jabatan;";
		
		Statement s = connection.createStatement();
		ResultSet resultset = s.executeQuery(query);
		
		String hasil="";
		
		while(resultset.next())
		{
			hasil += "<div class='row'><input type='checkbox' name='jabatanList' value='" + resultset.getString(1) + "'/> &nbsp " + resultset.getString(2) +"</div>";
		}
		
		return hasil;
	}
	

}


