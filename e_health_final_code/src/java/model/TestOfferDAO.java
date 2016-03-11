package model;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

public class TestOfferDAO extends BaseDAO {

    Connection connection;
    PreparedStatement preparedStatement;
    Statement statement;
    ResultSet rs;
           
    public boolean addOffer(Test l,String email) throws ClassNotFoundException, SQLException, InstantiationException, IllegalAccessException
    {               
        connection = getConnection();
        
		System.out.println("addOffer method");
        
		String sql1 = "SELECT lab_name FROM e_health.pathologist WHERE email='"+email+"' ";
        try {
            
			statement = (Statement) connection.createStatement();
            rs = statement.executeQuery(sql1);
            
            
			if(rs.next()){
                
				l.setLabName(rs.getString(1));
				
            }
        } catch (SQLException ex) {
            Logger.getLogger(TestOfferDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        System.out.println("lab_name successfully retrieved.");    
		
		//insert query
		String sql = "insert into e_health.seasonal_offer values(?,?,?,?)	";
		//lab_name,type,validity,price
		
		try {
            preparedStatement = connection.prepareStatement(sql);
         
            preparedStatement.setString(1,l.getType() );
            preparedStatement.setString(2,l.getValidity() );
            preparedStatement.setString(3,l.getLabName() );
            preparedStatement.setString(4,l.getPrice() );
            
			
			int count = preparedStatement.executeUpdate();

            if (count > 0) {
                System.out.println("Successfully Inserted");
                return true;
				
            } else {
                System.out.println("insertion failed");
				return false;
				
            }
        } catch (SQLException ex) {
            Logger.getLogger(TestOfferDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
		
        return false;
    }
	
}
