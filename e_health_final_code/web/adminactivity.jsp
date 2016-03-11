<%-- 
    Document   : editprofile
    Created on : 23 Oct, 2015, 12:21:40 AM
    Author     : Leon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>
<%@page import="model.*"%>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<!DOCTYPE HTML>
<!--
	Striped by HTML5 UP
	html5up.net | @n33co
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>Profile</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="assets/css/main.css" />
		
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
		
		<!-- Scripts -->
			<script src="assets/js/main.js"></script>
			<script src="assets/js/jquery.min.js"></script>
			
	</head>
	<body>

		<!-- Content -->
			<div id="content">
				<div class="inner">

					<!-- Post -->
						<article class="box post post-excerpt">
							<header>
								<!--
									Note: Titles and subtitles will wrap automatically when necessary, so don't worry
									if they get too long. You can also remove the <p> entirely if you don't
									need a subtitle.
								-->
								<!--<h2><a href="#"><span>${Person.firstName} ${Person.lastName}</span></a></h2>-->
								<h2><a href="profile.html"><span>${Person.firstName} ${Person.lastName}</span></a></h2>
								
							</header>
							
							
							
							
						</article>
                                          <article class="box post post-excerpt">
							<header>
								<h3 style="font-size:x-large">Activity</h3>
							</header>
							<hr>
							<div id="div1" style="color:red;width:100%;max-width:100%;
							height:auto;max-height:auto;display:none;">
							
							
							<ul class="" style="font-size:1.4em;color:#000;;
							line-height:2.9em;"
								
									<li>
									<label id="" for="" style="font-weight:bold"> </label>
									</li>
									
									<li>
									<label id="elabel1" for="efield1" style="font-weight:bold"></label>
                                                                            
									<form id="form1"  method="get" action="DownloadServlet.do">
									<span>
									
                                    
									<input id="save1" type="text" name="" style="display:none;">
                                                                        <input class="small" id="save2" type="submit" value="" style="display" name="click">&nbsp;&nbsp;&nbsp;
                                                                        </form>
                                                                                            
                                                                        <form id="form2"  method="get" action="TestOfferSuccess.jsp">
                                                                        <input class="small" id="save10" type="submit" value="View Test Offer" style="display:none">
									
									</span>	
									
									</li>
									</form>                                                                      
                                                                                                                                               
                                                                                                                                                
									
								</ul>
							<hr>
							</div>
							
							
							
							<div id="div2" style="color:red;width:100%;max-width:100%;
							height:auto;max-height:auto;display:none;">
							
							
							<ul class="" style="font-size:1.4em;color:#000;;
							line-height:2.9em;"
								
									<li>
									<label id="" for="" style="font-weight:bold"> </label>
									</li>
									
									<li>
									<label id="elabel2" for="efield2" style="font-weight:bold"></label>
									
									
                                                                         <form method="post" name="form3" action="UploadServlet.do" enctype="multipart/form-data">    
									<span>
									
                                                                                
									<input id="save3" type="text" name="" style="display:none;">
                                                                        <input type="file" value="Upload Prescription">&nbsp;
									<input class="small" id="save4" type="submit" value="" style="display">
									
									</span>	
									</form>
									</li>
								</ul>
							<hr>
							</div>
							
							
							<div id="div3" style="color:red;width:100%;max-width:100%;
							height:auto;max-height:auto;display:none;">
							
							
							<ul class="" style="font-size:1.4em;color:#000;;
							line-height:2.9em;"
								
									<li>
									<label id="" for="" style="font-weight:bold"> Add Doctor</label>
									</li>
									
									<li>
									<label id="elabel3" for="efield3" style="font-weight:bold"></label>
                                                                            ADD DOCTOR
									<form id="form4" method="get" action="">
									<span>
									
                                    
									<input id="save5" type="text" name="" style="display:none;">
									<input class="small" id="save6" type="submit" value="view" style="display">
									
									</span>	
									</form>
									</li>
								</ul>
							<hr>
							</div>
						</article>
					<!-- Post -->
						
						
						
					<!-- Pagination -->
						

				</div>
			</div>

		
			<div id="sidebar" >

				<!-- Logo -->
						<p id="gender" style="display:none">${Person.sex}<p>
					<p id="p_type" style="display:none">${Person.type}</p> 
						<!--<p class="p_type" style="display:none">Pathologist</p>
                                                <p class="p_type" style="display:none">Pharmacist</p>
                                                <p class="p_type" style="display:none">Doctor</p>
                                                <p class="p_type" style="display:none">Patient</p>-->
						
			<!--		<a href="#" class="image featured"><img src="images/pic03.jpg" alt="" style="width:100%;height: auto"/></a>-->
			<a href="#" class="image featured"><img id="pp" src="" alt="Profile Pic" style="width:100%;height:auto"/></a>
					<form method="post" action="UploadServlet.do" enctype="multipart/form-data">
                                            <input type="file" name="upload" value="upload">
					<input class="small" id="save9" type="submit" value="change profile picture" style="display">
					</form>

				<!-- Nav -->
					<nav id="nav">
						<ul>
							<li ><a href="profile.jsp">Profile</a></li>
							<li ><a href="editprofile.jsp">Edit Profile</a></li>
							<li class="current"><a href="activity.jsp">Activity</a></li>
							<li><a href="resetpassword.jsp">Reset Password</a></li>
							<li><a href="deleteprofile.jsp">Delete Account</a></li>
							<!-- make it a button -->
							<li><a href="LogoutServlet.do">Logout</a></li>
						</ul>
					</nav>

				<!-- Search -->
					<section class="box search">
						<form method="post" action="#">
							<input type="text" class="text" name="search" placeholder="Search" />
						</form>
					</section>

				<!-- Text -->
					<section class="box text-style1">
						<div class="inner">
							
						</div>
					</section>

				
				<!-- Calendar -->

				<!-- Copyright -->
					

			</div>
			
			<!-- show and hide edit and save buttons -->
			<script>
			
			$( document ).ready(function() {
				//console.log( "ready!" );
				
				/* type code */
				
				
				var t=$("#p_type").text();
                                //document.write(t);
				//alert(t);
				if(t=="Doctor"){
					$('#div1').show();
					$('#elabel1').text("View Patient History");
                                        $('#save10').show();
                                        $('#save2').attr("value","Download Prescription ");
					$('#save1').show();
					$('#save1').attr("name","patid");
					$('#save1').attr("placeholder","Patient email id");
					
					
					$('#div2').show();
					
                                        $('#elabel2').text("Upload Prescription");
					$('#save3').show();
					$('#save3').attr("name","patid1");
					$('#save3').attr("placeholder","Patient email id");
					$('#save4').attr("value","upload");
					//$('#save4').attr("value","view");
				}
				else if(t=="Patient"){
					
					$('#div1').show();
					$('#elabel1').text("View Health History");
					$('#save10').show();
					//$('#save1').attr("name","patid");
					//$('#save1').attr("placeholder","Patient email id");
					$('#save2').hide();
                                        $('#form2').attr("action","TestOfferSuccess.jsp");
					$('#form2').attr("method","post");
					
					
					$('#div2').show();
					$('#elabel2').text("Download Prescription");
					//$('#save3').show();
					//$('#save3').attr("name","patid");
					//$('#save3').attr("placeholder","Patient email id");
					$('#save4').attr("value","download");
					$('#form3').attr("action","DownloadServlet.do");
					$('#form3').attr("method","post");
					
					//$('#div3').show();
					//$('#elabel3').text("View Health Test Results");
					//$('#save5').show();
					//$('#save5').attr("name","patid");
					//$('#save5').attr("placeholder","Patient email id");
					//$('#save4').attr("value","view");
				
				}
				else if(t=="Pathologist"){
					$('#div1').show();
					$('#elabel1').text("Upload Health Test Offer");
					//$('#save1').show();
					//$('#save1').attr("name","patid");
					//$('#save1').attr("placeholder","Patient email id");
					$('#save2').attr("value","upload");
					$('#form1').attr("action","TestOffer.jsp");
					$('#form1').attr("method","post");
					
					
					$('#div2').show();
					$('#elabel2').text("Upload Health Test Results");
					//$('#save3').show();
					//$('#save3').attr("name","patid");
					//$('#save3').attr("placeholder","Patient email id");
					$('#save4').attr("value","upload");
					$('#form3').attr("action","TestResult.jsp");
                                        $('#form3').attr("method","post");
					
					
				}
				else{
					$('#div1').show();
					$('#elabel1').text("Download Prescription");
					$('#save1').show();
					$('#save1').attr("name","patid");
					$('#save1').attr("placeholder","Patient email id");
					$('#save2').attr("value","download");
				}
				
				
				
				/* type code ends */
							/* profile picture code */
							var img_src=$('#pp').attr("src");
							//alert('sex'+img_src);
							
							if(img_src==""){
								var gen=$('#gender').text();
								//alert('sex'+gen);
								
								if(gen=="male"){
									//alert('inside '+gen);
									$('#pp').attr("src","images/male.png");
									//alert($('#pp').attr("src"));
								}
								else{
									//alert('inside '+gen);
									$('#pp').attr("src","images/female.jpg");
									//alert($('#pp').attr("src"));
								}
							}
							else{
								$('#pp').attr("src","images/pic03.jpg");
							}
							/* profile picture code ends*/

				
			});
			
			
			
			</script>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="assets/js/main.js"></script>
			<script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
			
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
