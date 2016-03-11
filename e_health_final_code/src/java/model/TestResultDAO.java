package model;



import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

public class TestResultDAO extends BaseDAO{

    Connection connection;
    PreparedStatement preparedStatement;
    Statement statement;
    ResultSet rs;
    
    public boolean addResult(Report l) throws ClassNotFoundException, SQLException, InstantiationException, IllegalAccessException
    {               
        connection = getConnection();
        
		
		//insert query
		String sql = "insert into e_health.path_lab_report values(?,?,?,?)	";
		//id,type,date,duration
		
		try {
            preparedStatement = connection.prepareStatement(sql);
         
            preparedStatement.setString(1,l.getType() );
            preparedStatement.setString(2,l.getEmail() );
            preparedStatement.setString(3,l.getDuration() );
            preparedStatement.setString(4,l.getDate() );
            
			
			int count = preparedStatement.executeUpdate();

            if (count > 0) {
                System.out.println("Successfully Inserted");
                return true;
                
				
            } else {
                System.out.println("insertion failed");
                return false;
				
				
            }
        } catch (SQLException ex) {
            Logger.getLogger(PatientDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
		
        return false;
    }
}
