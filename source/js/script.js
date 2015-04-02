function checkInput(ob)
{
	var invalidChars = /[^A-Z]/gi
		if(invalidChars.test(ob.value)) {
          ob.value = ob.value.replace(invalidChars,"");
      }
};
function checkInput1(ob)
{
	var invalidChars = /[^0-9]/gi
		if(invalidChars.test(ob.value)) {
          ob.value = ob.value.replace(invalidChars,"");
      }
};
function employee(){
$('#load_employee').load('employee_id.jsp #target');
}
function empty(){
$('#load_employee').load('empty.jsp #target');
}

function getBookName(){
$('#content2').load('bookname.jsp #target');
}
function getStreamName(){
$('#content2').load('streamname.jsp #target');
}
function getOthers(){
$('#content2').load('others.jsp #target');
}
function getEmpty(){
$('#content2').load('empty.jsp #target');
}
function getDate(){
$('#content2').load('status_date.jsp #target');
}

function check_login()
{
		var uname=$("#uname").val();
		var pwd1=$("#pwd1").val();
		var xmlhttp;
		if(window.XMLHttpRequest)
		{
				xmlhttp=new XMLHttpRequest();
		}
		else
		{
				xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange=function()
		{
			if (xmlhttp.readyState==4 && xmlhttp.status==200)
			{
				var x=xmlhttp.responseText;
				if(x==1)
				{
					location.href="home_borrower.jsp";
				}
				else if(x==2)
				{
					location.href="home_manager.jsp";
				}
				else if(x==3)
				{
					location.href="home_admin.jsp";
				}
				else
				{
					$("#error1").html("Invalid Details....!");
				}
			}
		}
		xmlhttp.open("GET","login_details.jsp?uname="+uname+"&pwd1="+pwd1,true);
		xmlhttp.send();
}
function validation()
{
		var title=$("#title").val();
		var sirname=$("#sirname").val();
		var fname=$("#fname").val();
		var mname=$("#mname").val();
		var dob=$("#dob").val();
		var pwd=$("#pwd").val();
		var cpwd=$("#cpwd").val();
		var type=$("#type").val();
		var add=$("#add").val();
		var pin=$("#pin").val();
		var phno=$("#phno").val();
		var mid=$("#mid").val();
		var image_code=$("#image_code").val();
		var xmlhttp;
		if(window.XMLHttpRequest)
		{
				xmlhttp=new XMLHttpRequest();
		}
		else
		{
				xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange=function()
		{
			if (xmlhttp.readyState==4 && xmlhttp.status==200)
			{
				var x=xmlhttp.responseText;
				if(x==1)
				{
					$("#message1").html("Select title....!");
				}
				else if(x==2)
				{
					$("#message1").html("Enter sirname....!");
				}
				else if(x==3)
				{
					$("#message1").html("Enter firstname....!");
				}
				else if(x==5)
				{
					$("#message1").html("Select Date of Birth....!");
				}
				else if(x==6)
				{
					$("#message1").html("Wrong password.. See password policy....!");
				}
				else if(x==7)
				{
					$("#message1").html("Confirm password is wrong....!");
				}
				else if(x==14)
				{
					$("#message1").html("Select Type of account....!");
				}
				else if(x==9)
				{
					$("#message1").html("Enter correct address....!");
				}
				else if(x==10)
				{
					$("#message1").html("Invalid Postcode....!");
				}
				else if(x==11)
				{
					$("#message1").html("Invalid phone number....!");
				}
				else if(x==12)
				{
					$("#message1").html("Invalid maild id....!");
				}
				else if(x==13)
				{
					$("#message1").html("Captcha mis matching....!");
				}
				else if(x==0)
				{
					location.href="success_registration.jsp";
				}
			}
		}
		xmlhttp.open("GET","registration_details.jsp?title="+title+"&sirname="+sirname+"&fname="+fname+"&mname="+mname+"&dob="+dob+"&pwd="+pwd+"&cpwd="+cpwd+"&type="+type+"&add="+add+"&pin="+pin+"&phno="+phno+"&mid="+mid+"&image_code="+image_code,true);
		xmlhttp.send();
}
function validation_admin()
{
		var title=$("#title").val();
		var sirname=$("#sirname").val();
		var fname=$("#fname").val();
		var mname=$("#mname").val();
		var dob=$("#dob").val();
		var pwd=$("#pwd").val();
		var cpwd=$("#cpwd").val();
		var type=$("#type").val();
		var add=$("#add").val();
		var pin=$("#pin").val();
		var phno=$("#phno").val();
		var mid=$("#mid").val();
		var image_code=$("#image_code").val();
		var xmlhttp;
		if(window.XMLHttpRequest)
		{
				xmlhttp=new XMLHttpRequest();
		}
		else
		{
				xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange=function()
		{
			if (xmlhttp.readyState==4 && xmlhttp.status==200)
			{
				var x=xmlhttp.responseText;
				if(x==1)
				{
					$("#message1").html("Select title....!");
				}
				else if(x==2)
				{
					$("#message1").html("Enter sirname....!");
				}
				else if(x==3)
				{
					$("#message1").html("Enter firstname....!");
				}
				else if(x==5)
				{
					$("#message1").html("Select Date of Birth....!");
				}
				else if(x==6)
				{
					$("#message1").html("Wrong password.. See password policy....!");
				}
				else if(x==7)
				{
					$("#message1").html("Confirm password is wrong....!");
				}
				else if(x==14)
				{
					$("#message1").html("Select Type of account....!");
				}
				else if(x==9)
				{
					$("#message1").html("Enter correct address....!");
				}
				else if(x==10)
				{
					$("#message1").html("Invalid Postcode....!");
				}
				else if(x==11)
				{
					$("#message1").html("Invalid phone number....!");
				}
				else if(x==12)
				{
					$("#message1").html("Invalid maild id....!");
				}
				else
				{
					location.href="success_registration1.jsp";
				}
			}
		}
		xmlhttp.open("GET","registration_details_admin.jsp?title="+title+"&sirname="+sirname+"&fname="+fname+"&mname="+mname+"&dob="+dob+"&type="+type+"&add="+add+"&pin="+pin+"&phno="+phno+"&mid="+mid,true);
		xmlhttp.send();
}
function validation_update()
{
		
		var sirname=$("#sirname").val();
		var fname=$("#fname").val();
		var mname=$("#mname").val();
		var dob=$("#dob").val();
		var add=$("#add").val();
		var pin=$("#pin").val();
		var phno=$("#phno").val();
		var mid=$("#mid").val();
		var xmlhttp;
		if(window.XMLHttpRequest)
		{
				xmlhttp=new XMLHttpRequest();
		}
		else
		{
				xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange=function()
		{
			if (xmlhttp.readyState==4 && xmlhttp.status==200)
			{
				var x=xmlhttp.responseText;
				if(x==1)
				{
					$("#message1").html("Please fill correct details....!");
					$("#message2").html("");
				}
				else 
				{
					$("#message1").html("");
					$("#message2").html("Details updated Successfully....!");
				}
				
			}
		}
		xmlhttp.open("GET","update_details.jsp?sirname="+sirname+"&fname="+fname+"&mname="+mname+"&dob="+dob+"&add="+add+"&pin="+pin+"&phno="+phno+"&mid="+mid,true);
		xmlhttp.send();
}
function change_password()
{
		
		var old_pwd=$("#old_pwd").val();
		var new_pwd=$("#new_pwd").val();
		var con_pwd=$("#con_pwd").val();
		var xmlhttp;
		if(window.XMLHttpRequest)
		{
				xmlhttp=new XMLHttpRequest();
		}
		else
		{
				xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange=function()
		{
			if (xmlhttp.readyState==4 && xmlhttp.status==200)
			{
				var x=xmlhttp.responseText;
				if(x==1)
				{
					$("#error1").html("Old password is wrong....!");
					$("#error2").html("");
				}
				else if(x==2)
				{
					$("#error1").html("Wrong password see password policy!");
					$("#error2").html("");
				}
				else if(x==3)
				{
					$("#error1").html("Confirm password is wrong....!");
					$("#error2").html("");
				}
				else
				{
					$("#error2").html("Password changed successfully....!");
					$("#error1").html("");
				}
			}
		}
		xmlhttp.open("GET","change_password_details.jsp?old_pwd="+old_pwd+"&new_pwd="+new_pwd+"&con_pwd="+con_pwd,true);
		xmlhttp.send();
}
function change_password_admin()
{
		
		var old_pwd=$("#old_pwd").val();
		var new_pwd=$("#new_pwd").val();
		var con_pwd=$("#con_pwd").val();
		var xmlhttp;
		if(window.XMLHttpRequest)
		{
				xmlhttp=new XMLHttpRequest();
		}
		else
		{
				xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange=function()
		{
			if (xmlhttp.readyState==4 && xmlhttp.status==200)
			{
				var x=xmlhttp.responseText;
				if(x==1)
				{
					$("#error1").html("Old password is wrong....!");
					$("#error2").html("");
				}
				else if(x==2)
				{
					$("#error1").html("Wrong password see password policy!");
					$("#error2").html("");
				}
				else if(x==3)
				{
					$("#error1").html("Confirm password is wrong....!");
					$("#error2").html("");
				}
				else
				{
					$("#error2").html("Password changed successfully....!");
					$("#error1").html("");
				}
			}
		}
		xmlhttp.open("GET","change_password_admin_details.jsp?old_pwd="+old_pwd+"&new_pwd="+new_pwd+"&con_pwd="+con_pwd,true);
		xmlhttp.send();
}

function add_book()
{
		
		var bname=$("#bname").val();
		var author=$("#author").val();
		var stream=$("#stream").val();
		var isbn=$("#isbn").val();
		var count=$("#count").val();
		var type=$("#type").val();
		var xmlhttp;
		if(window.XMLHttpRequest)
		{
				xmlhttp=new XMLHttpRequest();
		}
		else
		{
				xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange=function()
		{
			if (xmlhttp.readyState==4 && xmlhttp.status==200)
			{
				var x=xmlhttp.responseText;
				if(x==1)
				{
					$("#message1").html("Please enter book name....!");
					$("#message2").html("");
				}
				else if(x==2)
				{
					$("#message1").html("Please enter author ame....!");
					$("#message2").html("");
				}
				else if(x==3)
				{
					$("#message1").html("Please enter stream of the book....!");
					$("#message2").html("");
				}
				else if(x==4)
				{
					$("#message1").html("Please enter correct isbn number....!");
					$("#message2").html("");
				}
				else if(x==5)
				{
					$("#message1").html("Please enter correct count....!");
					$("#message2").html("");
				}
				else if(x==6)
				{
					$("#message1").html("Please select type of book....!");
					$("#message2").html("");
				}
				else 
				{
					$("#message1").html("");
					$("#message2").html("Book Added Successfully....!");
				}
				
			}
		}
		xmlhttp.open("GET","add_books1.jsp?bname="+bname+"&author="+author+"&stream="+stream+"&isbn="+isbn+"&count="+count+"&type="+type,true);
		xmlhttp.send();
}
function update_book()
{
		var update=$("#update").val();
		var xmlhttp;
		if(window.XMLHttpRequest)
		{
				xmlhttp=new XMLHttpRequest();
		}
		else
		{
				xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange=function()
		{
			if (xmlhttp.readyState==4 && xmlhttp.status==200)
			{
				var x=xmlhttp.responseText;
				if(x==1)
				{
					$("#message1").html("Invalid Updates....!");
					$("#message2").html("");
				}
				else
				{
					$("#message2").html(" Updates add successfully....!");
					$("#message1").html("");
				}
			}
		}
		xmlhttp.open("GET","updates_books1.jsp?update="+update,true);
		xmlhttp.send();
}
function update_book_manager()
{
		var update=$("#update").val();
		var xmlhttp;
		if(window.XMLHttpRequest)
		{
				xmlhttp=new XMLHttpRequest();
		}
		else
		{
				xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange=function()
		{
			if (xmlhttp.readyState==4 && xmlhttp.status==200)
			{
				var x=xmlhttp.responseText;
				if(x==1)
				{
					$("#message1").html("Invalid Updates....!");
					$("#message2").html("");
				}
				else
				{
					$("#message2").html(" Updates add successfully....!");
					$("#message1").html("");
				}
			}
		}
		xmlhttp.open("GET","updates_books1_manager.jsp?update="+update,true);
		xmlhttp.send();
}

function delete_updates()
{
		var content=$("#content").val();
		var xmlhttp;
		if(window.XMLHttpRequest)
		{
				xmlhttp=new XMLHttpRequest();
		}
		else
		{
				xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange=function()
		{
			if (xmlhttp.readyState==4 && xmlhttp.status==200)
			{
				var x=xmlhttp.responseText;
				if(x==1)
				{
					$("#message3").html(" Updates deleted successfully....!");
					
				}
			}
		}
		xmlhttp.open("GET","remove_updates.jsp?content="+content,true);
		xmlhttp.send();
}


