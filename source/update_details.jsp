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
	try
	{
		String sirname=request.getParameter("sirname");
		String fname=request.getParameter("fname");
		String mname=request.getParameter("mname");
		String dob=request.getParameter("dob");
		String add=request.getParameter("add");
		String pin=request.getParameter("pin");
		String phno=request.getParameter("phno");
		String mid=request.getParameter("mid");
		if((sirname.length()==0)||(fname.length()==0))
		{
			out.println(1);
		}
		else if((add.length()==0)||(pin.length()!=6)||(phno.length()!=10))
		{
			out.println(1);
		}
		else 
		{
				String x=mid;
				int atpos=x.indexOf("@");
				int dotpos=x.lastIndexOf(".");
				if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length())
				{
					out.println(1);
				}
				else 
				{
					String query1="update user_details set sirname='"+sirname+"',fname='"+fname+"',mname='"+mname+"',dob='"+dob+"',pin='"+pin+"',phno='"+phno+"',mid='"+mid+"' where uid='"+uid+"'";
					st.executeUpdate(query1);
					//String query2="update user_details set add'='"+add+"' where uid='"+uid+"'";
					//st.executeUpdate(query2);
					out.println(0);
				}
		}
	}
	catch(Exception ex)
	{
		out.println(ex);
	}
%>
