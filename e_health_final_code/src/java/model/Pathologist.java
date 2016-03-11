/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author universe
 */
public class Pathologist extends Person{
    private String labName;
    private String labAddress;
    private String labRegisterationID;
    
    
    

     @Override
    public String getFirstName() {
        return super.getFirstName();
    }

    @Override
    public void setFirstName(String firstName) {
        super.setFirstName(firstName);
    }

    @Override
    public String getLastName() {
        return super.getLastName();
    }

    @Override
    public void setLastName(String lastName) {
        super.setLastName(lastName);
    }

    @Override
    public String getStreet() {
        return super.getStreet();
    }

    @Override
    public void setStreet(String street) {
        super.setStreet(street);
    }

    

    @Override
    public String getCity() {
        return super.getCity();
    }

    @Override
    public void setCity(String city) {
        super.setCity(city);
    }

    @Override
    public String getZipCode() {
        return super.getZipCode();
    }

    @Override
    public void setZipCode(String zipCode) {
        super.setZipCode(zipCode);
    }

    @Override
    public String getPhone() {
        return super.getPhone();
    }

    @Override
    public void setPhone(String phone) {
        super.setPhone(phone);
    }

    @Override
    public String getSex() {
        return super.getSex();
    }

    @Override
    public void setSex(String sex) {
        super.setSex(sex);
    }

    @Override
    public String getEmail() {
        return super.getEmail();
    }

    @Override
    public void setEmail(String email) {
        super.setEmail(email);
    }
    
    @Override
    public String getApartmentNumber() {
        return super.getApartmentNumber();
    }

    @Override
    public void setApartmentNumber(String aptno) {
        super.setApartmentNumber(aptno);
    }

    @Override
    public String getDob() {
        return super.getDob();
    }

    @Override
    public void setDob(String dob) {
        super.setDob(dob);
    }

    @Override
    public String getType() {
        return super.getType();
    }

    @Override
    public void setType(String type) {
        super.setType(type);
    }


    public String getLabName() {
        return labName;
    }

    public void setLabName(String labName) {
        this.labName = labName;
    }

    public String getLabAddress() {
        return labAddress;
    }

    public void setLabAddress(String labAddress) {
        this.labAddress = labAddress;
    }

    public String getLabRegisterationID() {
        return labRegisterationID;
    }

    public void setLabRegisterationID(String labRegisterationID) {
        this.labRegisterationID = labRegisterationID;
    }
    
    
    
    
    
    public static Pathologist populateData(HttpServletRequest request, HttpServletResponse response)
    {
           Pathologist pathologist =new Pathologist();
           
             //dob
        pathologist.setDob(request.getParameter("dob"));
        //System.out.println(patient.getDob());           //null

        // FIRST_NAME
        pathologist.setFirstName(request.getParameter("fname"));

        // LAST_NAME
        pathologist.setLastName(request.getParameter("lName"));
        //System.out.println(request.getParameter("lName"));           //null

        // STREET
        pathologist.setStreet(request.getParameter("street"));

        // APARTMENT_NUMBER
        pathologist.setApartmentNumber(request.getParameter("aptno"));
        //System.out.println(patient.getApartmentNumber());       //correct
        // CITY
        pathologist.setCity(request.getParameter("city"));

        // ZIP_CODE
        pathologist.setZipCode(request.getParameter("zip"));
        //System.out.println(patient.getZipCode());           //correct
        
        // PHONE
        pathologist.setPhone(request.getParameter("phone"));
        //System.out.println(patient.getPhone());             //correct
        
        // SEX
        //patient.setSex(request.getParameter("sex"));
        pathologist.setSex(request.getParameter("sex"));//request.getParameter("sex")
        //System.out.println(request.getParameter("sex"));               //null
        //System.out.println(patient.getSex());
        
       

// EMAIL

        pathologist.setEmail(request.getParameter("email"));
/*
        // ID
        // separate e-mail domain name and username
        String s = new String();
        s = patient.getEmail();
        int val = s.indexOf(new String("@"));

        //check if it works ???
        //patient.setId(s.substring(0, val));
*/ 
        //type
        pathologist.setType(request.getParameter("type"));
        //System.out.println(patient.getType());              //correct
           
           
           // LAB_NAME
           pathologist.setLabName(request.getParameter("lab_name"));
           
           // LAB_ADDRESS
           
           pathologist.setLabAddress(request.getParameter("lab_address"));
           
           // LAB_REGISTRATION_ID
           pathologist.setLabRegisterationID(request.getParameter("lab_reg_id"));
           

           return pathologist;
    }
}
