<%@include file="db.jsp"%>
<%
	String isbn=session.getAttribute("isbn").toString();
	String str="delete from books where ISBN='"+isbn+"'";
	st.executeUpdate(str);
	response.sendRedirect("delete_books.jsp");
%>
