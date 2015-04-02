<%@include file="db.jsp"%>
<%
	String uid="";
	try
	{
		uid=session.getAttribute("uid").toString();
		if(uid.charAt(1)=='A' ||(uid.charAt(1)=='a'))
		{
		
		}
		else 
		{
			response.sendRedirect("index.jsp");
		}
	}
	catch(Exception ex)
	{
		response.sendRedirect("index.jsp");
	}
%>
<%
	String name="";
	String query="select * from user_details where uid='"+uid+"'";
	ResultSet rs_query=st.executeQuery(query);
	if(rs_query.next())
	{
		name=rs_query.getString("title")+" "+rs_query.getString("sirname")+" "+rs_query.getString("fname")+" "+rs_query.getString("mname");
	}
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
		<link type="text/css" rel="stylesheet" href="css/hint.css"/>
		<SCRIPT type="text/javascript">
			window.history.forward();
			function noBack() { window.history.forward(); }
		</SCRIPT>
	</head>
	<body id="page4" onload="noBack();"
		onpageshow="if (event.persisted) noBack();" onunload="">

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
			<div class="navigation1">
				<div class="nav11">
					<a style="color:white;"> &nbsp;Welcome&nbsp;&nbsp;&nbsp;<%=name%></a>
				</div>
				<div class="nav12">
					
				</div>
				<div class="nav13">
					<center><a href="home_admin.jsp" class="link">Home</a></center>
				</div>
				<div class="nav14">
					<center><a href="change_password_admin.jsp" class="link">Change Password</a></center>
				</div>
				<div class="nav15">
					<center><a href="logout.jsp" class="link">Logout</a></center>
				</div>
			</div>
			<div style="height:510px;width:1002px;">
				<div class="left-panel">
					<center>
						<br>
						<a href="view_books.jsp" class="link">View Books</a>
						<br>
						<br>
						<a href="add_users.jsp" class="link1">Add users</a>
						<br>
						<br>
						<a href="remove_users.jsp" class="link">Remove Users</a>
						<br>
						<br>
						<a href="requested_books.jsp" class="link">Requested Books</a>
						<br>
						<br>
						<a href="add_books.jsp" class="link">Add Books</a>
						<br>
						<br>
						<a href="delete_books.jsp" class="link">Delete Books</a>
						<br>
						<br>
						<a href="updates_books.jsp" class="link">Add Updates</a>
					</center>
				</div>
				<div class=content>
							<form action="registration_details_admin.jsp" method="post" onclick="return false">
				<center>
					<h2>Add user</h2>
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
							<td height="45px">
								<span class="hint--right hint--success" data-hint="Please select your type" ><select class="dropdown" name="type" id="type" >
									<option>Select Type</option>
									<option>Student</option>
									<option>Teacher</option>
									<option>Library Manager</option>
								</select></span>
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
							<td colspan="2">
								<center>
									<input type="submit" value="Add User" class="input2" onclick="return validation_admin();">
								</center>
							</td>
						</tr>
					</table>
				</center>
				</form>
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
        <script type="text/javascript" src="js/datetimepicker.js"></script>
        <!-- Scripts EnD -->
	</body>
</html>
