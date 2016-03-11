/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import javafx.scene.control.RadioButton;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author universe
 */
public class Patient extends Person {

    private String aadhar_no;
    private String blood_group;

    public String getAadhar_no() {
        return aadhar_no;
    }

    public void setAadhar_no(String aadhar_no) {
        this.aadhar_no = aadhar_no;
    }

    public String getBlood_group() {
        return blood_group;
    }

    public void setBlood_group(String blood_group) {
        this.blood_group = blood_group;
    }
  

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

    public static Patient populateData(HttpServletRequest request, HttpServletResponse response) {
        Patient patient = new Patient();

        //c.setId(Integer.parseInt(request.getParameter("customerId")));
        //dob
        patient.setDob(request.getParameter("dob"));
        //System.out.println(patient.getDob());           //null

        // FIRST_NAME
        patient.setFirstName(request.getParameter("fname"));

        // LAST_NAME
        patient.setLastName(request.getParameter("lName"));
        //System.out.println(request.getParameter("lName"));           //null

        // STREET
        patient.setStreet(request.getParameter("street"));

        // APARTMENT_NUMBER
        patient.setApartmentNumber(request.getParameter("aptno"));
        //System.out.println(patient.getApartmentNumber());       //correct
        // CITY
        patient.setCity(request.getParameter("city"));

        // ZIP_CODE
        patient.setZipCode(request.getParameter("zip"));
        //System.out.println(patient.getZipCode());           //correct
        
        // PHONE
        patient.setPhone(request.getParameter("phone"));
        //System.out.println(patient.getPhone());             //correct
        
        // SEX
        //patient.setSex(request.getParameter("sex"));
        patient.setSex(request.getParameter("sex"));//request.getParameter("sex")
        //System.out.println(request.getParameter("sex"));               //null
        //System.out.println(patient.getSex());
        
        //solution 1:
       /* 
        //This variable will store whether the user was male or female
    String userGender=""; 
    boolean checked;
    //RadioButton view = new RadioButton();
   //RadioButton view =(RadioButton)(request.getParameter("sex"));
        checked =  view.is();

    // Check which radio button was clicked
    switch(view.getId()) {
        case R.id.radio_female:
            if (checked)
                userGender = "female";
            break;
        case R.id.radio_male:
            if (checked)
               userGender = "male";
            break;
    }
        
        */

// EMAIL

        patient.setEmail(request.getParameter("email"));
        System.out.println(request.getParameter("email"));               //null
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
        patient.setType(request.getParameter("type"));
        //System.out.println(patient.getType());              //correct
        
        //aadhar_no
        patient.setAadhar_no(request.getParameter("aadhar_no"));//request.getParameter("sex")
        
        //blood_group
        patient.setBlood_group(request.getParameter("bloodgrp"));//request.getParameter("sex")

        return patient;
    }

}
