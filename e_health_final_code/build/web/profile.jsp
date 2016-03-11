<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="model.*"%>
<%@include file="header.jsp"%>
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
								<h2><a href="profile.jsp"><span>${Person.firstName} ${Person.lastName}</span></a></h2>
								
							</header>
							
							
							
							
						</article>

					<!-- Post -->
						<article class="box post post-excerpt">
							<header>
								<h3 style="font-size:x-large">Basic Information</h3>
							</header>
							<hr>
							<div id="div1" style="color:red;width:390px;max-width:390px;;
							height:auto;max-height:auto">

							
							
							<ul class="" style="font-size:1.4em;color:#000; 
							line-height:2.9em;"
								
									<li style="font-weight:bold"></li>
									
									
									
									
                                                            <i>Date Of Birth: </i>
									<li style="font-weight:bold"> ${Person.dob}</li>
                                                                        <i> Sex </i>
									<li style="font-weight:bold"> ${Person.sex}</li>
                                                                        <i> Apt No.</i>
									<li style="font-weight:bold"> #${Person.apartmentNumber}</li>
                                                                        <i>Street</i>
									<li style="font-weight:bold">${Person.street}</li>
                                                                        <i>City:</i>
									<li style="font-weight:bold">${Person.city}</li>
									
									<li id="type" style="font-weight:bold;display:none;" >${Person.type}</li>
									
								</ul>
							
							</div>
							
							
							<hr>
							
							<header>
								<h3 style="font-size:x-large">Contact</h3>
							</header>
							<hr>
							<div id="div2" style="color:blue;width:150px;max-width:150px;
							height:auto;max-height:auto">
							
							<ul class="" style="font-size:1.4em;color:#000;
							line-height:2.9em;"
								
									<li style="font-weight:bold"></li>
                                                            <i>Phone No.: </i>
									<li style="font-weight:bold">${Person.phone}</li>
                                                                        <i>Email: </i>
									<li style="font-weight:bold">${Person.email}</li>
									
									
									
							</ul>
							
							
							
							</div>
							
							<hr>
							<header>
								<h3 id="h3" style="font-size:x-large"></h3>
							</header>
							<hr style="display:none;">
							<div id="div3" style="color:red;width:150px;max-width:150px;
							height:200px;max-height:200px">
							
							<ul class="" style="font-size:1.4em;color:#000;
							line-height:2.9em;"
								
									<li style="font-weight:bold"></li>
                                                            
									<li id="h3l1" style="font-weight:bold;display:none">Person.phone)</li>
                                                                            
									<li id="h3l2" style="font-weight:bold;display:none">$(Person.email)</li>
									
									<li id="h3l3" style="font-weight:bold;display:none">$(Person.phone)</li>
									
									<li id="h3l4" style="font-weight:bold;display:none">$(Person.email)</li>
									
									<li id="h3l5" style="font-weight:bold;display:none">$(Person.phone)</li>
									
									
							</ul>
								
							
							</div>
						</article>

					<!-- Pagination -->
						

				</div>
			</div>

		<!-- Sidebar -->
			<div id="sidebar" >

				
				<!-- Logo -->
					
					<p id="gender" style="display:none">${Person.sex}</p>
					<p id="p_type" style="display:none">${Person.type}</p>
					
					
					<a href="#" class="image featured"><img id="pp" src="" alt="Profile Pic" style="width:100%;height:auto"/></a>
					<form method="post" action="UploadServlet.do">
					<input class="small" id="save9" type="submit" value="change profile picture" style="display:;">
					</form>
					
				<!-- Nav -->

					<nav id="nav">
						<ul>
							<li class="current"><a href="#">Profile</a></li>
							<li><a href="editprofile.jsp">Edit Profile</a></li>
							<li><a href="resetpassword.jsp">Reset Password</a></li>
							<li><a href="activity.jsp">Activity</a></li>

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
			
			<script>
			$( document ).ready(function() {
							
							
							
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