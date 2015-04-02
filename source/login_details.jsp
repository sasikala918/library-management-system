<%@include file="db.jsp"%>
<%
	String uname=request.getParameter("uname");
	String pwd=request.getParameter("pwd1");
	
	String str="select * from login where uname='"+uname+"' and pwd='"+pwd+"'";
	ResultSet rs=st.executeQuery(str);
	if(rs.next())
	{
		
		int type=rs.getInt("type");
		if(type==1)
		{
			session.setAttribute("uid",uname);
			out.println(1);
		}
		else if(type==2)
		{
			session.setAttribute("uid",uname);
			out.println(2);
		}
		else if(type==3)
		{
			session.setAttribute("uid",uname);
			out.println(3);
		}
	}
	else
	{
		out.println(0);
	}
%>
