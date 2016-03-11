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
	
	
	<article class="box post post-excerpt">
							<header>
								<h3 style="font-size:x-large">Test Result</h3>
							</header>
							<hr>
							<div id="div1" style="color:red;width:100%;max-width:100%;
							height:auto;max-height:auto;display:">
							
							
							
	
	<form class="form" action="UploadReport.do" method="post" autocomplete="on" enctype="multipart/form-data">
	<fieldset id="fset1" style="font-size:1.4em">
	


		<label for="offer_season">Patient ID:</label><br>
		<input class="" placeholder="ID of Patient" name="result_patid" type="text" 
		required />
		<br><br>


		<label  for="upload-resdoc">Upload Result Documents:</label><br>
		<input style="background-color:blue" class="huge" value="" name="upload-resdoc" type="file" accept=""
		required />
		<br><br>
		
		<input class="small" id="btn-patho" type="submit" value="upload"/>

	</fieldset>

	</form>		
							<hr>
							</div>
							
		</article>
		</div>
		</div>
		
		<div id="sidebar" style="" >

				<!-- Logo -->
						<p id="gender" style="display:none">${Person.sex}<p>
				<!--	<p id="p_type" style="display:none">${Person.type}</p> -->
						<p id="p_type" style="display:none">Pathologist</p>
						
			<!--		<a href="#" class="image featured"><img src="images/pic03.jpg" alt="" style="width:100%;height: auto"/></a>-->
			<a href="#" class="image featured"><img id="pp" src="" alt="Profile Pic" style="width:100%;height:auto"/></a>
					<form method="post" action="UploadServlet.do">
					<input class="small" id="save9" type="submit" value="change profile picture" style="display:">
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

            <script>$( document ).ready(function() {
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
    
</body>

</html>

