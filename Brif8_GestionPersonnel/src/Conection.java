
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.PreparedStatement;

public class Conection {

	
	Connection conn;
	Statement stat;
	ResultSet rs;
	PreparedStatement pr;
	
	
	public void Connect() {
		
		try {
			conn = DriverManager.getConnection("jdbc:mysql://localhost/gestionpersonnel", "testetoto" , "test1234");
			System.out.println("ok");
		}catch (SQLException e) {
			System.out.print(e);
		}
	}
}
