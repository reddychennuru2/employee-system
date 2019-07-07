package mp;
import java.sql.*;
public class dbcon
{
	 
	 
	public static Connection con = null;
	 
	public static void getConnection() throws ClassNotFoundException,SQLException
	{
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		con=DriverManager.getConnection("jdbc:odbc:projectdsn");
	}
}