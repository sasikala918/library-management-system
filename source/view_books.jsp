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
						<a href="view_books.jsp" class="link1">View Books</a>
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
						<a href="updates_books.jsp" class="link">Add Updates</a>
					</center>
				</div>
				<div class="content">
					<center>
						<h3>Total books in Library</h3>
						<div class="content3">
							<table border="0">
								<tr>
									<td width="125px"><b><center>Book Name</center></b></td>
									<td width="125px"><b><center>Stream</center></b></td>
									<td width="125px"><b><center>Author</center></b></td>
									<td width="125px"><b><center>ISBN</center></b></td>
									<td width="125px"><b><center>Available</center></b></td>
									<td width="125px"><b><center>Books Type</center></b></td>
								</tr>
							</table>
						</div>
					<div class="content4" style="height:400px;">
					<table border="1px">
						<%
							String query1="select * from books";
							ResultSet rs_query1=st.executeQuery(query1);
							while(rs_query1.next())
							{
						%>
						<tr>
							<td width="125px"><center><%=rs_query1.getString("name")%></center></td>
							<td width="125px"><center><%=rs_query1.getString("stream")%></center></td>
							<td width="125px"><center><%=rs_query1.getString("author")%></center></td>
							<td width="125px"><center><%=rs_query1.getString("ISBN")%></center></td>
							<td width="125px"><center><%=rs_query1.getInt("count")%></center></td>
							<%
								int book_type=rs_query1.getInt("type");
								if(book_type==0)
								{
							%>
									<td width="125px"><center>Academic</center></td>
							<%
								}
								else
								{
							%>
									<td width="125px"><center>Non Academic</center></td>
							<%
								}
							%>
							
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
