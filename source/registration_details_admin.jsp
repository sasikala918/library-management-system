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
	String type=request.getParameter("type");
	String add=request.getParameter("add");
	String pin=request.getParameter("pin");
	String phno=request.getParameter("phno");
	String mid=request.getParameter("mid");
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
		
		if(type.equals("Select Type"))
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
				int books=0;
				int type1=0;
				try
				{
					if(c==0)
					{
						if((type.equals("Student")))
						{
							uid="LS201510001";
							books=7;
							type1=1;
						}
						else if((type.equals("Teacher")))
						{
							uid="LT201510001";
							books=10;
							type1=1;
						}
						else
						{
							uid="LM201510001";
							type1=2;
						}
					}
					else
					{
						int uid_count=Integer.parseInt(uid.substring(6,uid.length()));
						uid_count++;
						
						if(type.equals("Student"))
						{
							uid="LS2015"+uid_count;
							books=7;
							type1=1;
						}
						else if(type.equals("Teacher"))
						{
							uid="LT2015"+uid_count;
							books=10;
							type1=1;
						}
						else
						{
							uid="LM2015"+uid_count;
							type1=2;
						}
					}
					String query1="insert into login values('"+uid+"','"+uid+"','"+type1+"','"+books+"')";
					st.executeUpdate(query1);
					String query2="insert into user_details values('"+uid+"','"+title+"','"+sirname+"','"+fname+"','"+mname+"','"+dob+"','"+add+"','"+pin+"','"+phno+"','"+mid+"')";
					st.executeUpdate(query2);
					session.setAttribute("new_uid",uid);
					out.println(0);
				}
				catch(Exception ex)
				{
					out.println(ex);
				}
			}
		}
	}
%>
