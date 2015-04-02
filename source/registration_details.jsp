<%@include file="db.jsp"%>
<%
	String uid="";
	String query="select * from login";
	ResultSet rs=st.executeQuery(query);
	int c=0;
	while(rs.next())
	{
		uid=rs.getString("uname");
		c++;
	}
	String title=request.getParameter("title");
	String sirname=request.getParameter("sirname");
	String fname=request.getParameter("fname");
	String mname=request.getParameter("mname");
	String dob=request.getParameter("dob");
	String pwd=request.getParameter("pwd");
	String cpwd=request.getParameter("cpwd");
	String type=request.getParameter("type");
	String add=request.getParameter("add");
	String pin=request.getParameter("pin");
	String phno=request.getParameter("phno");
	String mid=request.getParameter("mid");
	String image_code=request.getParameter("image_code");
	if(title.equals("Select Title"))
	{
		out.println(1);
	}
	else if(sirname.length()==0)
	{
		out.println(2);
	}
	else if(fname.length()==0)
	{
		out.println(3);
	}
	else if(dob.length()==0)
	{
		out.println(5);
	}
	else
	{
		int one=0,two=0,three=0,four=0;
		for(int i=0;i<pwd.length();i++)
		{
			char ch=pwd.charAt(i);
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
			out.println(6);
		}
		else if(!(pwd.equals(cpwd)))
		{
			out.println(7);
		}
		else if(type.equals("Select Type"))
		{
			out.println(14);
		}
		else if(add.length()==0)
		{
			out.println(9);
		}
		else if(pin.length()!=6)
		{
			out.println(10);
		}
		else if(phno.length()!=10)
		{
			out.println(11);
		}
		else
		{
			String x=mid;
			int atpos=x.indexOf("@");
			int dotpos=x.lastIndexOf(".");
			if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length())
			{
				out.println(12);
			}
			else
			{
				String content="";
				String id=session.getAttribute("id").toString();
				String str1="select * from images where name='"+id+"'";
				ResultSet rs1=st.executeQuery(str1);
				if(rs1.next())
				{
					content=rs1.getString("content");
					
				}
				
				if(!(content.equals(image_code)))
				{
					out.println(13);
				}
				else
				{
					int max_books=0;
					try
					{
					if(c==0)
					{
						if((type.equals("Student")))
						{
							uid="LS201510001";
							max_books=7;
						}
						else
						{
							uid="LT201510001";
							max_books=10;
						}
					}
					else
					{
						int uid_count=Integer.parseInt(uid.substring(6,uid.length()));
						uid_count++;
						
						if((type.equals("Student")))
						{
							uid="LS2015"+uid_count;
							max_books=7;
						}
						else
						{
							uid="LT2015"+uid_count;
							max_books=10;
						}
					}
					String query1="insert into login values('"+uid+"','"+pwd+"','1','"+max_books+"')";
					st.executeUpdate(query1);
					String query2="insert into user_details values('"+uid+"','"+title+"','"+sirname+"','"+fname+"','"+mname+"','"+dob+"','"+add+"','"+pin+"','"+phno+"','"+mid+"')";
					st.executeUpdate(query2);
					session.setAttribute("uid",uid);
					out.println(0);
					}
					catch(Exception ex)
					{
						out.println(ex);
					}
				}
			}
		}
	}
%>
