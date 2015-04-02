<%@page import="java.io.*"%>
<%
	String uid=session.getAttribute("uid").toString();
%>
<!DOCTYPE html>
<html>
	<head>
		<title>
			LMS
		</title>
		<meta charset="utf-8">
		<link type="text/css" rel="stylesheet" href="css/styles.css"/>
		<link type="text/css" rel="stylesheet" href="css/slide.css"/>
		<link type="text/css" rel="stylesheet" href="css/popup.css"/>
		
	</head>
	<body>
		<div class="header">
			<div class="logo">
				<br>
				<img src="images/logo.png" width="120px" height="100px;">
			</div>
			<div class="title">
				<img src="images/title.png" width="700px;" height="110px;">
			</div>
		</div>
		<div class="data" style="height:550px;">
			<div class="navigation">
				<div class="nav1" id="nav1">
					<center style="font-size:20px;">
						<a href="index.jsp" class="link">Home</a>
					</center>
				</div>
				<div class="nav2" id="nav2">
					<center style="font-size:20px;">
						<a href="login.jsp" class="link" >Login</a>
					</center>
				</div>
				<div class="nav3" id="nav3" style="background-color:green;">
					<center style="font-size:20px;">
						<a href="register.jsp" class="link">Sign Up</a>
					</center>
				</div>
				<div class="nav4" id="nav4">
					<center style="font-size:20px;">
						<a href="services.jsp" class="link" >Services</a>
					</center>
				</div>
				<div class="nav5" id="nav5">
					<center style="font-size:20px;" >
						<a href="about.jsp" class="link">About Us</a>
					</center>
				</div>
			</div>
			<div style="height:510px;width:1002px;">
				<center>
					<br><br>
					<p style="color:green;">Your registration has done successfully...<br></p>
					Your User id is <p style="color:green;"><%=uid%></p>&nbsp;Please<a href="login.jsp"> Click Here </a> to login.</p>
				</center>
			</div>
		</div>
		<div class="footer">
			<center>Copyright &copy; <a href="#" style="color:red;">JCJHAMJ Team</a> All Rights Reserved</center>
		</div>
		<!-- Scripts -->
        <script type="text/javascript" src="js/jquery.js"></script>
        <script type="text/javascript" src="js/script.js"></script>
        <script type="text/javascript" src="js/slide.js"></script>
        <!-- Scripts EnD -->
	</body>
</html>
