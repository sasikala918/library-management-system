<%@include file="db.jsp"%>
<%
	String userid=session.getAttribute("userid").toString();
	String str="delete from user_details where uid='"+userid+"'";
	st.executeUpdate(str);
	String str1="delete from login where uname='"+userid+"'";
	st.executeUpdate(str1);
	response.sendRedirect("remove_users.jsp");
%>
