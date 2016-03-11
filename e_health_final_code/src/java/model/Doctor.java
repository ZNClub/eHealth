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
public class Doctor extends Person {

    private String doc_speciality;
    private String doc_reg_no;
    private String qualification;
    private String experience;
    private String schedule;

    public String getDoc_speciality() {
        return doc_speciality;
    }

    public void setDoc_speciality(String doc_speciality) {
        this.doc_speciality = doc_speciality;
    }

    public String getDoc_reg_no() {
        return doc_reg_no;
    }

    public void setDoc_reg_no(String doc_reg_no) {
        this.doc_reg_no = doc_reg_no;
    }

    public String getQualification() {
        return qualification;
    }

    public void setQualification(String qualification) {
        this.qualification = qualification;
    }

    public String getExperience() {
        return experience;
    }

    public void setExperience(String experience) {
        this.experience = experience;
    }

    public String getSchedule() {
        return schedule;
    }

    public void setSchedule(String schedule) {
        this.schedule = schedule;
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

    public static Doctor populateData(HttpServletRequest request, HttpServletResponse response) {
        Doctor doctor = new Doctor();

        //c.setId(Integer.parseInt(request.getParameter("customerId")));
        //dob
        doctor.setDob(request.getParameter("dob"));
        //System.out.println(patient.getDob());           //null

        // FIRST_NAME
        doctor.setFirstName(request.getParameter("fname"));

        // LAST_NAME
        doctor.setLastName(request.getParameter("lName"));
        //System.out.println(request.getParameter("lName"));           //null

        // STREET
        doctor.setStreet(request.getParameter("street"));

        // APARTMENT_NUMBER
        doctor.setApartmentNumber(request.getParameter("aptno"));
        //System.out.println(patient.getApartmentNumber());       //correct
        // CITY
        doctor.setCity(request.getParameter("city"));

        // ZIP_CODE
        doctor.setZipCode(request.getParameter("zip"));
        //System.out.println(patient.getZipCode());           //correct
        
        // PHONE
        doctor.setPhone(request.getParameter("phone"));
        //System.out.println(patient.getPhone());             //correct
        
        // SEX
        //patient.setSex(request.getParameter("sex"));
        doctor.setSex(request.getParameter("sex"));//request.getParameter("sex")
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

        doctor.setEmail(request.getParameter("email"));
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
        doctor.setType(request.getParameter("type"));
        //System.out.println(patient.getType());              //correct
        
        doctor.setDoc_speciality(request.getParameter("doc_speciality"));
        doctor.setDoc_reg_no(request.getParameter("doc_reg_no"));
        doctor.setQualification(request.getParameter("qualification"));
        doctor.setExperience(request.getParameter("experience"));
        doctor.setSchedule(request.getParameter("schedule"));
        
        

        return doctor;
    }

}
