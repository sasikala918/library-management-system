<%@include file="db.jsp"%>
<%
	String months[] = {"Jan", "Feb", "Mar", "Apr","May", "Jun", "Jul", "Aug","Sep", "Oct", "Nov", "Dec"};
	Calendar calendar = Calendar.getInstance();
	String date_cur=calendar.get(Calendar.DATE)+"/"+months[calendar.get(Calendar.MONTH)]+"/"+calendar.get(Calendar.YEAR);
	String uid="";
	try
	{
		uid=session.getAttribute("uid").toString();
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


	String msg="";
	try
	{
		int book_count=0;
		String qu="select * from login where uname='"+uid+"'";
		ResultSet rs_qu=st.executeQuery(qu);
		if(rs_qu.next())
		{
			book_count=rs_qu.getInt("max_books");
		}
		String req=request.getParameter("isbn");
		String update="update books_result set count='0' where ISBN='"+req+"'";
		st.executeUpdate(update);
		String str1="select * from books_user where uid='"+uid+"'";
		ResultSet rs_str1=st.executeQuery(str1);
		int c=0;
		while(rs_str1.next())
		{
			if(((rs_str1.getInt("status"))==1)||(((rs_str1.getInt("status"))==2)))
				c++;
		}
		if(c>=book_count)
		{
			msg="Your maximum limit is over..";
		}
		else
		{
			String query0="select * from books_user where uid='"+uid+"' and ISBN='"+req+"' and status='1'";
			ResultSet rs_query0=st.executeQuery(query0);
			if(rs_query0.next())
			{
				msg="You have already requested for this book...";
			}
			else
			{
				
				String str="select * from books where ISBN='"+req+"'";
				ResultSet rs=st.executeQuery(str);
				String name="";
				String author="";
				String stream="";
				if(rs.next())
				{
					name=rs.getString("name");
					author=rs.getString("author");
					stream=rs.getString("stream");
				}
				String query1="insert into books_user values('"+uid+"','"+name+"','"+stream+"','"+author+"','"+req+"','1','"+date_cur+"')";
				st.executeUpdate(query1);
				msg="Your request has been sent...";
			}
		}
		
	}
	catch(Exception ex)
	{
		out.println(ex);
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
						<a href="request_books.jsp" class="link1">Request Books</a>
						<br>
						<br>
						<a href="history_books.jsp" class="link">History</a>
					</center>
				</div>
				<div class="content">
				<center>
					<br>
					
						<h3><%=msg%></h3>
					
					<form action="request_books.jsp" method="post">
						<input type="submit" class="input2" value="Home">
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

