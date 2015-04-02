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
	
	String name1="";
	String query="select * from user_details where uid='"+uid+"'";
	ResultSet rs_query=st.executeQuery(query);
	if(rs_query.next())
	{
		name1=rs_query.getString("title")+" "+rs_query.getString("sirname")+" "+rs_query.getString("fname")+" "+rs_query.getString("mname");
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
					<a style="color:white;"> &nbsp;Welcome&nbsp;&nbsp;&nbsp;<%=name1%></a>
				</div>
				<div class="nav12">
					<center><a href="home_borrower.jsp" class="link">Home</a></center>
				</div>
				<div class="nav13">
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
						<a href="history_books.jsp" class="link1">History</a>
					</center>
				</div>
				<div class="content">
					<center><h2>History</h2></center>
					<div class="content3">
					<table border="0">
						<tr>
							<td width="150px"><b><center>Book Name</center></b></td>
							<td width="150px"><b><center>Stream</center></b></td>
							<td width="150px"><b><center>Author</center></b></td>
							<td width="150px"><b><center>ISBN</center></b></td>
							<td width="150px"><b><center>Status</center></b></td>
						</tr>
						<tr>
						</tr>
					</table>
					</div>
					<div class="content4">
					<table border="1px">
						<%
							String query1="select * from books_user";
							ResultSet rs_query1=st.executeQuery(query1);
							while(rs_query1.next())
							{
						%>
						<tr>
							<td width="150px"><%=rs_query1.getString("name")%></td>
							<td width="150px"><%=rs_query1.getString("stream")%></td>
							<td width="150px"><%=rs_query1.getString("author")%></td>
							<td width="150px"><%=rs_query1.getString("ISBN")%></td>
							<%
							int status=rs_query1.getInt("status");
							if(status==1)
							{
							%>
								<td width="150px">Requested</td>
							<%
							}
							else if(status==2)
							{
							%>
								<td width="150px">Issued</td>
							<%
							}
							else if(status==3)
							{
							%>
								<td width="150px">Rejected</td>
							<%
							}
							%>
						</tr>
						<%
							}
						%>
					</table>
					</div>
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

