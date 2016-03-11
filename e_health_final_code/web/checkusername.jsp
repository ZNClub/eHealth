<%-- 
    Document   : checkusername.jsp
    Created on : 28 Oct, 2015, 2:40:46 PM
    Author     : Leon
--%>

<%@ page import="java.io.*,java.sql.*" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>

<% 
                    String sn=request.getParameter("ver");

                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/e_health","root","root");
                    Statement st=con.createStatement();
                    ResultSet rs = st.executeQuery("select * from registration where email='"+sn+"'");  // this is for name
                    if(rs.next())
                    {    
                        out.println("<font color=red>");
                        out.println("Email Already Registered");
                        out.println("</font>");

                    }else {
                        out.println("<font color=green>");
                        out.println("Email Available");
                        out.println("</font>");

                    }
rs.close();
st.close();
con.close();
%> 