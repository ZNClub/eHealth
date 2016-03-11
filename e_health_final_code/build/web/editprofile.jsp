<%-- 
    Document   : editprofile
    Created on : 23 Oct, 2015, 12:21:40 AM
    Author     : Leon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>
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
								<h3 style="font-size:x-large">Edit Profile</h3>
							</header>
							<hr>
							<div id="div1" style="color:red;width:390px;max-width:390px;
							height:auto;max-height:auto">
							
							
							<ul class="" style="font-size:1.4em;color:#000;;
							line-height:2.9em;"
								
									<li>
									<label id="" for="" style="font-weight:bold"> </label>
									</li>
									
									<li>
									<label id="elabel1" for="efield1" style="font-weight:bold">${Person.firstName} </label>
									
									<form method="post" action="EditServlet.do">
									<span>
									<input id="efield1" type="text" name="fname" placeholder="First Name" style="display:none">
									<input class="small" id="edit1" type="reset" value="edit" style="display:inline;">
									<div class="save">
                                                                            <input class="p_email" id="" name="name" type="" value="" style="display:none;">
									<input class="small" name="save" id="save1" type="submit" value="save-fname" style="display:none;">
									</div>
									</span>	
									</form>

									</li>
                                                                        
                                    <br>                                    
                                    <li>
									<label id="elabel2" for="efield2" style="font-weight:bold">${Person.lastName} </label>
									
									<form method="post" action="EditServlet.do">
									<span>
									<input id="efield2" type="text" name="lname" placeholder="Last Name" style="display:none">									
									<input class="small" id="edit2" type="reset" value="edit" style="display:inline;">
									<div class="save">
									<input class="small" name="save" id="save2" type="submit" value="save-lname" style="display:none;">
									</div>
									</span>	
									</form>

									</li>
									
									<br>
									
									<li>
									<label id="elabel3" for="efield3" style="font-weight:bold">${Person.dob} </label>
									
									<form method="post" action="EditServlet.do">
									<span>
									<input id="efield3" type="text" name="dob" placeholder="yyyy-mm-dd" style="display:none">									
									<input class="small" id="edit3" type="reset" value="edit" style="display:inline;">
									<div class="save">
									<input class="small" name="save" id="save3" type="submit" value="save-dob" style="display:none;">
									</div>
									</span>	
									</form>

									</li>
									
									<br>
									
									<li>
									<label id="elabel4" for="efield4" style="font-weight:bold">${Person.sex}</label>
									
									<form method="post" action="EditServlet.do">
									<span>
									<input id="efield4" type="text" name="sex" placeholder="Gender" style="display:none">									
									<input class="small" id="edit4" type="reset" value="edit" style="display:inline;">
									<div class="save">
									<input class="small" name="save" id="save4" type="submit" value="save-gender" style="display:none;">
									</div>
									</span>	
									</form>

									</li>
									<br>
									<li>
									<label id="elabel5" for="efield5" style="font-weight:bold">${Person.apartmentNumber} </label>
									
									<form method="post" action="EditServlet.do">
									<span>
									<input id="efield5" type="text" name="apartmentNumber" placeholder="Apartment Number" style="display:none">									
									<input class="small" id="edit5" type="reset" value="edit" style="display:inline;">
									<div class="save">
									<input class="small" name="save" id="save5" type="submit" value="save-aptno" style="display:none;">
									</div>
									</span>	
									</form>

									</li>
									<br>
									<li>
									<label id="elabel6" for="efield6" style="font-weight:bold">${Person.street} </label>
									
									<form method="post" action="EditServlet.do">
									<span>
									<input id="efield6" type="text" name="street" placeholder="Street" style="display:none">									
									<input class="small" id="edit6" type="reset" value="edit" style="display:inline;">
									<div class="save">
									<input class="small" name="save" id="save6" type="submit" value="save-street" style="display:none;">
									</div>
									</span>	
									</form>

									</li>
									<br>
									<li>
									<label id="elabel7" for="efield7" style="font-weight:bold">${Person.city} </label>
									
									<form method="post" action="EditServlet.do">
									<span>
									<input id="efield7" type="text" name="city" placeholder="City" style="display:none">									
									<input class="small" id="edit7" type="reset" value="edit" style="display:inline;">
									<div class="save">
									<input class="small" name="save" id="save7" type="submit" value="save-city" style="display:none;">
									</div>
									</span>	
									</form>

									</li>
									<br>
									<li>
									<label id="elabel8" for="efield8" style="font-weight:bold">${Person.phone} </label>
									
									<form method="post" action="EditServlet.do">
									<span>
									<input id="efield8" type="text" name="phone" placeholder="Phone" style="display:none">									
									<input class="small" id="edit8" type="reset" value="edit" style="display:inline;">
									<div class="save">
									<input class="small" name="save" id="save8" type="submit" value="save-phone" style="display:none;">
									</div>
									</span>	
									</form>

									</li>
									<br>
                                                                        <!--
									<li>
									<label id="elabel9" for="efield9" style="font-weight:bold">${Person.email} </label>
									
									<form method="post" action="EditServlet.do">
									<span>
									<input id="efield9" type="email" name="email" placeholder="email" style="display:none">									
									<input class="small" id="edit9" type="reset" value="edit" style="display:inline;">
									<div class="save">
									<input class="small" id="save9" type="submit" value="save" style="display:none;">
									</div>
									</span>	
									</form>

									</li>
									
									-->
									
									
                                    
									
									
									
									
								</ul>
							
							</div>
							
							<hr>
							<!--
							<div id="div2" style="color:blue;width:150px;max-width:150px;
							height:200px;max-height:200px">
							
							</div>
							-->
							
							</div>
						</article>

					<!-- Pagination -->
						

				</div>
			</div>

		
			<div id="sidebar" >

				<!-- Logo -->
						<p id="gender" style="display:none">${Person.sex}<p>
						<p id="p_type" style="display:none">${Person.type}</p>
						
			<!--		<a href="#" class="image featured"><img src="images/pic03.jpg" alt="" style="width:100%;height: auto"/></a>-->
			<a href="#" class="image featured"><img id="pp" src="" alt="Profile Pic" style="width:100%;height:auto"/></a>
					<form method="post" action="UploadServlet.do">
					<input class="small" id="save9" type="submit" value="change profile picture" style="display">
					</form>

				<!-- Nav -->
					<nav id="nav">
						<ul>
							<li ><a href="profile.jsp">Profile</a></li>
							<li class="current"><a href="editprofile.jsp">Edit Profile</a></li>
							<li ><a href="activity.jsp">Activity</a></li>
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
				
				/* toggle buttons code ends */
				
				
				//alert('save1 hidden?');

				$("#edit1").click(function(){
					//alert("You !");
					$(this).hide();
					
					$('#elabel1').hide();
					
					$('#efield1').show();
					
					$('#save1').show();
					
				});
				$("#edit2").click(function(){
					//alert("You !");
					$(this).hide();
					
					$('#elabel2').hide();
					
					$('#efield2').show();
					
					$('#save2').show();
					
				});
				$("#edit3").click(function(){
					//alert("You !");
					$(this).hide();
					
					$('#elabel3').hide();
					
					$('#efield3').show();
					
					$('#save3').show();
					
				});
				$("#edit4").click(function(){
					//alert("You !");
					$(this).hide();
					
					$('#elabel4').hide();
					
					$('#efield4').show();
					
					$('#save4').show();
					
				});
				$("#edit5").click(function(){
					//alert("You !");
					$(this).hide();
					
					$('#elabel5').hide();
				
					$('#efield5').show();
					
					$('#save5').show();
					
				});
				$("#edit6").click(function(){
					//alert("You !");
					$(this).hide();
					
					$('#elabel6').hide();
					
					$('#efield6').show();
					
					$('#save6').show();
					
				});
				$("#edit7").click(function(){
					//alert("You !");
					$(this).hide();
					
					$('#elabel7').hide();
					
					$('#efield7').show();
					
					$('#save7').show();
					
				});
				$("#edit8").click(function(){
					//alert("You !");
					$(this).hide();
					
					$('#elabel8').hide();
					
					$('#efield8').show();
					
					$('#save8').show();
					
				});
				$("#edit9").click(function(){
					//alert("You !");
					$(this).hide();
					
					$('#elabel9').hide();
					
					$('#efield9').show();
					
					$('#save9').show();
					
				});
				
				/* toggle buttons code ends */
				
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
