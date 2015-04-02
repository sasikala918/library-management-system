<%@include file="db.jsp"%>
<%
	try
	{
		int count=0;
		String bname1=request.getParameter("bname");
		String author1=request.getParameter("author");
		String stream1=request.getParameter("stream");
		String isbn=request.getParameter("isbn");
		String type=request.getParameter("type");
		String bname=bname1.toLowerCase();
		String author=author1.toLowerCase();
		String stream=stream1.toLowerCase();
		if(bname.length()==0)
		{
			out.println(1);
		}
		else if(author.length()==0)
		{
			out.println(2);
		}
		else if(stream.length()==0)
		{
			out.println(3);
		}
		else if(isbn.length()==0)
		{
			out.println(4);
		}
		else if(type.equals("Select Type"))
		{
			out.println(6);
		}
		else
		{
			int type1=0;
			if(type.equals("Academic"))
			{
				type1=0;
			}
			else
			{
				type1=1;
			}
			String months[] = {"Jan", "Feb", "Mar", "Apr","May", "Jun", "Jul", "Aug","Sep", "Oct", "Nov", "Dec"};
			Calendar calendar = Calendar.getInstance();
			String date_cur=calendar.get(Calendar.DATE)+"/"+months[calendar.get(Calendar.MONTH)]+"/"+calendar.get(Calendar.YEAR);
			String query1="insert into books values('"+isbn+"','"+bname+"','"+stream+"','"+author+"','1','"+date_cur+"','"+type1+"')";
			st.executeUpdate(query1);
			out.println(0);
		}
	}
	catch(Exception ex)
	{
		out.println(4);
	}
%>
