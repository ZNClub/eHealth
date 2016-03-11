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
								<h3 style="font-size:x-large">Pediatricians</h3>
							</header>
							<p>
							 treat medical problems of infants,children, and adolescents
							</p>
							<hr>
							
							<div id="div1" style="color:red;width:100%;max-width:100%;
							height:auto;max-height:auto;display:">
							
							<ul id="ul1" style="font-size:1.4em;color:#000;;
							line-height:2.9em;">
							
                                                            <div style="display:none">	
                                                                
                                                               <c:forEach var="val" items="$(pageScope.Pediatricians)">
                                                                    <c:out value="$(val)"/> 
                                                                </c:forEach>
                                                                
                                                                
                                                                
                                                                </div>    
							</ul>
							
									<hr>
							</div>
							
	</article>
	<article class="box post post-excerpt">
							<header>
								<h3 style="font-size:x-large">Neurologist</h3>
							</header>
							<p>
							treats problems related to brain and nervous system
							</p>
							<hr>
							<div id="div1" style="color:red;width:100%;max-width:100%;
							height:auto;max-height:auto;display:">
							
							<ul id="ul2" style="font-size:1.4em;color:#000;;
							line-height:2.9em;">
							<div style="display:none">	
                                                                
                                                               <c:forEach var="val" items="$(pageScope.Pediatricians)">
                                                                    <c:out value="$(val)"/> 
                                                                </c:forEach>
                                                                
                                                                
                                                                
                                                                </div>    
									
							</ul>
							
									<hr>
							</div>
							
	</article>
	<article class="box post post-excerpt">
							<header>
								<h3 style="font-size:x-large">Orthopedic Surgeons</h3>
							</header>
							<p>
							treats problems bone and skeletal problems of body
							</p>
							<hr>
							<div id="div1" style="color:red;width:100%;max-width:100%;
							height:auto;max-height:auto;display:">
							
							<ul id="ul3" style="font-size:1.4em;color:#000;;
							line-height:2.9em;">
							<div style="display:none">	
                                                                
                                                               <c:forEach var="val" items="$(pageScope.Pediatricians)">
                                                                    <c:out value="$(val)"/> 
                                                                </c:forEach>
                                                                
                                                                
                                                                
                                                                </div>    
									
							</ul>
							
									<hr>
							</div>
							
	</article>
	<article class="box post post-excerpt">
							<header>
								<h3 style="font-size:x-large">Cardiologist</h3>
							</header>
							<p>
							treats problems related to heart and cardiovascular diseases
							</p>
							<hr>
							<div id="div1" style="color:red;width:100%;max-width:100%;
							height:auto;max-height:auto;display:">
							
							<ul id="ul4" style="font-size:1.4em;color:#000;;
							line-height:2.9em;">
							<div style="display:none">	
                                                                
                                                               <c:forEach var="val" items="$(pageScope.Pediatricians)">
                                                                    <c:out value="$(val)"/> 
                                                                </c:forEach>
                                                                
                                                                
                                                                
                                                                </div>    
									
							</ul>
							
									<hr>
							</div>
							
	</article>
	<article class="box post post-excerpt">
							<header>
								<h3 style="font-size:x-large">Gynecologists</h3>
							</header>
							<p>
							treats problems related to female reproductive system
							</p>
							<hr>
							<div id="div1" style="color:red;width:100%;max-width:100%;
							height:auto;max-height:auto;display:">
							
							<ul id="ul5" style="font-size:1.4em;color:#000;;
							line-height:2.9em;">
							<div style="display:none">	
                                                                
                                                               <c:forEach var="val" items="$(pageScope.Pediatricians)">
                                                                    <c:out value="$(val)"/> 
                                                                </c:forEach>
                                                                
                                                                
                                                                
                                                                </div>    
									
							</ul>
							
									<hr>
							</div>
							
	</article>
	
		</div>
		</div>
		
		<div id="sidebar" >

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
							
				$('#ul1').append("<li>Dr.Danish Sharma&nbsp<i>(Leelavati Hospital)</i></li>");	
				$('#ul1').append("<li>Dr.Mahesh Dsouza&nbsp<i>(Umrao Hospital)</i></li>");	
				$('#ul1').append("<li>Dr.Ian Verma&nbsp<i>(Wockhardt Hospital)</i></li>");	
				$('#ul1').append("<li>Dr.Susan Fernandes&nbsp<i>(Bhagwati Hospital)</i></li>");	
				
			});     $('#ul2').append("<li>Dr.Pearl Dsa&nbsp<i>(Leelavati Hospital)</i></li>");	
				$('#ul2').append("<li>Dr.Kajal Agarwal&nbsp<i>(Umrao Hospital)</i></li>");	
				$('#ul2').append("<li>Dr.Samantha Ruth Prabhu&nbsp<i>(Wockhardt Hospital)</i></li>");	
				$('#ul2').append("<li>Dr.Shruthi Hassan&nbsp<i>(Wockhardt Hospital)</i></li>");	
                                $('#ul2').append("<li>Dr.Jeetesh Gupta&nbsp<i>(Umrao Hospital)</i></li>");	
					
                                
                                $('#ul3').append("<li>Dr.Manish Choudhary&nbsp<i>(Wockhardt Hospital)</i></li>");	
				$('#ul3').append("<li>Dr.Sunil Dsouza&nbsp<i>(Leelavati Hospital)</i></li>");	
				$('#ul3').append("<li>Dr.Radha Nair&nbsp<i>(Wockhardt Hospital)</i></li>");	
				$('#ul3').append("<li>Dr.Lipi Tuscano&nbsp<i>(Bhagwati Hospital)</i></li>");	
                                $('#ul3').append("<li>Dr.Aish Pickle&nbsp<i>(Bhagwati Hospital)</i></li>");	
				$('#ul3').append("<li>Dr.Cheryl Saldanha&nbsp<i>(Umrao Hospital)</i></li>");	
				$('#ul3').append("<li>Dr.Andrea Masceranhas&nbsp<i>(Leelavati Hospital)</i></li>");	
				$('#ul3').append("<li>Dr.Rinciya Furtado&nbsp<i>(Bhagwati Hospital)</i></li>");	
                                
                                $('#ul4').append("<li>Dr.Denis Savio&nbsp<i>(Umrao Hospital)</i></li>");	
				$('#ul4').append("<li>Dr.Leon Dsouza&nbsp<i>(Umrao Hospital)</i></li>");	
				$('#ul4').append("<li>Dr.Aaron Dsa&nbsp<i>(Wockhardt Hospital)</i></li>");	
				$('#ul4').append("<li>Dr.Susan Naik&nbsp<i>(Bhagwati Hospital)</i></li>");	
                                $('#ul4').append("<li>Dr.Denwyn Sharma&nbsp<i>(Leelavati Hospital)</i></li>");	
				$('#ul4').append("<li>Dr.Manish Dsouza&nbsp<i>(Umrao Hospital)</i></li>");	
				$('#ul4').append("<li>Dr.Crystal Rodrigues&nbsp<i>(Leelavati Hospital)</i></li>");	
				$('#ul4').append("<li>Dr.Allan Cuthinho&nbsp<i>(Bhagwati Hospital)</i></li>");	
                                
                                
                                $('#ul5').append("<li>Dr.Julie Singh&nbsp<i>(Leelavati Hospital)</i></li>");	
				$('#ul5').append("<li>Dr.Mahesh Chavan&nbsp<i>(Umrao Hospital)</i></li>");	
				
			
			
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

