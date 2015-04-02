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
		String empty="delete from books_result where uid='"+uid+"'";
		st.executeUpdate(empty);
		String search_type=session.getAttribute("search_type").toString();
		ArrayList<String>list1=new ArrayList<String>();
		ArrayList<String>list2=new ArrayList<String>();
		ArrayList<String>list3=new ArrayList<String>();
		ArrayList<String>list4=new ArrayList<String>();
		ArrayList<String>list5=new ArrayList<String>();
		ArrayList<Integer>list6=new ArrayList<Integer>();
		if(search_type.equals("name"))
		{
			
			String book1=request.getParameter("book_name");
			String book=book1.toLowerCase();
			String str="select * from books";
			ResultSet rs=st.executeQuery(str);
			while(rs.next())
			{
				if(rs.getString("name").indexOf(book)!=-1)
				{
					list1.add(rs.getString("name"));
					list2.add(rs.getString("stream"));
					list3.add(rs.getString("author"));
					list4.add(rs.getString("ISBN"));
					list5.add(rs.getString("date"));
					list6.add(rs.getInt("count"));
				}
			}
		}
		else if(search_type.equals("stream"))
		{
			
			String book1=request.getParameter("book_name");
			String book=book1.toLowerCase();
			String str="select * from books where type='0'";
			ResultSet rs=st.executeQuery(str);
			while(rs.next())
			{
				if(rs.getString("stream").indexOf(book)!=-1)
				{
					list1.add(rs.getString("name"));
					list2.add(rs.getString("stream"));
					list3.add(rs.getString("author"));
					list4.add(rs.getString("ISBN"));
					list5.add(rs.getString("date"));
					list6.add(rs.getInt("count"));
				}
			}
		}
		else if(search_type.equals("others"))
		{
			
			String book1=request.getParameter("book_name");
			String book=book1.toLowerCase();
			String str="select * from books where type='1'";
			ResultSet rs=st.executeQuery(str);
			while(rs.next())
			{
				if(rs.getString("stream").indexOf(book)!=-1)
				{
					list1.add(rs.getString("name"));
					list2.add(rs.getString("stream"));
					list3.add(rs.getString("author"));
					list4.add(rs.getString("ISBN"));
					list5.add(rs.getString("date"));
					list6.add(rs.getInt("count"));
				}
			}
		}
		for(int i=0;i<list4.size();i++)
		{
			String str1="select * from books_user where ISBN='"+list4.get(i)+"'";
			ResultSet rs1=st.executeQuery(str1);
			if(rs1.next())
			{
				list1.remove(i);list2.remove(i);list3.remove(i);list4.remove(i);list5.remove(i);list6.remove(i);
			}
		}
		for(int i=0;i<list1.size();i++)
		{
			String query="insert into books_result values('"+uid+"','"+list1.get(i)+"','"+list2.get(i)+"','"+list3.get(i)+"','"+list4.get(i)+"','"+list5.get(i)+"','"+list6.get(i)+"')";
			st.executeUpdate(query);
			
		}
		
	}
	catch(Exception ex)
	{
		out.println(ex);
	}
	String subject=session.getAttribute("subject").toString();
	if(subject.equals("search"))
		response.sendRedirect("search_books.jsp");
	else if(subject.equals("available"))
		response.sendRedirect("available_books.jsp");
	else if(subject.equals("request"))
		response.sendRedirect("request_books.jsp");
%>

