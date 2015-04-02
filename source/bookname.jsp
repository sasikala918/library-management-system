<%
	session.setAttribute("search_type","name");
%>
<html>
<head></head>
<body>
<div id='target'>
	<center>
	<br>
	<form action="books.jsp" method="post">
		<input type="text" name="book_name" id="book_name" class="input" placeholder="Enter Bookname"/>
		<br><br>
		<input type="submit"class="input2" value="GetResults">
	</form>
	</center>
</div>
</body>
</html>
