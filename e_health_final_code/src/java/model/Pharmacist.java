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
public class Pharmacist extends Person {
    private String shopAddress;
    private String shopName;
    private String licenseNo;
    
    
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
    
    public String getShopAddress() {
        return shopAddress;
    }

    public void setShopAddress(String shopAddress) {
        this.shopAddress = shopAddress;
    }

    public String getShopName() {
        return shopName;
    }

    public void setShopName(String shopName) {
        this.shopName = shopName;
    }

    public String getLicenseNo() {
        return licenseNo;
    }

    public void setLicenseNo(String licenseNo) {
        this.licenseNo = licenseNo;
    }
    
    public static Pharmacist populateData(HttpServletRequest request, HttpServletResponse response)
    {
           Pharmacist pharmacist =new Pharmacist();
           
             //dob
        pharmacist.setDob(request.getParameter("dob"));
        //System.out.println(patient.getDob());           //null

        // FIRST_NAME
        pharmacist.setFirstName(request.getParameter("fname"));

        // LAST_NAME
        pharmacist.setLastName(request.getParameter("lName"));
        //System.out.println(request.getParameter("lName"));           //null

        // STREET
        pharmacist.setStreet(request.getParameter("street"));

        // APARTMENT_NUMBER
        pharmacist.setApartmentNumber(request.getParameter("aptno"));
        //System.out.println(patient.getApartmentNumber());       //correct
        // CITY
        pharmacist.setCity(request.getParameter("city"));

        // ZIP_CODE
        pharmacist.setZipCode(request.getParameter("zip"));
        //System.out.println(patient.getZipCode());           //correct
        
        // PHONE
        pharmacist.setPhone(request.getParameter("phone"));
        //System.out.println(patient.getPhone());             //correct
        
        // SEX
        //patient.setSex(request.getParameter("sex"));
        pharmacist.setSex(request.getParameter("sex"));//request.getParameter("sex")
        //System.out.println(request.getParameter("sex"));               //null
        //System.out.println(patient.getSex());
        
       

// EMAIL

        pharmacist.setEmail(request.getParameter("email"));
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
        pharmacist.setType(request.getParameter("type"));
        //System.out.println(patient.getType());              //correct
           
        pharmacist.setShopAddress(request.getParameter("shop_address"));
        pharmacist.setShopName(request.getParameter("shop_name"));
        pharmacist.setLicenseNo(request.getParameter("license_no"));
           
           

           return pharmacist;
    }
    
}
