<head>
<script>
function chksignup()
{
	
	var name=signupform.namet.value;
	
	var username=signupform.unt.value;
	var password=signupform.pwt.value;
	var mail=signupform.mailt.value;
	var company=signupform.companyt.value;
 	var re1=new RegExp("^[\\w]+@[\\w]+.com$");
	var re2=new RegExp("^[\\w]{6,}$");
 
 
 

 
	//if(name==""||username==""||password==""||mail==""||company=="")
	//	alert("some fields are not filled");
	if(!(re2.test(user)))
		{
			alert("username length should be atleast 6 chars");
			username="";	
			
		}
	else if(!(re1.test(mail)))
		{
			alert("email should be in the form name@domain.com\n");
			mail="";
		}
	else if(password.length<6)
		{
			alert("password length is minimum 6 characters");
			password="";
		}
	else
		signupform.submit();
	
}
</script>
</head>
<h1>REGISTER HERE</h1>
<form name="signupform" method="post" action="loadsignup.jsp">
<table>
<tr><td>Name<td><input type="text" name="namet"></input>
<tr><td>Username<td><input type="text" name="unt"></input>
<tr><td>Password<td><input type="password" name="pwt"></input>
<tr><td>Mail<td><input type="text" name="mailt"></input>
<tr><td>Company<td><input type="text" name="companyt"></input>
<tr><td>birth day<td colspan="2"> 
<%! int i;%>
<select name="dayt">
<option>day</option>
<%for(i=1;i<32;i++)
{%>
<option><%=i%></option>
<%}%>
</select>
<select name="montht">
<option>month</option>
<%for(i=1;i<13;i++)
{%>
<option><%=i%></option>
<%}%>
</select>
<select name="yeart">
<option>year</option>
<%for(i=1960;i<2000;i++)
{%>
<option><%=i%></option>
<%}%>
</select>
<tr><td><input type="button" value="register" onclick="chksignup()"></input>

</table>
</form>