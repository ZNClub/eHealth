<%-- 
    Document   : RegJSP
    Created on : 21 Oct, 2015, 12:00:42 AM
    Author     : Leon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="botDetect" uri="botDetect"%>
<%@include file="header.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		
		<!-- below link and scripts taken from register.html -->
		
		<link rel="stylesheet" href="Semantic-UI-1.0/dist/semantic.min.css" type="text/css">
        <link rel="stylesheet" href="css/constant1.css" type="text/css">
		<script src="js/jquery-2.1.4.min.js"></script>
		<script src="js/constant.js"></script>
		<script src="js/code.js"></script>

        <script src="Semantic-UI-1.0/dist/semantic.min.js"></script>
        <link href="css/cdn.css" rel="stylesheet">
        
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
		
		
        <title>Registration</title>
    </head>
    <body>
        <section id="training">
            <h1> REGISTRATION FORM </h1>
            <div class="container" style="padding-right: 30%; padding-bottom: 30%; padding-top: -10%;">
                <fieldset style="display: block;">
                <form data-toggle="validator" class="form-horizontal" id="seekerForm" method="post" action="RegisterServlet.do">
                    <div class="form-group has-feedback">
                    <label class="control-label col-xs-3" for="firstName">First Name:</label>
                    <div class="col-xs-9">
                        <input type="text" class="form-control"  placeholder="First Name" name="fname" pattern="^([a-zA-Z]+)$" data-error="Please fill this feild appropriately" required>
                        <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
                        <span class="help-block with-errors"></span>
                    </div>
                </div>
                <div class="form-group has-feedback">
                    <label class="control-label col-xs-3" for="lastName">Last Name:</label>
                    <div class="col-xs-9">
                        <input type="text" class="form-control" id="lastName" placeholder="Last Name" name="lName"  pattern="^([a-zA-Z']+)$" data-error="Please fill this feild" required>
                        
                        <span class="help-block with-errors"></span>
                    </div>
                </div>
                    
                
                <div class="form-group has-feedback">
                    <label class="control-label col-xs-3" for="phoneNumber">Mobile No.:</label>
                    <div class="col-xs-9">
                        <input type="text" class="form-control" id="phoneNumber" name="phone" placeholder="Phone Number" pattern="^([1-9][0-9]{9})$" data-error="Invalid phone number" name="phoneNumber" required>
                        
                        <span class="help-block with-errors"></span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-xs-3" >Date of Birth:</label>
                    <div class="col-xs-5 date">
                        <div class="input-group input-append date" id="datePicker">
                            <input type="text" class="form-control" name="dob" placeholder="yyyy/mm/dd" required id="dob"> &nbsp;&nbsp;
                            <span id="doberror"> </span>  
                            <span class="input-group-addon add-on"><span class="glyphicon glyphicon-calendar"></span></span>
                        </div>
                    </div>
                </div>
                
                
                <div class="form-group">
                    <label class="control-label col-xs-3">Gender:</label>
                    <div class="col-xs-2">
                        <!--label class="radio-inline">
                            <input type="radio" name="sex" value="male"> Male
                            <input type="radio" name="sex" value="female"> Female
                        </label-->
                        <input type="radio" name="sex" value="male"> Male
                        <input type="radio" name="sex" value="female"> Female
                    </div>
                   
                </div>    
                
                <div class="form-group has-feedback">
                    <label class="control-label col-xs-3" for="Street">Street:</label>
                    <div class="col-xs-9">
                        <input type="text" class="form-control"  placeholder="Street" name="street" pattern="^([a-zA-Z]+)$" data-error="Please fill this feild appropriately" required>
                        <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
                        <span class="help-block with-errors"></span>
                    </div>
                </div>  
                    
                <div class="form-group has-feedback">
                    <label class="control-label col-xs-3" for="city">City:</label>
                    <div class="col-xs-9">
                        <input type="text" class="form-control"  placeholder="City" name="city" pattern="^([a-zA-Z]+)$" data-error="Please fill this feild appropriately" required>
                        <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
                        <span class="help-block with-errors"></span>
                    </div>
                </div> 
                 <script type="text/javascript">
                    function loadXMLDoc()
                    {
                        var xmlhttp;
                        var k=document.getElementById("username").value;
                        var urls="checkusername.jsp?ver="+k;

                        if (window.XMLHttpRequest)
                        {
                            xmlhttp=new XMLHttpRequest();
                        }
                        else
                        {
                            xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
                        }
                        xmlhttp.onreadystatechange=function()
                        {
                            if (xmlhttp.readyState==4)
                            {
                                document.getElementById("err").innerHTML=xmlhttp.responseText;
                            }
                        }
                        xmlhttp.open("GET",urls,true);
                        xmlhttp.send();
                    }
                    function validDate()
                    {
                        //var date=document.getElementById("dob");
                        var currVal = document.getElementById("dob");
                        var doberror=document.getElementById("doberror");
    if(currVal == '')
        return false;

    //var rxDatePattern = /^(\d{1,2})(\/|-)(\d{1,2})(\/|-)(\d{4})$/;
    var rxDatePattern=/^(\d{4})([\/-])(\d{1,2})\2(\d{1,2})$/; //Declare Regex
    var dtArray = currVal.match(rxDatePattern); // is format OK?

    if (dtArray == null) 
        return false;

    //Checks for mm/dd/yyyy format.
    dtMonth = dtArray[3];
    dtDay= dtArray[4];
    dtYear = dtArray[1];        

    if (dtMonth < 1 || dtMonth > 12) 
        return false;
    else if (dtDay < 1 || dtDay> 31) 
        return false;
    else if ((dtMonth==4 || dtMonth==6 || dtMonth==9 || dtMonth==11) && dtDay ==31) 
        return false;
    else if (dtMonth == 2) 
    {
        var isleap = (dtYear % 4 == 0 && (dtYear % 100 != 0 || dtYear % 400 == 0));
        if (dtDay> 29 || (dtDay ==29 && !isleap)) 
        {
            doberror.innerHTML = "<span style=color: red>Wrong Format </span>";
            return false;
            
        }
    }
    doberror.innerHTML = "<span style=color: green>Valid Format </span>";
    return true;
                    }
                </script>
                    
                    
                    
                    
                <div class="form-group has-feedback">
                    <label class="control-label col-xs-3" for="inputEmail">Email:</label>
                    <div class="col-xs-9" id="email">
                        <input type="email" class="form-control" id="username" placeholder="Email" name="email" pattern="^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$" data-error="Invalid email address" required onblur="loadXMLDoc()">
                        <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
                        <span id="err"> </span>
                    </div>
                </div>
                    
                <div class="form-group has-feedback">
                    <label class="control-label col-xs-3" for="zip">Zip Code:</label>
                    <div class="col-xs-9">
                        <input type="text" class="form-control" id="zipCode"  placeholder="Zip Code" pattern="^([1-9][0-9]{5})$" data-error="Invalid zip code" name="zip" required>
                        <span class="help-block with-errors"></span>
                    </div>
                </div> 
                   
                <div class="form-group has-feedback">
                    <label class="control-label col-xs-3" for="apt">AptNo:</label>
                    <div class="col-xs-9">
                        <input type="text" class="form-control" id="aptno" name="aptno" placeholder="Apartment Number" pattern="^([1-9][0-9]{2})$" data-error="Invalid apt no"  required>
                        
                        <span class="help-block with-errors"></span>
                    </div>
                </div>
                    
                    
                    
                <!--    
                <div class="form-group has-feedback">
                    <label class="control-label col-xs-3" for="cap">Retype captcha text</label>
                    <div class="col-xs-9">
                        
                        <div class="validationDiv">
                            <input type="text" class="form-control captchaVal" id="captchaCodeTextBox"  name="captchaCodeTextBox" required>
                            <label class="incorrect">${messages.captchaCodeIncorrect}</label>
                        </div> 
                    </div>
                </div> -->
                        
                        
                <div class="form-group">
                    <div class="col-xs-offset-3 col-xs-9">
                        
                        <label class="checkbox-inline">
                            <input type="checkbox" value="agree" required>  I agree to the <a href="#">Terms and Conditions</a>.
                        </label>
                    </div>
                </div>
                <br>
                
                <div class="form-group">
                    
                    <div class="col-xs-3">
                        <label>Register As </label>
						<select class="form-control" id="cat" name="type" required>
						<option name="type" selected="selected" value="Patient" >Patient</option>
						<option name="type" value="Doctor">Doctor</option>
						<option name="type" value="Pharmacist">Pharmacist</option>	
						<option name="type" value="Pathologist">Pathologist</option>	
						</select>
                    </div>
                </div>
	
<div>
	<ul style="list-style:none">
		<label for="li1" id="l1"></label>
		<li id="li1" style="display:none">
                <input id="i1" type="text" name=" " placeholder=" " >            <br>
		</li>

		<label for="li1" id="l2"></label>
		<li id="li2" style="display:none">
                <input id="i2" type="text" name=" " placeholder=" " >            <br>
		</li>

		<label for="li1" id="l3"></label>
		<li id="li3" style="display:none">
                <input id="i3" type="text" name=" " placeholder="" >            <br>
		
		</li>

		<label for="li1" id="l4"></label>
		<li id="li4" style="display:none">
                <input id="i4" type="text" name=" " placeholder="" >            <br>
		
		</li>

		<label for="li1" id="l5"></label>
		<li id="li5" style="display:none">
                <input id="i5" type="text" name=" " placeholder="" >            <br>
		</li>

	</ul>
	</div>
            <!--
            <script>
                validate();
            </script>
            -->

		<!--
			JQUERY DROPDOWN
		-->
		
	<script>
		
   
		$( document ).ready(function() {
			//var num=2;
			var typ="Patient";
                        //alert("typ ="+typ);
			//$('#input1').attr('name', 'other_amount');
			
					$("#li1").show();
					$("#li2").show();
					$("#li3").hide();
					$("#li4").hide();
					$("#li5").hide();

					$("#l1").text("Aadhar Number");
   					$("#l2").text("Blood Group");
			
					$('#i1').attr('name', 'aadhar_no');
					$('#i2').attr('name', 'bloodgrp');
					
					//alert(" "+$('#i1').attr('name')+" "+$('#i2').attr('name'));
			
			
			$( "#cat" ).change(function() {
//			alert("inside change");
			typ=$( "#cat").val();
			//alert("typ ="+typ);
			switch(typ){
				
				case "Patient":
					
					
				
					$("#li1").show();
					$("#li2").show();
					$("#li3").hide();
					$("#li4").hide();
					$("#li5").hide();

					$("#l1").text("Aadhar Number");
   					$("#l2").text("Blood Group");
					$("#l3").text("");
					$("#l4").text("");
					$("#l5").text("");
					
					
					$('#i1').attr('name', 'aadhar_no');
					$('#i2').attr('name', 'bloodgrp');
					
					//alert(" "+$('#i1').attr('name')+" "+$('#i2').attr('name'));
					break;
					
      	
				case "Doctor":
					

					$("#li1").show();
					$("#li2").show();
					$("#li3").show();
					$("#li4").show();
					$("#li5").show();


					$("#l1").text("Doctor Speciality");
   					$("#l2").text("Registration Number");
					$("#l3").text("Qualification");
   					$("#l4").text("Experience");
					$("#l5").text("Schedule");
					
					$('#i1').attr('name', 'doc_speciality');
					$('#i2').attr('name', 'doc_reg_no');
					$('#i3').attr('name', 'qualification');
					$('#i4').attr('name', 'experience');
					$('#i5').attr('name', 'schedule');
					
					
					/* alert(" "+$('#i1').attr('name')+" "+$('#i2').attr('name')+" "+$('#i3').attr('name')
					+" "+$('#i4').attr('name')+" "+$('#i5').attr('name')
					);*/

					break;
				case "Pathologist":
					

					$("#li1").show();
					$("#li2").show();
					$("#li3").show();
					$("#li4").hide();
					$("#li5").hide();

					$("#l1").text("Lab Name");
   					$("#l2").text("Lab Address");
					$("#l3").text("Lab Registration ID");
					$("#l4").text("");
					$("#l5").text("");

					
					$('#i1').attr('name', 'lab_name');
					$('#i2').attr('name', 'lab_address');
					$('#i3').attr('name', 'lab_reg_id');
					
					//alert(" "+$('#i1').attr('name')+" "+$('#i2').attr('name')+" "+$('#i3').attr('name'));
					
					break;
				case "Pharmacist":
					
//alert('pharmacist selected');
					$("#li1").show();
					$("#li2").show();
					$("#li3").show();
					$("#li4").hide();
					$("#li5").hide();
//alert('pharmacist fields shown');
					$("#l1").text("Shop Name");
   					$("#l2").text("Shop Address");
					$("#l3").text("License Number");
					$("#l4").text("");
					$("#l5").text("");
//alert('pharmacist labels shown');

					$('#i1').attr('name', 'shop_name');
					$('#i2').attr('name', 'shop_address');
					$('#i3').attr('name', 'license_no');
					
					//alert(" "+$('#i1').attr('name')+" "+$('#i2').attr('name')+" "+$('#i3').attr('name'));
					
					break;	
			}
			});

			
			
		});
		
        </script>
				
	
                <div class="form-group has-feedback">
                    <label class="control-label col-xs-3" for="cap">Retype captcha text</label>
                    <div class="col-xs-9">
                        <botDetect:captcha id="jqueryValidatedCaptcha" />
                        <div class="validationDiv">
                            <input type="text" class="form-control captchaVal" id="captchaCodeTextBox"  name="captchaCodeTextBox" required>
                            <label class="incorrect">${messages.captchaCodeIncorrect}</label>
                        </div> 
                    </div>
                </div> 
			
                
                <div class="form-group">
                    <div class="col-xs-offset-3 col-xs-9">
                        <input type="submit" class="btn btn-primary btn-xl" name="validate" value="Submit">
                        <input type="reset" class="btn btn-primary btn-xl" value="Reset">
                    </div>
                </div>
                
                
                </form>
                </fieldset>
            </div>
        </section>
                        
                        
        <script>
        $(document).ready(function () {
            var x = ${valid};
            if (x == 1)
                $("#myModal").modal("show");
        });
    </script>
    <script src="bootstrap-3.3.5-dist/js/bootstrap.min.js"></script>
    <script src="bootstrap-3.3.5-dist/js/bootstrap.js" type="text/javascript"></script>
    <script src="js/bootstrap-datepicker.js" type="text/javascript"></script>
    <script src="js/validator.js" type="text/javascript"></script>
    
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
