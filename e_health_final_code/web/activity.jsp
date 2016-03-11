<%-- 
    Document   : editprofile
    Created on : 23 Oct, 2015, 12:21:40 AM
    Author     : Leon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="model.*"%>

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

					<!-- Post -->
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
									
									<form id="form11"  method="" action="">
									
									
                                    
									<input id="save11" type="" name="" style="display:none;"/>
                                    <input class="small" id="save12" type="submit" value="" style="display:none"/>
                                    </form>
                                                                        
                                    <form id="form12"  method="" action="">
                                    <input class="small" id="view1" type="submit" value="view" style="display:none"/>
									
									
									</form>     
									</li>
									                                                                 
                                                                                                                                               
                                                                                                                                                
									
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
									
									<form id="form21"  method="" action="">
									
									
                                    
									<input id="save21" type="" name="" style="display:none;"/>
                                    <input class="small" id="save22" type="submit" value="" style="display:none"/>
                                    </form>
                                                                        
                                    <form id="form22"  method="" action="">
                                    <input class="small" id="view2" type="submit" value="view" style="display:none"/>
									
									
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
									<label id="elabel3" for="efield3" style="font-weight:bold"></label>
									
									<form id="form31"  method="" action="">
									
									
                                    
									<input  id="save31" type="" name="" style="display:none;"/>
                                    <input class="small" id="save32" type="submit" value="" style="display:none"/>
                                    </form>
                                                                        
                                    <form id="form32"  method="" action="">
                                    <input class="small" id="view3" type="submit" value="view" style="display:none"/>
									
									
									</form>     
									</li>
								</ul>
							<hr>
							</div>
						</article>
						
						
					<!-- Pagination -->
						

				</div>
			</div>

		
			<div id="sidebar" >

				<!-- Logo -->
						<p id="gender" style="display:none">${Person.sex}<p>
                                                   // <p id="type" style="display:none">${Person.type}<p>
					<p id="p_type" style="display:none">${Person.type}</p> 
						<!--<p class="p_type" style="display:none">Pathologist</p>
                                                <p class="p_type" style="display:none">Pharmacist</p>
                                                <p class="p_type" style="display:none">Doctor</p>
                                                <p class="p_type" style="display:none">Patient</p>-->
						
			<!--		<a href="#" class="image featured"><img src="images/pic03.jpg" alt="" style="width:100%;height: auto"/></a>-->
			<a href="#" class="image featured"><img id="pp" src="" alt="Profile Pic" style="width:100%;height:auto"/></a>
					<form method="post" action="UploadServlet.do">
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
					$('#elabel1').text("Upload Prescription");
					
					$('#view1').show();
					$('#view1').attr("value","go");
					$('#form12').attr("action","UploadPrescription.jsp");
					
					
					
					
					$('#div2').show();
					
					$('#elabel2').text("Download Prescription");
					$('#save21').show();
					$('#save22').show();
					
					$('#save21').attr("name","patid");
					$('#save21').attr("placeholder","Patient email id");
					$('#save22').attr("value","download");
					
					$('#form21').attr("action","DownloadPrescription.do");
					$('#form21').attr("method","get");
					$('#form21').attr("enctype","multipart/form-data");
					
					
					$('#div3').show();
					
					$('#elabel3').text("Download Health Test Report");
					$('#save31').show();
					$('#save32').show();
					
					$('#save31').attr("name","patid");
					$('#save31').attr("placeholder","Patient email id");
					$('#save32').attr("value","download");
					$('#form31').attr("action","DownloadReport.do");
					$('#form31').attr("method","get");
					$('#form31').attr("enctype","multipart/form-data");
					
					
				}
				else if(t=="Patient"){
					
					$('#div1').show();
					$('#elabel1').text("View Specialist Doctors");
					
					$('#view1').show();
					$('#view1').attr("value","view");
					$('#form12').attr("action","ShowDoctors.jsp");
					
					
					$('#div2').show();
					$('#elabel2').text("View Health Test Offers");
					
					$('#view2').show();
					$('#view2').attr("value","view");
					$('#form22').attr("action","ViewTestOffer.jsp");
					
					
					$('#div3').show();
					$('#elabel3').text("View Health History");
					
					$('#view3').show();
					$('#view3').attr("value","view");
					$('#form32').attr("action","HealthHistory.jsp");
					
					
					
				}
				else if(t=="Pathologist"){
					$('#div1').show();
					$('#elabel1').text("Upload Test Offer");
					
					$('#view1').show();
					$('#view1').attr("value","upload");
					$('#form12').attr("action","TestOffer.jsp");
					
					
					$('#div2').show();
					$('#elabel2').text("Upload Test Results");
					
					$('#view2').show();
					$('#view2').attr("value","upload");
					$('#form22').attr("action","TestResult.jsp");
				}
				else if(t=="Pharmacist"){
					$('#div2').show();
					
					$('#elabel2').text("Download Prescription");
					$('#save21').show();
					$('#save22').show();
					
					$('#save21').attr("name","patid");
					$('#save21').attr("placeholder","Patient email id");
					$('#save22').attr("value","view");
					$('#form21').attr("action","DownloadPrescription.do");
					$('#form21').attr("method","get");
					$('#form21').attr("enctype","multipart/form-data");
					
					
					
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
			

	</body>
</html>
