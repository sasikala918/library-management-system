<%@include file="db.jsp"%>
<%
	try
	{
		String content=request.getParameter("content");
		String str="delete from updates where content='"+content+"'";
		st.executeUpdate(str);
		out.println(1);
	}
	catch(Exception ex)
	{
		out.println(ex);
	}
%>
