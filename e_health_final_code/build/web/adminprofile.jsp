
<%-- 
    Document   : profile
    Created on : 23 Oct, 2015, 12:00:32 AM
    Author     : Leon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>
<!DOCTYPE html>
<!DOCTYPE HTML>
<!--
	Striped by HTML5 UP
	html5up.net | @n33co
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>Admin Profile</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="assets/css/main.css" />
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
		
		
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
								<!--<h2><a href="#"><span>$(Patient.firstname) $(Patient.lastname)</span></a></h2>-->
								<h2><a href="#"><span>Welcome Admin!</span></a></h2>
								
							</header>
							
							
							
							
						</article>

					<!-- Post -->
					<article class="box post post-excerpt">
							<header>
								<h3 style="font-size:x-large">Add Certified Users</h3>
							</header>
							<hr>
							<div id="div1" style="color:red;width:390px;max-width:390px;;
							height:auto;max-height:auto">
							
							
							<ul class="" style="font-size:1.4em;color:#000;;
							line-height:2.9em;">
								
									<li>
									<label id="" for="" style="font-weight:bold"> </label>
									</li>
									
									<li>
									<label  for="efield1" style="font-weight:bold">Doctors:</label>									
									
									<form method="post" action="adminprofile.jsp">
									<span>
									<input placeholder="registration id" name="e_docs" type="text" />
									<input class="small" id="edit1" type="submit" name="doctors" value="add" style="display:inline;">
                                                                        
									
									</span>	
									
									</form>
                                                                       
                                                                        <input class="small" id="docs1" type="submit" name="doctors" value="view pending registrations" style="display:inline;">
                                                                        <ul id="docs">
                                                                            
                                                                            
                                                                        </ul>
                                                                       
									</li>
									
									
									<li>
									<label id="" for="" style="font-weight:bold"> </label>
									</li>
									
									<li>
									<label  for="efield2" style="font-weight:bold">Pharmacists:</label>									
									
									<form method="post" action="adminprofile.jsp">
									<span>
									<input placeholder="registration id" name="e_pharm" type="text" />
									<input class="small" id="edit2" type="submit" name="pharmacists" value="add" style="display:inline;">
									
									
									</span>	
									
									</form>
                                                                        
                                                                        <input class="small" id="pharms1" type="submit" name="doctors" value="view pending registrations" style="display:inline;">
									<ul id="pharms">
                                                                            
                                                                            
                                                                        </ul>
                                                                       

									</li>
									
									<li>
									<label id="" for="" style="font-weight:bold"> </label>
									</li>
									
									<li>
									<label  for="efield3" style="font-weight:bold">Pathologists:</label>									
									
									<form method="post" action="adminprofile.jsp">
									<span>
									<input placeholder="registration id" name="e_path" type="text" />
									<input class="small" id="edit3" type="submit" name="pathologists" value="add" style="display:inline;">
                                                                        
									
									
									</span>	
									
									</form>
                                                                        
                                                                        <input class="small" id="paths1" type="submit" name="doctors" value="view pending registrations" style="display:inline;">
									<ul id="paths">
                                                                            
                                                                            
                                                                        </ul>
                                                                        

									</li>
									
									

								</ul>
							
							</div>
							
							<hr>
							
							
							
							<header>
								<h3 style="font-size:x-large">Delete User</h3>
							</header>
							<hr>
							<div id="div2" style="color:blue;width:150px;max-width:150px;
							height:auto;max-height:auto">
							
							<ul class="" style="font-size:1.4em;color:#000;
							line-height:2.9em;"
								
									<li style="font-weight:bold"></li>
                                    <li>
									<label id="elabel5" for="efield5" style="font-weight:bold">Email :</label>
									
									<form method="post" action="DeleteServlet.do">
									
									<input id="efield5" type="email" name="email" placeholder="Email of the user" style="display:inline">																		
									
									<br>	
									<input class="small" id="save5" type="submit" value="delete" style="display:">

									
									</form>

									</li>
									
									
									
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
						<p id="gender" style="display:none">male<p>
			<!--		<a href="#" class="image featured"><img src="images/pic03.jpg" alt="" style="width:100%;height:auto"/></a>-->
			<a href="#" class="image featured"><img id="pp" src="" alt="Profile Pic" style="width:100%;height:auto"/></a>
					<form method="post" action="UploadServlet.do">
					<input class="small" id="save9" type="submit" value="change profile picture" style="display:">
					</form>

				<!-- Nav -->
					<nav id="nav">
						<ul>
							<li class="current"><a href="adminprofile.html">Actions</a></li>
							
							<li><a href="resetpassword.jsp">Reset Password</a></li>
							<!-- make it a button -->
							<li><a href="LogoutServlet.do">Logout</a></li>
						</ul>
					</nav>

				<!-- Search -->
					

				<!-- Text -->
					<section class="box text-style1">
						<div class="inner">
							
						</div>
					</section>

				
				<!-- Calendar -->

				<!-- Copyright -->
					

			</div>
                
			
			<script>
			
			$( document ).ready(function() {
							
							
							
					$("#docs1").click(function(){
					
					$('#docs').show();
                                        $('#pharms').hide();
                                        $('#paths').hide();
                                        
                                        $('#docs').append("<li>dsouza@gmail.com</li>");
					$('#docs').append("<li>sharma@gmail.com</li>");
                                        $('#docs').append("<li>bonis@gmail.com</li>");
                                        });
                                        
                                        $("#pharms1").click(function(){
					
                                        $('#docs').hide();
                                        $('#pharms').show();
                                        $('#paths').hide();
                                        
					
                                        $('#pharms').append("<li>lokeshdz@gmail.com</li>");
					$('#pharms').append("<li>shankarlsd@gmail.com</li>");
                                        $('#pharms').append("<li>bdramans@gmail.com</li>");
                                        });

                                         $("#paths1").click(function(){
					
                                        
                                        
					$('#paths').show();
                                        
                                        $('#docs').hide();
                                        $('#pharms').hide();
                                        
                                        
                                        $('#paths').append("<li>dsouza.nevil45@gmail.com</li>");
					$('#paths').append("<li>lkaraend@gmail.com</li>");
                                        $('#paths').append("<li>suraj@gmail.com</li>");
                                        });   
			
			});
			
			
			</script>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="assets/js/main.js"></script>
                            <div class="ui inverted footer vertical segment center bottom" style="bottom: 0;  width: 100%; height: auto;">
                <div class="ui stackable center aligned page grid">
                    <div class="three column row">

                        <div class="column">
                            <h5 class="ui inverted header">Schemes</h5>
                            <div class="ui inverted link list">
                                <a class="item">Schemes For SC/ST/OBC</a>
                                <a class="item">Schemes For The Old</a>
                                <a class="item">Schemes for BPL</a>
                                <a class='item'> Schemes For Handicapped </a>
                            </div>
                        </div>
                        <div class="column">
                            <h5 class="ui inverted header">Hospitals</h5>
                            <div class="ui inverted link list">
                                <a class="item">View List</a>
                            </div>
                        </div>


                        <div class="column">
                            <h5 class="ui inverted header">Designed By</h5>
                            Us


                        </div>
                    </div>



                </div>
            </div>
			<script>
			
			$( document ).ready(function() {
				//console.log( "ready!" );
				
				/* toggle buttons code  */
				
				
				//alert('save1 hidden?');

				$("#edit1").click(function(){
					//alert("You !");
					$(this).hide();
					
					
					
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

	</body>
</html>
