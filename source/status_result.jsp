<%@include file="db.jsp"%>
<%
	try
	{
		String qu="delete from status_result";
		st.executeUpdate(qu);
		String type_status=session.getAttribute("type_status").toString();
		ArrayList<String>list1=new ArrayList<String>();
		ArrayList<String>list2=new ArrayList<String>();
		ArrayList<String>list3=new ArrayList<String>();
		ArrayList<String>list4=new ArrayList<String>();
		ArrayList<String>list5=new ArrayList<String>();
		ArrayList<Integer>list6=new ArrayList<Integer>();
		if(type_status.equals("day"))
		{
			String year=request.getParameter("year");
			String month=request.getParameter("month");
			String day=request.getParameter("day");
			String date=day+"/"+month+"/"+year;
			String str="select * from books_user where date='"+date+"'";
			ResultSet rs=st.executeQuery(str);
			while(rs.next())
			{
				list1.add(rs.getString("uid"));
				list2.add(rs.getString("name"));
				list3.add(rs.getString("stream"));
				list4.add(rs.getString("author"));
				list5.add(rs.getString("isbn"));
				list6.add(rs.getInt("status"));
				
			}
			
			for(int i=0;i<list1.size();i++)
			{
				String str1="insert into status_result values('"+list1.get(i)+"','"+list2.get(i)+"','"+list3.get(i)+"','"+list4.get(i)+"','"+list5.get(i)+"','"+list6.get(i)+"','"+date+"')";
				st.executeUpdate(str1);
				
			}
		}
	}
	catch(Exception ex)
	{
		out.println(ex);
	}
	response.sendRedirect("status_books.jsp");
%>
