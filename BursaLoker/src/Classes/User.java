package Classes;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class User {
	
	static final String DRIVER= "com.mysql.jdbc.Driver";
    static final String DATABASE_URL= "jdbc:mysql://localhost/bursaloker";
    static final String USERNAME= "root";
    static final String PASSWORD= "";
	
	public static String getPassword(String userId_) throws SQLException, ClassNotFoundException{
		String result="";
        String Query="select password from login where user_id= '" + userId_ + "';";
        Class.forName(DRIVER); 
    	System.out.println("Driver Loaded!");
    	
    	Connection connection = DriverManager.getConnection(DATABASE_URL,USERNAME,PASSWORD);
        System.out.println("Database Connected!");

    	Statement statement = connection.createStatement();
    	ResultSet resultSet = statement.executeQuery(Query);
    	
    	while(resultSet.next())
    	{
    		result = resultSet.getString(1);
    	}
    	return result;
	}
	
	public static Boolean updatePassword(String userId_, String newPass_) throws ClassNotFoundException, SQLException{
    	String result="";
    	
        String Query = "update login set password = '" + newPass_ + "' where user_id = '" + userId_+ "';";
    	
        Class.forName(DRIVER); 
    	//System.out.println("Driver Loaded!");
    	
    	Connection connection = DriverManager.getConnection(DATABASE_URL,USERNAME,PASSWORD);
        //System.out.println("Database Connected!");
    	Statement statement = connection.createStatement();
    	//PreparedStatement pStatement = connection.prepareStatement(Query);
    	//pStatement.setString(1, userId_);
    	//pStatement.setString(2, newPass_);
    	
    	int results =  statement.executeUpdate(Query);
    	if(results==1)
    		return true;
    	else
    		return false;
	}
	public static String changePassword(String userId_, String oldPass_, String newPass_, String confirmPass_) throws ClassNotFoundException, SQLException{
		String pass = getPassword(userId_);
		//System.out.println(oldPass_ + ". " + pass + ". ");
		
		//jika old password benar
		if(pass.compareTo(oldPass_) == 0){
			//jika new pass sama dengan confirm pass
			if(newPass_.compareTo(confirmPass_)==0){
				//jika update password berhasil
				if(updatePassword(userId_, newPass_))
					return "Berhasil Ganti Password";
				else
					return "Gagal Ganti Password";
			}
			else
				return "Confirm password berbeda dengan password baru";
		}
		else
			return "Salah memasukkan password lama";
	}
}
