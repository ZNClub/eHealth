<%-- 
    Document   : DeleteProfile
    Created on : 22 Oct, 2015, 11:32:33 PM
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
                        <h2><a href="profile.jsp"><span>Nevil Dsouza</span></a></h2>

                    </header>




                </article>

                <!-- Post -->
                <!--						<article class="box cost post-excerpt"> -->
                <header>
                    <h3 style="font-size:x-large">Delete Account</h3>
                </header>
                <hr>
				
                <div id="div11" style="width:390px;max-width:390px;
                     height:auto;max-height:auto">

                    <p style="font-size:large">Are you sure you want to delete your account ?<br>
                        									</p>
                    <form name="register" method="post" action="DeleteServlet.do" >
                        <ul class="ul" style="font-size:1.4em;color:#000;
                            line-height:2.9em;">
                            <!--<li >
                                <label style="font-weight:bold;"></label>
                                <input type="email" name="email">
                            </li>-->
                        </ul>
                        <input class="small" id="del" type="submit" value="Yes" style="display:inline;">&nbsp;&nbsp;
                          <!--  <input class="small" id="del" type="submit" value="No" style="display:inline;">-->
                    </form>


                        

                </div>

                <hr>
                <div id="div2" style="color:blue;width:150px;max-width:150px;
                     height:200px;max-height:200px">

                </div>

                <hr>
                <div id="div3" style="color:red;width:150px;max-width:150px;
                     height:200px;max-height:200px">

                </div>
                </article>

                <!-- Pagination -->


            </div>
        </div>
        <!-- Sidebar -->
        <div id="sidebar" >

            <!-- Logo -->
				<p id="gender" style="display:none">${Person.sex}<p>
				<p id="p_type" style="display:none">${Person.type}</p>
				
				
         <!--   <a href="#" class="image featured"><img src="images/pic03.jpg" alt="" style="width:100%;height: auto;"/></a>-->
					<a href="#" class="image featured"><img id="pp" src="" alt="Profile Pic" style="width:100%;height:auto"/></a>
					<form method="post" action="UploadServlet.do">
					<input class="small" id="save9" type="submit" value="change profile picture" style="display">
					</form>

            <!-- Nav -->
            <nav id="nav">
                <ul>
					
                    <li ><a href="profile.jsp">Profile</a></li>
                    <li ><a href="editprofile.jsp">Edit Profile</a></li>
                    <li ><a href="resetpassword.jsp">Reset Password</a></li>
					<li ><a href="activity.jsp">Activity</a></li>
                    <li class="current"><a href="deleteprofile.jsp">Delete Account</a></li>
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

        </div>

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
