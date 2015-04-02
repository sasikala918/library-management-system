<%
	session.setAttribute("type_status","day");
%>
<html>
<head>
</head>
<body>
<div id='target'>
	<center>
	<br>
		<form action="status_result.jsp" method="post">
			<center>
				<table>
					<tr>
						<td width="50px" height="45px">
							<select name="year" class="input" style="width:70px;">
								<option>Year</option>
								<%
									for(int i=2000;i<=2020;i++)
									{
								%>
									<option><%=i%></option>
								<%	
									}
								%>
							</select>
						</td>
						<td width="50px" height="45px">
							<select name="month" class="input" style="width:70px;">
								<option>Month</option>
								<%
									String months[] = {"Jan", "Feb", "Mar", "Apr","May", "Jun", "Jul", "Aug","Sep", "Oct", "Nov", "Dec"};
									for(int i=0;i<months.length;i++)
									{
								%>
									<option><%=months[i]%></option>
								<%	
									}
								%>
							</select>
						</td>
						<td width="50px" height="45px">
							<select name="day" class="input" style="width:70px;">
								<option>Day</option>
								<%
									for(int i=1;i<=31;i++)
									{
								%>
									<option><%=i%></option>
								<%	
									}
								%>
							</select>
						</td>
					</tr>
				</table>
				<input type="submit"class="input2" value="GetResults">
			</center>
		</form>
	</center>
</div>
		
</body>
</html>
