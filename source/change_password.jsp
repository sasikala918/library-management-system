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
		<SCRIPT type="text/javascript">
			window.history.forward();
			function noBack() { window.history.forward(); }
		</SCRIPT>
	</head>
	<body id="page4" onload="noBack();"
		onpageshow="if (event.persisted) noBack();" onunload="">
			
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
		<div class="data" style="height:550px;">
			<div class="navigation1">
				<div class="nav11">
					<a style="color:white;"> &nbsp;Welcome&nbsp;&nbsp;&nbsp;<%=name%></a>
				</div>
				<div class="nav12" >
					<center><a href="home_borrower.jsp" class="link">Home</a></center>
				</div>
				<div class="nav13">
					<center><a href="profile.jsp" class="link">Profile</a></center>
				</div>
				<div class="nav14" style="background-color:green;">
					<center><a href="cnange_password.jsp" class="link">Change Password</a></center>
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
						<form action="change_password_details.jsp" method="post" onclick="return false">
							<h2>Change Password</h2>
							<div id="error1" style="color:red"></div>
							<div id="error2" style="color:green;"></div>
							<br>
							<input type="password" class="input" placeholder="Old Password" name="old_pwd" id="old_pwd"/>
							<br><br>
							&nbsp;&nbsp;&nbsp;<input type="password" class="input" style="margin-left:105px;" placeholder="New Password" name="new_pwd" id="new_pwd"/><a style="cursor:pointer;color:blue;" onclick="popup()" >&nbsp;&nbsp;&nbsp;Password Policy</a>
							<br><br>
							<input type="password" class="input" placeholder="Confirm Password" name="con_pwd" id="con_pwd"/>
							<br><br>
							<input type="submit" class="input2" value="Change" onclick="return change_password();">
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
