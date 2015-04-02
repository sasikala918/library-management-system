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
				<div class="nav12" style="background-color:green;">
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
						<a href="issue_books.jsp" class="link">Issue Books</a>
						<br>
						<br>
						<a href="return_books.jsp" class="link">Return Books</a>
						<br>
						<br>
						<a href="update_books_manager.jsp" class="link">Add Updates</a>
					</center>
				</div>
				<div class="content">
					<div class="slide"  id="slide">
					<div class="slide_content" id="slide_content">
						
						<slide><div class="inner_content" id="c0"><img src="images/11.jpg"></div></slide>
						<slide><div class="inner_content" id="c1"><img src="images/12.jpg"></div></slide>
						
					</div>
					<div class="slid_change" id="slid_change">
					</div>
				</div>
				<h3>&nbsp;Responsibilities of Library Manager:</h3>
					<ul>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						The Librarian is responsible for providing library and research services for the organization and
						maintenance of the library and its collections.
						The Librarian reports directly to the Senior Administrative Officer and provides librarian and
						research services. Providing adequate services will ensure that materials are current and
						accessible, and available to library users when required. Manage the planning, administrative and budgetary functions of library and information
						services.
					</ul>
					<ul>
						<h4>Main Activities</h4>
						<li style="margin-left:40px;">Establish and implement library and information policies and procedures.</li>
						<li style="margin-left:40px;">Develop and manage convenient, accessible library and information services.</li>
						<li style="margin-left:40px;">Establish and manage the budget for library and information services, technology and media.</li>
					</ul>
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

