<%-- 
    Document   : reg_success
    Created on : 23 Oct, 2015, 12:27:26 AM
    Author     : Leon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>
<!DOCTYPE html>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
         <link rel="stylesheet" href="Semantic-UI-1.0/dist/semantic.min.css" type="text/css">
        <link rel="stylesheet" href="css/constant.css" type="text/css">
         <script src="http://semantic-ui.com/build/packaged/javascript/semantic.min.js"></script>
         <script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
          <link href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/1.3.2/semantic.min.css" rel="stylesheet">
        <title>E-HEALTH</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        
        <div class="container" style="top: 30%; left : 10%;">
            <div class="ui form">
                <h2 class="ui dividing header">Your Request is pending Admin Approval</h2>
                <h4 class="ui dividing header">OTP VALIDATION</h4>
                <h5> Please Enter the OTP as sent to your email</h5>
            </div>
            <div class="field">
                <input type="text" name="otp" placeholder="OTP">
            </div>
            <div class="ui button small">
                <button class="ui positive button">
                    Submit
                </button>
                
            </div>
            
        </div>
        <br><br><br><br>
        
        
        <div class="ui inverted footer vertical segment center bottom">
                <div class="ui stackable center aligned page grid">
                    <div class="three column row">

                        <div class="column">
                            <h5 class="ui inverted header">Schemes</h5>
                            <div class="ui inverted link list">
                                <a class="item"href="http://sahakara.kar.gov.in/shceme.html">Schemes For SC/ST/OBC</a>
                                <a class="item" href="http://india.gov.in/people-groups/life-cycle/senior-citizens/policiesschemes">Schemes For The Old</a>
                                <a class="item" href="http://www.rsby.gov.in/about_rsby.aspx">Schemes for BPL</a>
                                <a class="item" href="http://www.archive.india.gov.in/citizen/health/health.php?id=39"> Schemes For Handicapped </a>
                            </div>
                        </div>
                        <div class="column">
                            <h5 class="ui inverted header">Hospitals</h5>
                            <div class="ui inverted link list">
                                <a class="item" href="http://stbmi.ac.in/matter/international%20pub/35_e-%20Health%20Initiatives%20in%20India_skmishra.pdf">View List</a>
                            </div>
                        </div>


                        <div class="column">
                            <h5 class="ui inverted header">Designed By</h5>
                            The WebDesigner's Co.


                        </div>
                    </div>



                </div>
            </div>
    </body>
</html>

