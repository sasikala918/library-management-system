<%@include file="db.jsp"%>
<%
	String uid="";
	try
	{
		uid=session.getAttribute("uid").toString();
		if(uid.charAt(1)=='m' ||(uid.charAt(1)=='M'))
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
	String months[] = {"Jan", "Feb", "Mar", "Apr","May", "Jun", "Jul", "Aug","Sep", "Oct", "Nov", "Dec"};
	Calendar calendar = Calendar.getInstance();
	String date_cur=calendar.get(Calendar.DATE)+"/"+months[calendar.get(Calendar.MONTH)]+"/"+calendar.get(Calendar.YEAR);
	String msg="";
	String id=session.getAttribute("return_id").toString();
	String isbn=session.getAttribute("return_isbn").toString();
	String type=request.getParameter("type");
	if(type.equals("Return"))
	{
		msg="Book returned from "+id;
		String str="update books_user set status='4',date='"+date_cur+"' where uid='"+id+"' and ISBN='"+isbn+"'";
		st.executeUpdate(str);
		String increment="select * from books where ISBN='"+isbn+"'";
		ResultSet rs_increment=st.executeQuery(increment);
		int count_book=0;
		while(rs_increment.next())
		{
			count_book=rs_increment.getInt("count");
			count_book++;
		}
		String book_update="update books set count='"+count_book+"' where ISBN='"+isbn+"'";
		st.executeUpdate(book_update);
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
				<div class="nav12" >
					<center><a href="home_manager.jsp" class="link">Home</a></center>
				</div>
				<div class="nav13">
					<center><a href="profile_manager.jsp" class="link">Profile</a></center>
				</div>
				<div class="nav14">
					<center><a href="change_password_manager.jsp" class="link">Change Password</a></center>
				</div>
				<div class="nav15">
					<center><a href="logout.jsp" class="link">Logout</a></center>
				</div>
			</div>
			<div style="height:510px;width:1002px;">
				<div class="left-panel">
					<center>
						<br>
						<a href="status_books.jsp" class="link">Books Status</a>
						<br>
						<br>
						<a href="requested_books_manager.jsp" class="link">Requested Books</a>
						<br>
						<br>
						<a href="issue_books.jsp" class="link1">Issue Books</a>
						<br>
						<br>
						<a href="return_books.jsp" class="link">Return Books</a>
						<br>
						<br>
						<a href="update_books_manager.jsp" class="link">Add Updates</a>
					</center>
				</div>
				<div class="content">
					<center>
						<br><br>
							<b><%=msg%></b>
							<form action="return_books.jsp">
								<input type="submit" value="Thanks" class="input2">
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


