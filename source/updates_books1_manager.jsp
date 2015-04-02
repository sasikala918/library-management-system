<%@include file="db.jsp"%>
<%
	String update=request.getParameter("update");
	if(update.length()==0)
	{
		out.println(1);
	}
	else
	{
		String months[] = {"Jan", "Feb", "Mar", "Apr","May", "Jun", "Jul", "Aug","Sep", "Oct", "Nov", "Dec"};
		Calendar calendar = Calendar.getInstance();
		String date_cur=calendar.get(Calendar.DATE)+"/"+months[calendar.get(Calendar.MONTH)]+"/"+calendar.get(Calendar.YEAR);
		String str="insert into updates values('"+update+"','"+date_cur+"')";
		st.executeUpdate(str);
		out.println(0);
	}
%>

