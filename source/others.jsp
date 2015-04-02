<%@include file="db.jsp"%>
<%
	session.setAttribute("search_type","others");
%>
<%
	ArrayList<String>list=new ArrayList<String>();
	String str="select * from books where type='1'";
	ResultSet rs=st.executeQuery(str);
	while(rs.next())
	{
		if(list.indexOf(rs.getString("stream"))==-1)
		{
			list.add(rs.getString("stream"));
		}
	}
%>
<html>
<head></head>
<body>
<div id='target'>
	<center>
		<br>
		<form action="books.jsp" method="post">
			<select class="input" name="book_name">
				<option>Select Option</option>
				<%
					for(int i=0;i<list.size();i++)
					{
				%>
						<option><%=list.get(i)%></option>
				<%
					}
				%>
			</select><br><br>
			<input type="submit" class="input2" value="GetResults">
		</form>
	</center>
</div>
</body>
</html>
