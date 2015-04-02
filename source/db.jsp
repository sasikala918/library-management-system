<%@page import="java.io.*"%>
<%@page import="java.util.*"%>
<%@page import="java.net.*"%>
<%@page import="java.sql.*"%>
<%@page import="javax.sql.*"%>
<%
	String connectionURL = "jdbc:mysql://localhost:3307/sreehari918";
	Connection con = null;
	Class.forName("com.mysql.jdbc.Driver").newInstance();
	con = DriverManager.getConnection(connectionURL,"sreehari918","sreehari@555");
	Statement st=con.createStatement();
%>
