<%@include file="db.jsp"%>
<%
	String userid=session.getAttribute("uid").toString();
	session.invalidate();
	response.setHeader("Cache-Control","no-cache"); 
	response.setHeader("Cache-Control","no-store"); 
	response.setDateHeader("Expires", 0); 
	response.sendRedirect("index.jsp");
%>
