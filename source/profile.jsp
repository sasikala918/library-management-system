<%@include file="db.jsp"%>
<%
	String uid="";
	try
	{
		uid=session.getAttribute("uid").toString();
		if((uid.charAt(1)=='s' ||(uid.charAt(1)=='S'))||((uid.charAt(1)=='t' ||(uid.charAt(1)=='T'))))
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
					<center><a href="home_borrower.jsp" class="link">Home</a></center>
				</div>
				<div class="nav13" style="background-color:green;">
					<center><a href="profile.jsp" class="link">Profile</a></center>
				</div>
				<div class="nav14">
					<center><a href="change_password.jsp" class="link">Change Password</a></center>
				</div>
				<div class="nav15">
					<center><a href="logout.jsp" class="link">Logout</a></center>
				</div>
			</div>
			<div style="height:510px;width:1002px;">
				<div class="left-panel">
					<center>
						<br>
						<a href="search_books.jsp" class="link">Search Books</a>
						<br>
						<br>
						<a href="available_books.jsp" class="link">Availability of Books</a>
						<br>
						<br>
						<a href="request_books.jsp" class="link">Request Books</a>
						<br>
						<br>
						<a href="history_books.jsp" class="link">History</a>
					</center>
				</div>
				<div class="content">
					<center>
						<h2>Update your Profile</h2>
						<%
							String str="select * from user_details where uid='"+uid+"'";
							ResultSet rs=st.executeQuery(str);
							if(rs.next())
							{
						%>
								<div id="message1" style="color:red;"></div>
								<div id="message2" style="color:green;"></div>
								<form action="update_details.jsp" method="post" onclick="return false">
								<table>
									<tr>
										<td width="300px" height="45px">
											<input type="text" class="input" value="<%=rs.getString("title")%>" readonly/>
										</td>
										<td>
											<input type="text" class="input" value="<%=rs.getString("sirname")%>" name="sirname" id="sirname" placeholder=" Sir name" onKeyup="checkInput(this)"/>
										</td>
									</tr>
									<tr>
										<td width="250px" height="45px">
											<input type="text" class="input" value="<%=rs.getString("fname")%>" name="fname" id="fname" placeholder=" First name" onKeyup="checkInput(this)"/>
										</td>
										<td>
											<input type="text" class="input" value="<%=rs.getString("mname")%>" name="mname" id="mname" placeholder=" Middle name" onKeyup="checkInput(this)"/>
										</td>
									</tr>
									<tr>
										<td width="250px" height="45px">
											<input type="text" class="input" value="<%=rs.getString("dob")%>" name="dob"  id="dob" placeholder=" Select DOB" readonly/>
										</td>
										<td>
											<a href="#" onclick="NewCal('dob','ddmmmyyyy',true,24)" style="color:blue;text-decoration:none;"><img src="images/cal.gif" width="16" height="16" border="0" alt="Pick a date" >&nbsp;Click on the Icon</a>
										</td>
									</tr>
									
									
									<tr>
										<td width="250px" height="45px">
											<input type="text" class="input1" value="<%=rs.getString("add")%>" name="add" id="add" placeholder=" Enter Your address"/>
										</td>
										<td>
											<input type="text" class="input" value="<%=rs.getString("pin")%>" name="pin" id="pin" placeholder=" Enter Your Postal Code" maxlength="6" onKeyup="checkInput1(this)" />
										</td>
									</tr>
									<tr>
										<td width="250px" height="45px">
											<input type="text" class="input" value="<%=rs.getString("phno")%>" name="phno" id="phno" placeholder=" Enter Your Phone number" maxlength="10" onKeyup="checkInput1(this)"/>
										</td>
										<td>
											<input type="text" class="input" value="<%=rs.getString("mid")%>" name="mid" id="mid" placeholder=" Enter Your Mail-ID"/>
										</td>
									</tr>
									<tr>
									</tr>
									<tr>
										<td colspan="2">
											<center>
												<input type="submit" value="Update" class="input2" onclick="return validation_update();">
											</center>
										</td>
									</tr>
								</table>
								</form>
						<%
							}
						%>
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
        <script type="text/javascript" src="js/datetimepicker.js"></script>
        <!-- Scripts EnD -->
	</body>
</html>
