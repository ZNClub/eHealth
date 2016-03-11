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
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpSession;

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
public class EditDAO extends BaseDAO {

    Connection connection;
    PreparedStatement preparedStatement;
    Statement statement;
    ResultSet rs;

    public boolean editfName(String email, String edit) throws ClassNotFoundException, SQLException, InstantiationException, IllegalAccessException {
        connection = getConnection();

        String sql = "update e_health.person set fname=? where email=?";
        //id,fname,lname,street,aptno,city,zip,phone,sex,email,dob,type,labname,labaddr,labid
        try {
            System.out.println("in editDAO");
            preparedStatement = connection.prepareStatement(sql);

            preparedStatement.setString(1, edit);
            preparedStatement.setString(2, email);

            //preparedStatement.setString(1, c.getAadhar_no());
            //preparedStatement.setString(3, c.getBlood_group());
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

    public boolean editlName(String email, String edit) throws ClassNotFoundException, SQLException, InstantiationException, IllegalAccessException {
        connection = getConnection();

        String sql = "update e_health.person set lname=? where email=?";
        //id,fname,lname,street,aptno,city,zip,phone,sex,email,dob,type,labname,labaddr,labid
        try {
            System.out.println("in editDAO");
            preparedStatement = connection.prepareStatement(sql);

            preparedStatement.setString(1, edit);
            preparedStatement.setString(2, email);

            //preparedStatement.setString(1, c.getAadhar_no());
            //preparedStatement.setString(3, c.getBlood_group());
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
    
    public boolean editdob(String email, String edit) throws ClassNotFoundException, SQLException, InstantiationException, IllegalAccessException {
        connection = getConnection();

        String sql = "update e_health.person set dob=? where email=?";
        //id,fname,lname,street,aptno,city,zip,phone,sex,email,dob,type,labname,labaddr,labid
        try {
            System.out.println("in editDAO");
            preparedStatement = connection.prepareStatement(sql);

            preparedStatement.setString(1, edit);
            preparedStatement.setString(2, email);

            //preparedStatement.setString(1, c.getAadhar_no());
            //preparedStatement.setString(3, c.getBlood_group());
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
    
    public boolean editGender(String email, String edit) throws ClassNotFoundException, SQLException, InstantiationException, IllegalAccessException {
        connection = getConnection();

        String sql = "update e_health.person set sex=? where email=?";
        //id,fname,lname,street,aptno,city,zip,phone,sex,email,dob,type,labname,labaddr,labid
        try {
            System.out.println("in editDAO");
            preparedStatement = connection.prepareStatement(sql);

            preparedStatement.setString(1, edit);
            preparedStatement.setString(2, email);

            //preparedStatement.setString(1, c.getAadhar_no());
            //preparedStatement.setString(3, c.getBlood_group());
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
    
    public boolean editAptno(String email, String edit) throws ClassNotFoundException, SQLException, InstantiationException, IllegalAccessException {
        connection = getConnection();

        String sql = "update e_health.person set apt_no=? where email=?";
        //id,fname,lname,street,aptno,city,zip,phone,sex,email,dob,type,labname,labaddr,labid
        try {
            System.out.println("in editDAO");
            preparedStatement = connection.prepareStatement(sql);

            preparedStatement.setString(1, edit);
            preparedStatement.setString(2, email);

            //preparedStatement.setString(1, c.getAadhar_no());
            //preparedStatement.setString(3, c.getBlood_group());
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
    
    public boolean editStreet(String email, String edit) throws ClassNotFoundException, SQLException, InstantiationException, IllegalAccessException {
        connection = getConnection();

        String sql = "update e_health.person set street=? where email=?";
        //id,fname,lname,street,aptno,city,zip,phone,sex,email,dob,type,labname,labaddr,labid
        try {
            System.out.println("in editDAO");
            preparedStatement = connection.prepareStatement(sql);

            preparedStatement.setString(1, edit);
            preparedStatement.setString(2, email);

            //preparedStatement.setString(1, c.getAadhar_no());
            //preparedStatement.setString(3, c.getBlood_group());
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
    
    public boolean editCity(String email, String edit) throws ClassNotFoundException, SQLException, InstantiationException, IllegalAccessException {
        connection = getConnection();

        String sql = "update e_health.person set city=? where email=?";
        //id,fname,lname,street,aptno,city,zip,phone,sex,email,dob,type,labname,labaddr,labid
        try {
            System.out.println("in editDAO");
            preparedStatement = connection.prepareStatement(sql);

            preparedStatement.setString(1, edit);
            preparedStatement.setString(2, email);

            //preparedStatement.setString(1, c.getAadhar_no());
            //preparedStatement.setString(3, c.getBlood_group());
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

    
    
    public boolean editPhone(String email, String edit) throws ClassNotFoundException, SQLException, InstantiationException, IllegalAccessException {
        connection = getConnection();

        String sql = "update e_health.person set phone=? where email=?";
        //id,fname,lname,street,aptno,city,zip,phone,sex,email,dob,type,labname,labaddr,labid
        try {
            System.out.println("in editDAO");
            preparedStatement = connection.prepareStatement(sql);

            preparedStatement.setString(1, edit);
            preparedStatement.setString(2, email);

            //preparedStatement.setString(1, c.getAadhar_no());
            //preparedStatement.setString(3, c.getBlood_group());
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
    
    public boolean resetPassword(String email, String new_pass, String old) throws ClassNotFoundException, SQLException, InstantiationException, IllegalAccessException {

        connection = getConnection();

        System.out.println(email);
        //System.out.println(otp);
        //15 ?
        //person
        String sql = "update e_health.registration set password=? where email=? and password=?";
        //id,fname,lname,street,aptno,city,zip,phone,sex,email,dob,type,labname,labaddr,labid
        try {
            System.out.println("in editDAO");
            preparedStatement = connection.prepareStatement(sql);

            preparedStatement.setString(1, new_pass);
            preparedStatement.setString(2, email);
            preparedStatement.setString(3, old);

            //preparedStatement.setString(1, c.getAadhar_no());
            //preparedStatement.setString(3, c.getBlood_group());
            int count = preparedStatement.executeUpdate();

            if (count > 0) {
                System.out.println("Successfully Inserted");
                return true;
            } else {
                System.out.println("insertion failed: password authentication error");
                return false;
            }
        } catch (SQLException ex) {
            Logger.getLogger(PatientDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return false;

    }

}
