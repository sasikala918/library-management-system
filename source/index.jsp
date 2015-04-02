<!DOCTYPE html>
<html>
	<head>
		<title>
			LMS
		</title>
		<meta charset="utf-8">
		<link type="text/css" rel="stylesheet" href="css/styles.css"/>
		<link type="text/css" rel="stylesheet" href="css/slide.css"/>
		
	</head>
	<body>
		
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
			<div class="navigation">
				<div class="nav1" id="nav1" style="background-color:green;">
					<center style="font-size:20px;">
						<a href="index.jsp" class="link">Home</a>
					</center>
				</div>
				<div class="nav2" id="nav2">
					<center style="font-size:20px;">
						<a href="login.jsp" class="link">Login</a>
					</center>
				</div>
				<div class="nav3" id="nav3">
					<center style="font-size:20px;">
						<a href="register.jsp" class="link">Sign Up</a>
					</center>
				</div>
				<div class="nav4" id="nav4">
					<center style="font-size:20px;">
						<a href="services.jsp" class="link">Services</a>
					</center>
				</div>
				<div class="nav5" id="nav5" >
					<center style="font-size:20px;" >
						<a href="about.jsp" class="link">About Us</a>
					</center>
				</div>
			</div>
			<div style="width:713.4px;height:510px;float:left;">
				<div class="slide"  id="slide">
					<div class="slide_content" id="slide_content">
						<slide><div class="inner_content" id="c0"><img src="images/1.png"></div></slide>
						<slide><div class="inner_content" id="c1"><img src="images/2.jpg"></div></slide>
						<slide><div class="inner_content" id="c2"><img src="images/3.jpg"></div></slide>
						<slide><div class="inner_content" id="c3"><img src="images/4.jpg"></div></slide>
						<slide><div class="inner_content" id="c4"><img src="images/5.jpg"></div></slide>
						<slide><div class="inner_content" id="c5"><img src="images/6.jpg"></div></slide>
						<slide><div class="inner_content" id="c6"><img src="images/7.jpg"></div></slide>
					</div>
					<div class="slid_change" id="slid_change">
					</div>
				</div>
				<div class="about">
				<h3>About Library</h3>
				<ul>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A library is an organized collection of sources of information and similar resources, made accessible to a defined community for reference or borrowing.
					It provides physical or digital access to material, and may be a physical building or room, or a virtual space, or both.A library's collection can include books, periodicals, newspapers, manuscripts, films, maps, prints, documents, microform, CDs, cassettes, DVDs, videotapes, Blu-ray Discs, e-books, audiobooks, databases, and other formats.
				</ul>
				<ul>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Libraries range in size from a few shelves of books to several million items. In Latin and Greek, the idea of bookcase is represented by Bibliotheca and Bibliothēkē : derivatives of these mean library in many modern languages, e.g. French bibliothèque.
				</ul>
				</div>
			</div>
			<div class="updates" style="border:solid black 1px;">
				<center><h3>Updates</h3></center>
				<marquee direction="up" style=";height:80%;" scrollamount="3">
				<%@include file="db.jsp"%>
				<%
					String str="select * from updates";
					ResultSet rs=st.executeQuery(str);
					while(rs.next())
					{
						out.println("&nbsp;&nbsp;"+rs.getString("date")+"&nbsp;&nbsp;&nbsp;"+rs.getString("content")+"</br>");
					}
				%>
				</marquee>
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
