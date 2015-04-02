<%@include file="db.jsp"%>
<%
	String uid="";
	try
	{
		uid=session.getAttribute("uid").toString();
		
	}
	catch(Exception ex)
	{
		response.sendRedirect("index.jsp");
	}
%>
<%
	String old_pwd=request.getParameter("old_pwd");
	String new_pwd=request.getParameter("new_pwd");
	String con_pwd=request.getParameter("con_pwd");
	String query="select * from login where uname='"+uid+"'";
	ResultSet rs_query=st.executeQuery(query);
	if(rs_query.next())
	{
		
		if(!(rs_query.getString("pwd").equals(old_pwd)))
		{
			out.println(1);
		}
		else
		{
			int one=0,two=0,three=0,four=0;
			for(int i=0;i<new_pwd.length();i++)
			{
				char ch=new_pwd.charAt(i);
				int ascii=ch;
				if(ascii>=65 && ascii<=90)
				{
					one=1;
				}
				else if(ascii>=97 && ascii<=122)
				{
					two=1;
				}
				else if(ascii>=48 && ascii<=57)
				{
					three=1;
				}
				else if(ch=='!' || ch=='@'||ch=='#'||ch=='$'||ch=='&'||ch=='*'||ch=='~')
				{
					four=1;
				}
			}
			if(one==0 || two==0 || three==0 || four==0)
			{
				out.println(2);
			}
			else if(!(new_pwd.equals(con_pwd)))
			{
				out.println(3);
			}
			else
			{
				String change="update login set pwd='"+new_pwd+"' where uname='"+uid+"'";
				st.executeUpdate(change);
				out.println(4);
			}
		}
	}
%>
