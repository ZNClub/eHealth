<!DOCTYPE HTML>
<!--
	Striped by HTML5 UP
	html5up.net | @n33co
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<%@include file="header.jsp" %>
<html>
	<head>
		<title>Profile</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="assets/css/main.css" />
                <link rel="stylesheet" href="css/constant.css" type="text/css">

		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
                <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"</script>
		<script src="assets/js/main.js"></script>
                <script src="script.js"></script>
         <script language="javascript">
function passwordChanged() {
    var strength = document.getElementById("strength");
    var strongRegex = new RegExp("^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#\$%\^&\*])(?=.{8,})");
    var mediumRegex = new RegExp("^(?=.{7,})(((?=.*[A-Z])(?=.*[a-z]))|((?=.*[A-Z])(?=.*[0-9]))|((?=.*[a-z])(?=.*[0-9]))).*$", "g");
    var enoughRegex = new RegExp("(?=.{6,}).*", "g");
    var valid=0;
    var pwd=document.getElementById("password");
    if (pwd.length==0) {
        strength.innerHTML = "Type Password";
} else if (false == enoughRegex.test(pwd.value)) {
strength.innerHTML = "Minimum Length Of 6 characters";
} else if (strongRegex.test(pwd.value)) {
strength.innerHTML = "<span style=color:green>Strong!</span>";
valid=1;
    
} else if (mediumRegex.test(pwd.value)) {
strength.innerHTML = "<span style=color:orange>Medium!</span>";
} else {
strength.innerHTML = "<span style=color:red>Weak!</span>";
}
if(valid==1)
    return true;
else
    return false;
}
function confirmPassword(){
    var pwd1=document.getElementById('password2');
    var pwd=document.getElementById('password');
    var valid=document.getElementById('confirm');
    var submit=document.getElementById('save7');
    if(pwd.value===pwd1.value)
    {
        valid.innerHTML="<span style=color:green>Match</span>";
        submit.disabled=false;
        
    }
    else
    {
        valid.innerHTML="<span style=color:red>Not a Match</span>";
        submit.disabled=true;
    }
}

</script>
                
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
								<h2><a href="profile.jsp"><span>${Person.firstName} ${Person.lastName}</span></a></h2>
								
							</header>
							
							
							
							
						</article>

					<!-- Post -->
						<article class="box post post-excerpt">
							<header>
								<h3 style="font-size:x-large">Reset Password</h3>
							</header>
							<hr>
							<div id="div1" style="color:red;width:150px;max-width:150px;
							height:auto;max-height:auto">
							
							
							
								
								
									<form name="register" method="post" action="ResetPasswordServlet.do">
									<ul class="ul" style="font-size:1.1em;color:#000;
                                                                            line-height:2.9em;">
									<li >
									<label style="font-weight:bold;">Old password:</label>
									<input type="password" name="old">
									</li>
									
									<li >
									<label style="font-weight:bold;">New password:</label>
									<input type="password" id="password" name="new" onkeyup="return passwordChanged();">
                                                                        <span id="strength"> </span>
									</li>
									
									<li >									
									<label style="font-weight:bold;">Confirm :</label>									
									<input type="password" name="confirm" id="password2" onkeyup="return confirmPassword();">
                                                                        <span id="confirm"> </span>
									</li>
									
									</ul>
									<!--<input type="submit" class="small" id="save7" name="reset"  value="Reset" style="display:inline;">-->
                                                                        <input type="submit" value="reset">
									</form>
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
					<a href="#"  class="image featured"><img id="pp" src="" alt="" style="width:100%;height: auto"/></a>
                                        <p id="gender" style="display:none">${Person.sex}<p>
				<!-- Nav -->
					<nav id="nav">
						<ul>
							<li ><a href="profile.jsp">Profile</a></li>
							<li ><a href="editprofile.jsp">Edit Profile</a></li>
							<li class="current"><a href="resetpassword.jsp">Reset Password</a></li>
							
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
		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="assets/js/main.js"></script>
                        
                            
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
                           

</body>	
</html>