/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author universe
 */
/**
 * PreparedStatement stmt = connection.prepareStatement("SELECT * FROM users
 * WHERE userid=? AND password=?"); stmt.setString(1, userid); stmt.setString(2,
 * password); ResultSet rs = stmt.executeQuery();
 *
 */
public class PatientDAO extends BaseDAO{

    Connection connection;
    PreparedStatement preparedStatement;
    Statement statement;
    ResultSet rs;

    public void createAccount(Patient c) throws ClassNotFoundException, SQLException, InstantiationException, IllegalAccessException {
        connection = getConnection();
        //15 ?
        //person
        String sql = "insert into e_health.person values(?,?,?,?,?,?,?,?,?,?,?)";
        //id,fname,lname,street,aptno,city,zip,phone,sex,email,dob,type,labname,labaddr,labid
        try {
            preparedStatement = connection.prepareStatement(sql);
         
            preparedStatement.setString(1, c.getFirstName());
            preparedStatement.setString(2, c.getLastName());
            preparedStatement.setString(3, c.getStreet());
            preparedStatement.setString(4, c.getApartmentNumber());
            preparedStatement.setString(5, c.getCity());
            preparedStatement.setString(6, c.getZipCode());
            preparedStatement.setString(7, c.getPhone());
            preparedStatement.setString(8, c.getSex());
            preparedStatement.setString(9, c.getEmail());
            preparedStatement.setString(10, c.getDob());
            preparedStatement.setString(11, c.getType());

            //preparedStatement.setString(1, c.getAadhar_no());
            //preparedStatement.setString(3, c.getBlood_group());

            int count = preparedStatement.executeUpdate();

            if (count > 0) {
                System.out.println("Successfully Inserted");
            } else {
                System.out.println("insertion failed");
            }
        } catch (SQLException ex) {
            Logger.getLogger(PatientDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        
        // for patient
        
         //15 ?
        sql = "insert into e_health.patient values(?,?,?)";
        //id,fname,lname,street,aptno,city,zip,phone,sex,email,dob,type,labname,labaddr,labid
        try {
            preparedStatement = connection.prepareStatement(sql);                 
                
            preparedStatement.setString(1, c.getEmail());
            preparedStatement.setString(2, c.getAadhar_no());
            preparedStatement.setString(3, c.getBlood_group());

            int count = preparedStatement.executeUpdate();

            if (count > 0) {
                System.out.println("Successfully Inserted");
            } else {
                System.out.println("insertion failed");
            }
        } catch (SQLException ex) {
            Logger.getLogger(PatientDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

     
}
