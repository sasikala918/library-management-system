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
		<link type="text/css" rel="stylesheet" href="css/hint.css">
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
				<div class="nav2" id="nav2" style="background-color:green;">
					<center style="font-size:20px;">
						<a href="login.jsp" class="link" >Login</a>
					</center>
				</div>
				<div class="nav3" id="nav3">
					<center style="font-size:20px;">
						<a href="register.jsp" class="link">Sign Up</a>
					</center>
				</div>
				<div class="nav4" id="nav4">
					<center style="font-size:20px;">
						<a href="services.jsp" class="link" >Services</a>
					</center>
				</div>
				<div class="nav5" id="nav5" >
					<center style="font-size:20px;" >
						<a href="about.jsp" class="link">About Us</a>
					</center>
				</div>
			</div>
			<div style="height:510px;width:1002px;">
				<div class="login_window">
					<center>
						<h2>Login Here</h2>
						<img src="images/user1.gif" width="60px" style="margin-left:-20px;backgroundcolor:white;">
						<img src="images/user2.gif" width="60px" style="margin-left:80px;">
						<br>
						<div id="error1" style="color:red;"></div>
						<form action="login_details.jsp" method="get" onclick="return false">
							<br><br>
							<span class="hint--right hint--error" data-hint="Please enter your username" ><input type="text" name="uname" id="uname" class="input3" placeholder="User name"/><br><br></span>
							<span class="hint--right hint--error" data-hint="Please enter your password" ><input type="password" name="pwd1" id="pwd1" class="input3" placeholder="Password"/></span>
							<br><br>
							<input type="submit" value="Login" class="input2" onclick="return check_login();">
							<br>
							<br>
						</form>
						<a href="register.jsp">New user register Here..</a>
					</center>
				</div>
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
