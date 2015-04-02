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
		<link type="text/css" rel="stylesheet" href="css/hint.css">
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
						<a href="add_users.jsp" class="link">Add users</a>
						<br>
						<br>
						<a href="remove_users.jsp" class="link">Remove Users</a>
						<br>
						<br>
						<a href="requested_books.jsp" class="link">Requested Books</a>
						<br>
						<br>
						<a href="add_books.jsp" class="link1">Add Books</a>
						<br>
						<br>
						<a href="delete_books.jsp" class="link">Delete Books</a>
						<br>
						<br>
						<a href="updates_books.jsp" class="link">Add Updates</a>
					</center>
				</div>
				<div class="content">
					<center>
						<br>
						<h2>Add Books</h2>
						<div id="message1" style="color:red;"></div>
						<div id="message2" style="color:green;"></div>
						<form action="add_books1.jsp" method="post" onclick="return false">
							<table>
								<tr>
									<td width="300px" height="45px">
										<span class="hint--left hint--success" data-hint="Please Enter  Book name" ><input type="text" class="input" name="bname" id="bname" placeholder=" Book name" /></span>
									</td>
									<td>
										<span class="hint--right hint--success" data-hint="Please Enter Author name" ><input type="text" class="input" name="author" id="author" placeholder=" Author"/></span>
									</td>
								</tr>
								<tr>
									<td width="250px" height="45px">
										<span class="hint--left hint--success" data-hint="Please Enter Stream of the book" ><input type="text" class="input" name="stream" id="stream" placeholder=" Stream" /></span>
									</td>
									<td>
										<span class="hint--right hint--success" data-hint="Please Enter ISBN number" ><input type="text" class="input" name="isbn" id="isbn" placeholder=" ISBN Number"/></span>
									</td>
								</tr>
								<tr>
									<td colspan="2">
										<center><span class="hint--right hint--success" data-hint="Please select type of book" ><select class="dropdown" id="type" name="type">
											<option>Select Type</option>
											<option>Academic</option>
											<option>Non Academic</option>
										</select></span></center>
									</td>
								</tr>
								<tr>
									<td colspan="2">
										<center><input type="submit" value="Add Book" class="input2" onclick="return add_book();"></center>
									</td>
								</tr>
							</table>
						</form>
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
