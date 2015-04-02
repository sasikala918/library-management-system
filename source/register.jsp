<%@include file="db.jsp"%>
<%
	Random ran=new Random();
	int num=ran.nextInt(20);
	num=num+1;
	String image=num+".JPG";
	session.setAttribute("id",image);
	
%>
<!DOCTYPE html>
<html>
	<head>
		<title>
			LMS
		</title>
		<link type="text/css" rel="stylesheet" href="css/styles.css">
		<link type="text/css" rel="stylesheet" href="css/slide.css">
		<link type="text/css" rel="stylesheet" href="css/hint.css">
		<link type="text/css" rel="stylesheet" href="css/popup.css">
		<script type="text/javascript">
			function popup()
			{
				
				if(window.XMLHttpRequest)
				{
						xmlhttp=new XMLHttpRequest();
				}
				else
				{
						xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
				}
				xmlhttp.onreadystatechange=function()
				{
					if (xmlhttp.readyState==4)
					{
						var x=xmlhttp.responseText;
						$(".data_1").html(x);
						$(".popup").show();
					}
				}
				xmlhttp.open("GET","passwordpolicy.jsp",true);
				xmlhttp.send();
			}
			function close_popup()
			{
				$(".popup").hide();
			}
		</script>
	</head>
	<body>
		<div class="popup">
			<div class="box">
				<div class="close" onclick="close_popup()">Close</div>
				<div class="data_1"></div>
			</div>
		</div>
		<div class="header">
			<div class="logo">
				<br>
				<img src="images/logo.png" width="120px" height="100px;">
			</div>
			<div class="title">
				<img src="images/title.png" width="700px;" height="110px;">
			</div>
		</div>
		<div class="data" style="height:670px;">
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
						<a href="services.jsp" class="link">Services</a>
					</center>
				</div>
				<div class="nav5" id="nav5" >
					<center style="font-size:20px;" >
						<a href="about.jsp" class="link">About Us</a>
					</center>
				</div>
			</div>
			<div class="row2">
				<form action="registration_details.jsp" method="post" onclick="return false">
				<center>
					<h2>Register Here</h2>
					<div id="message1" style="color:red;"></div>
					<div id="message2" style="color:green;"></div>
					<table>
						<tr>
							<td width="300px" height="45px">
								<span class="hint--left hint--success" data-hint="Please select your title" ><select class="dropdown" id="title" name="title">
									<option>Select Title</option>
									<option>Mr.</option>
									<option>Ms.</option>
								</select></span>
							</td>
							<td>
								<span class="hint--right hint--success" data-hint="Please Enter Your Sir name" ><input type="text" class="input" name="sirname" id="sirname" placeholder=" Sir name" onKeyup="checkInput(this)"/></span>
							</td>
						</tr>
						<tr>
							<td width="250px" height="45px">
								<span class="hint--left hint--success" data-hint="Please Enter Your first name" ><input type="text" class="input" name="fname" id="fname" placeholder=" First name" onKeyup="checkInput(this)"/></span>
							</td>
							<td>
								<span class="hint--right hint--success" data-hint="Please Enter Your middle name" ><input type="text" class="input" name="mname" id="mname" placeholder=" Middle name" onKeyup="checkInput(this)"/></span>
							</td>
						</tr>
						<tr>
							<td width="250px" height="45px">
								<span class="hint--left hint--success" data-hint="Please select your Date of Birth" ><input type="text" class="input" name="dob"  id="dob" placeholder=" Select DOB" readonly/></span>
							</td>
							<td>
								<a href="#" onclick="NewCal('dob','ddmmmyyyy',true,24)" style="color:blue;text-decoration:none;"><img src="images/cal.gif" width="16" height="16" border="0" alt="Pick a date" >&nbsp;Click on the Icon</a>
							</td>
						</tr>
						<tr>
							<td width="250px" height="45px">
								<span class="hint--left hint--success" data-hint="Please Enter Your password" ><input type="password" class="input" name="pwd" id="pwd" placeholder=" Enter Your Password"/></span>
							</td>
							<td>
								<a style="cursor:pointer;color:blue;" onclick="popup()" >Password Policy</a>
							</td>
						</tr>
						<tr>
							<td width="250px" height="65px">
								<span class="hint--left hint--success" data-hint="Once again Enter Your password" ><input type="password" class="input" name="cpwd" id="cpwd"placeholder=" Confirm Your Password"/></span>
							</td>
							<td>
								<span class="hint--right hint--success" data-hint="Please select your type" ><select class="dropdown" name="type" id="type" >
									<option onclick="empty();">Select Type</option>
									<option onclick="empty();">Student</option>
									<option onclick="employee();">Teacher</option>
								</select></span>
								<center><div id="load_employee"></div></center>
								
							</td>
						</tr>
						<tr>
							<td width="250px" height="45px">
								<span class="hint--left hint--success" data-hint="Please Enter Your address" ><textarea type="text" class="input1" name="add" id="add" placeholder=" Enter Your address"/></textarea></span>
							</td>
							<td>
								<span class="hint--right hint--success" data-hint="Please Enter Your Postal Code" ><input type="text" class="input" name="pin" id="pin" placeholder=" Enter Your Postal Code" maxlength="6" onKeyup="checkInput1(this)" /></span>
							</td>
						</tr>
						<tr>
							<td width="250px" height="45px">
								<span class="hint--left hint--success" data-hint="Please Enter Your Phone number" ><input type="text" class="input" name="phno" id="phno" placeholder=" Enter Your Phone number" maxlength="10" onKeyup="checkInput1(this)"/></span>
							</td>
							<td>
								<span class="hint--right hint--success" data-hint="Please Enter Your Mail-Id" ><input type="text" class="input" name="mid" id="mid" placeholder=" Enter Your Mail-ID"/></span>
							</td>
						</tr>
						<tr>
							<td colspan="2" height="50px">
								<center><img src="images1/<%=image%>" width="200px" height="50px" style="border-radius:5px 5px 5px 5px;"></center>
							</td>
						</tr>
						<tr>
							<td colspan="2" height="45px;">
								<center><span class="hint--left hint--success" data-hint="Please Enter above text" ><input type="text" class="input" name="image_code" id="image_code" placeholder=" Enter above text"/></span></center>
							</td>
						</tr>
						<tr>
							<td colspan="2">
								<center>
									<input type="submit" value="Register" class="input2" onclick="return validation();">
								</center>
							</td>
						</tr>
					</table>
				</center>
				</form>
			</div>
		</div>
		<div class="footer">
			<center>Copyright &copy; <a href="#" style="color:red;">JCJHAMJ Team</a> All Rights Reserved</center>
		</div>
		<!-- Scripts -->
        <script type="text/javascript" src="js/jquery.js"></script>
        <script type="text/javascript" src="js/script.js"></script>
        <script type="text/javascript" src="js/datetimepicker.js"></script>
        <!-- Scripts EnD -->
	</body>
</html>
