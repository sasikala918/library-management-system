<%@include file="db.jsp"%>
<%
	String uid="";
	try
	{
		uid=session.getAttribute("uid").toString();
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
						<a href="add_books.jsp" class="link">Add Books</a>
						<br>
						<br>
						<a href="delete_books.jsp" class="link">Delete Books</a>
						<br>
						<br>
						<a href="updates_books.jsp" class="link1">Add Updates</a>
					</center>
				</div>
				<div class="content">
					<center>
						<form action="updates_books1.jsp" method="post" onclick="return false">
							<h3>Add Updates</h3>
							<div id="message1" style="color:red;"></div>
							<div id="message2" style="color:green;"></div>
							<textarea class="input" style="height:100px;width:300px;" name="update" id="update"></textarea>
							<br>
							<input type="submit" value="ADD" class="input2" onclick="return update_book();">
						</form>
						<div class="content4">
							<h3>All Updates</h3>
							<div id="message3" style="color:green;"></div>
							<table border="1">
							<%
								String str="select * from updates";
								ResultSet rs=st.executeQuery(str);
								while(rs.next())
								{
							%>	
									
										<tr>
											<td width="100px">
											<%=rs.getString("date")%>
											</td>
											<td width="350px">
											<%=rs.getString("content")%>
											</td>
											<td>
												<form action="remove_updates.jsp" onclick="return false" method="post">
													<input type="hidden" value="<%=rs.getString("content")%>" name="content" id="content">
													<input type="submit" value="Delete" onclick="return delete_updates();">
												</form>
											</td>
										</tr>
									
							<%	
								}
							%>
							</table>
						</div>
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
